<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>timeB 로그인</title>
<link rel="stylesheet" type="text/css" href="./CSS/login.css" />
</head>
<body>
	<img src="./timeB로고.svg" id="logo" />
	<div class="container">
		<div class="main-wrap" width="40px" height="20px">
			<form class="loginForm" action="LoginService" method="post">
				<div class="textForm" div style="text-align: center;">
					<input name="loginId" type="text" class="id" placeholder="아이디" />
				</div>
				<div class="textForm" div style="text-align: center;">
					<input name="loginPw" type="password" class="pw" placeholder="비밀번호" />
				</div>
				<div class="button" style="text-align: center;">
					<button>로그인</button>
				</div>
				<p class="forget-msg"><a href="findAcoount.jsp">아이디찾기</a> | 비밀번호찾기 | <a href="signUp.jsp">회원가입</a></p>
			</form>
		</div>
	</div>
</body>
</html>