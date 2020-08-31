<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../inc/headder.jsp"></jsp:include>

<script type="text/JavaScript" src="http://code.jquery.com/jquery-1.7.min.js"></script>
<script type="text/JavaScript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
function openDaumZipAddress() {
	new daum.Postcode({
	oncomplete:function(data) {

					jQuery("#postcode1").val(data.postcode1);

					jQuery("#postcode2").val(data.postcode2);

					jQuery("#zonecode").val(data.zonecode);

					jQuery("#address").val(data.address);

					jQuery("#address_etc").focus();

					console.log(data);

				}

			}).open();

		}

	</script>
	

</head>
<body>
<jsp:include page="../inc/top.jsp"></jsp:include>

	<section id="joinFormArea">
		<h1>회원가입</h1>
		<form action="MemberJoinPro.me" method="post" name="joinForm">
			<fieldset>
				<table>
					<tr>
						<td>이름</td>
						<td><input type="text" name="member_name" required="required"></td>
					</tr>
					<tr height="25px">
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>아이디</td>
						<td>
							<input type="text" name="member_id" required="required" class="id"
								placeholder="4~12자리 영문,숫자 조합">
								<input type="button" value="dup. check" class="dup"><div id="divid"></div>
						</td>
					</tr>
					<tr height="25px">
						<td></td>
						<td></td>
					</tr>
				
					<tr>
						<td>패스워드</td>
						<td>
							<input type="text" name="member_password" required="required" 
								placeholder="8~16자리 영문,숫자,특수문자 조합">
						</td>
					</tr>
					<tr height="25px">
						<td></td>
						<td></td>
					</tr>
					
					
					
					<tr>
						<td>성별</td>
						<td>					
							<input type="radio" name = "member_gender" value="man"> 남자
							<input type="radio" name = "member_gender" value="woman"> 여자
						</td>
					</tr>
					<tr height="25px">
						<td></td>
						<td></td>
					</tr>
					
					<tr>
						<td>생일</td>
						<td>					
						<input type="date" name="member_birth" value="1980-01-01">
						
						</td>
					</tr>
					<tr height="25px">
						<td></td>
						<td></td>
					</tr>
					
					<tr>
						<td>주소</td>
						
						<td>					
						<input id="zonecode" type="text" name="member_zip" value="" style="width:50px;" readonly/>
						<input type="button" onClick="openDaumZipAddress();" value = "주소 찾기" class="dup"/><br>
						
						<input type="text" id="address" name="member_address" value="" style="width:300px;" readonly/><br>
						
						
						<input type="text" name="member_detail_address"><br>
						</td>
					</tr>
					<tr height="25px">
						<td></td>
						<td></td>
					</tr>
					
					<tr>
						<td>전화번호</td>
						<td><input type="text" name="member_tel" maxlength="11"></td>
					</tr>
					<tr height="25px">
						<td></td>
						<td></td>
					</tr>
					<tr>
					
					<tr>
						<td>E-Mail</td>
						<td><input type="text" name="member_email" required="required"></td>
					</tr>
					<tr height="25px">
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="가입"/>
							<input type="button" value="취소" onclick="history.back()" />
						</td>
					</tr>
				</table>
			</fieldset>
		</form>
	</section>
	
<jsp:include page="../inc/bottom.jsp"></jsp:include>
</body>
</html>