package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.ChattingDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProjectDTO;
import com.itwillbs.domain.ResumeDTO;
import com.itwillbs.domain.Scrap_projectDTO;
import com.itwillbs.domain.Scrap_resumeDTO;
import com.itwillbs.service.MemberService;
import com.itwillbs.service.ProjectService;
import com.itwillbs.service.ResumeService;

@Controller
public class MemberController {

	@Inject
	private ProjectService projectService;
	
	@Inject
	private ResumeService resumeService;
	
	@Inject
	private MemberService memberService;
	

	
	@GetMapping("/main/login")
	public String login() {
		System.out.println("MemberController login()");
		return "main/login";
	}
	
	@PostMapping("/main/loginPro")
	public String loginPro(MemberDTO memberDTO, HttpSession session) {
		System.out.println("MemberController loginPro()");
		MemberDTO memberDTO2 = memberService.userCheck(memberDTO);
		if(memberDTO2 != null) {
			session.setAttribute("id",memberDTO2.getId());
			session.setAttribute("type",memberDTO2.getType());
		
			return "redirect:/main/main";
		} else {
			return "main/msg";
		}
	}
	
	@GetMapping("/main/join")
	public String insert() {
		System.out.println("MemberController insert()");
		return "main/join";
	}
	
	@PostMapping("/main/joinPro")
	public String insertPro(MemberDTO memberDTO) {
		System.out.println("MemberController insertPro()");
		memberService.insertMember(memberDTO);
		return "redirect:/main/login";
	}
	
	
	@GetMapping("/main/logout")
	public String logout(HttpSession session) {
		System.out.println("MemberController logout()");
		session.invalidate();
		return "redirect:/main/main";
	}
	
	@GetMapping("/main/insertFreelancer")
	public String insertFreelance() {
		System.out.println("MemberController insertFreelancer()");
		return "/main/insertFreelancer";
	}
	
	@GetMapping("/main/insertCompany")
	public String insertCompany() {
		System.out.println("MemberController insertCompany()");
		return "/main/insertCompany";
	}
	
	@RequestMapping(value = "/main/main", method = RequestMethod.GET)
	public String main(Model model) {
		model.addAttribute("projectcount", projectService.getProjectCount());
		model.addAttribute("resumecount", resumeService.getResumeCount());
		model.addAttribute("companycount", memberService.getCompanyCount());
		model.addAttribute("matchingcount", memberService.getMatchingCount());
		return "main/main";
	}//main
	
	@RequestMapping(value = "/mypageCompany/mypageCompany1", method = RequestMethod.GET)
	public String mypageCompany1(HttpSession session, Model model) {
		System.out.println("MemberController mypageCompany1()");
		
		String id = (String)session.getAttribute("id");
		
		MemberDTO memberDTO = memberService.getMember(id);
		
		model.addAttribute("memberDTO", memberDTO);
		return "mypageCompany/mypageCompany1";
	}//mypageCompany1
	
	
	@GetMapping("/mypageCompany/mypageCompany2")
	public String mypageCompany2(HttpSession session, Model model) {
		System.out.println("MemberController mypageCompany2()");
		
		String id = (String)session.getAttribute("id");
		System.out.println(id);
		List<ProjectDTO>ProjectDTOList = memberService.projectCheck(id);
		
		model.addAttribute("ProjectDTOList",ProjectDTOList);
		
		return "mypageCompany/mypageCompany2";
	}//mypageCompany2
	
	
	@GetMapping("/mypageCompany/mypageCompany4")
	public String mypageCompany4(HttpSession session, Model model) {
		System.out.println("MemberController mypageCompany4()");
	
		String id = (String)session.getAttribute("id");
		System.out.println(id);
		List<Scrap_resumeDTO> Scrap_resumeDTOList = memberService.resumeScrap(id);
		
		model.addAttribute("Scrap_resumeDTOList",Scrap_resumeDTOList);
		
		return "mypageCompany/mypageCompany4";
	}//mypageCompany4
	

