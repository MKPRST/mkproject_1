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
		width: 380px; 
		height: 42px;
		background: f8f8f8;
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
			<div id="logo">
					<a href="../main/main">
							<img src="../static/header/logo.JPG">
					</a>
			</div>
	
	<c:if test="${userid!=null }">
				<a href="../login/logOut">로그아웃</a>
	</c:if>	
			
		

	
	
	
	
	<h3 align="center">개인정보 보호를 위해<br>
										비밀번호 확인이 필요해요. </h3>
		<form method="post" action="memberInfoConfirmOk" name="lform">
		
			<div> <input type="text" name="userid"  value="${userid}" id="txt2" readonly> </div>
			<div> <input type="password" name="pwd" placeholder="비밀번호" id="txt"> </div>
			<c:if test="${err==1}">
				<div style="color:red; font-size: 13px;">비밀번호가 맞지 않아요. 다시 입력해주세요</div>
				<script> 
					document.getElementById("txt").style.border="2px solid red";
				</script>
			</c:if> 
		
			<div> <input type="submit" value="로그인" id="submit"> </div>
			
			
		</form>
	
		
		
		
	</section>
</body>
</html>