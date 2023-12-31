<%@ page contentType = "text/html; charset=UTF-8" pageEncoding = "UTF-8" %>
<!DOCTYPE html>
<html lang = "ko">

<head>
    <meta charset = "UTF-8">
    <meta content = "width=device-width, initial-scale=1.0" name = "viewport">
    <title>넷마블문화재단</title>
    <meta name = "og:description" content = "netmarblefoundation">
    <meta name = "og:type" content = "website">
    <meta name = "keywords" content = "netmarblefoundation, CloneCoding">
    <meta http-equiv = "X-UA-Compatible" content = "IE-edge">
    <!-- 아래 두 메타태그는 캐쉬를 가져오지 않게하여 실시간으로 업데이트된 페이지를 볼 수 있게 해줌 -->
    <meta http-equiv = "Cache-Control" content = "no-cache">
    <meta http-equiv = "Pragma" content = "no-chche">
    <!-- 아래 메타태그는 이미지 호버를 했을때 관련된 툴바가 작동하지 않게 하는 태그 -->
    <meta http-equiv = "imagetoolbar" content = "no">
    <!-- 이미지 -->
    <link rel = "shortcut icon" href = "image/favicon.ico">
    <link rel = "apple-touch-icon" href = "image/favicon120x120.png">
    <link rel = "apple-touch-icon" sizes = "180x180" href = "image/favicon180x180.png">
    <!-- css -->
    <link rel = "stylesheet" href = "./css/default.css"/>
    <link rel = "stylesheet" href = "./css/activity.css"/>
    <link rel = "stylesheet" href = "https://unpkg.com/aos@next/dist/aos.css"/>
</head>

<body>
<%
  String userID = null;
  if (session.getAttribute("userID") != null) {
    userID = (String) session.getAttribute("userID");
  }
