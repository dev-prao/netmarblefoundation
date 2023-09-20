package comment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CommentDAO {

	private Connection conn;
	private ResultSet rs;

	public CommentDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/commits?ServerTimezone=UTC";
			String dbID = "netmarble";
			String dbPassword = "pass";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ""; //데이터베이스 오류
	}

	public int getNext() {
		String SQL = "SELECT commentId FROM COMMENT ORDER BY commentId DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; //첫 번째 게시물인 경우
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}

	public int write(String commentContent, String memberId, int boardId) {
		String SQL = "INSERT INTO COMMENT VALUES (?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, commentContent);
			pstmt.setInt(2, getNext());
			pstmt.setString(3, memberId);
			pstmt.setInt(4, 1);
			pstmt.setString(5, getDate());
			pstmt.setInt(6, boardId);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}

	public ArrayList<Comment> getList(int boardId){//특정한 리스트를 받아서 반환
		String SQL="SELECT * FROM COMMENT WHERE boardId = ? AND commentAvailable = 1 ORDER BY boardId DESC LIMIT 10";//마지막 게시물 반환, 삭제가 되지 않은 글만 가져온다.
		ArrayList<Comment> list = new ArrayList<Comment>();
		try {
			PreparedStatement pstmt=conn.prepareStatement(SQL);
			pstmt.setInt(1, boardId);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Comment comment = new Comment();
				comment.setCommentContent(rs.getString(1));
				comment.setCommentId(rs.getInt(2));
				comment.setMemberId(rs.getString(3));
				comment.setCommentAvailable(rs.getInt(4));
				comment.setCommentDate(rs.getString(5));
				comment.setBoardId(rs.getInt(6));
				list.add(comment);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;//댓글 리스트 반환
	}

	public Comment getComment(int commentId) {//하나의 댓글 내용을 불러오는 함수
		String SQL="SELECT * FROM COMMENT WHERE commentId = ?";
		try {
			PreparedStatement pstmt=conn.prepareStatement(SQL);
			pstmt.setInt(1, commentId);
			rs=pstmt.executeQuery();//select
			if(rs.next()) {//결과가 있다면
				Comment comment = new Comment();
				comment.setCommentContent(rs.getString(1));
				comment.setCommentId(rs.getInt(2));
				comment.setMemberId(rs.getString(3));
				comment.setCommentAvailable(rs.getInt(4));
				comment.setCommentDate(rs.getString(5));
				comment.setBoardId(rs.getInt(6));
				return comment;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public int update(int boardId, int commentId,String commentContent ) {
		String SQL="UPDATE COMMENT SET commentContent = ? WHERE boardId = ? and commentId = ?";//특정한 아이디에 해당하는 제목과 내용을 바꿔준다.
		try {
			PreparedStatement pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1, commentContent);//물음표의 순서
			pstmt.setInt(2, boardId);
			pstmt.setInt(3, commentId);
			return pstmt.executeUpdate();//insert,delete,update
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;//데이터베이스 오류
	}

	public int delete(int commentId) {
		String SQL = "update COMMENT set commentAvailable = 0 where commentId = ?";
		try {
			PreparedStatement pstmt=conn.prepareStatement(SQL);
			pstmt.setInt(1, commentId);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;//데이터베이스 오류
	}
}
