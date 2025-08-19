<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mkproject</title>
<style>
@font-face {
    font-family: 'GongGothicMedium';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/GongGothicMedium.woff') format('woff');
    font-weight: 100;
    font-style: normal;
   } 
   @font-face {
    font-family: 'GmarketSansBold';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansBold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
   }
   @font-face {
    font-family: 'GmarketSansLight';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff') format('woff');
    font-weight: normal;
    font-style: normal;
   }
   @font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
   }
   @font-face {
    font-family: 'GowunDodum-Regular';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/GowunDodum-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://fastly.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}
    body {
       margin:0px;
       font-family:'Pretendard-Regular';
    }
    
    
/* header header header header header header header header  */
      header {
       width:1300px;
       height:70px;
       margin:auto;
       align-items: center;
       display: flex; 
       /* border: 1px solid red; */
    }
/*최상단 최상단 최상단 최상단 최상단 최상단 최상단 최상단 */ 
    header #logo 
    {
       width:200px;
       height:70px;
    }
    	    header #logo > a { 
    	   	   display: inline-block;
    	   	   margin-top: 14px; 
		    }
		    
    header #search
    {
       width:450px;
       height:70px;
       margin-left: 40px;
    }
		    header #search #searchForm 
		    {
		       display:inline-block;
		       margin-top: 18px; 
		       border:1px solid gray; 
		       width:400px;
		       height:50px; 
		       border-radius:25px; 
		    } 
				    header #search #searchForm input[type=text] 
				    {
				       width:320px;
				       height: 36px; 
				       border:none;
				       outline:none;
				       margin-left: 20px;  
				       margin-top: 7px; 
				       position: relative;	/*searchButton과 부모 - 자식 관계 형성*/
				    }
				    header #search #searchForm #searchButton
				    {
				      position: absolute; /*searchForm의 input 과 부모 - 자식 관계 형성*/
				      margin-left: 23px; 
				      top: 35px;     
				      cursor: pointer;
				    }
				        header #xpng 
				        {
				        	position: absolute; /*searchForm의 input 과 부모 - 자식 관계 형성*/
				        	top: 33px;    
					    	visibility:hidden;   /* 자리를 유지하면서 안보이게 하는 방법 . / display:none 은 요소가 완전히 사라짐.  */
					    }
    
    header .memberMenu { 
       position: relative;
       margin-left:200px;
       width:360px;
       top: 12px; 
       text-align: right;
       text-decoration: none;
    }
	     header .memberMenu a { 
	       text-decoration: none;
	       color: black;
	       font-size: 18px;
	       margin: 7px;
	    }
    
    
 /*header 인데 부수적인 것들 */   
    
    #myMain {
       position:relative;
    }
    #mySub { /* ul태그 */
       position:absolute;
       left:0px;
       top:0px;
       padding-left:0px;
       background:white;
       visibility:hidden;
    }
    header #mySub > li {
       list-style-type:none;
       width:90px;
       height:30px;
       line-height:30px;
       text-align:center; 
       border:1px solid purple; 
       border-radius: 5px;
	    }
		    header #mySub > li {
		       border-bottom:none;
		    }
				    header #mySub > li:last-child {
				       border-bottom:1px solid purple;
				    }
				     
 /* footer footer footer footer footer footer footer footer   */    
    footer {
       width:1300px;
       height:150px;
       margin:auto; 
    }
    
    
