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
       height: 600px;
       margin:auto;
       background:white;
 
    }
    
    h3 {
            color: #333;
            border-bottom: 2px solid #eee;
            padding-bottom: 10px;
            margin-top: 0;
            margin-bottom: 20px;
            font-size: 20px;
        }
        
        .order-container {
            height: 400px;
            overflow: auto;
            padding: 5px;
        }
        
        .order-date {
            font-weight: bold;
            margin: 15px 0 8px 0;
            color: #555;
            font-size: 14px;
        }
        
        .order-item {
            border: 1px solid #eaeaea;
            border-radius: 6px;
            margin-bottom: 15px;
            padding: 15px;
            display: flex;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.05);
            transition: all 0.2s ease;
        }
        
        .order-item:hover {
            border-color: #ccc;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        
        .item-image {
            width: 100px;
            margin-right: 20px;
        }
        
        .item-image img {
            width: 100%;
            height: auto;
            border-radius: 4px;
            object-fit: cover;
        }
        
        .item-details {
            flex: 1;
            line-height: 1.6;
        }
        
        .item-title {
            font-weight: bold;
            font-size: 16px;
            margin-bottom: 5px;
        }
        
        .item-info {
            color: #555;
            font-size: 14px;
        }
        
        .empty-message {
            text-align: center;
            padding: 50px 0;
            color: #888;
        }
        
        .booking-link {
            display: inline-block;
            margin-top: 15px;
            background-color: #4a89dc;
            color: white;
            padding: 8px 16px;
            text-decoration: none;
            border-radius: 4px;
            font-weight: bold;
            transition: background-color 0.2s;
        }
        
        .booking-link:hover {
            background-color: #3b7dd8;
        }
        
        /* Scrollbar styling for better user experience */
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
    </style>
</head>
<body>
    <section>
        <h3>주문내역</h3>
        <div class="order-container">
            <%-- <c:if test="${adto.userid==null }">
            <div class="empty-message">
                예약이 없어요 <br><br>
                <a href="../contents/contentsList" class="booking-link">예약하러 가기!</a>
            </div>
            </c:if> --%>
            
            <%-- <c:if test="${adto.userid!=null }"> --%>
            <c:forEach items="${alist}" var="adto" varStatus="sts">
                <div class="order-date">${adto.orderDay} 주문</div>
                <div class="order-item">
                    <div class="item-image">
                        <img src="../static/content/${adto.goodsImg}" alt="${adto.title}">
                    </div>
                    <div class="item-details">
                        <div class="item-title">${adto.title}</div>
                        <div class="item-info">${adto.price}원, ${adto.ticketSu}개</div>
                        <div class="item-info">관람일: ${adto.date}</div>
                        <div class="item-info">시작시간: ${adto.startSigan}</div>
                    </div>
                </div>
            </c:forEach>
            <%-- </c:if> --%>
        </div>

	

</section>
</body>
</html>