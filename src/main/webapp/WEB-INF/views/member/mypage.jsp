<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style>
	section { 
       width:1300px;
       height: 1100px;
       margin:auto;
       background:white;
    }
    
  		 h3 {
            color: #333;
            font-size: 20px;
            padding-bottom: 12px;
            margin-top: 10px;
            margin-bottom: 20px;
            border-bottom: 2px solid #eaeaea;
            position: relative;
       	 }
        
        h3:after {
            content: '';
            position: absolute;
            width: 60px;
            height: 2px;
            background-color: #864fca;
            bottom: -2px;
            left: 0;
        }
        
        /* Order List Styles */
        .order-container {
            height: 400px;
            overflow: auto;
            padding: 5px;
            margin-bottom: 30px;
        }
        
        .order-date {
            font-weight: bold;
            margin: 15px 0 8px 10px;
            color: #555;
            font-size: 14px;
        }
        
        .order-item {
            border-bottom: 1px solid #eaeaea;
            padding: 15px 10px;
            margin-bottom: 5px;
            display: flex;
            transition: background-color 0.2s;
        }
        
        .order-item:hover {
            background-color: #f9f9f9;
        }
        
        .item-image {
            width: 80px;
            margin-right: 20px;
        }
        
        .item-image img {
            width: 70px;
            height: 100px;
            object-fit: cover;
            border-radius: 4px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        
        .item-details {
            flex-grow: 1;
        }
        
        .item-title {
            font-weight: bold;
            font-size: 16px;
            margin-bottom: 5px;
        }
        
        .item-info {
            color: #666;
            font-size: 14px;
            margin-bottom: 4px;
        }
        
        /* Inquiry Table Styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
            table-layout: fixed;
        }
        
        table th {
            background-color: #f5f7fa;
            color: #333;
            font-weight: bold;
            text-align: center;
            padding: 12px;
            border-top: 2px solid #864fca;
            border-bottom: 1px solid #dee2e6;
        }
        
        table td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #eee;
            word-break: break-word;
        }
        
        table tr:hover {
            background-color: #f8f9fa;
        }
        
        /* Column widths for inquiry table */
        table th:nth-child(1), 
        table td:nth-child(1) {
            width: 20%;
        }
        
        table th:nth-child(2), 
        table td:nth-child(2) {
            width: 40%;
            text-align: left;
        }
        
        table th:nth-child(3), 
        table td:nth-child(3) {
            width: 40%;
            text-align: left;
        }
        
        /* Scrollbar styling */
        .order-container::-webkit-scrollbar {
            width: 8px;
        }
        
        .order-container::-webkit-scrollbar-track {
            background: #f1f1f1;
            border-radius: 10px;
        }
        
        .order-container::-webkit-scrollbar-thumb {
            background: #ccc;
            border-radius: 10px;
        }
        
        .order-container::-webkit-scrollbar-thumb:hover {
            background: #999;
        }
        
        /* Empty state styling */
        .empty-message {
            text-align: center;
            padding: 40px 0;
            color: #888;
            font-size: 15px;
        }
        
        /* Separator between sections */
        .section-divider {
            margin: 30px 0;
            border: none;
            height: 1px;
            background-color: #eaeaea;
        }
    </style>
</head>
<body>
    <section>
        <!-- Order History Section -->
        <h3>주문내역</h3>
        <div class="order-container" id="orderList">
            <c:if test="${empty orderList}">
                <div class="empty-message">
                    주문 내역이 없습니다.
                </div>
            </c:if>
            
            <c:forEach items="${orderList}" var="odto" varStatus="sts">
                <div class="order-date">${odto.orderDay} 주문</div>
                <div class="order-item">
                    <div class="item-image">
                        <img src="../static/content/${odto.goodsImg}" alt="${odto.title}">
                    </div>
                    <div class="item-details">
                        <div class="item-title">${odto.title}</div>
                        <div class="item-info">${odto.price}원, ${odto.ticketSu}개</div>
                        <div class="item-info">관람일: ${odto.date}</div>
                        <div class="item-info">시작시간: ${odto.startSigan}</div>
                    </div>
                </div>
            </c:forEach>
        </div>
        
        <hr class="section-divider">
        
        <!-- Inquiry History Section -->
        <h3>문의내역</h3>
        <table>
            <thead>
                <tr>
                    <th>작성일</th>
                    <th>문의 내용</th>
                    <th>답변 내용</th>
                </tr>
            </thead>
            <tbody>
                <c:if test="${empty qnaList}">
                    <tr>
                        <td colspan="3" class="empty-message">문의 내역이 없습니다.</td>
                    </tr>
                </c:if>
                
                <c:forEach items="${qnaList}" var="qdto">
                    <tr>
                        <td>${qdto.writeday}</td>
                        <td>${qdto.content}</td>
                        <td>${qdto.ans}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

</section>
</body>
</html>