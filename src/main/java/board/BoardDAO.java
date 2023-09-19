package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {

    private Connection conn;
    private ResultSet rs;

    public BoardDAO() {
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
        String SQL = "SELECT boardId FROM BOARD ORDER BY boardId DESC";
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

    public int write(String boardTitle, String memberId, String boardContent, int boardCount, int likeCount) {
        String SQL = "INSERT INTO BOARD VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, getNext());
            pstmt.setString(2, boardTitle);
            pstmt.setString(3, memberId);
            pstmt.setString(4, getDate());
            pstmt.setString(5, boardContent);
            pstmt.setInt(6, 1);
            pstmt.setInt(7, boardCount);
            pstmt.setInt(8, likeCount);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; //데이터베이스 오류
    }

    public ArrayList<Board> getList(int pageNumber) {
        String SQL = "SELECT * FROM BOARD WHERE boardId < ? AND boardAvailable = 1 ORDER BY boardID DESC LIMIT 10";
        ArrayList<Board> list = new ArrayList<>();
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                Board board = new Board();
                board.setBoardId(rs.getInt(1));
                board.setBoardTitle(rs.getString(2));
                board.setMemberId(rs.getString(3));
                board.setBoardDate(rs.getString(4));
                board.setBoardContent(rs.getString(5));
                board.setBoardAvailable(rs.getInt(6));
                board.setBoardCount(7);
                board.setLikeCount(8);
                list.add(board);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public int getCount() {
        String SQL = "SELECT COUNT(*) FROM BOARD";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }


    public boolean nextPage(int pageNumber) {
        String SQL = "SELECT * FROM BOARD WHERE boardId < ? AND boardAvailable = 1";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public Board getBoard(int boardId) {
        String SQL = "SELECT * FROM BOARD WHERE boardId = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, boardId);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                Board board = new Board();
                board.setBoardId(rs.getInt(1));
                board.setBoardTitle(rs.getString(2));
                board.setMemberId(rs.getString(3));
                board.setBoardDate(rs.getString(4));
                board.setBoardContent(rs.getString(5));
                board.setBoardAvailable(rs.getInt(6));
                board.setBoardCount(7);
                board.setLikeCount(8);
                return board;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int countUpdate(int boardCount, int boardId) {
        String SQL = "UPDATE BOARD SET boardCount = ? WHERE boardId = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, boardCount);
            pstmt.setInt(2, boardId);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; //데이터베이스 오류
    }

    public int update(int boardId, String boardTitle, String boardContent) {
        String SQL = "UPDATE BOARD SET boardTitle = ?, boardContent = ? WHERE boardId = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, boardTitle);
            pstmt.setString(2, boardContent);
            pstmt.setInt(3, boardId);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; //데이터베이스 오류
    }

    public int delete(int boardId) {
        String SQL = "UPDATE BOARD SET boardAvailable = 0 WHERE boardId = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, boardId);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; //데이터베이스 오류
    }

    public int like(int boardId) {
        String SQL = "UPDATE BOARD SET likeCount += 1 WHERE boardId = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, boardId);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    public ArrayList<Board> getSearch(String searchField, String searchText) {
        ArrayList<Board> list = new ArrayList<>();
        String SQL = "SELECT * FROM BOARD WHERE " + searchField.trim();
        try {
            if (searchText != null && !searchText.equals("")) {
                SQL += " LIKE '%" + searchText.trim() + "%' ORDER BY boardId DESC LIMIT 10";
            }
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                Board board = new Board();
                board.setBoardId(rs.getInt(1));
                board.setBoardTitle(rs.getString(2));
                board.setMemberId(rs.getString(3));
                board.setBoardDate(rs.getString(4));
                board.setBoardContent(rs.getString(5));
                board.setBoardAvailable(rs.getInt(6));
                board.setBoardCount(rs.getInt(7));
                board.setLikeCount(rs.getInt(8));
                list.add(board);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
