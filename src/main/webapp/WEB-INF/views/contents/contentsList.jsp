<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<meta charset="UTF-8">
<title>뮤지컬</title>
<style>
	section 
	{
		width: 1300px;
		margin: auto;	/* 브라우저 중앙에 */
		text-align: center;
		margin-top: 30px;
	}
	
				
	section #firstContainer {
		/*  border: 4px solid red;  */
			overflow:hidden;
	}
	section #firstContainer #first {
		width: 3000px;
		text-align:left;
	}
		section #firstContainer #first img {
		    margin-right:80px; 
		    cursor: pointer;
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
<script>
	$(function()
			{
				setInterval(function()
				{
					 $("#first").animate({			 
						 marginLeft: "-342px"
						 
					 }, 2500, function()  
								 {
									 $("#first img").eq(0).insertAfter($("#first img").eq(5));
									 $("#first").css("marginLeft", "0px");
								 });
				},4000);
			});


</script>
</head>
<body>
<section>
	<div id="firstContainer" >
		<div id="first" >
			<c:forEach items="${clist }" var="cdto" >
						<!-- 상품 하나 / 각각의 상품-->
							<img src="../static/content/${cdto.goodsImg }" width="260px" onclick="location='contentsGoods?gcode=${cdto.gcode}' "> 
					
			</c:forEach>
		</div>
		
	</div>
	
	
	<div id="scrollMove">
			<span class="move"><a href="">뮤지컬 전체보기 ></a></span>
			<span class="move"><a href="">요즘 HOT</a></span>
			<span class="move"><a href="">오리지널/내한</a></span>
			<span class="move"><a href="">라이선스</a></span>
			<span class="move"><a href="">창작뮤지컬</a></span>
	</div>
	
<div id="thirdContainer">
	<div id="third">
		<img src="../static/content/cl1.JPG" width="400px">
		<img src="../static/content/cl2.JPG" width="400px">
		<img src="../static/content/cl3.JPG" width="400px">
		<img src="../static/content/cl4.JPG" width="400px">
		<img src="../static/content/cl5.JPG" width="400px">
		<img src="../static/content/cl6.JPG" width="400px">
	</div>
</div>

	<div>
		
			<table align="center" >
				<caption><h3>티켓 오픈</h3></caption>
				
					<tr id="randImgTr">
						<td class="rankImg">
							<img src="../static/ranking/rankImg1.JPG">
							<div>뮤지컬 &lt;하트셉수트&gt;</div>
							<div style="font-size: 13px;">대학로 자유극장</div>
							<div style="font-size: 12px; color: gray;">2025.3.11 ~ 6.1</div>
							<div style="color: red;">단독판매</div>
						</td>
						<td class="rankImg">
							<img src="../static/ranking/rankImg2.JPG">
							<div>뮤지컬 지킬엔하이드 - 20주년</div>
							<div style="font-size: 13px;">블루스퀘어 신한카드홀</div>
							<div style="font-size: 12px; color: gray;">2025.3.11 ~ 6.1</div>
							<div style="color: red;">단독판매</div>
						</td>
						<td class="rankImg">
							<img src="../static/ranking/rankImg3.JPG">
							<div>뮤지컬 &lt;하트셉수트&gt;</div>
							<div style="font-size: 13px;">대학로 자유극장</div>
							<div style="font-size: 12px; color: gray;">2025.3.11 ~ 6.1</div>
							<div style="color: red;"></div>
						</td>
						<td class="rankImg">
							<img src="../static/ranking/rankImg4.JPG">
							<div>뮤지컬 &lt;하트셉수트&gt;</div>
							<div style="font-size: 13px;">대학로 자유극장</div>
							<div style="font-size: 12px; color: gray;">2025.3.11 ~ 6.1</div>
							<div style="color: red;"></div>
						</td>
						<td class="rankImg">
							<img src="../static/ranking/rankImg5.JPG">
							<div>뮤지컬 &lt;하트셉수트&gt;</div>
							<div style="font-size: 13px;">대학로 자유극장</div>
							<div style="font-size: 12px; color: gray;">2025.3.11 ~ 6.1</div>
							<div style="color: red;">단독판매</div>
						</td>
					</tr>
			</table>
		
		<div>
			<a href="" >티켓 오픈 전체보기 > </a>
		</div>
	</div>
	
	<div>
		<caption><h3>뮤지컬 둘러보기</h3></caption>
			<h4>여기는 카테고리</h4>
			<hr>
		<img src="../static/content/c7.JPG">
	</div>


</section>
</body>
</html>