<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="freeBoardWriteOk" align="center">
			<caption><h2>글쓰기</h2></caption>
					구분 : <select name="gubun">
									<option value="자유">자유</option>
									<option value="질문">질문</option>
									<option value="건의">건의</option>
							</select>
					제목 : <input type="text" name="title">	<p>
				
					내용 : <textarea cols="50" name="content" rows="6"></textarea>	<p>
		
					<a href="list">목록으로</a>
					<input type="submit" value="작성완료">
	</form>
		
</body>
</html>