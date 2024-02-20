<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">
<jsp:include page="../inc/top.jsp" />
<head>
<meta charset="UTF-8">
<title>마이페이지 - 기업</title>
<link href="//i.jobkorea.kr/content/css/ver_2/common-sv-202401301659.css" rel="stylesheet" type="text/css" />
<link href="//i.jobkorea.kr/content/css/ver_2/text_user/resume/view.css?v=202402061400" rel="stylesheet" type="text/css" />

</head>
<body>


<div id="border">
	</div>
	<div class="sidemenu-wrap" style="margin-left:-1660px; margin-top: 195px;">
    <div class="sidemenu">
    
        <button type="button" class="button button-update" onclick="location.href='${pageContext.request.contextPath}/mypageCompany/mypageCompany1'"><span>회원정보 수정</span></button>
        <button type="button" class="button button-update" onclick="location.href='${pageContext.request.contextPath}/mypageCompany/mypageCompany2'"><span>나의 프로젝트</span></button>
    	<button type="button" class="button button-update" onclick="location.href='${pageContext.request.contextPath}/mypageCompany/mypageCompany3'"><span>프로젝트 등록</span></button>
    	<button type="button" class="button button-update" style="background-color: blue;"><span style="color: white;">관심 프리랜서(찜)</span></button>
    	<button type="button" class="button button-update" onclick="location.href='${pageContext.request.contextPath}/mypageCompany/mypageCompany5'"><span>1:1채팅 내역</span></button>
    	<button type="button" class="button button-update" onclick="location.href='${pageContext.request.contextPath}/mypageCompany/mypageCompany6'"><span>회원탈퇴</span></button>
   
    </div>
</div>
    <div class="modal modal-spinner" role="dialog" aria-hidden="true" style="display:none;"></div>
    <div class="resume-view-page">
        <div class="resumeHeader">
            
        </div>
        <div class="resume-view-wrapper" >
        <br><br>
            <div class="resume-view-container" style="height: 700px !important">
                <div class="resume-subject" style="text-align: center !important;">마이 페이지(기업)</div>


<div class="summary col-4"></div>
<div class="list list-education"></div>
<br><br><br><br><br>
<fieldset style="text-align: center; font-size: 20px; width: 100%; height: 80%;" >
	<c:forEach var="Scrap_resumeDTO" items="${Scrap_resumeDTOList}">
<div>
<label style="color: blue; font-weight: bold;">프리랜서 이름 :  &nbsp;&nbsp;</label>
<label>${Scrap_resumeDTO.name} &nbsp;&nbsp; / &nbsp;&nbsp; </label>
<label style="color: blue; font-weight: bold;">이력서 제목 : &nbsp;&nbsp; </label>
<label>${Scrap_resumeDTO.r_name}</label><br><br>
</div>
	</c:forEach>
</fieldset>

        


 			</div>
        </div>
    </div>
  <br><br><br><br><br>
<jsp:include page="../inc/bottom.jsp" />
</body>
</html>