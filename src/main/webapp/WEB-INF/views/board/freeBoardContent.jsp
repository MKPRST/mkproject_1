<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
		border: none;
	}
	
	
	table #bdto  td {
		color: red;
	}
</style>
</head>
<body>

	<table width="1000" border="1px solid black" align="center">
		<tr>
			<td width="28">구분</td>
			<td>제목</td>
			<td>아이디</td>
			<td>작성일</td>
			<td>조회수</td>
		</tr>	
		<tr id="bdto">
			<td>${bdto.gubun }</td>
			<td>${bdto.title }</td>
			<td>${bdto.userid }</td>
			<td>${bdto.writeday }</td>
			<td>${bdto.readnum }</td>
		</tr>
	
	
	</table>
	<table width="1000" border="1px solid black" align="center">
		
		<tr>
			<td colspan="4" align="center" height="300">${bdto.content}</td>
		</tr>
		
		<tr> 
			<%-- <td><a href="list">목록</a></td>
			<td><a href="update?id=${bdto.id}">수정</a></td> --%>
		
			
		</tr>
	</table>
	
	
</body>
<style>
	td {
		text-align: center;
	}
</style>
</html>