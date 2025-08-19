package com.example.demo.contents;

import org.springframework.ui.Model;

import com.example.demo.dto.QnaDto;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public interface ContentsService {

	public String contentsList(HttpServletRequest request, Model model);

	public String contentsGoods(HttpServletRequest request, Model model,HttpSession session);

	public String booking(HttpServletRequest request, Model model, HttpSession session);

	public String order(HttpServletRequest request, HttpSession session);

	public String qnaWriteOk(QnaDto qdto, HttpSession session, HttpServletRequest request);

}
