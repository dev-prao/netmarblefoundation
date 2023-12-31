<%@ page contentType = "text/html; charset=UTF-8" pageEncoding = "UTF-8" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>넷마블문화재단</title>

    <meta name="og:description" content="netmarblefoundation">
    <meta name="og:type" content="website">
    <meta name="keywords" content="netmarblefoundation, CloneCoding">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <!-- 아래 두 메타태그는 캐쉬를 가져오지 않게하여 실시간으로 업데이트된 페이지를 볼 수 있게 해줌 -->
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Pragma" content="no-chche">
    <!-- 아래 메타태그는 이미지 호버를 했을때 관련된 툴바가 작동하지 않게 하는 태그 -->
    <meta http-equiv="imagetoolbar" content="no">
    <!-- 이미지 -->
    <link rel="shortcut icon" href="image/favicon.ico">
    <link rel="apple-touch-icon" href="image/favicon120x120.png">
    <link rel="apple-touch-icon" sizes="180x180" href="image/favicon180x180.png">
    <!-- css -->
    <link rel="stylesheet" href="./css/default.css">
    <link rel="stylesheet" href="./css/activity.css"/>
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css"/>
</head>

<body>
<%
  String userID = null;
  if (session.getAttribute("userID") != null) {
    userID = (String) session.getAttribute("userID");
  }
