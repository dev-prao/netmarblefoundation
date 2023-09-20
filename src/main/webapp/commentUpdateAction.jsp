<%@ page import="java.io.PrintWriter" %>
<%@ page import="comment.CommentDAO" %>
<%@ page import="comment.Comment" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>넷마블문화재단</title>
</head>
<body>
<%
    String memberId = null;
    if(session.getAttribute("memberId")!=null){
        memberId =(String)session.getAttribute("memberId");
    }
    if(memberId == null){
        PrintWriter script=response.getWriter();
        script.println("<script>");
        script.println("alert('로그인을 하세요.')");
        script.println("location.href='login.jsp'");
        script.println("</script>");
    }
    int boardId =0;
    if(request.getParameter("boardId")!=null)
        boardId =Integer.parseInt(request.getParameter("boardId"));
    int commentId =0;
    if(request.getParameter("commentId")!=null)
        commentId =Integer.parseInt(request.getParameter("commentId"));
    if(commentId ==0){
        PrintWriter script=response.getWriter();
        script.println("<script>");
        script.println("alert('유효하지 않은 글입니다.')");
        script.println("location.href='board.jsp'");
        script.println("</script>");
    }
    Comment comment = new CommentDAO().getComment(commentId);
    if(!memberId.equals(comment.getMemberId())){
        PrintWriter script=response.getWriter();
        script.println("<script>");
        script.println("alert('권한이 없습니다.')");
        script.println("location.href='board.jsp'");
        script.println("</script>");
    } else{
        if(request.getParameter("commentContent")==null){
            PrintWriter script=response.getWriter();
            script.println("<script>");
            script.println("alert('입력이 안 된 사항이 있습니다.')");
            script.println("history.back()");
            script.println("</script>");
        }else{
            CommentDAO commentDAO=new CommentDAO();//하나의 인스턴스
            int result=commentDAO.update(boardId, commentId,request.getParameter("commentContent"));
            if(result == -1){//데이터 베이스 오류가 날 때
                PrintWriter script=response.getWriter();
                script.println("<script>");
                script.println("alert('댓글 수정에 실패했습니다.')");
                script.println("history.back()");
                script.println("</script>");
            }
            else{
                PrintWriter script=response.getWriter();
                script.println("<script>");
                script.println("location.href= \'boardView.jsp?boardId="+ boardId +"\'");
                script.println("</script>");
            }
        }

    }
%>
</body>
</html>
