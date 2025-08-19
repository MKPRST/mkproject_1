package com.example.demo.board;

import org.springframework.ui.Model;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public interface BoardService {

	public String freeBoardList(Model model);

	public String freeBoardWrite(HttpServletRequest request, HttpSession session);

	public String freeBoardWriteOk(HttpSession session, BoardDto bdto);

	public String freeBoardContent(HttpServletRequest request, Model model);

}
