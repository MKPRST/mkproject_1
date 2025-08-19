<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뮤지컬</title>
<style>
	section 
	{
		width: 1100px;
		height: 860px; 
		margin: auto;	/* 브라우저 중앙에 */
		text-align: center;
		margin-top: 30px;
	}
	
	div{
		border: 1px solid black;
	}
	
	#first {
		height: 330px;
	}
		#first #slide img {
			border: 1px solid red;
			margin: 7px;
			margin-top: 0px;
		}
	
	
	
	#scrollMove {
		margin-top: 40px;
		height: 50px;
	}
		#scrollMove .move {
		
			font-size: 17px; 
			border: 1px solid lightgray;
			margin: 10px;
			padding: 9px;
			border-radius: 20px;
		}
	
</style>
</head>
<body>
<section>
	<div id="first">
		<div id="slide">
				<a href=""><img src="../static/slide/c1.JPG" width="230px"></a>
				<a href=""><img src="../static/slide/c2.JPG" width="230px"></a>
				<a href=""><img src="../static/slide/c3.JPG" width="230px"></a>
				<a href=""><img src="../static/slide/c4.JPG" width="230px"></a>
				<!-- <img src="../static/slide/c5.JPG" width="230px">
				<img src="../static/slide/c6.JPG" width="230px"> -->
		</div>
	</div>
	
	
	
	
	<div id="scrollMove">
			<span class="move"><a href="">뮤지컬 전체보기 ></a></span>
			<span class="move"><a href="">요즘 HOT</a></span>
			<span class="move"><a href="">오리지널/내한</a></span>
			<span class="move"><a href="">라이선스</a></span>
			<span class="move"><a href="">창작뮤지컬</a></span>
	</div>
	
	<div>
		어떤 이미지들
	</div>
	
	<div>
		<caption><h3>지금 할인중!</h3></caption>
	</div>
	
	<div>
		<caption><h3>티켓 오픈</h3></caption>
	</div>
	
	<div>
		<caption><h3>뮤지컬 둘러보기</h3></caption>
	</div>


</section>
</body>
</html>