%>
<div id= "_nm">
    <div id="app" class="pc">
        <div id="skip-navigation">
            <a href="#container">Skip Navigation</a>
        </div>
        <div id="wrapper">
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
            <main id="container">
                <div class="page activity1">
                    <section class="activity02-title intersect">
                        <div class="cont">
                            <div class="tit-area">
                                <div data-aos="fade-up" data-aos-delay="200" data-aos-duration="1500"
                                     data-aos-mirror="true"
                                     data-aos-once="false">
                                    <p class="title"><span class="top-txt">재단활동</span>
                                        <span class="tit">인재 키우기</span></p>
                                    <p class="desc">
                                        미래 문화 산업을 이끌어 갈 가능성 있는 인재들을<br>
                                        발굴하고 체계적인 성장을 지원하기 위해 다양한<br>
                                        기회를 마련하고 있습니다.
                                    </p>
                                </div>
                            </div>
                            <div class="image">
                                <div data-aos="fade-in" data-aos-delay="100" data-aos-duration="1500"
                                     data-aos-mirror="true"
                                     data-aos-once="false">
                                    <img src="./image/banner5.jpg" alt="banner5" class="banner5">
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="activity02-cont1">
                        <div class="cont">
                            <div class="sub-area">
                                <div data-aos="fade-up" data-aos-delay="200" data-aos-duration="1500"
                                     data-aos-mirror="true"
                                     data-aos-once="false">
                                    <p class="title">게임아카데미</p>
                                    <p class="desc">미래의 꿈, 게임에 담다</p>
                                    <hr class="custom-hr-black">
                                </div>
                            </div>
                            <div class="list-cts">
                                <div class="list01" data-aos="fade-up" data-aos-delay="300"
                                     data-aos-duration="1500"
                                     data-aos-mirror="true" data-aos-once="false">
                                    <h3>
                                        게임 개발 역량 향상<br>
                                        및 제작 기회 지원
                                    </h3>
                                    <p>
                                        기본 역량 갖춘 미래 게임 인재 대상으로
                                        단계별 게임 개발 교육 및 게임 작품 제작
                                        기회 제공
                                    </p>
                                </div>
                                <div class="list02" data-aos="fade-up" data-aos-delay="400"
                                     data-aos-duration="1500"
                                     data-aos-mirror="true" data-aos-once="false">
                                    <h3>
                                        지속적인 멘토링<br>
                                        및 성장 기회 지원
                                    </h3>
                                    <p>
                                        교육 수료 후에도 전문 강사 멘토링,
                                        장학금, 특강, 리유니언데이 등 다양한
                                        기회 통해 지속 성장 지원
                                    </p>
                                </div>
                                <div class="list03" data-aos="fade-up" data-aos-delay="500"
                                     data-aos-duration="1500"
                                     data-aos-mirror="true" data-aos-once="false">
                                    <h3>
                                        게임 작품<br>
                                        전시 및 시상
                                    </h3>
                                    <p>
                                        학생들이 직접 개발한 게임 작품을
                                        전시하고 우수작은 시상을 통해 격려
                                        하는 전시회 개최
                                    </p>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="activity02-cont2">
                        <div class="cont">
                            <div class="half-area">
                                <div class="half01">
                                    <div class="sub-area">
                                        <div data-aos="fade-right" data-aos-delay="100" data-aos-duration="1500"
                                             data-aos-mirror="true"
                                             data-aos-once="false">
                                            <p class="title">견학프로그램</p>
                                            <p class="desc">나의 게임 산업 탐방기</p>
                                            <hr class="custom-hr-yellow">
                                        </div>
                                    </div>
                                </div>
                                <div class="half02">
                                    <div class="list-cts type-vertical">
                                        <div class="list01">
                                            <div data-aos="fade-left" data-aos-delay="200"
                                                 data-aos-duration="1500" data-aos-mirror="true"
                                                 data-aos-once="false">
                                                <h3>게임 산업 현장 탐방</h3>
                                                <p>
                                                    게임 산업 및 진로에 관심 있는 중고생과 대학생을 대상으로 임직원 특강
                                                    및 사옥 견학 지원
                                                </p>
                                            </div>
                                        </div>
                                        <div class="list02" data-aos="fade-left" data-aos-delay="300"
                                             data-aos-duration="1500" data-aos-mirror="true"
                                             data-aos-once="false">
                                            <h3>체계적인 직무체험 과정 운영</h3>
                                            <p>
                                                자체 개발한 콘텐츠를 활용해 다양한 직무를 알아보고 게임 개발 과정을
                                                이해하는 직무 체험 과정 지원
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="img-area">
                                <div class="image01">
                                    <div data-aos="fade-in" data-aos-delay="300" data-aos-duration="1500"
                                         data-aos-mirror="true"
                                         data-aos-once="false">
                                        <img src="./image/banner6.jpg" alt="banner6" class="banner6">
                                    </div>
                                </div>
                                <div class="image02">
                                    <div data-aos="fade-in" data-aos-delay="400" data-aos-duration="1500"
                                         data-aos-mirror="true"
                                         data-aos-once="false">
                                        <img src="./image/banner7.jpg" alt="banner7" class="banner7">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="activity02-cont3">
                        <div class="cont">
                            <div class="sub-area">
                                <div data-aos="fade-up" data-aos-delay="500" data-aos-duration="1500"
                                     data-aos-mirror="true"
                                     data-aos-once="false">
                                    <p class="title">넷마블장애인선수단</p>
                                    <p class="desc">편견과 한계를 넘는 새로운 도전</p>
                                    <hr class="custom-hr-yellow">
                                </div>
                            </div>
                            <div class="list-cts">
                                <div class="list01" data-aos="fade-up" data-aos-delay="600" data-aos-duration="1500"
                                     data-aos-mirror="true"
                                     data-aos-once="false">
                                    <h3>
                                        장애인 스포츠<br>
                                        선수단 창단
                                    </h3>
                                    <p>
                                        게임업계 최초로 장애인 선수단 창단 및
                                        조정 종목 선수 선발/구성
                                    </p>
                                </div>
                                <div class="list02" data-aos="fade-up" data-aos-delay="1400" data-aos-duration="1500"
                                     data-aos-mirror="true"
                                     data-aos-once="false">
                                    <h3>
                                        역량 있는 선수<br>
                                        발굴 및 육성
                                    </h3>
                                    <p>
                                        가능성 있는 선수를 선발하여
                                        안정적이고 체계적인 훈련 기회 지원
                                    </p>
                                </div>
                                <div class="list03" data-aos="fade-up" data-aos-delay="1600" data-aos-duration="1500"
                                     data-aos-mirror="true"
                                     data-aos-once="false">
                                    <h3>
                                        국내외<br>
                                        대회 참여
                                    </h3>
                                    <p>
                                        세계 선수권 대회와 전국 장애인 체전을
                                        포함한 국내외 대회 참여
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="bg-img" data-aos="fade-in" data-aos-delay="1400" data-aos-duration="1500"
                             data-aos-mirror="true"
                             data-aos-once="false">
                            <img src="./image/banner8.jpg" alt="banner8" class="banner8">
                        </div>
                    </section>
                </div>
            </main>
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
<!--         js         -->
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<script>AOS.init();</script>
</body>

</html>