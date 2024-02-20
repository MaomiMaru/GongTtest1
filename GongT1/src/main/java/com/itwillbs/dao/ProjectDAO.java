package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.ProjectDTO;
import com.itwillbs.domain.PageDTO;

@Repository
public class ProjectDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mappers.ProjectMapper";
	
	public int getProjectCount() {
		System.out.println("ProjectDAO getProjectCount()");
		return sqlSession.selectOne(namespace + ".getProjectCount");
	}//getProjectCount()
	
	public int getProjectMaxNum() {
		System.out.println("ProjectDAO getProjectMaxNum()");
		return sqlSession.selectOne(namespace + ".getProjectMaxNum");
	}//getProjectMaxNum()

	public List<ProjectDTO> getProjectBoardList(PageDTO pageDTO) {
		System.out.println("ProjectDAO getProjectBoardList()");
		return sqlSession.selectList(namespace + ".getProjectBoardList", pageDTO);
	}//getProjectBoardList()
	
	public int getProjectBoardCount(PageDTO pageDTO) {
		System.out.println("ProjectDAO getProjectBoardCount()");
		return sqlSession.selectOne(namespace + ".getProjectBoardCount", pageDTO);
	}//getProjectBoardCount()
	
	public ProjectDTO getProjectBoard(ProjectDTO projectDTO) {
		System.out.println("ProjectDAO getProjectBoard()");
		return sqlSession.selectOne(namespace + ".getProjectBoard", projectDTO);
	}//getProjectBoard()
	
	public void updateProjectReadcount(ProjectDTO projectDTO) {
		System.out.println("ProjectDAO updateProjectReadcount()");
		sqlSession.update(namespace + ".updateProjectReadcount", projectDTO);
	}//updateProjectReadcount()
	
	

}//ProjectDAO 클래스
