<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JUST 쇼핑몰</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div id="hNav">
		<p><span><a href="join.jsp">회원가입</a></span> / <span><a href="login.jsp">로그인</a></span></p>
	</div>
	<header>
		<div id="logo"><h1>JUST 쇼핑몰</h1></div>
		<div id="nav">
			<ul>
				<li>
					<h3><a href="#">탑</a></h3>
					<ul>
						<li><a href="#">블라우스</a></li>
						<li><a href="#">티</a></li>
						<li><a href="#">셔츠</a></li>
						<li><a href="#">니트</a></li>
					</ul>
				</li>
				<li>
					<h3><a href="#">아우터</a></h3>
					<ul>
						<li><a href="#">자켓</a></li>
						<li><a href="#">코트</a></li>
						<li><a href="#">가디건</a></li>
						<li><a href="#">머플러</a></li>
					</ul>
				</li>
				<li>
					<h3><a href="#">팬츠</a></h3>
					<ul>
						<li><a href="#">청바지</a></li>
						<li><a href="#">반바지</a></li>
						<li><a href="#">긴바지</a></li>
						<li><a href="#">레깅스</a></li>
					</ul>
				</li>
				<li>
					<h3><a href="#">악세서리</a></h3>
					<ul>
						<li><a href="#">귀걸이</a></li>
						<li><a href="#">목걸이</a></li>
						<li><a href="#">반지</a></li>
						<li><a href="#">팔찌</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</header>
	<section id="slide">
		<div class="container">
			<div id="slide1">
				<h3>배너1</h3>
			</div>
			<div id="slide2">
				<h3>배너2</h3>
			</div>
			<div id="slide3">
				<h3>배너3</h3>
			</div>
		</div>
	</section>
	<section id="contents">
		<div id="content1">
			<div id="c1Above">
				<div class="btn active">공지사항</div>
				<div class="btn">갤러리</div>
			</div>
			<div id="c1Below1">
				공지사항 영역
			</div>
			<div id="c1Below2">
				<div id="g1"></div>
				<div id="g2"></div>
				<div id="g3"></div>
			</div>
		</div>
		<div id="content2"><p>배너</p></div>
		<div id="content3"><p>바로가기</p></div>
	</section>
	<footer>
		copyright (주)ㅇㅇㅇ
	</footer>
	<div id="popup">
		<div id="pHead"> 제목 </div>
		<div id="pBody"> 본문 </div>
		<div id="pFoot">
			<button>닫기</button>
		</div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script> <!-- jquery -->
	<script src="js/index.js"></script>
</body>
</html>