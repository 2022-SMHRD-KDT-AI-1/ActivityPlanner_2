<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="signUp.css" />
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>

<link rel="stylesheet" type="text/css" href="./CSS/signUp.css" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
</head>
<body>
	<img src="./timeB로고.svg" id="logo" />
	<div class="container">
		<form action="JoinService" method="POST" class="joinForm"
			onsubmit="DoJoinForm__submit(this); return false;">
			<h2 style="text-align: center">회원가입</h2>
			<div class="textForm" div style="text-align: center">
			<!-- 아이디 입력 -->
				<input name="loginId" type="text" class="id" placeholder="아이디" />
			</div>
			
			<!-- 비밀번호 입력 -->
			<div class="textForm" div style="text-align: center">
				<input name="loginPw" type="password" class="pw" placeholder="비밀번호" />
			</div>
			
			<!-- 비밀번호 확인 입력 -->
			<div class="textForm" div style="text-align: center">
				<input name="loginPwConfirm" type="password" class="pw"
					placeholder="비밀번호 확인" />
			</div>
			
			
			<!-- 이름 입력 -->
			<div class="textForm" div style="text-align: center">
				<input name="name" type="text" class="name" placeholder="이름" />
			</div>

			<!-- 성별 입력 -->
			<div class="textForm" div style="text-align: left">
				<font style="color: #636e72">여</font><input name="gender" type="radio" class="gender" value="F" /> <font style="color: #636e72">남</font><input
					name="gender" type="radio" class="gender" value="M" />
			</div>
			
			<!-- 닉네임 입력 -->
			<div class="textForm" div style="text-align: center">
				<input name="nickname" type="text" class="nickname"
					placeholder="닉네임" />
			</div>
			
			<!-- 전화번호 입력 -->
			<div class="textForm" div style="text-align: center">
				<input name="cellphoneNo" type="tel" class="cellphoneNo"
					placeholder="전화번호" />
			</div>
			
			<!-- 전공 -->
			<div class="textForm" style="text-align: center">
				<select class="inp_s" id="mjgs_select_box" name="majors"
					title="안내받을 학과 선택">
					<option value="">학과 선택</option>
					<option data-udt="2021.01" value="1">디자인</option>
					<option data-udt="2021.01" value="2">기획</option>
				</select>
			</div>
			
			<!-- 생일 입력 -->
			<div class="textForm">
				<p>
					<input id="datepicker" name = "birth" class="birth2" type="text"
						placeholder="생년월일" />
				</p>
			</div>
			
			
			<div class="button" style="text-align: center">
				<input type="submit" class="btn" value="JOIN" />
			</div>
			<!--이것은 가입하겠다는 버튼-->
		</form>
	</div>
</body>
</html>
