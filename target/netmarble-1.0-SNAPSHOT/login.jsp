<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="css/login.css">
<title>넷마블문화재단</title>
</head>
<style>
	body{
	background: url("./image/banner10\.jpg") no-repeat center;
	background-size: cover;
	}
</style>
<body>
	
	<section class="login-form">
		<h1>환영합니다! <br>넷마블문화재단 로그인</h1>
				<form method="post" action="loginAction.jsp">
					<div class="int-area">
						<input type="text" name="userID" id="id" maxlength="20" autocomplete="off" required>
						<label for="userID">USER NAME</label>
					</div>
					<div class="int-area">
						<input type="password"   name="userPassword" id="pw" maxlength="20" autocomplete="off" required>
						<label for="userPassword">PASSWORD</label>
					</div>
					<div class="btn-area">
						<button id="btn" type="submit" value="로그인">로그인</button>
					</div>
				</form>
				<div class="caption">
					<a href="">Forget Password?</a>
				</div>
	</section>
	<script src="js/login.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</body>
</html>
