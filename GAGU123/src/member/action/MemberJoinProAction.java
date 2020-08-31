package member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.svc.MemberJoinProService;
import member.vo.ActionForward;
import member.vo.MemberBean;

public class MemberJoinProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("MemberJoinProAction!");
		
		ActionForward forward = null;
		
		// member_join.jsp 페이지로부터 전달받은 파라미터(이름, 아이디, 패스워드, 이메일)
		// 가져와서 MemberBean 객체에 저장
//		System.out.println(request.getParameter("member_name"));
//		System.out.println(request.getParameter("member_id"));
//		System.out.println(request.getParameter("member_zip"));
//		System.out.println(request.getParameter("member_gender"));
//		System.out.println(request.getParameter("member_birth"));
		
		int point = 5000;
		String grade = "bronze";
		
		MemberBean member = new MemberBean();
		member.setMember_name(request.getParameter("member_name"));
		member.setMember_id(request.getParameter("member_id"));
		member.setMember_password(request.getParameter("member_password"));
		member.setMember_email(request.getParameter("member_email"));
		member.setMember_gender(request.getParameter("member_gender"));
		member.setMember_birth(request.getParameter("member_birth"));
		member.setMember_zip(request.getParameter("member_zip"));
		member.setMember_address(request.getParameter("member_address"));
		member.setMember_detail_address(request.getParameter("member_detail_address"));
		member.setMember_tel(request.getParameter("member_tel"));
		
		member.setMember_point(point);
		member.setMember_grade(grade);
		
		// MemberJoinProService 클래스의 dupCheckmember() 메서드를 호출하여
		// 회원 가입 전 중복 여부 확인 요청 작업 수행
		// => 파라미터 : MemberBean, 리턴타입 : int
		MemberJoinProService memberJoinProService = new MemberJoinProService();
		int checkResult = memberJoinProService.dupCheckMember(member);
		
		// 중복 체크 결과가 0 이면 "아이디 중복", -1 이면 "이메일 중복" 메세지를 
		// 문자열(resultStr)에 저장 후 자바스크립트를 사용하여 
		// 메세지 출력 후 이전페이지로 이동
		// 중복 체크 결과가 1이면 회원 가입 처리 요청 작업 수행
		if(checkResult == 0 || checkResult == -1) {
			String resultStr = "";
			
			if(checkResult == 0) {
				resultStr = "아이디 중복";
			} else if(checkResult == -1) {
				resultStr = "이메일 중복";
			}
			
			response.setContentType("text/html;charset=UTF-8"); // 문서 타입 설정
			PrintWriter out = response.getWriter(); // PrintWriter 객체 가져오기
			out.println("<script>"); // 자바스크립트 시작
			out.println("alert('" + resultStr + "')"); // 오류 메세지 출력
			out.println("history.back()"); // 이전 페이지로 이동
			out.println("</script>"); // 자바스크립트 끝
		} else {
			// MemberJoinProService 클래스의 joinMember() 메서드를 호출하여
			// 회원 가입 처리 요청 작업 수행
			// => 파라미터 : MemberBean, 리턴타입 : boolean(isJoinSuccess)
			boolean isJoinSuccess = memberJoinProService.joinMember(member);
			
			if(!isJoinSuccess) {
				response.setContentType("text/html;charset=UTF-8"); // 문서 타입 설정
				PrintWriter out = response.getWriter(); // PrintWriter 객체 가져오기
				out.println("<script>"); // 자바스크립트 시작
				out.println("alert('회원 가입 실패!')"); // 오류 메세지 출력
				out.println("history.back()"); // 이전 페이지로 이동
				out.println("</script>"); // 자바스크립트 끝
			} else {
				// 회원 가입 성공 시 MemberList.me 서블릿 주소 포워딩 => Redirect 방식
				response.setContentType("text/html;charset=UTF-8"); // 문서 타입 설정
				PrintWriter out = response.getWriter(); // PrintWriter 객체 가져오기
				out.println("<script>"); // 자바스크립트 시작
				out.println("alert('5000 포인트 지급하였습니다!')"); // 오류 메세지 출력
				out.println("history.back()"); // 이전 페이지로 이동
				out.println("</script>"); // 자바스크립트 끝
			
				forward = new ActionForward();
				forward.setRedirect(true);
				forward.setPath("MemberList.me");
			}
			
		}
		
		return forward;
		
	}
	
}