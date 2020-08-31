<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<!-- 배소원 login-popup style  -->	
<%	String sessionID = (String)session.getAttribute("id");
	
%>


	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-2 col-xs-12">
					<div id="gtco-logo"><a href="../main/index.jsp">GAGU</a></div>
				</div>
				<div class="col-xs-10 text-right menu-1">
					<ul>
						<li class="active"><a href="../main/index.jsp">Home</a></li>
						<li class="has-dropdown">
							<a href="../product/sofa.jsp">소파/암체어</a>
							<ul class="dropdown">
								<li><a href="#">전체 보기</a></li>
								<li><a href="#">가죽 소파</a></li>
								<li><a href="#">패브릭 소파</a></li>
								<li><a href="#">소파 베드</a></li>
							</ul>
						</li>
						<li class="has-dropdown">
							<a href="../product/sofa.jsp">침대/매트리스</a>
							<ul class="dropdown">
								<li><a href="#">전체 보기</a></li>
								<li><a href="#">침대</a></li>
								<li><a href="#">매트리스</a></li>
								<li><a href="#">침구</a></li>
							</ul>
						</li>
						<li class="has-dropdown">
							<a href="../product/sofa.jsp">수납/정리</a>
							<ul class="dropdown">
								<li><a href="#">전체 보기</a></li>
								<li><a href="#">옷장</a></li>
								<li><a href="#">서랍</a></li>
								<li><a href="#">책장/선반유닛</a></li>
							</ul>
						</li>
						<li class="has-dropdown">
							<a href="../product/sofa.jsp">주방가구</a>
							<ul class="dropdown">
								<li><a href="#">전체 보기</a></li>
								<li><a href="#">주방 가전</a></li>
								<li><a href="#">주방 아일랜드</a></li>
								<li><a href="#">주방 조리대</a></li>
							</ul>
						</li>
						<li><a href="../service/service_center.jsp">고객센터</a></li>
	                
						<%if(sessionID==null){ %>
							<li><a href="#myModal" id="myBtn" >로그인</a></li>
							<!-- Trigger/Open The Modal -->
							<%}else{%>							
								<li><%=sessionID %>님 어서오세요.| 
								<a href="../member/logout.jsp">로그아웃</a></li>
							<%}%>
							<div id="myModal" class="modal">
								<jsp:include page="../member/login.jsp"/>
							</div> 
								<!-- The Modal -->
							<li><a href="../member/join.jsp">회원가입</a></li>
						</ul>
					</div>
				</div>	
			</div>
			
		</nav>

</div>
<script src="../js/join.js"></script>


