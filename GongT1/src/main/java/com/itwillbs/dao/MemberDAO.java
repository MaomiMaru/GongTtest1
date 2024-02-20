package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.ChattingDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProjectDTO;
import com.itwillbs.domain.ResumeDTO;
import com.itwillbs.domain.Scrap_projectDTO;
import com.itwillbs.domain.Scrap_resumeDTO;

@Repository
public class MemberDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mappers.MemberMapper";
	

	public void insertMember(MemberDTO memberDTO) {
		System.out.println("MemberDAO insertMember()");
		sqlSession.insert(namespace+".insertMember",memberDTO);
	}
	
	public int getCompanyCount() {
		System.out.println("CompanyDAO getCompanyCount()");
		
		return sqlSession.selectOne(namespace + ".getCompanyCount");
	}//getCompanyCount()
	
	public int getMatchingCount() {
		System.out.println("MemberDAO getMatchingCount()");
		
		return sqlSession.selectOne(namespace + ".getMatchingCount");
	}//getMatchingCount()
	
	public MemberDTO getMember(String id) {
		System.out.println("MemberDAO getMember()");
		
		return sqlSession.selectOne(namespace + ".getMember", id);
	}//getMember()
	
	public MemberDTO userCheck(MemberDTO memberDTO) {
		System.out.println("MemberDAO userCheck()");
		
		return sqlSession.selectOne(namespace + ".userCheck", memberDTO);
	}//userCheck()
	
	
	public void updateMember(MemberDTO memberDTO) {
		System.out.println("MemberDAO updateMember()");
		
		sqlSession.update(namespace + ".updateMember", memberDTO);
	}//updateMember()
	

	public List<ProjectDTO> projectCheck(String id) {
		System.out.println("MemberDAO projectCheck()");
		
		return sqlSession.selectList(namespace + ".projectCheck", id);
	}//projectCheck()
	
	public List<Scrap_resumeDTO> resumeScrap(String id) {
		System.out.println("MemberDAO resumeScrap()");
		
		return sqlSession.selectList(namespace + ".resumeScrap", id);
	}//resumeScrap()
	
	
	public List<Scrap_projectDTO> projectScrap(String id) {
		System.out.println("MemberDAO projectScrap()");
		
		return sqlSession.selectList(namespace + ".projectScrap", id);
	}//projectScrap()
	
	public void deleteMember(MemberDTO memberDTO) {
		System.out.println("MemberService deleteMember()");
		
		sqlSession.insert(namespace+".deleteMember" , memberDTO);
	}//deleteMember()
	
	public List<ResumeDTO> resumeCheck(String id) {
		System.out.println("MemberDAO resumeCheck()");
		
		return sqlSession.selectList(namespace + ".resumeCheck", id);
	}//resumeCheck()
	
	public List<ChattingDTO> ChattingCheck(String id) {
		System.out.println("MemberDAO ChattingCheck()");
		
		return sqlSession.selectList(namespace + ".ChattingCheck", id);
	}//ChattingCheck()
	
}
