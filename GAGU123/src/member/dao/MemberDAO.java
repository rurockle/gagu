package member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import member.vo.MemberBean;

import static member.db.JdbcUtil.*;

public class MemberDAO {
	private static MemberDAO instance = new MemberDAO();
	
	private MemberDAO() {}

	public static MemberDAO getInstance() {
		return instance;
	};
	
	// ----------------------------------------------
	
	Connection con;

	public void setConnection(Connection con) {
		this.con = con;
	}

	// 회원 중복 여부 체크를 위한 dupCheckMember() 메서드 정의
	public int dupCheckMember(MemberBean member) {
		int checkResult = 1;
		// => 0 : 아이디 중복, -1 : 이메일 중복, 1 : 중복 없음(가입 가능)
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			// 아이디 또는 이메일이 중복되는 레코드의 아이디와 이메일을 조회
			// => 조회 결과와 MemberBean 객체의 아이디, 이메일을 검사하여
			//    아이디가 중복일 경우 checkResult 를 0, 이메일이 중복일 경우 -1 로 변경
			//    만약, 중복되는 데이터가 없을 경우 아무 작업도 수행하지 않음
			String sql = "SELECT member_id,member_email FROM member WHERE member_id=? OR member_email=?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, member.getMember_id());
			pstmt.setString(2, member.getMember_email());
			rs = pstmt.executeQuery();
			
			// 조회 결과에 대한 중복 여부 판별
			if(rs.next()) {
				// 아이디 중복 체크 결과가 맞으면 0, 
				// 아니면 이메일 중복 체크 결과가 맞으면 -1
				if(member.getMember_id().equals(rs.getString("member_id"))) {
					checkResult = 0;
				} else if(member.getMember_email().equals(rs.getString("member_email"))) {
					checkResult = -1;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("MemberDAO - dupCheckMember() 오류!");
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return checkResult;
	}

	// 회원 가입 처리를 위한 insertMember() 메서드 정의
	public int insertMember(MemberBean member) {
		int insertCount = 0;
		
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO member VALUES (null,?,?,?,?,?,?,?,?,?,?,?,?,now())";
			pstmt = con.prepareStatement(sql);
			
			
			pstmt.setString(1, member.getMember_id());
			pstmt.setString(2, member.getMember_password());
			pstmt.setString(3, member.getMember_name());
			
			pstmt.setString(4, member.getMember_gender());
			pstmt.setString(5, member.getMember_birth());
			pstmt.setString(6, member.getMember_zip());
			pstmt.setString(7, member.getMember_address());
			pstmt.setString(8, member.getMember_detail_address());
			pstmt.setString(9, member.getMember_tel());
			pstmt.setString(10, member.getMember_email());
			pstmt.setInt(11, member.getMember_point());
			pstmt.setString(12, member.getMember_grade());
			
			
			insertCount = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("MemberDAO - insertMember() 오류!");
		} finally {
			close(pstmt);
		}
		
		return insertCount;
	}

	// 아이디, 패스워드를 판별하여 로그인 가능 여부를 리턴하는 loginMember() 메서드 정의
	public int loginMember(MemberBean member) {
		int loginResult = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			// id 를 사용하여 passwd 검색
			String sql = "SELECT member_password FROM member WHERE member_id=?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, member.getMember_id());
			rs = pstmt.executeQuery();
			
			if(rs.next()) { // 아이디가 존재할 경우
				if(member.getMember_password().equals(rs.getString("member_password"))) { // 패스워드 일치할 경우
					loginResult = 1;
				} else { // 패스워드가 일치하지 않을 경우
					loginResult = -1;
				}
//			} else { // 아이디가 존재하지 않을 경우
				// 기본값을 0으로 설정했으므로 비교 생략 가능
//				loginResult = 0;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("MemberDAO - loginMember() 오류!");
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return loginResult;
	}

	// 회원 목록 조회 작업을 위한 selectMemberList() 메서드 정의
	public ArrayList<MemberBean> selectMemberList() {
		ArrayList<MemberBean> memberList = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM member";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			memberList = new ArrayList<MemberBean>();
			
			while(rs.next()) {
				// 조회된 결과 중 1개 레코드를 MemberBean 객체에 저장 후 ArrayList 에 추가
				MemberBean member = new MemberBean();
				member.setMember_idx(rs.getInt("member_idx"));
				member.setMember_name(rs.getString("member_name"));
				member.setMember_id(rs.getString("member_id"));
				member.setMember_password(rs.getString("member_password"));
				member.setMember_email(rs.getString("member_email"));
				
				member.setMember_date(rs.getDate("member_date"));
				
				memberList.add(member);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("MemberDAO - selectMemberList() 오류!");
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return memberList;
	}
	//파라미터 잇을 경우
	public ArrayList<MemberBean> selectMemberList(String orderTarget, String orderType) {
		ArrayList<MemberBean> memberList = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM member ORDER BY" + orderTarget + "" + orderType;
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			memberList = new ArrayList<MemberBean>();
			
			while(rs.next()) {
				// 조회된 결과 중 1개 레코드를 MemberBean 객체에 저장 후 ArrayList 에 추가
				MemberBean member = new MemberBean();
				member.setMember_idx(rs.getInt("member_idx"));
				member.setMember_name(rs.getString("member_name"));
				member.setMember_id(rs.getString("member_id"));
				member.setMember_password(rs.getString("member_password"));
				member.setMember_email(rs.getString("member_email"));
				
				member.setMember_date(rs.getDate("member_date"));
				memberList.add(member);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("MemberDAO - selectMemberList() 오류!");
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return memberList;
	}
	
	// dupcheck(id)
	public int dupcheck(String member_id) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		//신호값 정하기 1 : 아이디 중복,  0 : 아이디 중복아님  
		int check=0;
		try {
			//1단계 드라이버 불러오기	// 2단계 디비연결
			con=getConnection();
			// sql    select id에 해당하는 회원정보 가져오기
			// 3단계 연결정보를 이용해서 sql구문 만들고 실행할 객체생성 => PreparedStatement
			String sql="select * from member where member_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member_id);
			// 4단계 실행 결과 => ResultSet rs 
			rs=pstmt.executeQuery();
			// 5단계 rs에 저장된 데이터 있는 확인 .next() 다음행으로 이동 데이터 있으면 True
//			                         // 아이디 있음
//			                         없으면 False
//			                         // 아이디 없음
			if(rs.next()){
//				out.println("아이디있음 아이디중복");
				check=1;
			}else{
//				out.println("아이디없음 아이디사용가능");
				check=0;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			//마무리
			System.out.println("기억장소 정리하는 마무리 작업");
			if(pstmt!=null) try { pstmt.close();} catch (SQLException ex) {}
			if(con!=null) try { con.close();} catch (SQLException ex) {}
			if(rs!=null) try { rs.close();} catch (SQLException ex) {}
		}
		return check;
	}

	
	
}