/*nav nav nav nav nav nav nav nav nav nav nav nav nav*/

    nav {
       width:1300px;
       height:40px;
       margin:auto;
    }
	    nav ul  {
	    	padding-left: 0px;
	    	display: flex; /* 가로 정렬 */
	    	list-style: none; /* 점 제거 */
	    	
	    }
		    nav ul li {
		  
		       width:80px; 
		       height:60px;
		       line-height:60px;
		       text-align: center;
	    	}
	    		
	    		nav ul li:nth-child(7) {
	    			width: 50px;
	    		}
	    		nav ul li:nth-child(9) {
	    			width: 50px;
	    		} 
	    		nav ul li:nth-child(10) {
	    			width: 60px;
	    		}
	    		nav ul li:nth-child(12) a {
	    			color: blue;
	    		}
	    		nav ul li:nth-child(13) a {
	    			margin-left: 10px;
	    			color: blue;
	    		}
	    		
	    nav a {
	       text-decoration:none;
	       font-size: 16px; 
	      
	       color:black;
	    }
	    	nav a:hover {
	    		border-bottom: 2px solid purple;
	    	}
    
    
  		  footer {
		  width: 100%;
		  background-color: #f9f9f9;
		  padding: 20px 40px;
		  font-family: Arial, sans-serif;
		  color: #333;
		  font-size: 14px;
		  line-height: 1.6;
		}
		
		.footer-top {
		  border-bottom: 1px solid #ddd;
		  padding-bottom: 10px;
		  margin-bottom: 20px;
		}
		
		.footer-menu {
		  display: flex;
		  flex-wrap: wrap;
		  justify-content: flex-start;
		  gap: 10px;
		  list-style: none;
		  padding: 0;
		  margin: 0;
		}
		
		.footer-menu li a {
		  text-decoration: none;
		  color: #444;
		  font-weight: 500;
		  padding: 5px 10px;
		}
		
		.footer-menu li a:hover {
		  color: #007bff;
		}
		
		.footer-content {
		  display: grid;
		  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
		  gap: 20px;
		  margin-bottom: 20px;
		}
		
		.footer-section strong {
		  font-size: 15px;
		  color: #000;
		  display: block;
		  margin-bottom: 10px;
		}
		
		.footer-section p {
		  margin: 4px 0;
		}
		
		.footer-section a {
		  color: #007bff;
		  text-decoration: none;
		}
		
		.footer-section a:hover {
		  text-decoration: underline;
		}
		
		.footer-bottom {
		  text-align: center;
		  font-size: 12px;
		  color: #666;
		  border-top: 1px solid #ddd;
		  padding-top: 10px;
		}
		
		@media (max-width: 600px) {
		  .footer-menu {
		    justify-content: center;
		  }
		
		  .footer-content {
		    grid-template-columns: 1fr;
		    text-align: center;
		  }
		}
		    
		    
    
</style>
<script>
		function viewMypage()
		{
			document.getElementById("mySub").style.visibility="visible";
		}
		function hideMypage()
		{
			document.getElementById("mySub").style.visibility="hidden";
		}
		function hideTxt()
		{
			
		}
</script>
<sitemesh:write property="head"/>
</head>
<body>

	<header>
			<div id="logo">
					<a href="../main/main">
							<img src="../static/header/logo.png">
					</a>
			</div>
		<div id="search">
			<div id="searchForm">
					<input type="text" id="searchTxt">
					  <img src="../static/header/x.png" valign="middle" id="xpng" onclick="hideTxt()">
					  <img src="../static/header/searchButton.JPG" id="searchButton">
			</div>
		</div>
