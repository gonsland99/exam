<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="css/join.css"/>
</head>
<body>
	<section>
	<div class="container">
	<form name="joinForm" action="joinAction.jsp" method="post">
		<p><small><span>*</span> 은 필수 입력 항목입니다.</small></p>
		<hr/>
		<div class="clearFix">
			<div><label><span>*</span> 이름</label></div>
			<div><input type="text" name="uName" required="required" autocomplete="off"/></div>
		</div>
		<div class="clearFix">
			<div><label><span>*</span> 아이디</label></div>
			<div><input type="email" name="uEmail" required="required" autocomplete="off"/>
			<button type="button">중복확인</button></div>
		</div>
		<div class="clearFix">
			<div><label><span>*</span> 비밀번호</label></div>
			<div><input type="password" name="uPw" required="required" autocomplete="off"/>
			<small>영문 또는 영문/숫자 조합(6~12자 이내)</small></div>
		</div>
		<div class="clearFix">
			<div><label><span>*</span> 비밀번호 확인</label></div>
			<div><input type="password" name="uPw" required="required" autocomplete="off"/>
			<small>비밀번호 확인을 위해 다시 한번 입력해주세요.</small></div>
		</div>
		<div class="clearFix">
			<div><label><span>*</span> 이동통신사</label></div>
			<div>
				<select name="uMobile">
					<option value="skt">SKT</option>
					<option value="kt">KT</option>
					<option value="lg">LGU+</option>
					<option value="others">기타(알뜰폰)</option>
				</select>
			</div>
		</div>
		<div class="clearFix">
			<div><label><span>*</span> 휴대전화번호</label></div>
			<div><input type="text" name="uCp1" maxlength="3" required="required" autocomplete="off"/>
			 - <input type="text" name="uCp2" maxlength="4" required="required" autocomplete="off"/>
			 - <input type="text" name="uCp3" maxlength="4" required="required" autocomplete="off"/>
			</div>
		</div>
		<div class="clearFix">
			<div><label><span>*</span> 성별</label></div>
			<div>
				<input type="radio" name="uGender" checked="checked" value="M" id="uGender1"/><label for="uGender1">남성</label>
				<input type="radio" name="uGender" value="F" id="uGender2"/><label for="uGender2">여성</label>
			</div>
		</div>
		<div class="clearFix">
			<div><label><span>*</span> 생년월일</label></div>
			<div><input type="date" name="uBirth"/></div>
		</div>
		<div class="clearFix">
			<div><label><span>*</span> 이메일 수신동의</label></div>
			<div>
				<input type="radio" name="uEmailOk" checked="checked" value="ok" id="uEmailOk1"/><label for="uGender1">동의</label>
				<input type="radio" name="uEmailOk" value="no" id="uEmailOk2"/><label for="uEmailOk2">비동의</label>
			</div>
		</div>
		<div class="clearFix">
			<div><label><span>*</span> SNS 수신동의</label></div>
			<div>
				<input type="radio" name="uCpOk" checked="checked" value="ok" id="uCpOk1"/><label for="uCpOk1">동의</label>
				<input type="radio" name="uCpOk" value="no" id="uCpOk2"/><label for="uCpOk2">비동의</label>
			</div>
		</div>
		<div class="clearFix">
			<input type="submit" value="가입하기"/>
		</div>
	</form>
	</div>
	</section>



</body>
</html>