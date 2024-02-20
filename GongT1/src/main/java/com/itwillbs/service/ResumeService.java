package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ResumeDAO;

import com.itwillbs.domain.FieldDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.RegionDTO;
import com.itwillbs.domain.ResumeDTO;



@Service
public class ResumeService {

	@Inject
	private ResumeDAO resumeDAO;
	
	public int getResumeCount() {
		System.out.println("ResumeService getResumeCount()");
		
		return resumeDAO.getResumeCount();
	}//getResumeCount()
	
	
	public MemberDTO getMember(int r_num) {
		System.out.println("ResumeService getMember()");
		return resumeDAO.getMember(r_num);
	}//getMember()

	
	public ResumeDTO getResume(int r_num) {
		System.out.println("ResumeService getResume()");
		return resumeDAO.getResume(r_num);
	}//getResume()





	
	

	
	
}
