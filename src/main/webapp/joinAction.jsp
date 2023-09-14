<%--
  Created by IntelliJ IDEA.
  User: prao
  Date: 2023/09/14
  Time: 2:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="member.MemberDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="member" class="member.Member" scope="page"/>
<jsp:setProperty name="member" property="memberId"/>
<jsp:setProperty name="member" property="memberPassword"/>
<jsp:setProperty name="member" property="memberName"/>
<jsp:setProperty name="member" property="birthDay"/>
<jsp:setProperty name="member" property="tel"/>
<html>
<head>
    <title>넷마블문화재단</title>
</head>
<body>
<%
    PrintWriter script = response.getWriter();
    String memberId = null;
    if (session.getAttribute("memberId") != null) {
        memberId = (String)session.getAttribute("memberId");
    }

	if (memberId != null) {
        script.println("<script>");
        script.println("alert('이미 로그인 되어있습니다.')");
        script.println("location.href = 'main.jsp'");
        script.println("</script>");
    }

    if (member.getMemberId() == null || member.getMemberPassword() == null || member.getMemberName() == null
            || member.getBirthDay() == null || member.getTel() == null) {
        script.println("<script>");
        script.println("alert('누락된 항목이 있습니다.')");
        script.println("history.back()");
        script.println("</script>");
    }

    MemberDAO memberDAO = new MemberDAO();
    int result = memberDAO.join(member);

    if (member.getMemberId() != null && member.getMemberPassword() != null && member.getMemberName() != null
            && member.getBirthDay() != null && member.getTel() != null && result == -1) {
		script.println("<script>");
		script.println("alert('사용할 수 없는 아이디입니다.')");
		script.println("history.back()");
		script.println("</script>");
    }

	if (member.getMemberId() != null && member.getMemberPassword() != null && member.getMemberName() != null
            && member.getBirthDay() != null && member.getTel() != null && result != -1) {
		session.setAttribute("memberId",member.getMemberId());
        script.println("<script>");
        script.println("location.href = 'main.jsp'");
        script.println("</script>");
    }
%>
</body>
</html>
