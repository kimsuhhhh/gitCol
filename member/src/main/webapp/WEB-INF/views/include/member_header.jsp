<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8" %> <!-- 페이지 정보 -->

<!-- JSTL 명령을 사용 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- c:set 저장  var=변수명 value=값 ==> path='값' -->
<c:set var="path" value="${pageContext.request.contextPath}"/> <!-- 경로를 저장 -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 자바스크립트/JQuery => 유효성 검사, 결과처리 -->
<!-- ajax 현재페이지 변동없이 갱신(react) -->
<script src = "https://ajax.googlepis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
