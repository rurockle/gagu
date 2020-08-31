package member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.vo.ActionForward;

public class MemberLogoutAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("MemberLogoutAction!");
		
		ActionForward forward = null;
		
		// HttpSession 객체 가져와서 invalidate() 메서드를 호출하여 세션 제거
		HttpSession session = request.getSession();
		session.invalidate();
		
		// index.jsp 페이지로 포워딩
		forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("./"); // 현재 프로젝트의 최상위 위치로 이동(index.jsp)
		
		// 자바 스크립트 쓰고 싶으면
		
		return forward;
	}

}