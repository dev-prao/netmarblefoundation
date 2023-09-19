<%@ page import="board.Board" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="comment.CommentDAO" %>
<%@ page import="comment.Comment" %>
<%@ page import="board.BoardDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType = "text/html; charset=UTF-8" pageEncoding = "UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>넷마블문화재단</title>
    <meta name="og:description" content="netmarblefoundation">
    <meta name="og:type" content="website">
    <meta name="keywords" content="netmarblefoundation, CloneCoding">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <!--        아래 두 메타태그는 캐쉬를 가져오지 않게하여 실시간으로 업데이트된 페이지를 볼 수 있게 해줌      -->
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Pragma" content="no-chche">
    <!--        아래 메타태그는 이미지 호버를 했을때 관련된 툴바가 작동하지 않게 하는 태그      -->
    <meta http-equiv="imagetoolbar" content="no">

    <!--    여기에 css 넣어주세요-->
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/style.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
</head>
<body>
<%
    String memberId = null;
    if (session.getAttribute("memberId") != null) {
        memberId = (String) session.getAttribute("memberId");
    }
    int boardId=0;
    if(request.getParameter("boardId")!=null)
        boardId=Integer.parseInt(request.getParameter("boardId"));
    if(boardId==0){
        PrintWriter script=response.getWriter();
        script.println("<script>");
        script.println("alert('유효하지 않은 글입니다.')");
        script.println("location.href='bbs.jsp'");
        script.println("</script>");
    }

    Board board = new BoardDAO().getBoard(boardId);

    int commentId = 0;
    if(request.getParameter("commentId")!=null)
        commentId=Integer.parseInt(request.getParameter("commentId"));
    Comment comment = new CommentDAO().getComment(commentId);
