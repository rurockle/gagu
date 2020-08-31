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
					<h2>회원 가입</h2>
					</div>
					</div>
					<!--회원가입 이동 폼-->
					<div class="row">
						<form action="MemberJoinPro.me" method="post" name="joinForm">
							<hr class="join-hr"> <br>

							<div class="col-md-8 col-md-offset-2 gtco-heading text-left">
							<fieldset>
							 <legend>필수입력정보</legend>
							<div class="form-group">
								<label for="name" class="join-lab">아이디</label>
								<input type="text" name="member_id" class="form-control" id="name" autocomplete="off">								
								<!-- 아이디 중복입니다 표시할 부분 입니다!-->
								<!-- <div></div> -->
							</div>
							<div class="form-group">
								<label for="name" class="join-lab">비밀번호</label>
								<input type="password" name="member_password" class="form-control" id="email" autocomplete="off">
							</div>
							<div class="form-group">
								<label for="name">비밀번호 확인</label>
								<input type="password" name="member_password2" class="form-control" id="email" autocomplete="off">
							</div>
							<div class="form-group">
								<label for="name">이름</label>
								<input type="text" class="form-control" name="member_name" id="name" autocomplete="off">
							</div>
							
							<!--혹시 나중에 회원정보 수정할 때 가져다 쓸 일 있을까봐 남겨둡니다!-->
							<!-- <div class="form-group">
								<label for="name">주소</label>
								<div class="row">
								<div class="col-md-6">
								<input type="text" class="form-control" id="name"></div><div class="col-md-6">
								<input type="button" class="btn btn-special" value="우편번호찾기"></div></div>
								<input type="text" class="form-control" id="name">
								<input type="text" class="form-control" id="name">
							</div> -->
							<div class="form-group">
								<label for="name">전화번호</label>
								<input type="text" class="form-control" name="member_tel" id="name" autocomplete="off">
							</div>
							<div class="form-group">
								<label for="name">이메일</label>
								<input type="text" class="form-control" name="member_email" id="name" autocomplete="off">
							</div>					
<!-- 							<div class="form-group"> -->
<!-- 								<label for="name">수신 동의</label> -->
<!-- 								<div class="row"> -->
<!-- 								<div class="col-md-3"><input type="checkbox" class="form-control" id="name" style="width: 20px; height: 20px; display:inline-block;"> SMS</div> -->
<!-- 								<div class="col-md-3"><input type="checkbox" class="form-control" id="name" style="width: 20px; height: 20px; display:inline-block;"> Email</div> -->
<!-- 								<div class="col-md-3"><input type="checkbox" class="form-control" id="name" style="width: 20px; height: 20px; display:inline-block;"> 카카오톡</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
							</fieldset>
							<fieldset>
							 <legend>선택입력정보</legend>
							 
							 <label for="name">성별과 생년월일을 입력하시면 비슷한 성별/연령대가 선호하는 상품을 추천해드립니다.</label><br>
							 <br>
							<div class="form-group">
								<label for="name">성별</label><br>
								<input type="radio" name="member_gender" value="man" style="font-size:17px; width:23px;height:23px" > 남
								<input type="radio" name="member_gender" value="woman" style="font-size:17px; width:23px;height:23px"> 여
							</div>
							<div class="form-group">
								<label for="">생년월일</label>
								<input type="date" name="member_birth" value="1980-01-01">							
							</div>
							</fieldset>
							<div class="form-group">
								<input type="submit" class="btn btn btn-special" value="회원가입">
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