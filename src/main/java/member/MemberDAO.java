package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public MemberDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/commits";
			String dbID = "netmarble";
			String dbPassword = "pass";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int login(String memberId, String memberPassword) {
		String SQL = "SELECT memberPassword FROM MEMBER WHERE memberId = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();
			if (rs.next() && rs.getString(1).equals(memberPassword)) {
				return 1; //로그인 성공
			}
			if (rs.next() && !rs.getString(1).equals(memberPassword)) {
				return 0; //로그인 실패(비밀번호 불일치)
			}
			return -1; //회원정보 없음(아이디 존재 X)
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; //DB 오류
	}

	public int join(Member member) {
		String SQL = "INSERT INTO MEMBER VALUES (?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getMemberPassword());
			pstmt.setString(3, member.getMemberName());
			pstmt.setString(4, member.getBirthday());
			pstmt.setString(5, member.getTel());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //DB 오류
	}
}
