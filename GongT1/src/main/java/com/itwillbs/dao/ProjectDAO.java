package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProjectDTO;

@Repository
public class ProjectDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mappers.ProjectMapper";
	
	public int getProjectCount() {
		System.out.println("ProjectDAO getProjectCount()");
		
		return sqlSession.selectOne(namespace + ".getProjectCount");
	}//getProjectCount()
	
	public ProjectDTO getProject(int p_num) {
		System.out.println("ProjectDAO getProject()");
		
		return sqlSession.selectOne(namespace+".getProject", p_num);
	}//getProject()

	public MemberDTO getMember(int p_num) {
		System.out.println("ProjectDAO getMember()");
		
		return sqlSession.selectOne(namespace+".getMember", p_num);
	}//getMember()
	

	
}//class ProjectDAO
