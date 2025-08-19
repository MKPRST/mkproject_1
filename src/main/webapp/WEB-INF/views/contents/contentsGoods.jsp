<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Jquery -->
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <script src="https://code.jquery.com/jquery-latest.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
<title>goods</title>
<style>
section {
     width:1300px;
     margin:auto;
     margin-top:60px;
     position:relative;
 
   }
    #mainLeft {
    	 
    }
    
	    #mainLeft #left {
	       display:inline-block;
	       width:500px;
	       height:500px;
	    }
	    #mainLeft  #right {
	       display:inline-block;
	       width:590px;
	       height:500px;
	       vertical-align:top;
	       
	    }
		
	#sideBarRight {
		position: absolute;
	    top: 50px; /* 화면 상단에서 100px 떨어진 상태로 고정 */
	    right: 20px;
	    width: 350px;
	    height: 400px;
	    background-color: #f8f9fa;
	    padding: 20px; 
	    border: 1px solid #ddd;
	    border-radius: 10px;
	    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
	    
	}	 
		#sideBarRight #btn {
			width: 250px; 
			height: 47px;
			background: #b000b9;
			color: white;	/* 폰트컬러 */
			font-size: 20px;
		}
		#sideBarRight #qna {
			margin-top: 200px;
			width: 100px;
			font-size: 15px;
		}
	 
	 
	/*qnaform 띄우기*/ 
	  section #modal {
       display: none;   
       position:fixed;
       left:0px;
       top:0px;
       width:100%;
       height:100%;
       background-color:rgba(0,0,0,0.6);
    }
    section #qnaForm {
       width:300px;
       height:400px;
       border:1px solid black;
       background:white;
       position:fixed;
       left:300px;
       top:200px;
       visibility:hidden;
    }
    section #qnaForm form > div {
       text-align:center;
       margin-top:8px;
    }
    section #qnaForm form > div input[type=submit] {
       width:286px;
       height:30px;
    }
    section #qnaForm form > div textarea {
       width:280px;
       height:220px;
    }
    section #qnaForm #title {
       border:none;
       outline:none;
       width:96%;
       text-align:center;
       overflow:hidden;
       height:40px;
       font-weight:900;
       resize:none; /* textarea의 크기변경 불가 */
    }
	 
</style>
<script>
	$(function(){
		
		/* var isLoggedIn = "${isLoggedIn}";  */
		
		$("#date").datepicker(
		{
			numberOfMonths: 1, // 한 번에 보이는 달력 개수 (1개월)
	        dateFormat: "yy-mm-dd", // 날짜 형식
	        minDate: -5,  // 오늘 기준으로 5일 전부터 선택 가능
	        maxDate: "+1M", // 오늘 기준 1개월 후까지 선택 가능
		});
		
		$("#btn").click(function(){
			/* let selectedDate = $("#date").val(); */
			
		/* 	if(isLoggedIn === "true") { */
				let gcode = "${cdto.gcode}";
				let url = "/contents/booking?gcode="+gcode;
				
				window.open(url, "booking", "width=900, height=600");
			
			
		});
		
		
		
	});
</script>
</head>
<body><!-- contentsGoods 에서 cdto로 페이지 요소들이 넘어온 상태 -->
<section>
	<div id="mainLeft">
			<div>
				<span><h2>${cdto.title }</h2></span>
			</div>
			<div>	
				<div id="left">
						<img src="../static/content/${cdto.goodsImg }" width="260px">	
				</div> 
				<div id="right">
						<div>장소     ${cdto.location }</div>
						<div>공연기간 ${cdto.gigan }</div>
						<div>공연시간 ${cdto.sigan }</div>
						<div>관람연령 ${cdto.age}</div>
						<div>가격      ${cdto.price }</div>
				</div>
			</div>	
		
			<div>
					<div><img src="../static/content/${cdto.goodsInfoImg }" width="800px"></div>
			</div>
	</div>
	
	<div id="sideBarRight">
		  
		    	<h3>사이드바</h3>
				
			    <p>장소: ${cdto.location }</p>
			    <p>가격: ${cdto.price }</p>
			  <c:if test="${userid==null }">	<!-- 로그인이 안되어있으면 로그인페이지로 -->
			   		 <button  onclick="location='../login/login?gcode=20250001' ">예매하기</button>
			  </c:if>
			  <c:if test="${userid!=null }">  	<!-- 로그인이 되어있으면 window.open -->
		    		<button id="btn">예매하기</button>
		    		<button id="qna" onclick="qnaView()">문의</button>
		      </c:if>
		    </form>
		    
	</div>
	
	<!-- qnaform 띄우기 -->
	
	<div id="modal"> 
		   <div id="qnaForm" onclick="event.stopPropagation()">
		    <form method="post" action="qnaWriteOk">
		     <input type="hidden" name="gcode" value="${cdto.gcode}">
		     <div> <textarea name="title" id="title" readonly>${cdto.title}</textarea> </div>
		     <div> <textarea name="content" id="qnaContent" maxlength="200" onkeyup="wordLen(this)"></textarea> </div>
		     <div> 총글자수(<span id="chongWord">0</span>) </div>
		     <div> <input type="submit" value="문의저장"> </div>
		    </form>
		   </div>
		  </div>

</section>
<script>
	function qnaView()
	{
		   // 브라우저의 가로 세로를 구해서 id="qnaForm"을 중앙에 위치 시키기
		   var w=window.innerWidth;
		   var h=window.innerHeight;
		   
		   w=w/2;
		   h=h/2;
		   
		   w=w-150;
		   h=h-200;
		   
		   document.getElementById("qnaForm").style.left=w+"px";
		   document.getElementById("qnaForm").style.top=h+"px";
		   
		   document.getElementById("qnaForm").style.visibility="visible";
		   
		   document.getElementById("modal").style.display="block";
		   
		   event.stopPropagation();
	}
	//div 외의 공간을 클릭하면, 문의하기 form 을 없애기
	document.onclick=function()
	{
		  document.getElementById("qnaForm").style.visibility="hidden"; 
		  document.getElementById("modal").style.display="none";
	}
	
	
	function wordLen(my)
	{
		   var len=my.value.trim().length;
		   document.getElementById("chongWord").innerText=len;
	}
	
</script>
</body>
</html>