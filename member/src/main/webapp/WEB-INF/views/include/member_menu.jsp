<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8" %> <!-- 페이지 정보 -->

<!-- JSTL 명령을 사용 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- c:set 저장  var=변수명 value=값 ==> path='값' -->
<c:set var="path" value="${pageContext.request.contextPath}"/> <!-- 경로를 저장 -->

<!-- 본문내용 -->
<div style="text-align:center"> <!-- 영역안에 있는문자를 가운데 정렬 -->
	<a href="${path}/member/list">회원관리</a> <!-- member폴더에 list 작업 -->
</div>
<hr> <!-- 수평선 -->