<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content ="text/html" charset="UTF-8">
<title>회원 상세</title>

<%@ include file="../include/member_header.jsp" %> <!-- 설정값 -->

</head>
<body>

<%@ include file="../include/member_menu.jsp" %> <!-- 메뉴 -->

<!-- 각 페이지별로 변경되는 부분 -->
<!-- 앱력과 수정폼은 반드시 form -->
<!-- name은 부트스트랩, 자바스크립, jQuery 사용시 -->
<!-- member/insert는 값으로 post방식으로 Controller에 전달 -->
<!-- list에 등록버튼->컨트롤러->member_write.jsp페이지 이동->submit버튼을 클릭하면 -->
<!-- 컨트롤러->데이터베이스에 저장(service)->목록페이지 이동(redirect) -->
<!-- <form name="form1" method="post"> member/view연결 get,post로 나누어서 처리 -->
<form name="form1" method="post" action="${path}/member/update">
	<table border="1" width="400px"> <!-- 부트스트랩 사용시 div, card -->
		<tr> <!-- 1행이 완성이되면 복사를 해서 수정, name은 DTO에 필드명과 동일 -->
			<td>아이디</td><!-- 아이디는 읽기용, dto=>컨트롤러에서 지정한 이름 -->
			<td><input type="text" name="userId" value="${dto.userId}" readonly></td>
		</tr>
		<tr> 
			<td>비밀번호</td>
			<td><input type="password" name="userPw" value="${dto.userPw}"></td>
		</tr>
		<tr> 
			<td>이름</td>
			<td><input type="text" name="userName" value="${dto.userName}"></td>
		</tr>
		<tr> 
			<td>이메일</td>
			<td><input type="email" name="userEmail" value="${dto.userEmail}"></td>
		</tr>
		<tr> 
			<td colspan="2" align="center"> <!-- 2칸 합치기 -->
				<input type="submit" value="수정">
				<input type="reset" value="삭제">
			</td>
		</tr>
	</table>
</form>

</body>
</html>