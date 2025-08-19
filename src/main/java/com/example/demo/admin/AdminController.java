package com.example.demo.admin;

import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	
	@Autowired
	private AdminMapper mapper;
	
	
	
	
	/* 어드민 페이지 */	
	@GetMapping("/admin/admin")	
	public String admin(HttpServletRequest request, HttpSession session, Model model)
	{
		return "/admin/admin";
	}
		
	
	/*고객문의*/
	@GetMapping("/admin/customerService")
	public String customerService(HttpServletRequest request, HttpSession session, Model model)
	{
		if(session.getAttribute("userid")==null)
		{
			return "redirect:/login/login";			
		}
		else 
		{
			ArrayList<HashMap> qnaAll = mapper.customerService();
			model.addAttribute("qnaAll",qnaAll);
			
			return "/admin/customerService";
		}
	}
	
	@PostMapping("/admin/adminQnaAnswer")
	public String adminQnaAnswer(HttpServletRequest request, HttpSession session)
	{
		String id = request.getParameter("id");
		String answer = request.getParameter("answer");
		mapper.adminQnaAnswer(id, answer); 
		
		return "redirect:/admin/customerService";
	}
	
	/*주문내역*/
	@GetMapping("/admin/orderList")
	public String orderList(HttpServletRequest request, HttpSession session, Model model)
	{
		String userid = session.getAttribute("userid").toString();
		if(session.getAttribute("userid")==null)
		{
			return "redirect:/login/login";			
		}
		else 
		{
			if(!userid.equals("admin")) {	//관리자 계정이 아니면, 메인으로
				return "/main/main";
			}
			ArrayList<AdminDto> alist = mapper.getOrderList();
			
			model.addAttribute("alist", alist);
			
			return "/admin/orderList";
		}
	}
	
	@GetMapping("/admin/cancelOrder")
	public  String cancelOrder(HttpServletRequest request, HttpSession session)
	{
		String userid = request.getParameter("userid");
		String gcode = request.getParameter("gcode");
		String id = request.getParameter("id");
		
		String adminUserid = session.getAttribute("userid")+"";
		
		if(session.getAttribute("userid")==null)
		{
			return "/login/login";
		}
		else
		{
			if(adminUserid!=null && adminUserid.equals("admin") || !adminUserid.isEmpty())
			{
				mapper.cancelOrder(id, userid, gcode);
				return "redirect:/admin/orderList";
			}
			else 
			{
				return "/login/login";
			}
		}
	}
	
	
	
	
	
}
