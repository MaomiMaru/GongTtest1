<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공티 - 채팅</title>

<!-- 참고 https://yjdawn.tistory.com/63 -->
<style>

#chatting-bg{
	width: 360px;
	height: 400px;
	border: 1px solid black;
  	background-color: white;  
	overflow: auto;
}

#chatting-bg > p > span {
  	background-color: skyblue; 
	padding: 5px;
	border-radius: 5px;
}

#chatting-bg > p {
	margin: 20px 10px;
	text-align: right;
}

    </style>
</head>
<body>
<h1 align="left">채팅</h1>
	<div>
<!-- 기업회원일 때만 매칭완료버튼을 누를 수 있게 -->
    <button name="chatting-complete" onclick="">매칭완료</button>
<!-- 기업회원, 프리랜서 회원 공통으로 채팅종료 -->
    <button name="chatting-out" onclick="window.close()">채팅종료</button>
    </div>
 <div id="chatting-bg">
        <p><span>입력되는 채팅출력</span></p>
    </div>
    <input type="text" size="40" id="chattingInput" onkeyup="inputEnter()">
    <button onclick="readValue()">입력</button>


<!-- script 구간 ------------->
<script>
function readValue(){// 입력된값을 읽어서 채팅창에출력
    //채팅과 관련된 요소 모두얻어오기
const bg = document.getElementById("chatting-bg");
const input = document.querySelector("#chattingInput");

if( input.value.trim().length > 0){        //채팅이 정상입력에만 출력
bg.innerHTML += "<p><span>"+input.value+"</span></p>"; //채팅창 입력값으로 채팅추가
bg.scrollTop=bg.scrollHeight;             // 스크롤을 제일 하단으로
}
input.value="";
}
        
function inputEnter(){
if( window.event.key=="Enter"){
readValue();
}
}
// ajax 추가    
// function sendMessage() {
// var message = document.getElementById("message-input").value;
// if (message.trim() !== "") {
// var currentTime = getCurrentTime();
// appendMessage("나", message, currentTime);
// }
// }

// function appendMessage(sender, message, time) {
// var chatBox = document.getElementById("chat-box");
// var messageDiv = document.createElement("div");
// messageDiv.innerHTML = `<strong>${sender}:</strong> ${message} <span class="time">${time}</span>`;
// chatBox.appendChild(messageDiv);
// document.getElementById("message-input").value = "";
// chatBox.scrollTop = chatBox.scrollHeight; // 자동으로 스크롤 아래로 이동
// }

// function getCurrentTime() {
// var now = new Date();
// var hours = now.getHours();
// var minutes = now.getMinutes();
// var ampm = hours >= 12 ? '오후' : '오전';
// hours = hours % 12;
// hours = hours ? hours : 12; // 0시는 12시로 표시
// minutes = minutes < 10 ? '0' + minutes : minutes;
// var currentTime = `${ampm} ${hours}:${minutes}`;
// return currentTime;
// }

</script>
</body>
</html>