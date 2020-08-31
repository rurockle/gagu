
<%@page import="member.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//파라미터 id 값 가져오기
String id = request.getParameter("member_id");
// 아이디 중복 체크 
// MemberDAO mdao 객체생성
// MemberDAO mdao= MemberDAO.getInstance();
// mdao.
// int check  = dupcheck(id)
// int check=mdao.dupcheck(id);
// check==1  "아이디 중복" 
// check==0  "아이디 사용가능"
int check = 1;
if(check==1){
	out.println("아이디 중복");
}else{
	out.println("아이디 사용가능");
}
%>