<%@ page import="java.io.PrintWriter" %>
<%@ page contentType = "text/html; charset=UTF-8" pageEncoding = "UTF-8" %>
<%@ page import="board.BoardDAO" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="board" class="board.Board" scope="page"/>
<jsp:setProperty name="board" property="boardTitle"/>
<jsp:setProperty name="board" property="boardContent" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>넷마블문화재단</title>
</head>
<body>
<%
    String userID = null;
    if(session.getAttribute("userID")!=null){
        userID=(String)session.getAttribute("userID");
    }

    if(userID == null){
        PrintWriter script=response.getWriter();
        script.println("<script>");
        script.println("alert('로그인을 하세요.')");
        script.println("location.href='login.jsp'");
        script.println("</script>");
    }
    else{
        if(board.getBoardTitle()==null||board.getBoardContent()==null){
            PrintWriter script=response.getWriter();
            script.println("<script>");
            script.println("alert('입력이 안 된 사항이 있습니다.')");
            script.println("history.back()");
            script.println("</script>");
        }else{
            BoardDAO boardDAO=new BoardDAO();//하나의 인스턴스
            int result=boardDAO.write(board.getBoardTitle(),userID,board.getBoardContent(),board.getBoardCount(),board.getLikeCount());
            if(result == -1){//데이터 베이스 오류가 날 때
                PrintWriter script=response.getWriter();
                script.println("<script>");
                script.println("alert('글쓰기에 실패했습니다.')");
                script.println("history.back()");
                script.println("</script>");
            }
            else{
                PrintWriter script=response.getWriter();
                script.println("<script>");
                script.println("location.href='board.jsp?pageNumber=1'");
                script.println("</script>");
            }
        }

    }
%>
</body>
</html>
