package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ProjectDAO;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProjectDTO;

@Service
public class ProjectService {

	@Inject
	private ProjectDAO projectDAO;
	
	public int getProjectCount() {
		System.out.println("ProjectService getProjectCount()");
		
		return projectDAO.getProjectCount();
	}//getProjectCount()
	
	public ProjectDTO getProject(int p_num) {
		System.out.println("ProjectService getProject()");
		
		return projectDAO.getProject(p_num);
	}//getProject()


	public MemberDTO getMember(int p_num) {
		System.out.println("ProjectService getMember()");
		return projectDAO.getMember(p_num);
	}//getMember()
	
	

	
}
