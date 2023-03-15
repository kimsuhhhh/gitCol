<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content ="text/html" charset="UTF-8">
<title>회원관리</title>

<%@ include file="./include/member_header.jsp" %> <!-- 설정값 -->

</head>
<body>

<%@ include file="./include/member_menu.jsp" %> <!-- 메뉴 -->

<h2> ${msg }</h2>  <!-- controller에서 전송된 msg변수의 값을 출력 -->
</body>
</html>