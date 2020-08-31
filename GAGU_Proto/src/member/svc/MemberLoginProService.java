package member.svc;

import static all.JdbcUtil.*;

import java.sql.Connection;

import member.dao.MemberDAO;
import member.vo.MemberBean;

public class MemberLoginProService {

	// 전달받은 아이디, 패스워드를 사용하여 로그인 작업을 요청하는 loginMember() 메서드 정의
	public int loginMember(MemberBean member) {
		Connection con = getConnection();
		
		MemberDAO memberDAO = MemberDAO.getInstance();
		
		memberDAO.setConnection(con);
		
		// MemberDAO 클래스의 loginMember() 메서드를 호출하여 아이디, 패스워드 일치 여부 판별
		int loginResult = memberDAO.loginMember(member);
		
		close(con);
		
		return loginResult;
	}
	
}