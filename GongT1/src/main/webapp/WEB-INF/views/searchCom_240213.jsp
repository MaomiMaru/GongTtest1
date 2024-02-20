<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html lang="ko">

	<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>공T 프로젝트 찾기</title>
        <script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
        
        
<!-- ★★★★★★★★★★★★★★ 스타일 태그 여기에 넣으시면 됩니다 ★★★★★★★★★★★★★★ -->
<link href="//i.jobkorea.kr/content/css/ver_2/text_user/resume/view.css?v=202402061400" rel="stylesheet" type="text/css" />
    	<style>
button{
padding:0; margin:0; font-size:12.5px; letter-spacing: 0px; border:0 none;
vertical-align:middle; overflow:visible; background:transparent; cursor:pointer;
}
    	
#up {
	margin-top : 50px !important;
	text-align: center;
	width: 100%;
/* 	background-color: lightgray; */
	height: 60px;
	line-height: 60px;
}

h2{
	text-align: center;
	height: 60px;
	line-height: 60px;
}


.sidemenu {
	width: 15%;
	position: relative;
	top : 5%;
	left : 8%;
}

#left2 {
	height: 150px;
	width: 160px;
	border-style : groove;
	float: inherit;
	border-radius: 20px;
	text-align: left;
	margin-left: 5%;
	
}

#left3 {
	height: 500px;
	width: 160px;
	border-style : groove;
	float: inherit;
	border-radius: 20px;
	text-align: left;
	margin-left: 5%;
}

#right {
	clear: inherit;
	text-align: center;
	margin-right: 0px;
	position: absolute;
	top : 30%;
	left : 35%;
	}

table {
 	width: 1000px !important;
/* 	height: 200px; */
	border-collapse: collapse;
	margin-bottom: 20px;
}

th, td {
	border: 1px solid black;
	text-align: center !important;
	font-size: 20px !important;
}

h5{
	text-align: center; background-color: blue;
	color : white !important;
	border-top-left-radius: 18px;
	border-top-right-radius: 18px;
}

.btn-group{
	margin-left: 800px !important;
	margin-bottom: 5px !important;
}

		</style>

    </head>

    <body>
    
<!--	Navbar Start -->
    <jsp:include page="top_240213.jsp"/>
<!--	Navbar End -->

<div class="container-fluid project py-5 my-5" style="height:100%;
						margin-top: 0px !important;	padding: 0px !important;">
	<div class="container py-5" style="padding: 0px !important;">

                
<!-- ★★★★★★★★★★★★★★ 본문 여기에 넣으시면 됩니다 ★★★★★★★★★★★★★★ -->

<div id="up" style="margin-top: 50px !important;">
	<h2>프로젝트 찾기</h2>	
</div>

<div class="sidemenu">
        <button type="button" class="button button-update" style="background-color: blue;"><span onclick="location.href='${pageContext.request.contextPath}/project'" style="color: white !important;">프로젝트 찾기</span></button>
        <button type="button" class="button button-update"><span onclick="location.href='${pageContext.request.contextPath}/resume'">프리랜서 찾기</span></button>
</div><br>

<div id="left2">
<h5>직종(분야)</h5>
<label><input type="checkbox" name="projectField" id="projf1" checked>개발자</label><br>
<label><input type="checkbox" name="projectField" id="projf2">퍼블리셔</label><br>
<label><input type="checkbox" name="projectField" id="projf3">디자이너</label><br>
<label><input type="checkbox" name="projectField" id="projf4">기타</label><br>
</div><br>

<div id="left3">
<h5>지역</h5>
<label><input type="checkbox" name="region" id="regionA" checked>전체</label><br>
<label><input type="checkbox" name="region" id="region1">서울특별시</label><br>
<label><input type="checkbox" name="region" id="region2">부산광역시</label><br>
<label><input type="checkbox" name="region" id="region3">인천광역시</label><br>
<label><input type="checkbox" name="region" id="region4">대전광역시</label><br>
<label><input type="checkbox" name="region" id="region5">대구광역시</label><br>
<label><input type="checkbox" name="region" id="region6">울산광역시</label><br>
<label><input type="checkbox" name="region" id="region7">광주광역시</label><br>
<label><input type="checkbox" name="region" id="region8">세종특별자치시</label><br>
<label><input type="checkbox" name="region" id="region9">경기도</label><br>
<label><input type="checkbox" name="region" id="region10">강원도</label><br>
<label><input type="checkbox" name="region" id="region11">충청북도</label><br>
<label><input type="checkbox" name="region" id="region12">충청남도</label><br>
<label><input type="checkbox" name="region" id="region13">경상북도</label><br>
<label><input type="checkbox" name="region" id="region14">경상남도</label><br>
<label><input type="checkbox" name="region" id="region15">전라북도</label><br>
<label><input type="checkbox" name="region" id="region16">전라남도</label><br>
<label><input type="checkbox" name="region" id="region17">제주특별자치도</label><br>
</div>

<div id="right">
<div class="btn-group" role="group" aria-label="Basic example">
  <label><button type="button" class="btn btn-primary" id="sortMatching">매칭순</button>
  <button type="button" class="btn btn-primary" id="sortReadcount">조회순</button></label>
</div>
	<table class="table">
  <thead>
    <tr>
<th scope="col">글번호</th>
<th scope="col">제목</th>
<th scope="col">회사명</th>
<th scope="col">등록일</th>
<th scope="col">매칭횟수</th>
<th scope="col">조회수</th>
</tr>
</thead>

    <c:forEach var="projectDTO" items="${projectBoardList }">
    	<tr onclick="location.href='${pageContext.request.contextPath}/project_content?num=${projectDTO.p_num }'">
    		<td>${projectDTO.p_num}</td>
    	    <td class="left">${projectDTO.p_title}</td>
    		<td>${projectDTO.name}</td>
    		<td><fmt:formatDate value="${projectDTO.p_writedate}" pattern="yyyy.MM.dd"/></td>
    		<td>${projectDTO.matching }</td>
    		<td>${projectDTO.p_readcount}</td>
    	</tr>
    </c:forEach>

</table>
	<form action="${pageContext.request.contextPath}/project" method="get">
	<select name="select">
	<option value="p_title" selected>제목</option>
	<option value="p_content">내용</option>
	<option value="name123">회사명</option>
	</select>
	<input type="text" class="search" name="search">
	<input type="submit" value="검색" class="btn btn-primary">
	</form>
	
	<div id="page_control">
<c:if test="${pageDTO.startPage > pageDTO.pageBlock}">
	<a href="${pageContext.request.contextPath}/project?pageNum=${pageDTO.startPage - pageDTO.pageBlock}&search=${pageDTO.search}">[이전]</a>
</c:if>

<c:forEach var="i" begin="${pageDTO.startPage}" end="${pageDTO.endPage}" step="1">
<a href="${pageContext.request.contextPath}/project?pageNum=${i}&search=${pageDTO.search}">${i}</a>
</c:forEach>

<c:if test="${pageDTO.pageCount > pageDTO.endPage}">
	<a href="${pageContext.request.contextPath}/project?pageNum=${pageDTO.startPage + pageDTO.pageBlock}&search=${pageDTO.search}">[다음]</a>
</c:if>
	</div>
</div>

	</div>
</div>

<!--	Footer Start -->
    <jsp:include page="bottom_240213.jsp"/>
<!--	Footer End -->

<script type="text/javascript">
$(function(){
	
});
</script>
    </body>

</html>