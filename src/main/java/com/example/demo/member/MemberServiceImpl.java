package com.example.demo.member;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.demo.admin.AdminDto;
import com.example.demo.dto.QnaDto;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Service
@Qualifier("ms")
public class MemberServiceImpl implements MemberService{
	
		@Autowired
		private MemberMapper mapper;
	
		
		public String memberOk(MemberDto mdto, Model model, HttpServletRequest request)
		{
			System.out.println(mdto.getName());
			mapper.memberOk(mdto);
			return "redirect:/login/login";
		}
		
		//회원정보
		public String memberInfo(HttpSession session, Model model)
		{
			if(session.getAttribute("userid")==null)
			{
				return "redirect:/login/login";
			}
			else
			{
				String userid=session.getAttribute("userid").toString();
				MemberDto mdto = mapper.memberInfo(userid);
				model.addAttribute("mdto",mdto);
				
				return "/member/memberInfo";
			}
		}
		
		//회원정보 들어갈때 아이디 비번 확인
		@Override
		public String memberInfoConfirmOk(HttpServletRequest request)
		{
			HttpSession session = request.getSession();
			String userid = session.getAttribute("userid").toString();
			String pwd = request.getParameter("pwd");
			String dbPwd = mapper.getPwd(userid);
			if(pwd.equals(dbPwd))
			{
				return "redirect:/member/memberInfo";
			}
			else
			{
				return "redirect:/member/memberInfoConfirm?err=1";
			}
		}
		
		
		//memberInfo 정보변경 알고리즘
		@Override
		public String chgEmail(HttpServletRequest request, HttpSession session)
		{
			if(session.getAttribute("userid")==null)
			{
				return "0";
			}
			else 
			{
				String userid = session.getAttribute("userid").toString();
				String email = request.getParameter("email");
				mapper.chgEmail(email, userid);
				return "1";
			}
		}
		@Override
		public String chgPhone(HttpServletRequest request, HttpSession session)
		{
			if(session.getAttribute("userid")==null)
			{
				return "redirect:/login/login";
			}
			else 
			{
				String userid = session.getAttribute("userid").toString();
				String phone = request.getParameter("phone");
				mapper.chgPhone(phone, userid);
				return "redirect:/member/memberInfo";
			}
		}
		@Override
		public String chgPwd(HttpServletRequest request, HttpSession session)
		{
			if(session.getAttribute("userid")==null)
			{
				return "redirect:/login/login";
			}
			else 
			{
				String userid = session.getAttribute("userid").toString();
				String prevPwd = request.getParameter("prevPwd");
				String newPwd1 = request.getParameter("newPwd1");
				String newPwd2 = request.getParameter("newPwd2");
				
				if(prevPwd.equals(mapper.getPwd(userid)))
				{
					if(newPwd1.equals(newPwd2))
					{
						mapper.chgPwd(newPwd2, userid);	
					}
				}
				return "redirect:/member/memberInfo";
			}
		}

		@Override
		public String mypage(HttpSession session, Model model)
		{
			if( session.getAttribute("userid")==null)
			{
				return "redirect:/login/login";
			}
			else {
				String userid = session.getAttribute("userid").toString();
				String gcode = mapper.getPwd(userid);
						
				ArrayList<HashMap> orderList = mapper.mypage(userid);
				model.addAttribute("orderList",orderList);
				ArrayList<HashMap> qnaList = mapper.qnaList(userid);
				model.addAttribute("qnaList", qnaList);
				return "/member/mypage";
			}
		}
		
		
		@Override
		public String memberQna(HttpSession session, Model model)
		{
			if( session.getAttribute("userid")==null)
			{
				return "redirect:/login/login";
			}
			else {
				String userid = session.getAttribute("userid").toString();
				ArrayList<HashMap> mapAll = mapper.qnaList(userid);
				model.addAttribute("mapAll",mapAll);
				return "/member/memberQna";
			}
		}
		
		@Override
		public String memberQnaDel(HttpSession session, HttpServletRequest request)
		{
			String id = request.getParameter("id");
			mapper.memberQnaDel(id);
			return "redirect:/member/memberQna";
		}
		
		
		
		
		
		@Override
		public String memberOrderList(HttpSession session, Model model)
		{
			if( session.getAttribute("userid")==null)
			{
				return "redirect:/login/login";
			}
			else {
				String userid = session.getAttribute("userid").toString();
				String gcode = mapper.getPwd(userid);
						
				ArrayList<HashMap> alist = mapper.mypage(userid);
				model.addAttribute("alist",alist);
				return "/member/memberOrderList";
			}
		}
		
		
		
		
		
		
}
