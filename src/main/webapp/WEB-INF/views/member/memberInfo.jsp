<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	section {
		width: 1100px;
		height: 500px;
		margin: auto;
	}
	  section  table tr td {
	       height:40px;
	       border-bottom:1px solid black;
	       padding-top:6px;
	       padding-bottom:6px;
	    }
		    section table tr:first-child td {
		       border-top:2px solid black;
		    }
		    section table tr:last-child td {
		       border-bottom:2px solid black;
			}       
	section #email {
		width: 200px;
		height: 25px;
		font-size: 16px;
	}
	section input[type=button]
	{
		width: 60px;
		height: 30px;
	}
	
	
	#show 
	{
		width: 100px; 
	}
</style>
<script>
	function chgEmail()
	{
		 var email=document.getElementById("email").value;
		
		var chk = new XMLHttpRequest();
		chk.onload = function()
		{
			if(chk.responseText=="0")	
			{
					location="../login/login";
			}
			
		}
		chk.open("get", "chgEmail?email="+email);
		chk.send();
	}

	
</script>
</head>
<body>
<section>
	
	<table width="800" align="center">
		<caption><h3>회원 정보</h3></caption>
			 <tr>
		       	   	<td> 아이디 </td>
		        	<td> ${mdto.userid} </td>
		      </tr>
		      <tr>
		      	 	 <td> 이 름 </td>
		       		 <td> ${mdto.name} </td>
		   	   </tr>
		      <tr>
			        <td> 이메일 </td>
			        <td> 
			        		<input type="text" id="email" value="${mdto.email}">
			        		<input type="button" value="수정" onclick="chgEmail()">
			        </td>
		      </tr>
		      <tr>
			        <td> 전화번호 </td>
	        		<td>
				          ${mdto.phone} 
				          <input type="button" value="전화번호수정" id="pbtn" onclick="phoneView(this)"> 
					          <form method="post" action="chgPhone" id="pform" style="margin-top: 10px;">
					        	  	<input type="text" name="phone" value="${mdto.phone}"> 
					        	  	<input type="submit" value="수정하기"> 
					         </form>
   					</td>
			 </tr>
		      
		      <tr>
			        <td> 비밀번호변경 </td>
			        <td>
				          <form method="post" action="chgPwd">
						           현재비밀번호 <input type="password" name="prevPwd" id="prevPwd"> <p>
						           새 비밀번호 &nbsp;&nbsp; <input type="password" name="newPwd1"><p>
						           비밀번호확인 					<input type="password" name="newPwd2" ><p>
						           <input type="submit" value="비밀번호 변경">
				          </form>
	      			  </td>
     		 </tr>
	</table>

</section>
<style>
    section #pform {
      display:none;
    }
    section #phone {
       width:200px;
       height:26px;
       font-size:16px;
    }
    section #show {
    	width: 21px;
    	height:21px;
    }
  </style>
   <script>
    function phoneView(my)
    {
    	document.getElementById("pform").style.display="block";
    	my.value="수정 취소";
    	my.setAttribute("onclick","phoneHide(this)");
    }
    
    
    
    
    
    
   /*  
    function show(my) {
        var pwd = document.getElementById("pwd");
        var showButton = document.getElementById("show");

        // 비밀번호 입력 필드의 type이 'password'일 때 'text'로 변경
        if (pwd.type === "password") {
            pwd.type = "text";  // 비밀번호를 텍스트로 표시
            showButton.value = "숨기기";  // 버튼 텍스트를 "숨기기"로 변경
        } else {
            pwd.type = "password";  // 비밀번호를 다시 숨김
            showButton.value = "보기";  // 버튼 텍스트를 "보기"로 변경
        }
    } */
  </script>
</body>
</html>