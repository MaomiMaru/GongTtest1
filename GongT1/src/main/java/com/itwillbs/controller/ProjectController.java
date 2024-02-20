package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.domain.ProjectDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.service.ProjectService;
import com.itwillbs.service.ResumeService;

@Controller
public class ProjectController {

	@Inject
	private ProjectService projectService;
	
	@RequestMapping(value = "/project", method = RequestMethod.GET)
	public String project(HttpServletRequest request, PageDTO pageDTO, Model model) {
		//검색어 가져오기(notice submit에서 name = "search")
		String search = request.getParameter("search");
		String select = request.getParameter("select");
		
		// 한화면에 보여줄 글개수 설정
		int pageSize = 5;
		// pageNum 에 파라미터값을 가져오기
		String pageNum = request.getParameter("pageNum");
		// pageNum이 없으면 "1"로 설정
		if(pageNum == null) {
			pageNum = "1";
		}
		// pageNum => 정수형 변경
		int currentPage = Integer.parseInt(pageNum);
		// pageDTO 저장 
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		//검색어 추가
		pageDTO.setSearch(search);
		//select 추가
		pageDTO.setSelect(select);
		
		List<ProjectDTO> projectBoardList = projectService.getProjectBoardList(pageDTO);
		
		//페이징 작업
		//전체 글개수 구하기 int 리턴할형 count = getProjectBoardCount()
		int count = projectService.getProjectBoardCount(pageDTO);
		//한 화면에 보여줄 페이지 개수 설정
		int pageBlock = 10;
		//한 화면에 보여줄 시작페이지 구하기
		int startPage = (currentPage - 1)/pageBlock*pageBlock+1;
		//한 화면에 보여줄 끝페이지 구하기
		int endPage = startPage + pageBlock - 1;
		//전체 페이지개수 구하기
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		//끝페이지, 전체 페이지수 비교 => 끝페이지가 크면 전체 페이지로 변경
		if(endPage > pageCount) {
			endPage = pageCount;
		}
		
		//pageDTO 저장
		pageDTO.setCount(count); // notice.jsp => [전체글개수 ${pageDTO.count}]
		pageDTO.setPageBlock(pageBlock);
		pageDTO.setStartPage(startPage);
		pageDTO.setEndPage(endPage);
		pageDTO.setPageCount(pageCount);
	
		//model 저장
		model.addAttribute("pageDTO", pageDTO);
		model.addAttribute("projectBoardList", projectBoardList);
		
		return "searchCom_240213";
	
	} //project()
	
} //ProjectController
