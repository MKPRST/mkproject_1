<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
    
        
        .container {
            max-width: 1000px;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        
        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        
        table {
            border-collapse: collapse;
            width: 100%;
            margin: 0 auto;
        }
        
        th, td {
            padding: 12px 15px;
            text-align: center;
            border: 1px solid #ddd;
        }
        
        th {
            background-color: #f2f2f2;
            font-weight: bold;
            color: #333;
        }
        
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        
        tr:hover {
            background-color: #f1f1f1;
        }
        
        .cancel-btn {
            background-color: #ff4d4d;
            color: white;
            border: none;
            padding: 6px 12px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        
        .cancel-btn:hover {
            background-color: #e60000;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>주문 목록</h2>
        <table>
            <thead>
                <tr>
                    <th>아이디</th>
                    <th>주문상품</th>
                    <th>주문일</th>
                    <th>티켓매수</th>
                    <th>티켓가격</th>
                    <th>관리</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${alist}" var="alist">
                    <tr>
                        <td>${alist.userid}</td>
                        <td>${alist.gcode}</td>
                        <td>${alist.orderDay}</td>
                        <td>${alist.ticketSu}</td>
                        <td>${alist.price}</td>
                        <td>
                            <button class="cancel-btn" 
                                onclick="location='cancelOrder?id=${alist.id}&userid=${alist.userid}&gcode=${alist.gcode}'">
                                취소
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    
</body>
</html>