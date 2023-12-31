<%@ page contentType = "text/html; charset=UTF-8" pageEncoding = "UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>오시는길</title>
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
    <link rel="stylesheet" href="./css/default.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/intro.css">
</head>
<body>
<%
    String userID = null;
    if (session.getAttribute("userID") != null) {
        userID = (String) session.getAttribute("userID");
    }
%>
<header class="header header_on">
    <div class="gnb">
        <div class="logo_white"><a href="./index.html"><img src="./image/logo_white.png" alt="netmable"></a></div>
        <div class="logo on"><a href="main.jsp"><img src="./image/logo.png" alt="netmable"></a></div>
        <div class="gnb_back">
            <ul class="gnb_ul flx">
                <li>
                    <a href="#" class="lnb_title on">재단소개</a>
                    <ul class="lnb">
                        <li><a href="information.jsp">넷마블문화재단</a></li>
                        <li><a href="intro.jsp">오시는 길</a></li>
                    </ul>
                </li>
                <li class="yellow_line">
                    <a href="#" class="lnb_title on">재단활동</a>
                    <ul class="lnb">
                        <li><a href="activity1.jsp">문화 만들기</a></li>
                        <li><a href="activity2.jsp">인재 키우기</a></li>
                        <li><a href="activity3.jsp">마음 나누기</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" class="lnb_title on">재단소식</a>
                    <ul class="lnb">
                        <li><a href="announcement.jsp">공지사항</a></li>
                        <li><a href="notice.jsp">뉴스룸</a></li>
                        <li><a href="noticeBoard.jsp">소셜 미디어</a></li>
                    </ul>
                </li>
                <%
                    if (userID == null) {
                %>
                <li>
                    <a href="#" class="lnb_title on">재단회원</a>
                    <ul class="lnb">
                        <li><a href="login.jsp">로그인</a></li>
                        <li><a href="join.jsp">회원가입</a></li>
                    </ul>
                </li>
                <%
                    }
                %>
                <%
                    if (userID != null) {
                %>
                <li>
                    <a href="#" class="lnb_title on">회원관리</a>
                    <ul class="lnb">
                        <li><a href="logoutAction.jsp">로그아웃</a></li>
                    </ul>
                </li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
</header>
<div>
    <div class="container">
        <div class="wrap">
            <div class="intro_title">
                <p>재단소개</p>
                <h3>오시는 길</h3>
            </div>
            <ul class="intro_ul">
                <li>
                    <h5>주소</h5>
                    <p>서울특별시 구로구 디지털로26길 38,<br>
                        G-Tower 넷마블
                    </p>
                </li>
                <li>
                    <h5>이메일</h5>
                    <p>CSR@netmarble.com</p>
                </li>
                <li>
                    <h5>대표전화</h5>
                    <p>02 - 2271 - 7600</p>
                </li>
            </ul>
            <div class="email_btn_sec">
                <button class="email_btn">이메일 문의하기</button>
            </div>
        </div>
        <div class="map_area">
            <div id="map"></div>
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
</div>
<!--여기에 js 넣어주세요-->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4674448144fc80b7fa04cee865c966e6"></script>
<script src="./js/map.js"></script>

</body>
</html>
