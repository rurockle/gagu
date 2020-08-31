package member.svc;

import static all.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import member.dao.MemberDAO;
import member.vo.MemberBean;

public class MemberListService {

	// 회원 목록 조회 요청을 위한 getMemberList() 메서드 정의
	public ArrayList<MemberBean> getMemberList() {
		Connection con = getConnection();
		
		MemberDAO memberDAO = MemberDAO.getInstance();
		
		memberDAO.setConnection(con);
		
		// MemberDAO 클래스의 selectMemberList() 메서드를 호출하여
		// 회원 목록 조회 요청 작업 수행
		// => 파라미터 : 없음, 리턴타입 : ArrayList<MemberBean>
		ArrayList<MemberBean> memberlist = memberDAO.selectMemberList();
		
		close(con);
		
		return memberlist;
	}
	
	// 회원 목록 조회 요청을 위한 메서드 정의
	public ArrayList<MemberBean> getMemberList(String orderTarget, String orderType) {
		Connection con = getConnection();
		
		MemberDAO memberDAO = MemberDAO.getInstance();
		
		memberDAO.setConnection(con);
		
		// MemberDAO 클래스의 selectMemberList() 메서드를 호출하여
		// 회원 목록 조회 요청 작업 수행
		// => 파라미터 : 없음, 리턴타입 : ArrayList<MemberBean>
		ArrayList<MemberBean> memberlist = 
				memberDAO.selectMemberList(orderTarget, orderType);
		
		close(con);
		
		return memberlist;
	}
	
	
}