<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="../inc/headder.jsp"/>
	</head>
	<body>
		<div class="gtco-loader"></div>	
		<div id="page">
			<jsp:include page="../inc/top.jsp"/>
			<div class="gtco-container"> 

				<!--검색파트-->
				<div id="search-bar">
					<input type="text" id="search" placeholder="GAGU에서 준비한 상품을 검색해보세요!" autocomplete="off">
				</div>
			
			<div class="row">
				<!--슬라이드 이미지-->
				<div class="col-md-12">
					<div class="owl-carousel owl-carousel-fullwidth">
						<div class="item">
							<a href="#">
								<!--슬라이드 이미지1-->
								<img src="../images/ikeaimage.png" alt="Free Website Template by FreeHTML5.co">
								<div class="slider-copy">
									<h2>GUNRID 군리드공기정화커튼, 1쌍￦ 34,900</h2>
								</div>
							</a>
						</div>
						<div class="item">
							<a href="#">
								<!--슬라이드 이미지2-->
								<img src="../images/gaguImage.png" alt="Free Website Template by FreeHTML5.co">
								<div class="slider-copy">
									<h2>Architecture #1</h2>
								</div>
							</a>
						</div>
						<div class="item">
							<a href="#">
								<!--슬라이드 이미지3-->
								<img src="../images/gaguImage3.png" alt="Free Website Template by FreeHTML5.co">
								<div class="slider-copy">
									<h2>Architecture #1</h2>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="gtco-section">
			<div class="gtco-container">
				<div class="row">
					<!--페이지 인사말-->
					<div class="col-md-8 col-md-offset-2 gtco-heading text-center">
						<h2>내가 아끼는 집, 나를 아끼는 집</h2>
						<p>지속가능한 내일 위한 GAGU의 노력을 확인해 보세요!</p>
					</div>
				</div>
				<div class="row">
					<!--추천상품 게시판에서 뽑아올 예정-->
					<div class="col-md-12">
						<h3 class="text-center">이달의 추천상품</h3>
						<div class="owl-carousel owl-carousel-carousel">
							<!--게시판 뽑아오면 여기서부터-->
							<div class="item">
								<div class="gtco-item">
									<a href="#"><img src="../images/product1.webp" alt="" class="img-responsive"></a>
									<h2><a href="#">여기에는 상품명</h2></a>
									<p class="role">여기에는상품가격</p>
									<h4>explain</h4>
								</div>
							</div>
							<!--여기까지만 사용 할 것임-->
							<div class="item">
								<div class="gtco-item">
									<a href="#"><img src="../images/product2.webp" alt="" class="img-responsive"></a>
									<h2><a href="#">여기에는 상품명</h2></a>
									<h4>explain</h4>
									<p class="role">여기에는상품가격</p>
								</div>
							</div>
							<div class="item">
								<div class="gtco-item">
									<a href="#"><img src="../images/product3.webp" alt="" class="img-responsive"></a>
									<h2><a href="#">여기에는 상품명</h2></a>
									<h4>explain</h4>
									<p class="role">여기에는상품가격</p>
								</div>
							</div>

							<div class="item">
								<div class="gtco-item">
									<a href="#"><img src="../images/product1.webp" alt="" class="img-responsive"></a>
									<h2><a href="#">여기에는 상품명</h2></a>
									<h4>explain</h4>
									<p class="role">여기에는상품가격</p>
								</div>
							</div>
							<div class="item">
								<div class="gtco-item">
									<a href="#"><img src="../images/product2.webp" alt="" class="img-responsive"></a>
									<h2><a href="#">여기에는 상품명</h2></a>
									<h4>explain</h4>
									<p class="role">여기에는상품가격</p>
								</div>
							</div>
							<div class="item">
								<div class="gtco-item">
									<a href="#"><img src="../images/product3.webp" alt="" class="img-responsive"></a>
									<h2><a href="#">여기에는 상품명</h2></a>
									<h4>explain</h4>
									<p class="role">여기에는상품가격</p>
								</div>
							</div>
							<div class="item">
								<div class="gtco-item">
									<a href="#"><img src="../images/product1.webp" alt="" class="img-responsive"></a>
									<h2><a href="#">여기에는 상품명</h2></a>
									<h4>explain</h4>
									<p class="role">여기에는상품가격</p>
								</div>
							</div>
							<div class="item">
								<div class="gtco-item">
									<a href="#"><img src="../images/product2.webp" alt="" class="img-responsive"></a>
									<h2><a href="#">여기에는 상품명</h2></a>
									<h4>explain</h4>
									<p class="role">여기에는상품가격</p>
								</div>
							</div>
							<div class="item">
								<div class="gtco-item">
									<a href="#"><img src="../images/product3.webp" alt="" class="img-responsive"></a>
									<h2><a href="#">여기에는 상품명</h2></a>
									<h4>explain</h4>
									<p class="role">여기에는상품가격</p>
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<!-- END Work -->
		<jsp:include page="../inc/bottom.jsp"/>
		<!-- END footer -->
	</body>
</html>