%>
<div id = "_nm">
    <div id = "app" class = "pc">
        <div id = "skip-navigation">
            <a href = "#container">Skip Navigation</a>
        </div>
        <div id = "wrapper">
            <header class="header header_on">
                <div class="gnb">
                    <div class="logo_white"><a href="./index.html"><img src="./image/logo_white.png" alt="netmable"></a>
                    </div>
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
            <main id = "container">
                <div class = "page activity1">
                    <section class = "activity03-title intersect">
                        <div class = "cont">
                            <div class = "tit-area">
                                <div data-aos = "fade-up" data-aos-delay = "200" data-aos-duration = "1500"
                                     data-aos-mirror = "true"
                                     data-aos-once = "false">
                                    <p class = "title"><span class = "top-txt">재단활동</span>
                                        <span class = "tit">마음 나누기</span></p>
                                    <p class = "desc">
                                        나눔이 가진 영향력과 가치를 알리고 쉽게 동참할<br>
                                        수 있는 기회를 제공하여 모두가 즐거운 나눔 문화를<br>
                                        확산해가고 있습니다.
                                    </p>
                                </div>
                            </div>
                            <div class = "image">
                                <div data-aos = "fade-in" data-aos-delay = "100" data-aos-duration = "1500"
                                     data-aos-mirror = "true"
                                     data-aos-once = "false">
                                    <img src = "./image/banner9.jpg" alt = "banner9" class = "banner9">
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class = "activity03-cont1 intersect">
                        <div class = "cont">
                            <div class = "sub-area">
                                <div data-aos = "fade-up" data-aos-delay = "300" data-aos-duration = "1500"
                                     data-aos-mirror = "true"
                                     data-aos-once = "false">
                                    <p class = "title">참여 &amp; 나눔활동</p>
                                    <p class = "desc">함께해서 더 따뜻한 세상</p>
                                    <hr class = "custom-hr-black">
                                </div>
                            </div>
                            <div class = "list-cts">
                                <div class = "list01" data-aos = "fade-up" data-aos-delay = "400"
                                     data-aos-duration = "1500"
                                     data-aos-mirror = "true" data-aos-once = "false">
                                    <h3>
                                        사내 나눔<br>
                                        문화 확산
                                    </h3>
                                    <p>
                                        임직원 기부, 봉사활동, 바자회 등 사내
                                        나눔 활동 개발 및 진행 통해 즐거운<br>
                                        나눔 문화 전파
                                    </p>
                                </div>
                                <div class = "list01" data-aos = "fade-up" data-aos-delay = "500"
                                     data-aos-duration = "1500"
                                     data-aos-mirror = "true" data-aos-once = "false">
                                    <h3>
                                        지역사회<br>
                                        복지 증진 기여
                                    </h3>
                                    <p>
                                        기업의 역량과 노하우를 기반으로 지역
                                        사회 복지 증진을 위한 나눔 활동 지원
                                    </p>
                                </div>
                                <div class = "list01" data-aos = "fade-up" data-aos-delay = "600"
                                     data-aos-duration = "1500"
                                     data-aos-mirror = "true" data-aos-once = "false">
                                    <h3>
                                        사회 문제 해결<br>
                                        및 파트너십 구축
                                    </h3>
                                    <p>
                                        사회 문제 해결을 위한 기탁 및 배분 사업
                                        진행, 상생을 위한 비영리 파트너십 형성
                                    </p>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class = "activity03-cont2 intersect">
                        <div class = "cont">
                            <div class = "titbox">
                                <div class = "sub-area" data-aos = "fade-up" data-aos-delay = "700"
                                     data-aos-duration = "1500"
                                     data-aos-mirror = "true"
                                     data-aos-once = "false">
                                    <p class = "title">어깨동무문고</p>
                                    <p class = "desc">다름을 이해하는 모두의 동화</p>
                                    <hr class = "custom-hr-yellow">
                                </div> <a href = "https://multicampus.com/" target = "_blank"
                                          class = "btn-dark btn-site">사이트 바로가기</a>
                            </div>
                            <div class = "list-cts">
                                <div class = "list01" data-aos = "fade-up" data-aos-delay = "800"
                                     data-aos-duration = "1500" data-aos-mirror = "true"
                                     data-aos-once = "false">
                                    <h3>
                                        다양성 존중<br>
                                        그림책 출간
                                    </h3>
                                    <p>
                                        다양성 존중 및 공존의 가치에 대한<br>
                                        메시지를 담은 그림책 제작 및 시중 판매
                                    </p>
                                </div>
                                <div class = "list02" data-aos = "fade-up" data-aos-delay = "900"
                                     data-aos-duration = "1500" data-aos-mirror = "true"
                                     data-aos-once = "false">
                                    <h3>
                                        가치 공유의<br>
                                        장 마련
                                    </h3>
                                    <p>
                                        그림책을 중심으로 컨퍼런스 및 전시회<br>
                                        개최하여 다양성에 대한 의미 고찰 및<br>
                                        방향성 모색
                                    </p>
                                </div>
                                <div class = "list03" data-aos = "fade-up" data-aos-delay = "1000"
                                     data-aos-duration = "1500" data-aos-mirror = "true"
                                     data-aos-once = "false">
                                    <h3>
                                        수익금 재투자<br>
                                        및 기부
                                    </h3>
                                    <p>
                                        판매 수익금 전액을 그림책 제작 및 기부<br>
                                        활동에 재투자하여 지속적인 나눔 실천
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class = "bg-img">
                            <img src = "./image/banner10.jpg" alt = "banner10" class = "banner10">
                        </div>
                    </section>
                </div>
            </main>
        </div>
    </div>
</div>
<footer>
    <div class = "footer-inner">
        <div class = "ci">
            <a href = "#"><img src = "./image/logo_white.png" alt = "CI"></a>
        </div>
        <p class = "copyright">
            서울특별시 구로구 디지털로26길 38, G-Tower 넷마블<br>
            Copyright © Netmarble Corp. All Rights Reserved.
        </p>
        <div class = "policy">
            <a href = "#" class = "">개인정보처리방침</a><span>|</span>
            <a href = "#" class = "">SNS 저작물 이용 동의서</a><span>|</span>
            <a href = "#">이메일 문의</a><span>|</span>
            <a href = "https://www.mcst.go.kr/" target = "_blank">주무관청</a><span>|</span>
            <a href = "https://www.nts.go.kr/" target = "_blank">국세청</a>
        </div>
        <div class = "sns">
            <a href = "#" class = "facebook"><img src = "./image/facebook.png" alt = "페이스북"></a>
            <a href = "#" class = "youtube"><img src = "./image/youtube.png" alt = "유튜브"></a>
            <a href = "#" class = "instagram"><img src = "./image/instagram.png" alt = "인스타그램"></a>
        </div>
    </div>
</footer>
<!--         js         -->
<script src = "https://unpkg.com/aos@next/dist/aos.js"></script>
<script>AOS.init();</script>
</body>

</html>