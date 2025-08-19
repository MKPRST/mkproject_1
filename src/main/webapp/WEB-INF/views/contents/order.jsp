<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 완료</title>
<style>
  /* 페이지의 중앙에 텍스트를 배치하기 위한 CSS */
  body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    font-family: Arial, sans-serif;
    text-align: center;
  }

  .container {
    width: 300px;
  }

  .message {
    font-size: 24px;
    margin-bottom: 20px;
  }

  /* 프로그레스 바 스타일 */
  .progress-bar-container {
    width: 100%;
    height: 5px;
    background-color: #f3f3f3;
    border-radius: 5px;
    overflow: hidden;
    margin-bottom: 20px;
  }

  .progress-bar {
    height: 100%;
    width: 0;
    background-color: #b000b9;
    transition: width 3s ease-in-out;
  }
</style>

<script>
  // 페이지 로드 시 실행되는 코드
  window.onload = function() {
    // 3초 후 창을 닫는 setTimeout
    setTimeout(function() {
      window.close();
    }, 3000);

    // 프로그레스 바를 채우는 코드
    setTimeout(function() {
      document.getElementById("progressBar").style.width = "100%";
    }, 100); // 0.1초 후 프로그레스 바 채우기 시작
  };
</script>
</head>
<body>

<div class="container">
  <!-- "주문해주셔서 감사합니다" 메시지 -->
  <div class="message">주문해주셔서 감사합니다</div>
  <div>3초 후 창이 종료됩니다.</div>
  <!-- 프로그레스 바 -->
  <div class="progress-bar-container">
    <div id="progressBar" class="progress-bar"></div>
  </div>
</div>

</body>
</html>
