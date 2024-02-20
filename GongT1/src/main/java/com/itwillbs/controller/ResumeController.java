package com.itwillbs.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.service.MemberService;
import com.itwillbs.service.ResumeService;



@Controller
public class ResumeController {

	@Inject
	private ResumeService resumeService;
	@Inject
	private MemberService memberService;

	@RequestMapping(value = "/resume/resume", method = RequestMethod.GET)
	public String resume(HttpSession session, HttpServletRequest request, Model model) {
		int r_num = Integer.parseInt(request.getParameter("r_num"));
		model.addAttribute("memberDTO", resumeService.getMember(r_num));
		model.addAttribute("resumeDTO", resumeService.getResume(r_num));
		return "resume/resume";
	}//resume()
	
	@GetMapping("/resume/updateresume")
	public String updateresume() {
		System.out.println("ResumeController updateresume()");
		return "/resume/updateresume";
	}
	
	
	
}
