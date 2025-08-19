<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	section {
		width: 1100px;
		height: 600px;
		margin: auto;	/* 브라우저 중앙에 */
		text-align: center;
		margin-top: 180px;
	}
	section div {
		margin-top: 10px;
	}
	section #lform{
		
	}
	section #txt {
		width: 380px; 
		height: 42px;
		border-radius: 10px;
	}
	section .email {
		width: 130px;
		height: 44px;
	}
	section #submit {
		width: 388px;  
		height: 46px;
		background: #5f007F;
		color: white;
	}
	
	#err {
		color: red;
	}
	
	section #txt2 {
		width: 280px; 
		height: 30px;
		border-radius: 10px;
	}
	
	section #submit2 {
		width: 290px;  
		height: 30px;
		background: #5f007F;
		color: white;
	}	
	
		section #uform {
			display: none;	/* 안보이게 숨기기 */
		}
		section #pform {
			display: none;	/* 안보이게 숨기기 */
		}
		
		section .sear {	 /*  마우스 커서 바꾸기  */
			cursor : pointer;
		}
</style>

</head>
<body>
	<section>
	<h2 align="center"> 로그인 </h2>
		<form method="post" action="loginOk" name="lform">
			<input type="hidden" name="gcode" value="${gcode }">	<!-- contentsGoods에서 예매하기-->
			<input type="hidden" name="from" value="${from }">	<!-- freeBoardList에서 글쓰기 -->
			
			<div> <input type="text" name="userid" onblur="loginErr(this.value)" placeholder="아이디" id="txt"> </div>
			<div> <input type="password" name="pwd" placeholder="비밀번호" id="txt"> </div>
			
			<div id="err">
					<c:if test="${err==1 }" >
						아이디 또는 비밀번호를 확인해주세요.
					</c:if>
			</div>
			<div> <input type="submit" value="로그인" id="submit"> </div>
			<div>
					<a href="../member/member" >계정이 없으신가요?</a>
					
			</div>
			
		</form>
	
		
		
		
	</section>
</body>
</html>