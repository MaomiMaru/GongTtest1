<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅</title>
</head>
<body>
	<h1>채팅</h1>
	
<!-- 출처 :  https://onetimeoneday.tistory.com/163	 -->
	<input type="text" id="msg">
	<button onclick="f01();">전송</button>
	
	
	<hr>
	
	<div id="result"></div>
	
	<script type="text/javascript">
		const resultDiv = document.querySelector("#result");
		
		//웹소켓 만들기
		//()안에 연결할 경로 지정하기
		//http:// 는 비연결형 통신방식이기 때문에 이 경로를 사용하면 안됨
		//그래서 웹소켓 프로토콜을 사용해야 한다.
		//그래서 앞에 ws:를 다는 것이다.
		let ws = new WebSocket("ws://200.200.200.3:8888/app/test");
		
		//웹소켓이 오픈되었을때 
		ws.onopen = funcOpen;
		
		//웹소켓 연결이 끝났을때
		ws.onclose = funcClose;
		
		//웹소켓 에러가 날때
		ws.onerror = funcError;
		
		//웹소켓 메시지 받았을때
		ws.onmessage = funcMessage;
		
		
		//웹소켓 오픈되었을때 실행되는 함수
		function funcOpen() {
			console.log("소켓 연결됨");
		}
		
		//웹소켓 닫았을때 실행되는 함수
		function funcClose() {
			console.log("소켓 닫힘");
		}
		
		//웹소켓 에러가 날 때 실행되는 함수
		function funcError() {
			console.log("소켓 에러남");
		}
		
		
		//웹소켓 메시지 받았을때 실행되는 함수
		function funcMessage(event) {
			console.log("소켓 통해서 메시지 받음");
			
			//받은 데이터를 파싱하기
			const data = JSON.parse(event.data);
			resultDiv.innerHTML += '<div>'+"<strong>["+ data.nick +"]</strong>"+"<span>"+ data.msg+"</span>"+"<sub>"++"</sub>"+'</div>';
		}
		
	
		
		//버튼 클릭시 웹소켓 메시지 보내기
		function f01() {
			const userMsg = document.querySelector("#msg").value;
			
			ws.send(userMsg);
		}
	</script>
</body>
</html>