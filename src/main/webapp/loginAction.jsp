<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="member.MemberDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="member.MemberDAO" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="member" class="member.Member" scope="page"/>
<jsp:setProperty name="member" property="memberId"/>
<jsp:setProperty name="member" property="memberPassword"/>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

  <title>JSP 게시판 웹사이트</title>
</head>
<body>
<%
  String memberId = null;
  if (session.getAttribute("memberId") != null) {
    memberId = (String) session.getAttribute("memberId");
  }
  if (memberId != null) {
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('이미 로그인이 되어있습니다.')");
    script.println("location.href = 'main.jsp'");
    script.println("</script>");
  }

  MemberDAO memberDAO = new MemberDAO();
  int result = memberDAO.login(member.getMemberId(), member.getMemberPassword());
  if (result == 1) {
    session.setAttribute("memberId", member.getMemberId());
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("location.href = 'main.jsp'");
    script.println("</script>");
  } else if (result == 0) {
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('비밀번호가 틀립니다.')");
    script.println("history.back()");
    script.println("</script>");
  } else if (result == -1) {
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('존재하지 않는 아이디입니다.')");
    script.println("history.back()");
    script.println("</script>");
  } else if (result == -2) {
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('데이터베이스 오류가 발생했습니다.')");
    script.println("history.back()");
    script.println("</script>");
  }
%>
</body>
</html>
