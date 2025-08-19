package com.example.demo.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class BoardController {
	
	@Autowired
	@Qualifier("bs")
	private BoardService service;
	
	
	@GetMapping("/board/ranking")
	public String ranking()
	{
		return "/board/ranking";
	}
	
	@GetMapping("/board/freeBoardList")
	public String freeBoardList(Model model)
	{
		return service.freeBoardList(model);
	}
	@GetMapping("/board/freeBoardWrite")
	public String freeBoardWrite(HttpServletRequest request, HttpSession session)
	{
		return service.freeBoardWrite(request, session);
	}
		@PostMapping("/board/freeBoardWriteOk")
		public String freeBoardWriteOk(HttpSession session, BoardDto bdto)
		{
			return service.freeBoardWriteOk(session, bdto);
		}
	
	@GetMapping("/board/freeBoardContent")
	public String freeBoardContent(HttpServletRequest request, Model model)
	{
		return service.freeBoardContent(request, model);
	}
		
	
}
