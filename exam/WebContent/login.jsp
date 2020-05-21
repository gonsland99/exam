<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/login.css"/>
<title>로그인</title>
</head>
<body>
	<section>
		<h2>로그인</h2>
		<form name="login" action="loginAction.jsp" method="post">
			<div class="container">
				<div><input type="text" placeholder="아이디(이메일)" name="uId" required="required" autocapitalize="none"></div>			
				<div><input type="password" placeholder="비밀번호" name="uPw" required="required"></div>
				<div><button type="submit">로그인</button></div>			
			</div>
		</form>
	</section>
</body>
</html>