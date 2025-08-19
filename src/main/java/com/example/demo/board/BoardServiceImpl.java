package com.example.demo.board;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Service
@Qualifier("bs")
public class BoardServiceImpl implements BoardService {

	
	@Autowired
	private BoardMapper mapper;
	
	
	@Override
	public String freeBoardList(Model model)
	{
		ArrayList<BoardDto> blist = mapper.boardList();
		model.addAttribute("blist", blist);
		
		
		return "/board/freeBoardList";
	}
	
	
		@Override
		public String freeBoardWrite(HttpServletRequest request, HttpSession session)
		{
			if(session.getAttribute("userid")==null)
			{
				String from = request.getParameter("from");
				return "redirect:/login/login?from="+from;	//freeBoardList -> freeBoardWrite
			}
			else 
			{
				return "/board/freeBoardWrite";
			}
			
		}
	
		@Override
		public String freeBoardWriteOk(HttpSession session, BoardDto bdto)
		{
			bdto.setUserid(session.getAttribute("userid").toString());
			mapper.writeOk(bdto);
			
			return "redirect:/board/freeBoardList";
		}
		
		
		@Override
		public String freeBoardContent(HttpServletRequest request, Model model)
		{
			String id = request.getParameter("id");
			BoardDto bdto = mapper.boardContent(id);
			model.addAttribute("bdto", bdto);
			
			return "/board/freeBoardContent";
		}
		
		
		
		
		
		
		
		
		
		
		
		
	
}
