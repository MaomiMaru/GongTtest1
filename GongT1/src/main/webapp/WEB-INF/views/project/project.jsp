<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>프로젝트</title>
<link href="//i.jobkorea.kr/content/css/ver_2/common-sv-202401301659.css" rel="stylesheet" type="text/css" />
<link href="//i.jobkorea.kr/content/css/ver_2/text_user/resume/view.css?v=202402061400" rel="stylesheet" type="text/css" />
<style>

</style>
</head>

<body>
<!--	Navbar Start -->
<%--     <jsp:include page="top_240208.jsp"/> --%>
<!--	Navbar End -->
<div id="border">
	</div>
	<div class="sidemenu-wrap" style="margin-left:-1660px; margin-top: 195px;">
    <div class="sidemenu">
        <button type="button" class="button button-update" style="background-color: blue;">
        	<span style="color: white;" onclick="location.href='${pageContext.request.contextPath}/main/main'">프로젝트 찾기</span></button>
        <button type="button" class="button button-update"><span>프리랜서 찾기</span></button>
    </div>
</div>

    <div class="modal modal-spinner" role="dialog" aria-hidden="true" style="display:none;"></div>
    <div class="resume-view-page">
        <div class="resumeHeader"></div>
        <div class="resume-view-wrapper">
            <div class="resume-view-container">
                <div class="resume-subject">${projectDTO.p_title}</div>
                

<div class="base profile">
    <div class="container">
        <div class="info-container">
            <div class="info-general">
                <div class="item name">${memberDTO.name}</div>
                <div class="item year">
                	
                </div>
                <div class="item age"> </div>
            </div>
            <div class="info-detail">
            	<div class="item">
                	<div class="label">연락처</div>
                                <div class="value">${memberDTO.phone}</div>
                            </div>
                        <div class="item">
                            <div class="label">Email</div>
                            <div class="value">
                                <a href="mailto:${memberDTO.email}">${memberDTO.email}</a>
                            </div>
                        </div>
            </div>
        </div>
    </div>
    
    
	<div class="summary col-4">
		<div class="list list-education">
            <div class="item is-singleline newcomer">
                <div class="header">공고 등록일시</div>
                <div class="options">
                    <div class="description">
                    	<fmt:formatDate value="${projectDTO.p_writedate}" pattern="yyyy년 MM월 dd일 HH:mm"/>
                    </div>
                </div>
            </div>

            <div class="item is-singleline newcomer">
                    <div class="header">공고 마감일시</div>
                    <div class="description">
                    	<fmt:formatDate value="${projectDTO.p_deadline}" pattern="yyyy년 MM월 dd일 HH:mm"/>
                    </div>
            </div>

        	<div class="item is-singleline">
            	<div class="header">프로젝트 시작 예정일</div>
            	<div class="description">
            		<fmt:formatDate value="${projectDTO.p_start}" pattern="yyyy년 MM월 dd일"/>
            	</div>
        	</div>

	        <div class="item is-singleline">
            	<div class="header">프로젝트 종료 예정일</div>
            	<div class="description">
            		<fmt:formatDate value="${projectDTO.p_end}" pattern="yyyy년 MM월 dd일"/>
            	</div>
        	</div>
		</div>
	</div>
</div>
<input type="hidden" id="p_num" name="p_num" value="${projectDTO.p_num}" />


<div class="base education">
	<h2 class="header">프로젝트 내용</h2>
	<div class="list list-education">
    	<div class="content">
        	<div class="content-header">
            	<div class="name"><br>${projectDTO.p_content}</div>
            </div>
            <div class="content-body">
                <div class="info"></div>
            </div>
        </div>
              
    </div>
</div>
        

<div class="base hopework" id="js-hopeworkAnchor">
	<h2 class="header">모집 정보</h2>
    <table class="table table-hopework">
    	<caption><span class="skip">모집 정보</span></caption>
        <tbody>
        	<tr>
            	<th scope="row">근무지역</th>
                <td>
                	${projectDTO.region}
                	
                </td>
            </tr>
            <tr>
                <th scope="row">필요인원</th>
                <td>${projectDTO.p_member}명</td>
            </tr>
            <tr>
                <th scope="row">필요직종</th>
                <td><div class="content is-label">
                    	<div class="value">
                        	<ul class="list-hopework">
                					<li><div class="item">${projectDTO.field}</div></li>
                            </ul>
                        </div>
                    </div>
                </td>
             </tr>
        </tbody>
    </table>
</div>


<div class="base certificate">
    <h2 class="header">첨부파일</h2>
    <div class="list list-certificate">
    	<div class="item pdf-page-break">
        	<div class="date">모집 공고</div>
            <div class="content">
            	<div class="content-header">
                	<div class="name">모집.pdf</div>
                    <div class="agency">600kb</div>
                </div>
            </div>
        </div>
    </div>
</div>
       

<div class="sign">
    <div class="message">위의 모든 기재사항은 사실과 다름없음을 확인합니다.</div>
    <div class="writer">작성자 : ${memberDTO.name}</div>
    <div class="warning">
        <div class="description">위조된 문서를 등록하여 취업/구인활동에 이용 시 법적 책임을 지게 될 수 있습니다.<br>
        공티는 기업과 구직자가 등록한 문서에 대해 보증하거나 별도의 책임을 지지 않으며<br>첨부된 문서를 신뢰하여 발생한 법적 분쟁에 책임을 지지 않습니다.<br>
        또한 구인/구직 목적 외 다른 목적으로 이용시 공고/이력서 삭제 혹은 비공개 조치가 될 수 있습니다.</div>
    </div>
</div>

            </div>
        </div>
    </div>

    
<div class="sidemenu-wrap">
    <div class="sidemenu">
        <button type="button" class="button button-update"><span>프로젝트 공고 수정</span></button>
        <button type="button" class="button button-update"><span>프로젝트 공고 삭제</span></button>
        <div class="buttons">
            <button type="button" class="button button-print"><span>찜하기</span></button>
            <button type="button" class="button button-send-email"><span>1:1 채팅 신청</span></button>
            <button type="button" class="button button-view-msword"><span>목록</span></button>
            <button type="button" class="button button-view-pdf"><span>첨부파일 다운</span></button>
        </div>

        <div class="nav" role="navigation">
            <ul>
                <li><button type="button" class="button button-nav">공고 정보</button></li>
                <li><button type="button" class="button button-nav">프로젝트 내용</button></li>
                <li><button type="button" class="button button-nav">모집 정보</button></li>
                <li><button type="button" class="button button-nav">첨부파일</button></li>
            </ul>
        </div>
        <button type="button" class="button button-to-top">위로</button>
    </div>
</div>

<!--	Footer Start -->
<%--     <jsp:include page="bottom_240208.jsp"/> --%>
<!--	Footer End -->
</body>
</html>