<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	section { 
	       width:1300px;
	       height: 600px;
	       margin:auto;
	       background:white;
	 
	    }
	    
 		h3 {
            color: #864fca;
            text-align: center;
            margin-bottom: 25px;
            font-size: 22px;
            position: relative;
            padding-bottom: 10px;
        }
        
        h3:after {
            content: '';
            display: block;
            width: 60px;
            height: 3px;
            background-color: #864fca; 
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 0 auto;
            table-layout: fixed;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.05);
        }
        
        th {
            background-color: #f2f6fc; 
            color: #333;
            font-weight: bold;
            text-align: center;
            padding: 14px 10px;
            border-top: 2px solid #864fca; 
            border-bottom: 1px solid #dee2e6;
        } 
        
        td {
            padding: 14px 10px;
            text-align: center;
            border-bottom: 1px solid #eee;
            vertical-align: middle;
            word-break: break-word;
        }
        
        tr:hover {
            background-color: #f8f9fa;
        }
        
        /* Column widths */
        th:nth-child(1), td:nth-child(1) {
            width: 20%;
        }
        
        th:nth-child(2), td:nth-child(2) {
            width: 25%;
            text-align: left;
        }
        
        th:nth-child(3), td:nth-child(3) {
            width: 25%;
            text-align: left;
        }
        
        th:nth-child(4), td:nth-child(4) {
            width: 15%;
        }
        
        th:nth-child(5), td:nth-child(5) {
            width: 15%;
        }
        
        .delete-btn {
            background-color: #864fca;
            color: white;
            border: none;
            padding: 6px 12px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.2s;
        }
        
        .delete-btn:hover {
            background-color: #fa5252;
        }
        
        .empty-message {
            text-align: center;
            padding: 40px 0;
            color: #868e96;
            font-size: 15px;
        }
    </style>
</head>
<body>
    <section>
        <h3>상품 문의</h3>
        <table>
            <thead>
                <tr>
                    <th>상품명</th>
                    <th>문의 내용</th>
                    <th>답변 내용</th>
                    <th>작성일</th>
                    <th>관리</th>
                </tr>
            </thead>
            <tbody>
                <c:if test="${empty mapAll}">
                    <tr>
                        <td colspan="5" class="empty-message">문의 내역이 없습니다.</td>
                    </tr>
                </c:if>
                <c:forEach items="${mapAll}" var="map">
                    <tr>
                        <td>${map.title}</td>
                        <td>${map.content}</td>
                        <td>${map.ans}</td>
                        <td>${map.writeday}</td>
                        <td>
                            <button class="delete-btn" onclick="location='/member/memberQnaDel?id=${map.id}'">삭제</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

</section>
</body>
</html>