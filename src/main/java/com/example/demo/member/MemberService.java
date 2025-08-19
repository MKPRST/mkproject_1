package com.example.demo.member;

import org.springframework.ui.Model;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public interface MemberService {

	public String memberOk(MemberDto mdto, Model model, HttpServletRequest request);
	public String memberInfo(HttpSession session, Model model);
	
	public String memberInfoConfirmOk(HttpServletRequest request);
	public String mypage(HttpSession session, Model model);
	public String memberOrderList(HttpSession session, Model model);
	
	public String memberQna(HttpSession session, Model model);
	public String memberQnaDel(HttpSession session, HttpServletRequest request);
	//memberInfo 정보변경 알고리즘
	public String chgEmail(HttpServletRequest request, HttpSession session);
	public String chgPhone(HttpServletRequest request, HttpSession session);
	public String chgPwd(HttpServletRequest request, HttpSession session);
}
