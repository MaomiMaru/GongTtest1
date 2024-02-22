<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>notice</title>
<style>
#border{
	height: 1000px;
}
#up {
	margin-top : 75px;
	text-align: center;
	width: 100%;
/* 	background-color: lightgray; */
	height: 100px;
	line-height: 100px;
}

#left {
	height: 300px;
	width: 15%;
	border-style : groove;
	float: left;
	border-radius: 20px;
	text-align: center;
	margin-left: 10%;
}

#right {
 	height: 50%; 
	width: 60%;
	float: left;
	text-align: center;
	margin-right: 10%;
}


table {
	width: 100%;
/* 	height: 200px; */
	border-collapse: collapse;
	margin-bottom: 20px;
}

th, td {
	border: 1px solid black;
	text-align: center;
	padding: 4px;
	height: 1px;
}
a {
  text-decoration-line: none;
}
#footer {
    position: relative; 
    transform: translatY(100%);
}
</style>
</head>

<body>
<jsp:include page="../inc//top.jsp" />
<div id="border">
<div id="up">
	<h1>공지사항</h1>
</div>

<div id="left">		
<ul>
<li style="font-weight: bold;"><a href="${pageContext.request.contextPath}/Admin/notice">공지사항</a></li>

<li><a href="${pageContext.request.contextPath}/Admin/FAQ">자주 묻는 질문</a></li>
<li><a href="${pageContext.request.contextPath}/Admin/inquiry">1:1문의</a></li>

</ul>
</div>

<div id="right">
<form action="" id="join">
<fieldset>
<!-- <h2>공지사항</h2> -->
<table>
<tr>
<th>번호</th>
<th>제목</th>
<th>글쓴이</th>
<th>작성일</th>
<th>조회수</th>
</tr>
<c:forEach var="nDTO" items="${noticeList }">
    	
    	<tr onclick="location.href='${pageContext.request.contextPath}/Admin/notice?num=${nDTO.n_num}'">
    	<td>${nDTO.n_num}</td><td class="left">${nDTO.n_title}</td><td>${nDTO.admin_id}</td>
    	<td><fmt:formatDate value="${nDTO.n_date}" pattern="yyyy.MM.dd"/></td>
    	<td>${nDTO.n_readcount}</td></tr>
    </c:forEach>


				</table>
				<div id="table_search">
					<input type="text" name="search" class="input_box"> <input
						type="button" value="검색" class="btn">
						<input type="button" value="글쓰기" class="btn" 
  	onclick="location.href='${pageContext.request.contextPath}/Admin/write'">
<%-- 					<c:if test="${sessionScope.id != admin}"> --%>
		
<%-- </c:if> --%>
				</div>
				<div class="clear"></div>
<!-- 				<div id="page_control"> -->
<!-- 					<a href="#">이전</a> <a href="#">1</a><a href="#">2</a><a href="#">3</a> -->
<!-- 					<a href="#">4</a><a href="#">5</a><a href="#">6</a> <a href="#">7</a><a -->
<!-- 						href="#">8</a><a href="#">9</a> <a href="#">10</a> <a href="#">다음</a> -->
</fieldset>	

</form>		
	

	
</div>

</div>
<jsp:include page="../inc//bottom.jsp" />
</body>
</html>