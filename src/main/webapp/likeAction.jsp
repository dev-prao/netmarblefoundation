<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="board.BoardDAO" %>
<%@ page import="likey.LikeyDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>넷마블문화재단</title>
</head>
<body>
<%
    String memberId = null;
    if (session.getAttribute("memberId") != null) {
        memberId = (String)session.getAttribute("memberId");
    }
    if (memberId == null) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('로그인을 해주세요.')");
        script.println("location.href='login.jsp'");
        script.println("</script>");
    }
    int boardId = 0;
    if (request.getParameter("boardId") != null)
        boardId = Integer.parseInt(request.getParameter("boardId"));
    if (boardId == 0) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('유효하지 않은 글입니다.')");
        script.println("location.href='board.jsp'");
        script.println("</script>");
    }
    BoardDAO boardDAO = new BoardDAO();
    LikeyDAO likeyDAO = new LikeyDAO();
    int result = likeyDAO.like(memberId, boardId);

    if (result == 1) {
        result = boardDAO.like(boardId);
        if (result == 1) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('추천이 완료되었습니다.')");
            script.println("location.href= \'boardView.jsp?boardId=" + boardId + "\'");
            script.println("</script>");
        } else {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('데이터베이스 오류가 발생했습니다.')");
            script.println("location.href=document.referrer;");
            script.println("</script>");
        }
    } else {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('이미 추천을 누른 글입니다.')");
        script.println("location.href='board.jsp'");
        script.println("</script>");
    }
%>
</body>
</html>
