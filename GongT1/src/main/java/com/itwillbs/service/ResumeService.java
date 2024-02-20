package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ResumeDAO;
import com.itwillbs.domain.ProjectDTO;
import com.itwillbs.domain.ResumeDTO;
import com.itwillbs.domain.PageDTO;


@Service
public class ResumeService {

	@Inject
	private ResumeDAO resumeDAO;
	
	public int getResumeCount() {
		System.out.println("ResumeService getResumeCount()");
		
		return resumeDAO.getResumeCount();
	}//getResumeCount()

	public List<ResumeDTO> getResumeBoardList(PageDTO pageDTO) {
		System.out.println("ResumeService getResumeBoardList()");
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
		
		return resumeDAO.getResumeBoardList(pageDTO);
	}//getResumeBoardList()
	
	public int getResumeBoardCount(PageDTO pageDTO) {
		System.out.println("ResumeService getResumeBoardCount()");
		return resumeDAO.getResumeBoardCount(pageDTO);
	}//getResumeBoardCount()
	
	public ResumeDTO getResumeBoard(ResumeDTO resumeDTO) {
		System.out.println("ResumeService getResumeBoard()");
		return resumeDAO.getResumeBoard(resumeDTO);
	}//getResumeBoard()


	
}//ResumeService 클래스
