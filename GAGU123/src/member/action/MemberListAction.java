package member.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.svc.MemberListService;
import member.vo.ActionForward;
import member.vo.MemberBean;

public class MemberListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("MemberListAction!");
		
		ActionForward forward = null;
		
		// 파라미터로 전달되는 항목이 하나라도 존재하면
		// getMemberList() 메서드에 파라미터를 전달하여 SELECT 구문의 조건을 설정하고
		// 파라미터가 없을 경우 SELECT 구문의 조건 설정 없이 기본 조회 수행
		String orderTarget = request.getParameter("orderTarget");
		String orderType = request.getParameter("orderType");
		
		// MemberListService 클래스의 getMemberList() 메서드를 호출하여
		// 전체 회원 목록 조회 요청 작업을 수행
		// => 파라미터 : 없음, 리턴타입 : ArrayList<MemberBean>
		MemberListService memberListService = new MemberListService();
		
		ArrayList<MemberBean> memberList = null;
		
		if(orderTarget == null) { // 파라미터가 없을 경우
			memberList = memberListService.getMemberList();
		} else { // 파라미터가 있을 경우
			memberList = memberListService.getMemberList(orderTarget, orderType);
		}
		
//		System.out.println(memberList);
		
		// 조회된 전체 목록을 ArrayList<MemberBean> 객체로 전달받아
		// request 객체에 저장(memberList)
		request.setAttribute("memberList", memberList);
		
		// member 디렉토리의 member_list.jsp 페이지로 포워딩
		forward = new ActionForward();
		forward.setPath("/member/member_list.jsp");
		
		return forward;
	}

}