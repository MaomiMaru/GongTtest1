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
import com.itwillbs.service.ProjectService;
import com.itwillbs.service.ResumeService;

@Controller
public class ProjectController {

	@Inject
	private ProjectService projectService;
	@Inject
	private MemberService memberService;

	@RequestMapping(value = "/project/project", method = RequestMethod.GET)
	public String project(HttpSession session, HttpServletRequest request, Model model) {
		int p_num = Integer.parseInt(request.getParameter("p_num"));
		model.addAttribute("memberDTO", projectService.getMember(p_num));
		model.addAttribute("projectDTO", projectService.getProject(p_num));
		return "project/project";
	}//project()
	

	
}
