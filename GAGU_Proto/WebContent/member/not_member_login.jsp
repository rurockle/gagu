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
					<h2>비회원 로그인</h2>
					</div>
					</div>
					<!--비회원 로그인폼-->
                    <!--비회원 로그인 폼 추가하고 싶으시면 회원가입 폼 가셔서 form-group 긁어오시면 됩니다!-->
					<div class="row">
						<form action="#">
							<hr class="join-hr"> <br>

							<div class="col-md-8 col-md-offset-2 gtco-heading text-left">
							<div class="form-group">
                                <label for="name" class="join-lab">아이디</label>
                                <!--아이디가 아니라 주문번호?라고 써야 되는거 아닌가
                                싶긴 한데 로그인 팀에서 참고해서 바꿔주세요!-->
								<input type="text" class="form-control" id="name" autocomplete="off">
                            </div>
							<div class="form-group">
								<label for="name" class="join-lab">비밀번호</label>
								<input type="password" class="form-control" id="email" autocomplete="off">
							</div>
							<div class="form-group">
								<label for="name">이름</label>
								<input type="text" class="form-control" id="name" autocomplete="off">
							</div>
							<div class="form-group">
								<input type="submit" class="btn btn btn-special" value="로그인">
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