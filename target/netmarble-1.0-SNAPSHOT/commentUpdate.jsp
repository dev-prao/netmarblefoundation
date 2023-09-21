<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="board.Board" %>
<%@ page import="board.BoardDAO" %><%--데이터베이스 접근 객체 가져오기 --%>
<%@ page import="comment.Comment" %>
<%@ page import="comment.CommentDAO" %><%--데이터베이스 접근 객체 가져오기 --%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>넷마블문화재단</title>
    <!--    여기에 css 넣어주세요-->
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<%
    String userID = null;
    if (session.getAttribute("userID") != null) {
        userID = (String)session.getAttribute("userID");
    }

	int boardID = 0;
    if (request.getParameter("boardID") != null) {
        boardID = Integer.parseInt(request.getParameter("boardID"));
    }

    if (boardID == 0) {
        PrintWriter script=response.getWriter();
        script.println("<script>");
        script.println("alert('유효하지 않은 글입니다.')");
        script.println("location.href='board.jsp'");
        script.println("</script>");
    }

    Board board = new BoardDAO().getBoard(boardID);

	int commentID = 0;
    if (request.getParameter("commentID") != null) {
        commentID = Integer.parseInt(request.getParameter("commentID"));
    }
    Comment comment = new CommentDAO().getComment(commentID);
%>



    <div class="container">
        <div class="row">
            <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                <thead>
                <tr>
                    <th colspan="3" style="background-color: #2e8b57; text-align:center;">게시판 글 보기</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td style="width: 20%">글 제목</td>
                    <td colspan="2"><%= board.getBoardTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
                </tr>
                <tr>
                    <td>작성자</td>
                    <td colspan="2"><%= board.getUserID() %></td>
                </tr>
                <tr>
                    <td>작성일자</td>
                    <td colspan="2"><%= board.getBoardDate().substring(0,11)+board.getBoardDate().substring(11,13)+"시"+board.getBoardDate().substring(14,16)+"분" %></td>
                </tr>
                <tr>
                    <td>내용</td>
                    <td colspan="2" style="min-height: 200px; text-align: left;"><%= board.getBoardContent().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></td>
                </tr>

                </tbody>
            </table>
            <a href="board.jsp" class="btn btn-success">목록</a>

                <%
					if(userID != null && userID.equals(board.getUserID())){//해당 글이 본인이라면 수정과 삭제가 가능
				%>
            <a href="boardUpdate.jsp?boardID=<%=boardID%>" class="btn btn-warning">수정</a>
            <a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction.jsp?boardID=<%=boardID%>" class="btn btn-danger">삭제</a>
                <%
					}
				%>
            <br><br>
            <div class="container">
                <div class="row">
                    <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                        <tbody>
                        <tr>
                            <td align="left" bgcolor="skyblue">댓글</td>
                        </tr>

                        <div class="container">
                            <div class="row">
                                <form method="post" action="commentUpdateAction.jsp?boardID=<%=boardID%>&commentID=<%=commentID%>">
                                    <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                                        <tbody>
                                        <tr>
                                            <td><input type="text" class="form-control" placeholder="댓글 쓰기" name="commentContent" maxlength="300" value=<%=comment.getCommentContent() %>></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <input type="submit" class="btn btn-success pull-right" value="댓글수정">
                                </form>
                            </div>
                        </div>
</body>
</html>
