<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
<style>
	section 
	{
		width: 1100px;
		height: 860px; 
		margin: auto;	/* 브라우저 중앙에 */
		text-align: center;
		margin-top: 180px;
	}
</style>
</head>
<body>
<h2 style="margin-left:120px; ">자유게시판</h2>
<section>
	
	<table align="center" width="600" height="600" border="1px solid black">
		
				<tr>
					<td>구분</td>
					<td>제목</td>
					<td>아이디</td>
					<td>작성일</td>
					<td>조회수</td>
				</tr>
		<c:forEach items="${blist}" var="blist">
				<tr onclick="location='/board/freeBoardContent?id=${blist.id}' ">
					<td>${blist.gubun}</td>
					<td>${blist.title}</td>
					<td>${blist.userid }</td>
					<td>${blist.writeday }</td>
					<td>${blist.readnum }</td>
				</tr>
		</c:forEach>		
			
		
	</table>
	
	<div align="right">
		<a href="/board/freeBoardWrite?from=listLogin ">글쓰기</a>
	</div>
	
	
</section>
</body>
</html>