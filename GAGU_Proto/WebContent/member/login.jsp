<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Modal content -->
<div class="modal-content">
    <div class="close-section">
    <span class="close">&times;</span>
    </div>
    <!--팝업화면 로그인 폼-->
    <div class="logindiv">
        <!--왼쪽 구역-->
        <div class="fl-left">
            <div class="login-section left-pad">
                <h2 class="fl-left">LOGIN</h2>
                <!--아이디 비밀번호 input 부분-->
                <div class="login-input-area">
                    
                    <form action="MemberLoginPro.me" method="POST"><!--로그인버튼 클릭 시 이동할 주소 적어주시면 됩니다.-->
                        <input type="text" name="member_id" class="input-text" placeholder="아이디" autocomplete="off"><!--autocomplete : 자동 텍스트 채우기 기능 방지-->
                        <input type="password" name="member_pass" class="input-text" placeholder="비밀번호" autocomplete="off">
                        
                        <!--아이디 저장-->
                        <div class="id-save fv-left">
                            <label><input id="idSave" type="checkbox"> 아이디저장</label>
                        </div>
                        <!--로그인 버튼-->
                        <div class="login-btn-area">
                            <input type="submit" name="loginbtn" class="login-btn" value="로그인">                    
                        </div>
                    </form>
                </div>
                <!--ID/PW찾기 회원가입 비회원로그인-->
                <div class="login-select-area">
                        <a href="#">ID/PW찾기</a>
                        <a href="../member/join.jsp">회원가입</a>
                        <a href="../member/not_member_login.jsp">비회원 로그인</a>
                </div>
                <!--간편로그인구현-->
                <div class="easy-login-area">
                    <!--페이스북, 네이버, 카카오, 페이코 아이콘-->
                    <!--카카오 로그인 말고 다른 것들도 구현 할 수 있으면 쓰려고 남겨둡니다.-->
                    <!-- <a href="#"><img src="../images/ico-facebook.png"></a>
                    <a href="#"><img src="../images/ico-naver.png"></a>
                    <a href="#"><img src="../images/ico-kakao.png"></a>
                    <a href="#"><img src="../images/ico-payco.png"></a> -->
                    
                    <!--카카오 로그인 연결해주시면 됩니다.-->    
                    <a href="#" class="kakao-login">
                        <i class="icon-kakao"><img src="../images/icon-kakao.png"></i>
                        카카오로 시작하기
                    </a>
                </div>
            </div>
        </div>
        <!--오른쪽 이미지 구현-->
        <div class="fl-right">
            <img src="../images/ikea_login.png" id="loginImg">
        </div>
    </div>
    </div>
   
<!-- The Modal -->


