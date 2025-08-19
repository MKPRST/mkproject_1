<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	section {
       width:1300px;
       height: 600px;
       margin:auto;
       background:white;
       border: 1px solid black;
    }
/*slide slide slide slide slide slide slide slide*/
    #slide {
       width:1410px; 
       margin:auto;
       overflow: hidden; 
       	
    }
	    #slide #slideImg {
	    	height: 460px;	
	    	position: relative;
	    	display: flex;
	    }
		    
		
/*ranking ranking ranking ranking ranking ranking */	
	#rankImgTr {
		height: 100px;
	}	    
		#rankImgTr .rankImg div {
			width: 170px;
			border: 1px solid red;
		}	 
	.rankImg {
		border: 1px solid black;
		padding-left: 20px;
	}
	
</style>
<script>


	$(function()
	{
		setInterval(function()
		{
			 $("#slideImg").animate({			 
				 marginLeft: "-1410px"
				 
			 }, 200, function() 
						 {
							 $(".img").eq(0).insertAfter($(".img").eq(6));
							 $("#slideImg").css("marginLeft", "0px");
						 });
		},3000);
	});
	

</script>
</head>
<body>

	<div id="slide">	<!-- 큰 직사각형 -->
		
				<div id="slideImg">
						<img src="../static/slide/img1.JPG" class="img" >
						<img src="../static/slide/img2.JPG" class="img" >
						<img src="../static/slide/img3.JPG" class="img" >
						<img src="../static/slide/img4.JPG" class="img" >
						<img src="../static/slide/img5.JPG" class="img" >
						<img src="../static/slide/img6.JPG" class="img" >
						<img src="../static/slide/img7.JPG" class="img" >
				</div>
		</div>
	
	
<section>
		<div>
			<table align="center" >
				<caption><h1>장르별 랭킹</h1></caption>
				
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
			<div style="align:center;">
				<a href="#" style="border: 1px solid gray; border-radius: 25px;">오픈 예정 공연 전체보기</a>
			</div>
		</div>

</section>
</body>
</html>