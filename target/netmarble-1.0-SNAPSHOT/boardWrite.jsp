<%@ page contentType = "text/html; charset=UTF-8" pageEncoding = "UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>넷마블문화재단</title>
    <!--    여기에 css 넣어주세요-->
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
%>

    
    <div class="container" style="margin-top: 30px">
        <div class="row">
            <form method="post" action="boardWriteAction.jsp">
                <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                    <thead>
                    <tr>
                        <th colspan="2" style="background-color: lightgoldenrodyellow; text-align:center;">자유게시판</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input type="text" class="form-control" placeholder="글 제목" name="boardTitle" maxlength="50"></td>
                    </tr>
                    <tr>
                        <td><textarea class="form-control" placeholder="글 내용" name="boardContent" maxlength="2048" style="height: 350px"></textarea></td>
                    </tr>
                    </tbody>
                </table>
                <input type="submit" class="btn btn-success pull-right" value="글쓰기">
            </form>
        </div>
    </div>
</html>

