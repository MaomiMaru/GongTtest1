<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice_write</title>
<%-- <link href="${pageContext.request.contextPath}/resources/css/default.css" rel="stylesheet" type="text/css"> --%>
<%-- <link href="${pageContext.request.contextPath}/resources/css/subpage.css" rel="stylesheet" type="text/css"> --%>

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
#write{
	margin-right:500px;
}
#notice{
	margin-left:200px;
	}
</style>
</head>

</head>
<body>
<jsp:include page="../inc//top.jsp" />
<div id="border">
<div id="up">
	<h2>공지사항 글쓰기</h2>
</div>

<div id="left">		
<ul>
<%-- <jsp:include page="../top.jsp" /> --%>
<li style="font-weight: bold;"><a href="#">공지사항</a></li>

<li><a href="#">자주 묻는 질문</a></li>
<li><a href="#">1:1문의</a></li>

</ul>
</div>

<div id="right">
<!-- <form action="" id="join"> -->
<fieldset>



<!-- <article> -->

<form action="${pageContext.request.contextPath}/Admin/writePro" method="post">
<table id="notice">
<tr><td>공지사항 작성자</td><td><input type="text" name="admin_id" id = "write" value="${sessionScope.admin_id}" readonly></td></tr>
<tr><td>공지사항 제목</td><td><input type="text" id = "write" name="notice_title"  style ="width:473px;"></td></tr>

<tr><td>공지사항 내용</td><td><textarea name="notice_content" rows="20" cols="50" id = "write"></textarea></td></tr>
</table>

<!-- location 자바스크립 내장객체 => 웹브라우저 주소줄을 객체로 정의 -->
<!-- location 내장객체 멤버변수 => href 변수 : 웹브라우저 주소줄 내용을 저장하고 있는 변수 -->
<!--                      => href 변수 내용이 변경되어지면 웹브라우저 주소도 변경 -->
<div id="table_search">
<input type="submit" value="글쓰기" class="btn"   
onclick="location.href='${pageContext.request.contextPath}/Admin/notice'">



<div class="clear"></div>

<!-- 				<div id="page_control"> -->
<!-- 					<a href="#">이전</a> <a href="#">1</a><a href="#">2</a><a href="#">3</a> -->
<!-- 					<a href="#">4</a><a href="#">5</a><a href="#">6</a> <a href="#">7</a><a -->
<!-- 						href="#">8</a><a href="#">9</a> <a href="#">10</a> <a href="#">다음</a> -->
</fieldset>	
</form>
<!-- </form>		 -->
	

	
</div>

</div>
<jsp:include page="../inc//bottom.jsp" />
</body>
</html>