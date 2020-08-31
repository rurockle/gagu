package member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import all.Action;
import all.ActionForward;
import member.svc.MemberLoginProService;
import member.vo.MemberBean;

public class MemberLoginProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("MemberLoginProAction!");
		
		ActionForward forward = null;
		
		// member_login.jsp 페이지로부터 전달받은 파라미터(아이디, 패스워드)를
		// MemberBean 객체에 저장한 후 MemberLoginProService 클래스의
		// loginMember() 메서드를 호출하여 로그인 요청 작업 수행
		// => 파라미터 : MemberBean, 리턴타입 : int(loginResult)
		MemberBean member = new MemberBean();
		member.setMember_id(request.getParameter("member_id"));
		member.setMember_password(request.getParameter("member_password"));
		
		MemberLoginProService memberLoginProService = new MemberLoginProService();
		int loginResult = memberLoginProService.loginMember(member);
		
		// 로그인 작업 요청 결과 판별
		// => 0 일때 : 아이디 없음, -1일 때 : 패스워드 틀림 메세지를 자바스크립트로 출력 및
		//    이전 페이지로 이동
		// => 1 일때 index.jsp 페이지로 포워딩
		if(loginResult == 0 || loginResult == -1) {
			String resultStr = "";
			
			if(loginResult == 0) {
				resultStr = "아이디 없음";
			} else if(loginResult == -1) {
				resultStr = "패스워드 틀림";
			}
			
			response.setContentType("text/html;charset=UTF-8"); // 문서 타입 설정
			PrintWriter out = response.getWriter(); // PrintWriter 객체 가져오기
			out.println("<script>"); // 자바스크립트 시작
			out.println("alert('" + resultStr + "')"); // 오류 메세지 출력
			out.println("history.back()"); // 이전 페이지로 이동
			out.println("</script>"); // 자바스크립트 끝
		} else {
			// 로그인 작업 수행 성공 시 세션 처리
			// => HttpSession 객체를 request 객체로부터 전달받아 저장
			HttpSession session = request.getSession();
			// HttpSession 객체의 setAttibute() 메서드를 호출하여 세션 정보 저장
			session.setAttribute("id", member.getMember_id());
			
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("../main/index.jsp"); // 현재 프로젝트의 최상위 위치로 이동(index.jsp)
		}
		
		return forward;
	}

}