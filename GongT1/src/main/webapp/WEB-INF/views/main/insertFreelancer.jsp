<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>공티 - 프리랜서 회원가입</title>
<style>
#insert{
	margin: auto;

}

body {
font-family: Arial, sans-serif;
background-color: #f4f4f4;
text-align: center;
padding: 20px;
}

/* #idForm { */
/* max-width: 400px; */
/* margin: auto; */
/* background-color: #fff; */
/* padding: 20px; */
/* border-radius: 8px; */
/* box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); */
/* } */

label {
display: block;
margin-bottom: 8px;
float: left;
}

button {
background-color: #4caf50;
color: #fff;
padding: 10px;
border: none;
border-radius: 4px;
cursor: pointer;
width: 100px;
}

form{
width: 50%;
}

input{
height: 35px;
width: 300px;
}

#join{
width: 500px;
}
</style>
</head>
<body>
<article>
<center>
<h1>회원가입(프리랜서)</h1>
<form action="${pageContext.request.contextPath}/main/insertFreelancerPro" id="join" method="post">
<fieldset>
<legend>필수 정보</legend>
<!-- <button value="중복확인" class="dup"> 중복확인</button> -->
<label><input type="text" name="id" maxlength="20" placeholder="※아이디 영문,숫자 20자 내로 입력해주세요." required autofocus><button value="중복확인" class="dup"> 중복확인</button><br>
<label><input type="password" name="pw" maxlength="20" placeholder="※비밀번호 6자이상 20자이하로 입력해주세요." required></label><br>
<label><input type="password" name="pw2" maxlength="20" placeholder="※비밀번호를 다시 작성해주세요." required></label><br>
<label><input type="text" name="name" maxlength="20" placeholder="※이름을 입력해주세요." required></label><br>
<label><input type="email" name="email" placeholder="※이메일을 입력해주세요." required><button value="중복확인" class="dup"> 중복확인</button></label><br>
<label><input type="text" name="phone" placeholder="※전화번호를 입력해주세요." required><button value="중복확인" class="dup"> 중복확인</button></label>
</fieldset>
<button type="submit" value="회원가입" class="submit">회원가입</button>
<button type="reset" value="취소" class="cancel" onclick="history.back()">돌아가기</button>
</form>
</article>           
</center>
<br><br>

<script type="text/javascript">


</script>
</body>
</html>