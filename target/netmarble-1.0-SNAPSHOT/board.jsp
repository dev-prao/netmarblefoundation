<%@ page import="board.BoardDAO" %>
<%@ page import="board.Board" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
  
//현재 페이지가 몇번째 페이지 인가
  int pageNumber = 1;//기본적으로 1페이지
  if (request.getParameter("pageNumber") != null)
      pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
%>

    <%
        BoardDAO board = new BoardDAO();
    %>
    <div class="container" style="margin-top: 30px" >
        <div class="row">
            <form method="post" name="search" action="searchBoard.jsp">
                <div class="alert alert-info">
                    <strong>오늘은 <%=board.getDate().substring(0,4) + "년 "
                            + board.getDate().substring(5, 7) + "월 " + board.getDate().substring(8, 10) + "일"%> 입니다. </strong>
                    회원님의 이야기를 들려주세요.
                </div>
                <table class="pull-right">
                    <tr>
                        <td><select class="form-control" name="searchField">
                            <option value="0">선택</option>
                            <option value="boardTitle">제목</option>
                            <option value="userID">작성자</option>
                        </select></td>
                        <td><input type="text" class="form-control"
                                   placeholder="검색어 입력" name="searchText" maxlength="100"></td>
                        <td><button type="submit" class="btn btn-success">검색</button></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <br>
    <div class="container">
        <div class="row">
            <div class="board table" style="background-color: #dddddd;" >
                <table class="active table table-striped"
                       style="text-align: center; border: 1px solid #dddddd">
                    <thead>
                    <tr>
                        <th style="background-color: lightgoldenrodyellow; text-align: center;">번호</th>
                        <th style="background-color: lightgoldenrodyellow; text-align: center;">제목</th>
                        <th style="background-color: lightgoldenrodyellow; text-align: center;">작성자</th>
                        <th style="background-color: lightgoldenrodyellow; text-align: center;">작성일</th>
                        <th style="background-color: lightgoldenrodyellow; text-align: center;">조회수</th>
                        <th style="background-color: lightgoldenrodyellow; text-align: center;">추천수</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        BoardDAO boardDAO = new BoardDAO();
                        ArrayList<Board> list = boardDAO.getList(pageNumber);
                        for (int i = 0; i < list.size(); i++) {
                    %>
                    <tr>
                        <td><%=list.get(i).getBoardID()%></td>
                        <%--현재 게시글에 대한 정보 --%>
                        <td><a href="boardView.jsp?boardID=<%=list.get(i).getBoardID()%>"><%=list.get(i).getBoardTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;")
                                .replaceAll(">", "&gt;").replaceAll("\n", "<br>")%></a></td>
                        <td><%=list.get(i).getUserID()%></td>
                        <td><%=list.get(i).getBoardDate().substring(0, 11) + list.get(i).getBoardDate().substring(11, 13) + "시"
                                + list.get(i).getBoardDate().substring(14, 16) + "분"%></td>
                        <td><%=list.get(i).getBoardCount()%></td>
                        <td><%=list.get(i).getLikeCount()%></td>
                    </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="container" style="text-align: center">
            <%
                if (pageNumber != 1) {//이전페이지로
            %>
            <a href="board.jsp?pageNumber=<%=pageNumber - 1%>">◀ 이전</a>
            <%
                }
            %>
            <%
                int n = (int) (boardDAO.getCount() / 10 + 1);
                for (int i = 1; i <= n; i++) {
            %>
            <a href="board.jsp?pageNumber=<%=i%>">|<%=i%>|
            </a>
            <%
                }
            %>
            <%
                if (boardDAO.nextPage(pageNumber + 1)) {//다음페이지가 존재하는가
            %>
            <a href="board.jsp?pageNumber=<%=pageNumber + 1%>">다음 ▶</a>
            <%
                }
            %>
            <a href="boardWrite.jsp" class="btn btn-success pull-right">글쓰기</a>
        </div> <!-- 이 부분 추가 -->
    </div> <!-- 이 부분 추가 -->



<!-- 여기에 js 넣어주세요 -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="./js/sec3.js"></script>
<script src="./js/gnb.js"></script>
</body>
</html>
