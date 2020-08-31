<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../inc/headder.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../inc/top.jsp"></jsp:include>


					
		<h1>로그인</h1>
		<form action="MemberLoginPro.me" method="post" name="loginForm">
			<fieldset>
				<table>
					<tr>
						<td class="td_left">
							<label for="id">아이디</label>
						</td>
						<td class="td_right">
							<input type="text" name="id">
						</td>
					</tr>
					<tr>
						<td class="td_left">
							<label for="id">패스워드</label>
						</td>
						<td class="td_right">
							<input type="password" name="password">
						</td>
					</tr>
				</table>
				<br>
				<input type="submit" value="로그인">
				<input type="button" value="회원가입" onclick="location.href='MemberJoinForm.me'">
				<input type="button" value="취소" onclick="history.back()">
			</fieldset>
		</form>

		



<jsp:include page="../inc/bottom.jsp"></jsp:include>
</body>
</html>