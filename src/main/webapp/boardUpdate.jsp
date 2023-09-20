<%@ page import="board.BoardDAO" %>
<%@ page import="board.Board" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType = "text/html; charset=UTF-8" pageEncoding = "UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>넷마블문화재단</title>

    <!-- 여기에 css 넣어주세요 -->
    <link rel="stylesheet" href="./css/default.css">
    <link rel="stylesheet" href="./css/bootstrap.css">
    <link rel="stylesheet" href="./css/style.css">
</head>
<style>
    body {
        background-color: #F7F8FA;
    }
</style>
<body>
<%
    String userID = null;
    if (session.getAttribute("userID") != null) {
        userID = (String) session.getAttribute("userID");
    }
    int boardID = 0;
    if (request.getParameter("boardID") != null) {
        boardID = Integer.parseInt(request.getParameter("boardID"));
    }

    if (boardID == 0) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('유효하지 않은 글입니다.')");
        script.println("location.href='board.jsp'");
        script.println("</script>");
    }

    Board board = new BoardDAO().getBoard(boardID);
    //작성자가 본인인지?
    if (!userID.equals(board.getUserID())) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('권한이 없습니다.')");
        script.println("location.href='board.jsp'");
        script.println("</script>");
    }
%>

<div class="container">
    <div class="row">
        <form method="post"
              action="boardUpdateAction.jsp?boardID=<%=boardID%>"><%--업데이트 요청을 할 때 그 요청을 처리하는 액션 페이지 --%>
            <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                <thead>
                <tr>
                    <th colspan="2" style="background-color: lightgoldenrodyellow; text-align:center;">게시판 글 수정 양식</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input type="text" class="form-control" placeholder="글 제목" name="boardTitle" maxlength="50"
                               value="<%=board.getBoardTitle() %>"></td>
                </tr>
                <tr>
                    <td><textarea class="form-control" placeholder="글 내용" name="boardContent" maxlength="2048"
                                  style="height: 350px"><%=board.getBoardContent() %></textarea></td>
                </tr>
                </tbody>
            </table>
            <input type="submit" class="btn btn-success pull-right" value="글수정">
        </form>
    </div>
</div>

<!-- 여기에 js 넣어주세요 -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="./js/sec3.js"></script>
<script src="./js/gnb.js"></script>
</body>
</html>