%>
<div class="main">
    <header class="header">
        <div class="gnb">
            <div class="logo_white on"><a href="/index.jsp"><img src="/image/logo_white.png" alt="netmable"></a>
            </div>
            <div class="logo"><a href="/index.jsp"><img src="/image/logo.png" alt="netmable"></a></div>
            <div class="gnb_back">
                <ul class="gnb_ul flx">
                    <li>
                        <a href="#" class="lnb_title">재단소개</a>
                        <ul class="lnb">
                            <li><a href="information.html">넷마블문화재단</a></li>
                            <li><a href="intro.html">오시는 길</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="lnb_title">재단활동</a>
                        <ul class="lnb">
                            <li><a href="activity1.html">문화 만들기</a></li>
                            <li><a href="activity2.html">인재 키우기</a></li>
                            <li><a href="activity3.html">마음 나누기</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="lnb_title">재단소식</a>
                        <ul class="lnb">
                            <li><a href="#">공지사항</a></li>
                            <li><a href="#">뉴스룸</a></li>
                            <li><a href="#">소셜 미디어</a></li>
                        </ul>
                    </li>
                    <%
                        if (memberId == null) {
                    %>
                    <li>
                        <a href="#" class="lnb_title">재단회원</a>
                        <ul class="lnb">
                            <li><a href="login.jsp">로그인</a></li>
                            <li><a href="join.jsp">회원가입</a></li>
                            <li><a href="board.jsp">자유게시판</a></li>
                        </ul>
                    </li>
                    <%
                        }
                    %>
                    <%
                        if (memberId != null) {
                    %>
                    <li>
                        <a href="#" class="lnb_title">회원관리</a>
                        <ul class="lnb">
                            <li><a href="logoutAction.jsp">로그아웃</a> </li>
                            <li><a href="board.jsp">자유게시판</a></li>
                        </ul>
                    </li>
                    <%
                        }
                    %>
                </ul>
            </div>
        </div>
    </header>
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
                    <td colspan="2"><%= board.getMemberId() %></td>
                </tr>
                <tr>
                    <td>작성일자</td>
                    <td colspan="2"><%= board.getBoardDate().substring(0,11)+ board.getBoardDate().substring(11,13)+"시"+ board.getBoardDate().substring(14,16)+"분" %></td>
                </tr>
                <tr>
                    <td>내용</td>
                    <td colspan="2" style="min-height: 200px; text-align: left;"><%= board.getBoardContent().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></td>
                </tr>
                <tr>
                    <td>조회수</td>
                    <td colspan="2"><%= board.getBoardCount()+1 %></td>
                </tr>
                <tr>
                    <td>추천수</td>
                    <td colspan="2"><%= board.getLikeCount() %></td>
                </tr>
                </tbody>
            </table>
            <a href="board.jsp" class="btn btn-success">목록</a>
            <a onclick="return confirm('추천하시겠습니까?')" href="likeAction.jsp?boardId=<%=boardId %>" class="btn btn-success pull-right">👍</a>

            <%
                if(memberId != null && memberId.equals(board.getMemberId())){//해당 글이 본인이라면 수정과 삭제가 가능
            %>
            <a href="update.jsp?boardId=<%=boardId%>" class="btn btn-warning">수정</a>
            <a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction.jsp?boardId=<%=boardId%>" class="btn btn-danger">삭제</a>
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
                        <tr>
                            <%
                                CommentDAO commentDAO = new CommentDAO();
                                ArrayList<Comment> list = commentDAO.getList(boardId);
                                for(int i=0; i<list.size(); i++){
                            %>
                            <div class="container">
                                <div class="row">
                                    <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                                        <tbody>
                                        <tr>
                                            <td align="left"><%= list.get(i).getMemberId() %></td>

                                            <td align="right"><%= list.get(i).getCommentDate().substring(0,11)+list.get(i).getCommentDate().substring(11,13)+"시"+list.get(i).getCommentDate().substring(14,16)+"분" %></td>
                                        </tr>

                                        <tr>
                                            <td align="left"><%= list.get(i).getCommentContent() %></td>
                                            <td align="right"><a href="commentUpdate.jsp?boardId=<%=boardId%>&commentId=<%=list.get(i).getCommentId()%>" class="btn btn-warning">수정</a>
                                                <a onclick="return confirm('정말로 삭제하시겠습니까?')" href="commentDeleteAction.jsp?boardId=<%=boardId%>&commentId=<%=list.get(i).getCommentId() %>" class="btn btn-danger">삭제</a></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <%
                                }
                            %>
                        </tr>
                    </table>
                </div>
            </div><br>
            <div class="container">
                <div class="row">
                    <form method="post" action="submitAction.jsp?boardId=<%= boardId %>">
                        <table class="table table-bordered" style="text-align: center; border: 1px solid #dddddd">
                            <tbody>
                            <tr>
                                <td align="left"><%=memberId %></td>
                            </tr>
                            <tr>
                                <td><input type="text" class="form-control" placeholder="댓글 쓰기" name="commentContent" maxlength="300"></td>
                            </tr>
                            </tbody>
                        </table>
                        <input type="submit" class="btn btn-success pull-right" value="댓글 쓰기">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="footer-inner">
            <div class="ci">
                <a href="#"><img src="./image/logo_white.png" alt="CI"></a>
            </div>
            <p class="copyright">
                서울특별시 구로구 디지털로26길 38, G-Tower 넷마블<br>
                Copyright © Netmarble Corp. All Rights Reserved.
            </p>
            <div class="policy">
                <a href="#" class="">개인정보처리방침</a><span>|</span>
                <a href="#" class="">SNS 저작물 이용 동의서</a><span>|</span>
                <a href="#">이메일 문의</a><span>|</span>
                <a href="https://www.mcst.go.kr/" target="_blank">주무관청</a><span>|</span>
                <a href="https://www.nts.go.kr/" target="_blank">국세청</a>
            </div>
            <div class="sns">
                <a href="#" class="facebook"><img src="./image/facebook.png" alt="페이스북"></a>
                <a href="#" class="youtube"><img src="./image/youtube.png" alt="유튜브"></a>
                <a href="#" class="instagram"><img src="./image/instagram.png" alt="인스타그램"></a>
            </div>
        </div>
    </footer>
    <!--여기에 js 넣어주세요-->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="./js/aos.js"></script>
    <script>
        AOS.init();
    </script>
    <script src="./js/swiper.js"></script>
    <script src="./js/sec3.js"></script>
    <script src="./js/gnb.js"></script>
</body>
</html>