	@GetMapping("/mypageCompany/mypageCompany5")
	public String mypageCompany5(HttpSession session, Model model) {
		System.out.println("MemberController mypageCompany5()");
		
		String id = (String)session.getAttribute("id");
		System.out.println(id);
		List<ChattingDTO> ChattingDTOList = memberService.ChattingCheck(id);
		
		model.addAttribute("ChattingDTOList",ChattingDTOList);
		
		return "mypageCompany/mypageCompany5";
	}//mypageCompany5
	
	@GetMapping("/mypageCompany/mypageCompany6")
	public String mypageCompany6() {
		return "mypageCompany/mypageCompany6";
	}//mypageCompany6()
	
	@PostMapping("/deletePro")
	public String deletePro(MemberDTO memberDTO, HttpSession session) {

		System.out.println("MemberController deletePro()");
		System.out.println(memberDTO); 

		memberDTO.setId((String)session.getAttribute("id"));
		MemberDTO memberDTO2 = memberService.userCheck(memberDTO);
		
		System.out.println(memberDTO2);

		
		if(memberDTO2 != null) {
				 memberService.deleteMember(memberDTO2);
				 session.invalidate();
				 
				//메인 가상주소 /member/main 주소변경 이동
				return "redirect:/main/main";
		}else {
				JOptionPane.showMessageDialog(null, "비밀번호 불일치");
				return "redirect:/main/main";
		}
	}//deletePro()
	
	
	@RequestMapping(value = "/mypageFreelancer/mypageFreelancer1", method = RequestMethod.GET)
	public String mypageFreelancer1(HttpSession session, Model model) {
		System.out.println("MemberController mypageFreelancer1()");
		String id = (String)session.getAttribute("id");
		MemberDTO memberDTO = memberService.getMember(id);
		model.addAttribute("memberDTO", memberDTO);
		return "mypageFreelancer/mypageFreelancer1";
	}//mypageFreelancer1
	
	@GetMapping("/mypageFreelancer/mypageFreelancer2")
	public String mypageFreelancer2(HttpSession session, Model model) {
		System.out.println("MemberController mypageCompany2()");
		
		String id = (String)session.getAttribute("id");
		System.out.println(id);
		List<ResumeDTO> ResumeDTOList = memberService.resumeCheck(id);
		
		model.addAttribute("ResumeDTOList",ResumeDTOList);
		
		return "mypageFreelancer/mypageFreelancer2";
	}//mypageFreelancer2
	
	@GetMapping("/mypageFreelancer/mypageFreelancer4")
	public String mypageFreelancer4(HttpSession session, Model model) {
		System.out.println("MemberController mypageFreelancer4()");
	
		String id = (String)session.getAttribute("id");
	
		List<Scrap_projectDTO> Scrap_projectDTOList = memberService.projectScrap(id);
		
		model.addAttribute("Scrap_projectDTOList",Scrap_projectDTOList);
		
		return "mypageFreelancer/mypageFreelancer4";
	}//mypageFreelancer4
	
	
	@GetMapping("mypageFreelancer/mypageFreelancer5")
	public String mypageFreelancer5(HttpSession session, Model model) {
		System.out.println("MemberController mypageCompany5()");
		
		String id = (String)session.getAttribute("id");
		System.out.println(id);
		List<ChattingDTO> ChattingDTOList = memberService.ChattingCheck(id);
		
		model.addAttribute("ChattingDTOList",ChattingDTOList);
		
		return "mypageFreelancer/mypageFreelancer5";
	}//mypageFreelancer5
	
	
	@GetMapping("/mypageFreelancer/mypageFreelancer6")
	public String mypageFreelancer6() {
		return "mypageFreelancer/mypageFreelancer6";
	}//mypageFreelancer6()
	
	
	@PostMapping("/updatePro")
	public String updatePro(MemberDTO memberDTO) {
		System.out.println("MemberController updatePro()");
		System.out.println(memberDTO);
		
		MemberDTO memberDTO2 = memberService.userCheck(memberDTO);
		
		if(memberDTO2 != null) {
		memberService.updateMember(memberDTO);
		
		return "redirect:/main/main";
		}else {
			return "mypageCompany/msg";
		}
	}//updatePro()
	
	
	
	
}