<!-- 로그인로그인로그인로그인로그인로그인로그인로그인 -->	
	<c:if test="${userid==null }">
		<div class="memberMenu">
			<a href="../login/login">로그인</a>
			<a href="../member/member">회원가입</a>
		</div>	
	</c:if>		
	<c:if test="${userid!=null }">
		<div class="memberMenu">
				<c:if test="${userid=='admin' }">	<!-- 관리자페이지 -->
					<a href="../admin/admin">관리자</a>
				</c:if>
					<a href="../login/logOut">로그아웃</a>
					<a href="../member/memberInfoConfirm">회원정보</a>
					<span onmouseover="viewMypage()" onmouseout="hideMypage()" id="myMain">
						<a href="../member/mypage">마이페이지</a>
								<ul id="mySub">
									<li><a href="../member/memberOrderList">주문내역</a></li>
									<li><a href="../member/memberQna">고객센터</a></li>
								</ul>
					</span>
		</div>
	</c:if>	
			
		
	</header>
	<nav>
		<ul id="mainMenu">
		
			<li><a href="../contents/contentsList">콘서트</a></li>
			<li><a href="" onclick="alert('서비스 준비중입니다.')">뮤지컬</a></li> 
			<li><a href="https://brunch.co.kr/@drhoon/3">스포츠</a></li>
			<li><a href="" onclick="alert('서비스 준비중입니다.')">전시/행사</a></li>
			<li><a href="" onclick="alert('서비스 준비중입니다.')">클래식/무용</a></li>
			<li><a href="" onclick="alert('서비스 준비중입니다.')">아동/가족</a></li>
			<li><a href="" onclick="alert('서비스 준비중입니다.')">연극</a></li>
			<li><a href="" onclick="alert('서비스 준비중입니다.')">레저/캠핑</a></li>
			<li><a href="" onclick="alert('서비스 준비중입니다.')">토핑</a></li>
			<li><a href="" onclick="alert('서비스 준비중입니다.')">MD샵</a></li>
			<li>|</li>  
			<li><a href="../board/ranking">랭킹</a></li>
			<li><a href="../board/freeBoardList">자유게시판</a></li>
			
		</ul>
	</nav>

	
<hr style="color: #dee2e6;"> 
 
<sitemesh:write property="body"/>

<footer>
		  <div class="footer-top">
		    <ul class="footer-menu">
		      <li><a href="#">회사소개</a></li>
		      <li><a href="#">이용약관</a></li>
		      <li><a href="#">개인정보처리방침</a></li>
		      <li><a href="#">위치기반서비스 이용약관</a></li>
		      <li><a href="#">여행약관</a></li>
		      <li><a href="#">여행자보험 가입내역</a></li>
		      <li><a href="#">티켓판매안내</a></li>
		      <li><a href="#">공지사항</a></li>
		      <li><a href="#">고객센터</a></li>
		      <li><a href="#">Language ▼</a></li>
		    </ul>
		  </div>
		
		  <div class="footer-content">
		    <div class="footer-section">
		      <strong>(주)놀유니버스</strong>
		      <p>경기도 성남시 수정구 금토로 70 (금토동, 텐역스 타워)</p>
		      <p>사업자등록번호: 824-81-02515 | 통신판매업신고: 2024-성남수정-0912</p>
		      <p>광고사업 등록번호: 제2024-0000424호 | 호스팅서비스제공자: (주)놀유니버스</p>
		      <p>대표이사: 배효찬, 최희영</p>
		    </div>
		
		    <div class="footer-section">
		      <strong>고객센터</strong>
		      <p>투어: 1588-3443 | 티켓: 1544-1555</p>
		      <p>팩스: 02-830-7807 | 이메일: help.interpark@nol-universe.com</p>
		      <p>해외전화: 02-3479-4399 | 국내전화: 02-3479-4340</p>
		      <p><a href="#">투어 1:1문의</a> | <a href="#">티켓 1:1문의</a></p>
		    </div>
		
		    <div class="footer-section">
		      <strong>전자금융거래 분쟁처리 담당</strong>
		      <p>투어: 1588-3443 | 티켓: 1544-1555</p>
		      <p>팩스: 02-830-8209 | 이메일: interpark_ef@nol-universe.com</p>
		      <p>개인정보보호책임자: privacy@nol-universe.com</p>
		    </div>
		  </div>
		
		  <div class="footer-bottom">
		    <p>
		      (주)놀유니버스는 항공사가 제공하는 개별 항공권 및 여행상품의 판매 대행자입니다.<br />
		      ⓒ Nol Universe Co., Ltd. All rights reserved.
		    </p>
		  </div>
</footer>

</body>
</html>