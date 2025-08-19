package com.example.demo.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;

@Controller
public class MemberController {
	
		@Autowired
		@Qualifier("ms")
		private MemberService service;
	
	
	
		@GetMapping("/member/member")
		public String member()
		{
			return "/member/member";
		}
		
		@PostMapping("/member/memberOk")
		public String memberOk(MemberDto mdto, Model model, HttpServletRequest request)
		{
			return service.memberOk(mdto, model, request);
		}
	
		/* 회원정보 */
		@GetMapping("/member/memberInfo")
		public String memberInfo(HttpSession session, Model model)
		{
			return service.memberInfo(session,model);
		}
		/*회원정보 들어갈때, 아이디/비번 확인 */
		@GetMapping("/member/memberInfoConfirm")
		public String memberInfoConfirm(HttpServletRequest request, Model model)
		{
			if("1".equals(request.getParameter("err")))
			{
				model.addAttribute("err",1);	//비밀번호가 맞지 않으면 view로 1을 보낸다
			}
			
			return "/member/memberInfoConfirm";
		}
			@PostMapping("/member/memberInfoConfirmOk")
			public String memberInfoConfirmOk(HttpServletRequest request)
			{
				return service.memberInfoConfirmOk(request);
			}
		
			//memberInfo 정보변경 정보변경				/* chgEmail과 chgPhone은 알고리즘이 똑같음 */
			@GetMapping("/member/chgEmail")
			public @ResponseBody String chgEmail(HttpServletRequest request, HttpSession session)
			{
				return service.chgEmail(request, session);
			}
			@PostMapping("/member/chgPhone")
			public String chgPhone(HttpServletRequest request, HttpSession session)
			{
				return service.chgPhone(request,session);
			}
			@PostMapping("/member/chgPwd")
			public String chgPwd(HttpServletRequest request, HttpSession session)
			{
				return service.chgPwd(request, session);
			}
			
			
			
			
			
		//마이페이지 마이페이지 마이페이지 마이페이지 마이페이지 마이페이지 
		@GetMapping("/member/mypage")
		public String mypage(HttpSession session, Model model)
		{
			return service.mypage(session, model);
		}
			
	//MYPAGE MYPAGE MYPAGE MYPAGE MYPAGE MYPAGE MYPAGE 		
		//문의 문의 문의 문의 문의 문의 문의 문의 문의 문의 문의 문의 문의 문의 
		@GetMapping("/member/memberQna")
		public String memberQna(HttpSession session, Model model)
		{
			return service.memberQna(session, model);
		}
			
		
		@GetMapping("/member/memberQnaDel")
		public String memberQnaDel(HttpSession session, HttpServletRequest request)
		{
			return service.memberQnaDel(session, request);
		}
		
		@GetMapping("/member/memberOrderList")
		public String memberOrderList(HttpSession session, Model model)
		{
			return service.memberOrderList(session, model);
		}
			
}
