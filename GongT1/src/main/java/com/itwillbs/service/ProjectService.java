package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ProjectDAO;
import com.itwillbs.domain.ProjectDTO;
import com.itwillbs.domain.PageDTO;

@Service
public class ProjectService {

	@Inject
	private ProjectDAO projectDAO;
	
	public int getProjectCount() {
		System.out.println("ProjectService getProjectCount()");
		
		return projectDAO.getProjectCount();
	}//getProjectCount()
	
	public List<ProjectDTO> getProjectBoardList(PageDTO pageDTO) {
		System.out.println("ProjectService getProjectBoardList()");
		// 시작하는 행번호 구하기
		int currentPage = pageDTO.getCurrentPage();
		int pageSize = pageDTO.getPageSize();
		
		int startRow = (currentPage - 1) * pageSize + 1;
		
		// 끝나는 행번호 구하기
		int endRow = startRow + pageSize - 1;
		
		// pageDTO에 저장
		// boardMapper => limit 시작행-1,개수
		pageDTO.setStartRow(startRow - 1);
		pageDTO.setEndRow(endRow);
		
		return projectDAO.getProjectBoardList(pageDTO);
	}//getProjectBoardList()
	
	public int getProjectBoardCount(PageDTO pageDTO) {
		System.out.println("ProjectService getProjectBoardCount()");
		return projectDAO.getProjectBoardCount(pageDTO);
	}//getProjectBoardCount()
	
	public ProjectDTO getProjectBoard(ProjectDTO projectDTO) {
		System.out.println("ProjectService getProjectBoard()");
		return projectDAO.getProjectBoard(projectDTO);
	}//getProjectBoard()
	
	public void updateProjectReadcount(ProjectDTO projectDTO) {
		System.out.println("ProjectService updateProjectReadcount()");
		projectDAO.updateProjectReadcount(projectDTO);
	}//updateProjectReadcount()


} //ProjectService클래스
