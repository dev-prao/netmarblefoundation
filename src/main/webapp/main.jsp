<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
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

  <!--        아래 메타태그는 이미지 호버를 했을때 관련된 툴바가 작동하지 않게 하는 태그      -->
  <meta http-equiv="imagetoolbar" content="no">

  <!--    여기에 css 넣어주세요-->
  <link rel="stylesheet" href="./css/default.css">
  <link rel="stylesheet" href="./css/style.css">
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">

</head>
<body>
<%
  String userID = null;
  if (session.getAttribute("userID") != null) {
    userID = (String) session.getAttribute("userID");
  }
%>
<div class="main">
  <header class="header">
    <div class="gnb">
      <div class="logo_white on"><a href="./index.html"><img src="./image/logo_white.png" alt="netmable"></a></div>
      <div class="logo"><a href="main.jsp"><img src="./image/logo.png" alt="netmable"></a></div>
      <div class="gnb_back">
        <ul class="gnb_ul flx">
          <li>
            <a href="#" class="lnb_title">재단소개</a>
            <ul class="lnb">
              <li><a href="information.jsp">넷마블문화재단</a></li>
              <li><a href="intro.jsp">오시는 길</a></li>
            </ul>
          </li>
          <li>
            <a href="#" class="lnb_title">재단활동</a>
            <ul class="lnb">
              <li><a href="activity1.jsp">문화 만들기</a></li>
              <li><a href="activity2.jsp">인재 키우기</a></li>
              <li><a href="activity3.jsp">마음 나누기</a></li>
            </ul>
          </li>
          <li>
            <a href="#" class="lnb_title">재단소식</a>
            <ul class="lnb">
              <li><a href="announcement.jsp">공지사항</a></li>
              <li><a href="notice.jsp">뉴스룸</a></li>
              <li><a href="noticeBoard.jsp">소셜미디어</a></li>
            </ul>
          </li>
          <%
            if (userID == null) {
          %>
          <li>
            <a href="#" class="lnb_title">재단회원</a>
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
            <a href="#" class="lnb_title">회원관리</a>
            <ul class="lnb">
              <li><a href="logoutAction.jsp">로그아웃</a> </li>
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
    <div class="main_slider">
      <div class="swiper-sec">
        <div class="swiper-container">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <img src="./image/slide1.jpeg" alt="슬라이더1">
              <div class="slide_txt">
                <div class="title">어깨동무문고</div>
                <div class="description">다름을 이해하는 모두의 동화</div>
              </div>
            </div>
            <div class="swiper-slide">
              <img src="./image/slide2.jpeg" alt="슬라이더2">
              <div class="slide_txt">
                <div class="title">게임소통학교</div>
                <div class="description">게임으로 소통하고 게임으로 가까워지는 가족</div>
              </div>
            </div>
            <div class="swiper-slide">
              <img src="./image/slide3.jpeg" alt="슬라이더3">
              <div class="slide_txt">
                <div class="title">게임아카데미</div>
                <div class="description">미래의 꿈 게임에 담다</div>
              </div>
            </div>
            <div class="swiper-slide">
              <img src="./image/slide4.jpeg" alt="슬라이더4">
              <div class="slide_txt">
                <div class="title">전국 장애학생 e페스티벌</div>
                <div class="description">게임 안에서 하나 되는 모두의 축제</div>
              </div>
            </div>
            <div class="swiper-slide">
              <img src="./image/slide5.jpeg" alt="슬라이더5">
              <div class="slide_txt">
                <div class="title">견학프로그램</div>
                <div class="description">나의 게임 산업 탐방기</div>
              </div>
            </div>
          </div>
          <div class="swiper-active">
            <div class="swiper-pagination"></div>
            <div class="swiper_btn">
              <div class="swiper-button-prev"></div>
              <div class="swiper-button-next"></div>
            </div>
            <div class="swiper-progress-bar">
              <span class="slide_progress-bar"></span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="sec1">
      <div class="wrap">
        <div class="sec_title" data-aos="fade-up">
          <h3>문화를 만들고 인재를 키우고<br> 마음을 나눕니다</h3>
          <div class="title_right">
            <p>넷마블문화재단은 문화적 가치 확산을 통해 우리 사회의 미래 경쟁력을 높여 가고자<br> 다양한 공익 활동을 전개해 나가고 있습니다.</p>
          </div>
        </div>
        <div class="sec1_content">
          <ul class="sec1_ul">
            <li data-aos="fade-up" data-aos-delay="150">
              <div class="sec1_cont_img"><img src="./image/sec1_1.jpg" alt="문화만들기"></div>
              <div class="sec1_cont_txt">
                <h4>문화 만들기 <span>></span></h4>
                <p>
                  게임을 기반으로 다양한 문화적 가치를 공유하고 누구나 즐겁게 참여할 수 있는 교육 및 여가 문화를 만들어 갑니다.
                </p>
              </div>
            </li>
            <li data-aos="fade-up" data-aos-delay="300">
              <div class="sec1_cont_img"><img src="./image/sec1_2.jpg" alt="문화만들기"></div>
              <div class="sec1_cont_txt">
                <h4>인재 키우기 <span>></span></h4>
                <p>
                  미래 문화 산업을 이끌어 갈 가능성 있는 인재들을 발굴하고 체계적인 성장 기회를 지원합니다.
                </p>
              </div>
            </li>
            <li data-aos="fade-up" data-aos-delay="450">
              <div class="sec1_cont_img"><img src="./image/sec1_3.jpg" alt="문화만들기"></div>
              <div class="sec1_cont_txt">
                <h4>마음 나누기 <span>></span></h4>
                <p>
                  나눔이 가진 영향력과 가치를 알리고 쉽게 동참할 수 있는 기회를 제공하여 모두가 즐거운 나눔 문화를 확산해 갑니다.
                </p>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="sec2">
      <div class="wrap">
        <div class="sec2_cont_txt">
          <p>우리는 <span>문화적 가치를 확산</span>하여 우리 사회의 미래 경쟁력을 높여갑니다</p>
          <p class="sec2_title">주요목적</p>
        </div>
        <div class="sec2_cont_img">
          <img src="./image/sec2.jpg" alt="문화적가치설명">
        </div>
      </div>
    </div>
    <div class="sec3">
      <div class="wrap">
        <div class="sec_title">
          <h3>재단소식</h3>
        </div>
        <div class="sec3_category">
          <button id="btn_notice" class="category_btn on">공지사항</button>
          <button id="btn_news" class="category_btn">뉴스룸</button>
          <button id="btn_social" class="category_btn">소셜미디어</button>
        </div>
        <div class="sec3_slide">
          <div class="swiper-sec">
            <div id="swiper_notice" class="swiper myCategorySlider on">
              <div class="swiper-wrapper">
                <div class="swiper-slide">
                  <div class="slide_content">
                    <div class="imgbox">
                      <img src="./image/sec3_1.jpeg" alt="게임콘서트">
                    </div>
                    <div class="txtbox">
                      <h3 class="title">
                        제 17회 게임콘서트 개최 안내
                      </h3>
                      <p class="subtxt">[게임콘서트 참가신청 링크]</p>
                    </div>
                    <p class="date">공지사항 • 2023.06.12</p>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="slide_content">
                    <div class="imgbox">
                      <img src="./image/sec3_1.jpeg" alt="게임콘서트">
                    </div>
                    <div class="txtbox">
                      <h3 class="title">
                        제 17회 게임콘서트 개최 안내
                      </h3>
                      <p class="subtxt">[게임콘서트 참가신청 링크]</p>
                    </div>
                    <p class="date">공지사항 • 2023.06.12</p>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="slide_content">
                    <div class="imgbox">
                      <img src="./image/sec3_1.jpeg" alt="게임콘서트">
                    </div>
                    <div class="txtbox">
                      <h3 class="title">
                        제 17회 게임콘서트 개최 안내
                      </h3>
                      <p class="subtxt">[게임콘서트 참가신청 링크]</p>
                    </div>
                    <p class="date">공지사항 • 2023.06.12</p>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="slide_content">
                    <div class="imgbox">
                      <img src="./image/sec3_1.jpeg" alt="게임콘서트">
                    </div>
                    <div class="txtbox">
                      <h3 class="title">
                        제 17회 게임콘서트 개최 안내
                      </h3>
                      <p class="subtxt">[게임콘서트 참가신청 링크]</p>
                    </div>
                    <p class="date">공지사항 • 2023.06.12</p>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="slide_content">
                    <div class="imgbox">
                      <img src="./image/sec3_1.jpeg" alt="게임콘서트">
                    </div>
                    <div class="txtbox">
                      <h3 class="title">
                        제 17회 게임콘서트 개최 안내
                      </h3>
                      <p class="subtxt">[게임콘서트 참가신청 링크]</p>
                    </div>
                    <p class="date">공지사항 • 2023.06.12</p>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="slide_content">
                    <div class="imgbox">
                      <img src="./image/sec3_1.jpeg" alt="게임콘서트">
                    </div>
                    <div class="txtbox">
                      <h3 class="title">
                        제 17회 게임콘서트 개최 안내
                      </h3>
                      <p class="subtxt">[게임콘서트 참가신청 링크]</p>
                    </div>
                    <p class="date">공지사항 • 2023.06.12</p>
                  </div>
                </div>
              </div>

              <div class="swiper-scrollbar"></div>
            </div>
            <div id="swiper_news" class="swiper myCategorySlider">
              <div class="swiper-wrapper">
                <div class="swiper-slide">
                  <div class="slide_content">
                    <div class="imgbox">
                      <img src="./image/sec3_2.jpeg" alt="게임콘서트">
                    </div>
                    <div class="txtbox">
                      <h3 class="title">
                        제 17회 게임콘서트 개최 안내
                      </h3>
                      <p class="subtxt">[게임콘서트 참가신청 링크]</p>
                    </div>
                    <p class="date">공지사항 • 2023.06.12</p>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="slide_content">
                    <div class="imgbox">
                      <img src="./image/sec3_2.jpeg" alt="게임콘서트">
                    </div>
                    <div class="txtbox">
                      <h3 class="title">
                        제 17회 게임콘서트 개최 안내
                      </h3>
                      <p class="subtxt">[게임콘서트 참가신청 링크]</p>
                    </div>
                    <p class="date">공지사항 • 2023.06.12</p>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="slide_content">
                    <div class="imgbox">
                      <img src="./image/sec3_2.jpeg" alt="게임콘서트">
                    </div>
                    <div class="txtbox">
                      <h3 class="title">
                        제 17회 게임콘서트 개최 안내
                      </h3>
                      <p class="subtxt">[게임콘서트 참가신청 링크]</p>
                    </div>
                    <p class="date">공지사항 • 2023.06.12</p>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="slide_content">
                    <div class="imgbox">
                      <img src="./image/sec3_2.jpeg" alt="게임콘서트">
                    </div>
                    <div class="txtbox">
                      <h3 class="title">
                        제 17회 게임콘서트 개최 안내
                      </h3>
                      <p class="subtxt">[게임콘서트 참가신청 링크]</p>
                    </div>
                    <p class="date">공지사항 • 2023.06.12</p>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="slide_content">
                    <div class="imgbox">
                      <img src="./image/sec3_2.jpeg" alt="게임콘서트">
                    </div>
                    <div class="txtbox">
                      <h3 class="title">
                        제 17회 게임콘서트 개최 안내
                      </h3>
                      <p class="subtxt">[게임콘서트 참가신청 링크]</p>
                    </div>
                    <p class="date">공지사항 • 2023.06.12</p>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="slide_content">
                    <div class="imgbox">
                      <img src="./image/sec3_2.jpeg" alt="게임콘서트">
                    </div>
                    <div class="txtbox">
                      <h3 class="title">
                        제 17회 게임콘서트 개최 안내
                      </h3>
                      <p class="subtxt">[게임콘서트 참가신청 링크]</p>
                    </div>
                    <p class="date">공지사항 • 2023.06.12</p>
                  </div>
                </div>
              </div>

              <div class="swiper-scrollbar"></div>
            </div>
            <div id="swiper_social" class="swiper myCategorySlider">
              <div class="swiper-wrapper">
                <div class="swiper-slide">
                  <div class="slide_content">
                    <div class="imgbox">
                      <img src="./image/sec3_3.jpeg" alt="게임콘서트">
                    </div>
                    <div class="txtbox">
                      <h3 class="title">
                        제 17회 게임콘서트 개최 안내
                      </h3>
                      <p class="subtxt">[게임콘서트 참가신청 링크]</p>
                    </div>
                    <p class="date">공지사항 • 2023.06.12</p>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="slide_content">
                    <div class="imgbox">
                      <img src="./image/sec3_3.jpeg" alt="게임콘서트">
                    </div>
                    <div class="txtbox">
                      <h3 class="title">
                        제 17회 게임콘서트 개최 안내
                      </h3>
                      <p class="subtxt">[게임콘서트 참가신청 링크]</p>
                    </div>
                    <p class="date">공지사항 • 2023.06.12</p>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="slide_content">
                    <div class="imgbox">
                      <img src="./image/sec3_3.jpeg" alt="게임콘서트">
                    </div>
                    <div class="txtbox">
                      <h3 class="title">
                        제 17회 게임콘서트 개최 안내
                      </h3>
                      <p class="subtxt">[게임콘서트 참가신청 링크]</p>
                    </div>
                    <p class="date">공지사항 • 2023.06.12</p>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="slide_content">
                    <div class="imgbox">
                      <img src="./image/sec3_3.jpeg" alt="게임콘서트">
                    </div>
                    <div class="txtbox">
                      <h3 class="title">
                        제 17회 게임콘서트 개최 안내
                      </h3>
                      <p class="subtxt">[게임콘서트 참가신청 링크]</p>
                    </div>
                    <p class="date">공지사항 • 2023.06.12</p>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="slide_content">
                    <div class="imgbox">
                      <img src="./image/sec3_3.jpeg" alt="게임콘서트">
                    </div>
                    <div class="txtbox">
                      <h3 class="title">
                        제 17회 게임콘서트 개최 안내
                      </h3>
                      <p class="subtxt">[게임콘서트 참가신청 링크]</p>
                    </div>
                    <p class="date">공지사항 • 2023.06.12</p>
                  </div>
                </div>
                <div class="swiper-slide">
                  <div class="slide_content">
                    <div class="imgbox">
                      <img src="./image/sec3_3.jpeg" alt="게임콘서트">
                    </div>
                    <div class="txtbox">
                      <h3 class="title">
                        제 17회 게임콘서트 개최 안내
                      </h3>
                      <p class="subtxt">[게임콘서트 참가신청 링크]</p>
                    </div>
                    <p class="date">공지사항 • 2023.06.12</p>
                  </div>
                </div>
              </div>
              <div class="swiper-scrollbar"></div>
            </div>
          </div>
        </div>
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
