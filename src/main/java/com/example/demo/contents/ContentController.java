package com.example.demo.contents;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.dto.QnaDto;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ContentController {
	
	@Autowired
	@Qualifier("cs")
	private ContentsService service;
		
	
	
	//리스트 = 모든 상품 / 리스트 = 모든 상품 / 리스트 = 모든 상품/ 리스트 = 모든 상품
	@GetMapping("/contents/contentsList")
	public String contentsList(HttpServletRequest request, Model model)
	{
		return service.contentsList(request, model);
	}
	
	//굿즈 페이지 = 개별 상품 / 굿즈 페이지 = 개별 상품 / 굿즈 페이지 = 개별 상품 /굿즈 페이지 = 개별 상품
	@GetMapping("/contents/contentsGoods")
	public String contentsGoods(HttpServletRequest request, Model model, HttpSession session)
	{
		return service.contentsGoods(request, model, session);
	}
	
	//예약 페이지 예약 페이지 예약 페이지 -> contentsGoods -> booking
	@GetMapping("/contents/booking")
	public String booking(HttpServletRequest request, Model model, HttpSession session)
	{
		return service.booking(request, model, session);
	}
	
	//구매 페이지 구매 페이지 구매 페이지 구매 페이지 booking -> payment
	@PostMapping("/contents/order")
	public String order(HttpServletRequest request, HttpSession session)
	{
		return service.order(request, session);
	}
	
	//contents에서 qna 입력 contents에서 qna 입력
	@PostMapping("/contents/qnaWriteOk")
	public String qnaWriteOk(QnaDto qdto, HttpSession session, HttpServletRequest request)
	{
		return service.qnaWriteOk(qdto, session, request);
	}
				
	
}
