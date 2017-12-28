<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String board_num = request.getParameter("board_num"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="pwdCheck.pwd.focus()">
<form name="pwdCheck" method="post" action="../qPwdCheck.do">
	<table>
		<tr>
			<td>비밀번호를 입력해 주세요</td>
		</tr>
		<tr>
			<td>
				<input type="password" size="20" name="board_pass" required="required">
				<input type="submit" value="삭제">
				<input type="button" value="돌아가기" onclick="javascript:history.back()">
			</td>
		</tr>
	</table>
	<input type="hidden" name="board_num" value="<%=board_num %>">
</form>
</body>
</html>