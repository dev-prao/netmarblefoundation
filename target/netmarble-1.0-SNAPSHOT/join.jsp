<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>넷마블문화재단</title>
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="css/join.css">
</head>
<style>
	body{
	background: url("./image/cat\.jpg") no-repeat center;
	background-size: cover;
	}
</style>
<body>
	
	<div class="container">
			<section class="join-form">
				<h1>환영합니다. <br>회원가입을 위한 정보를 기입해주세요.</h1>
				<form method="post" action="joinAction.jsp">
					<div class="int-area">
						<%--@declare id="userid"--%><input type="text" name="userID" id="id" maxlength="12" autocomplete="off" required
						placeholder="		4자~12자.(공백 제이ㅚ)">
						<label for="userID">아이디</label>
					</div>
					<div class="int-area">
						<%--@declare id="userpassword"--%><input type="password" name="userPassword" id="pw" maxlength="20" autocomplete="off" required
						placeholder="		대소문자 구분">
						<label for="userPassword">비밀번호</label>
					</div>
					<div class="int-area">
						<%--@declare id="username"--%><input type="text" name="userName" id="name" maxlength="20" autocomplete="off" required
						placeholder="		홍길동">
						<label for="userName">이름</label>
					</div>
					<div class="int-area">
						<%--@declare id="usergender"--%><input type="text" name="userGender" id="gender" maxlength="7" autocomplete="off" required
						placeholder="		남 또는 여를 입력해주세요.">
						<label for="userGender">성별</label>
					</div>
					<div class="int-area">
						<%--@declare id="useremail"--%><input type="email" name="userEmail" id="email" maxlength="50" autocomplete="off" required
						 placeholder="		gildong@gmail.com 형식을 이용해주세요.">
						<label for="userEmail">이메일</label>
					</div>
					<div class="btn-area">
					<button id="btn" type="submit" value="회원가입">회원가입</button>
					</div>
				</form>
			</section>	
	</div>
	<script src="js/join.js"></script>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</body>
</html>
