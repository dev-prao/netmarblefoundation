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
            <form method="post" action="writeAction.jsp">
                <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                    <thead>
                    <tr>
                        <th colspan="2" style="background-color: lightgoldenrodyellow; text-align:center;">게시판 글쓰기 양식</th>
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

