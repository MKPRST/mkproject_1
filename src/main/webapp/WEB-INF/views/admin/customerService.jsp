<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
		border-collapse: collapse;
	}
	
  	section #modal 
  	{
       display: none;   
       position:fixed;
       left:0px;
       top:0px;
       width:100%;
       height:100%;
       background-color:rgba(0,0,0,0.6);
    }
    section #answerDiv
    {
       width:300px;
       height:400px;
       border:1px solid black;
       background:white;
       position:fixed;
       left:300px;
       top:200px;
       visibility:hidden;
       text-align: center;
    }
      section #answerDiv form > div textarea {
       width:280px;
       height:220px;
    }
      section #answerDiv form > div input[type=submit]
      {
      	width: 280px;
      	height: 50px; /* 높이 지정 */
      	margin-top: 30px;
        text-align: center; /* 텍스트가 수평 가운데 오도록 설정 */
        background-color: #8351bd; /* 배경색 */
        color: white; /* 텍스트 색상 */
        text-decoration: none; /* 링크 기본 밑줄 없애기 */
        border-radius: 5px; /* 테두리 둥글게 만들기 */
        font-size: 18px; /* 글자 크기 */
      }
      section #answerDiv form > div input[type=submit]:hover {
        background-color: #45a049;
    	}
    
</style>
<script>
	function viewanswerForm(id)
	{
		   var w=window.innerWidth;
		   var h=window.innerHeight;
		   
		   w=w/2;
		   h=h/2;
		   
		   w=w-150;
		   h=h-200;
		
		   document.getElementById("answerDiv").style.left=w+"px";
		   document.getElementById("answerDiv").style.top=h+"px";
		   
		   document.getElementById("answerDiv").style.visibility="visible";
		   document.getElementById("modal").style.display="block";
		   
		   document.getElementById("answerId").value=id;

		   
		 // alert(1);
		  event.stopPropagation();
	}
	
 
	document.onclick=function()
	{
		 document.getElementById("answerDiv").style.visibility="hidden";
		 document.getElementById("modal").style.display="none";
		 //alert(2);
	}
	
	function wordLen(my)
	{
		   var len=my.value.trim().length;
		   document.getElementById("chongWord").innerText=len;
	}
	
</script>
</head>
<body>
<section>
	<table width="1100" align="center" border="1px solid black">
		<caption><h3>상품 문의</h3></caption>
				<tr>
					<td>상품명</td>
					<td>문의 내용</td>
					<td>작성일</td>
					<td>답변 내용</td>
				</tr>	
			<c:forEach items="${qnaAll }" var="map">
				<tr>
					<td>${map.title } ${map.ans }</td>
					<td>${map.content }</td>
					<td>${map.writeday }</td>
					
					<c:if test="${map.answer!=null }">
						<td>${map.answer }</td>
					</c:if>
					<c:if test="${map.answer==null || map.answer==' '}">
						<td><button onclick="viewanswerForm(${map.id})">답변하기</button></td>
					</c:if>				
				</tr>
			</c:forEach>
	</table>


		
<div id="modal">
	<div id="answerDiv" onclick="event.stopPropagation();"> 
		<form method="post" action="adminQnaAnswer"> 
			<h3>답변</h3>
			 <input type="hidden" name="id" value="" id="answerId">
		     <div> <textarea name="answer" maxlength="200" onkeyup="wordLen(this)"></textarea> </div>
		     <div> 총글자수(<span id="chongWord">0</span>) </div>
		     <div> <input type="submit" value="완료"> </div>
		</form>
	</div>
</div>
	

</section>
</body>
</html>