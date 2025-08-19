<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>booking</title>
<style>
	body {
		background: gray;
	}
	section {
		width: 900px;
		height: 600px;
	}
	section > #header {
		
	}
	
	section #main {
		display: flex;
	}
	
	section > #main > #left	{
		border: 1px solid black;
		background: white;
		width: 600px;
		height: 550px;
		
	}
	section > #main > #right {
		border: 1px solid black;
		background: white;
		width : 275px; 
		height: 550px;
		margin-left: 5px;
		
	}
	
	
</style>

</head>
<body>
<section>
	
<div id="header"><h3>좌석선택</h3></div>
	<div id="main">
		<div id="left">
				<div>
						일자 <p>
						<select id="selectDate">
										<option value="0" default>선택해주세요</option>		
									<c:forEach items="${cdto.dates }" var="dates">
										<option value="${dates }">${dates }</option>
									</c:forEach>
								
							
						</select>	<p>
						
						
						
						시간 <span>${cdto.startSigan}</span>
				</div>
				<div>
					기본가 : <span>${cdto.price}</span>
						<select id="selectPrice">
							<option value="0" default>0매</option>
							<option value="1">1매</option>
							<option value="2">2매</option>	
						</select>					
				</div>
		</div>
		
		
		<div id="right">
				<div>
					<div><img src="../static/content/${cdto.goodsImg }" width="100px"></div>
						<div id="info">
							<div>${cdto.title }</div>
							<div>${cdto.gigan }</div>
							<div>${cdto.location }</div>
							<div>${cdto.age }세 이상</div>
							<div>관람시간 : ${cdto.sigan }분</div>
						</div>
				</div>
				
				<div>날짜: <span id="showDate"></span></div>
				<div>시간: <span id="showTime">${cdto.startSigan}</span></div>
				<div>매수: <span id="showTicketSu"></span></div>
				<div>가격: <span id="showTicketPrice"></span></div>
				
				<form method="post" action="/contents/order" onsubmit="return validateForm()">
					<input type="hidden" name="gcode" value="${cdto.gcode }">
					<input type="hidden" name="startSigan" value="${cdto.startSigan }">
					<input type="hidden" id="date" name="date" value="">	<!-- script에서 value 옴 -->
					<input type="hidden" id="ticketSu" name="ticketSu" value="">
					<input type="hidden" id="price" name="price" value="">
	
					<input type="submit" id="submitBtn" value="확인">
				
				</form>
		</div>
	</div>
	
	
</section>
</body>
<script>
		//폼 제출 전 유효성 검사
		function validateForm() {
		    var date = document.getElementById('selectDate').value;
		    var ticketSu = document.getElementById('selectPrice').value;
		    
		    // 250313 여기부터 수정해야함. ticketSu만 선택하면 폼제출되는 오류 있음
		    if (date === "0" || ticketSu === "0"||  ticketSu === " " ) {
		      alert("모든 항목을 선택해주세요.");
		      return false; // 폼 제출을 막음
		    }
		       	
	   		 return true; // 폼 제출을 허용
 		 }




		////////////////////////////////////////////
		document.getElementById('selectDate').addEventListener('change', function() {
			var selectedDate = this.value;
			
				if (selectedDate != "0") 
				{
					document.getElementById('showDate').innerText=selectedDate;
					document.getElementById('date').value=selectedDate;
					
				}
				else
				{
					document.getElementById('showDate').innerText="";
					document.getElementById('date').value=selectedDate;
				
				}
		});

		document.getElementById('selectPrice').addEventListener('change', function() {
			var selectedPrice = this.value;
			var price = ${cdto.price};
			
			if(selectedPrice =="0") {
				document.getElementById('showTicketSu').innerText="";
				document.getElementById('showTicketPrice').innerText="";
				document.getElementById('price').value="";
				document.getElementById('ticketSu').value="";
			}
			
			if(selectedPrice == "1") {
				document.getElementById('showTicketSu').innerText="1매";
				document.getElementById('showTicketPrice').innerText=price+"원";
				document.getElementById('price').value=price;
				document.getElementById('ticketSu').value="1";
				
			}
			 if(selectedPrice == "2") {
				document.getElementById('showTicketSu').innerText="2매";
				document.getElementById('showTicketPrice').innerText=price*2+"원";
				document.getElementById('price').value=price;
				document.getElementById('ticketSu').value="2";

			}
		
			
			
		});
		
</script>
</html>