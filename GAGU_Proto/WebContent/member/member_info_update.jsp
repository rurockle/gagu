<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../inc/headder.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../inc/top.jsp"></jsp:include>

<div class="gtco-loader"></div>
<div id="page">
	<div class="gtco-container">
		<div class="row">
			<div class="gtco-section">
				<div class="gtco-container">
					<div class="row gtco-heading">
					<div class="col-md-12 text-center">
					<h2>회원정보수정</h2>
					</div>
					</div>
					<!--회원정보수정 폼-->
					<div class="row">
						<form action="#">
							<hr class="join-hr"> <br>

							<div class="col-md-8 col-md-offset-2 gtco-heading text-left">
							<div class="form-group">
								<label for="name" class="join-lab">아이디</label>
								<input type="text" class="form-control" name="id" autocomplete="off" readonly>
							</div>
							<div class="form-group">
								<label for="name" class="join-lab">비밀번호</label>
								<input type="password" class="form-control" name="pass" autocomplete="off">
							</div>
							<div class="form-group">
								<label for="name">비밀번호 확인</label>
								<input type="password" class="form-control" name="passck" autocomplete="off">
							</div>
							<div class="form-group">
								<label for="name">이름</label>
								<input type="text" class="form-control" name="name" autocomplete="off">
							</div>
							<div class="form-group">
								<label for="name">성별</label><br>
								<input type="radio" name="gender" style="font-size:17px; width:23px;height:23px" > 남
								<input type="radio" name="gender" style="font-size:17px; width:23px;height:23px"> 여
							</div>
							<div class="form-group">
								<label for="">생년월일</label>
								<input type="date" name="date" readonly>							
							</div>
							<div class="form-group">
								<label for="name">주소</label>
								<div class="row">
								<div class="col-md-6">
								<input type="text" class="form-control" id="name"></div><div class="col-md-6">
								<input type="button" class="btn btn-special" value="우편번호찾기"></div></div>
								<input type="text" class="form-control" id="name">
								<input type="text" class="form-control" id="name">
							</div>
							<div class="form-group">
								<label for="name">전화번호</label>
								<input type="text" class="form-control" name="phone" autocomplete="off">
							</div>
							<div class="form-group">
								<label for="name">이메일</label>
								<input type="text" class="form-control" name="email" autocomplete="off">
							</div>					
							<div class="form-group">
								<label for="name">수신 동의</label>
								<div class="row">
								<div class="col-md-3"><input type="checkbox" class="form-control" id="name" style="width: 20px; height: 20px; display:inline-block;"> SMS</div>
								<div class="col-md-3"><input type="checkbox" class="form-control" id="name" style="width: 20px; height: 20px; display:inline-block;"> Email</div>
								<div class="col-md-3"><input type="checkbox" class="form-control" id="name" style="width: 20px; height: 20px; display:inline-block;"> 카카오톡</div>
								</div>
							</div>
							<div class="form-group">
								<input type="submit" class="btn btn btn-special" value="회원정보수정">
							</div>
						</div>
						</form>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<jsp:include page="../inc/bottom.jsp"></jsp:include>
</body>
</html>