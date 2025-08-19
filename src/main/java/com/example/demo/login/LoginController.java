package com.example.demo.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.member.MemberDto;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {
		
	@Autowired
	private LoginMapper mapper;
	
	
	
	@GetMapping("/login/login")
	public String login(HttpServletRequest request,Model model)
	{
		model.addAttribute("err",request.getParameter("err"));	//login
		model.addAttribute("gcode",request.getParameter("gcode"));	//contentsGoods
		model.addAttribute("from", request.getParameter("from"));//freeBoardList -> freeBoardWrite
		
		return "/login/login";
	}
	
	@PostMapping("/login/loginOk")
	public String loginOk(MemberDto mdto, HttpSession session, HttpServletRequest request, HttpServletResponse response)
	{
		String name = mapper.loginOk(mdto);//날아오는 값은 String
		System.out.println(mdto.getId());
		System.out.println(mdto.getPwd());
		
		System.out.println("From: " + request.getParameter("from"));
		if(name==null)
		{
			return "redirect:/login/login?err=1";
		} else {			//회원이 맞다면
			session.setAttribute("userid", mdto.getUserid());
			session.setAttribute("name", name);
		}
		
		/*contentsGoods에서 예매하기 */
		String gcode = request.getParameter("gcode");
		if(gcode != null && !gcode.isEmpty())
		{
			return "redirect:/contents/contentsGoods?gcode="+gcode;
		}
		/*freeBoardList에서 글쓰기 로그인*/
		String from = request.getParameter("from");
		if(from != null && from.equals("listLogin"))
		{
			return "redirect:/board/freeBoardWrite";
		}
	
		
		return "redirect:/main/main";
	}
	
	@GetMapping("/login/logOut")
	public String logOut(HttpSession session)
	{
		session.invalidate();
		return "redirect:/main/main";
	}
	
	
	
}	
