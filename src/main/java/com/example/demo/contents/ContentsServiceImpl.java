package com.example.demo.contents;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.demo.dto.QnaDto;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Service
@Qualifier("cs")
public class ContentsServiceImpl implements ContentsService{
	@Autowired
	private ContentsMapper mapper;
	
	
	@Override
	public String contentsList(HttpServletRequest request, Model model)
	{
		ArrayList<ContentsDto> clist = mapper.contentsList();
		model.addAttribute("clist", clist);
		
		return "/contents/contentsList";
	}
	
	@Override
	public String contentsGoods(HttpServletRequest request, Model model, HttpSession session)
	{
		String gcode = request.getParameter("gcode");
		
		ContentsDto cdto = mapper.contentsGoods(gcode);
		model.addAttribute("cdto",cdto);
		
		System.out.println("gcode는 "+gcode);
		
		
		return "/contents/contentsGoods";
	}
	
	@Override
	public String booking(HttpServletRequest request, Model model, HttpSession session)
	{
		if(session.getAttribute("userid")==null)
		{
			return "redirect:/login/login";
		}
		else
		{
			String gcode = request.getParameter("gcode");
			ContentsDto cdto =mapper.contentsGoods(gcode);
						
			//공연일이 하루일때
			if(cdto.getGigan().length()<11)
			{
				//형식지정
				 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy.MM.dd");
				 // 하루만 있는 경우
				String gigan = cdto.getGigan();
			    LocalDate singleDate = LocalDate.parse(gigan.trim(), formatter);
			    List<String> dates = new ArrayList<>();
			    dates.add(singleDate.format(formatter));  // 날짜를 하나만 추가

			    // cdto에 날짜 리스트를 추가
			    cdto.setDates(dates);
			    model.addAttribute("cdto", cdto);
			    return "/contents/booking";  // 페이지 이동
			}
			
			
			//형식지정
			 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy.MM.dd");
			 // "2025.03.20 ~ 2025.03.22" → ["2025.03.20", "2025.03.21", "2025.03.22"]
		      String[] gigan = cdto.getGigan().split("~");
		      //문자열 잘라서 각각 넣기. trim은 공백제거
		      LocalDate startDate = LocalDate.parse(gigan[0].trim(), formatter);
		      LocalDate endDate = LocalDate.parse(gigan[1].trim(), formatter);
       
		      System.out.println(startDate +" "+ endDate);
		        
		    int daysBetween = (int)ChronoUnit.DAYS.between(startDate, endDate);
		    	
		    List<String> dates = new ArrayList<>();
		    for(int i=0;i<daysBetween+1;i++) {
		    	LocalDate currentDate = startDate.plusDays(i);
		    	String formattedDate = currentDate.format(formatter);	//형식을 yyyy.mm.dd 로 만들기
		    	dates.add(formattedDate);
		    	
		    }
		    //dates 를 cdto에 추가
		    cdto.setDates(dates);
			
			
			model.addAttribute("cdto", cdto);
			

			return "/contents/booking";
		}
	}

	
	//구매 페이지 구매 페이지 구매 페이지 구매 페이지 구매 페이지 
	@Override
	public String order(HttpServletRequest request, HttpSession session)
	{
		String userid = session.getAttribute("userid").toString();
		String gcode = request.getParameter("gcode");
		String startSigan = request.getParameter("startSigan");
		String date = request.getParameter("date");
		String price = request.getParameter("price");
		String ticketSu = request.getParameter("ticketSu");
		
		System.out.println(gcode);
		System.out.println(userid);
		System.out.println(startSigan);
		System.out.println("date:"+date);
		System.out.println("price:"+price);
		System.out.println("ticketsu:"+ticketSu);
		
		mapper.order(userid,gcode,startSigan,date,price, ticketSu);
		
		return "/contents/order";
	}
	
	//qna 입력 
	@Override
	public String qnaWriteOk(QnaDto qdto, HttpSession session, HttpServletRequest request)
	{
		String userid = session.getAttribute("userid").toString();
		qdto.setUserid(userid);
		mapper.qnaWriteOk(qdto);
		return "redirect:/contents/contentsGoods?gcode="+qdto.getGcode();
	}
	
	
	
}
