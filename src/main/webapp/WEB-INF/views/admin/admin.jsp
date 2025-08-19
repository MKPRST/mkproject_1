<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	
	#main {
		 display: flex;
		 justify-content: center;
		 height: 300px;
		 line-height: 300px;
	}
	
	.divStyle {
        display: inline-block; /* a 태그를 네모로 만들기 위해 블록 형식으로 바꿈 */
        width: 200px; /* 너비 지정 */
        height: 50px; /* 높이 지정 */
        line-height: 50px; /* 텍스트가 수평 가운데 오도록 설정 */
        text-align: center; /* 텍스트가 수평 가운데 오도록 설정 */
        background-color: #8351bd; /* 배경색 */
        color: white; /* 텍스트 색상 */
        text-decoration: none; /* 링크 기본 밑줄 없애기 */
        border-radius: 5px; /* 테두리 둥글게 만들기 */
        font-size: 18px; /* 글자 크기 */
        margin: 10px; /* 간격 추가 */
    }

    /* 마우스를 올렸을 때 색상이 바뀌도록 설정 */
    .divStyle:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

	<div id="main" >
		<div>
			<a href="/admin/customerService" class="divStyle">고객문의</a>
		</div>
		<div>
			<a href="/admin/orderList" class="divStyle">주문내역</a>
		</div>
	</div>


</body>
</html>