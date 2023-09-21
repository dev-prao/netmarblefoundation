<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>재단소식</title>
    <link rel="stylesheet" href="./css/default.css">
    <link rel="stylesheet" href="./css/notice.css">
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
                          <li><a href="./information.jsp">넷마블문화재단</a></li>
                          <li><a href="./intro.jsp">오시는 길</a></li>
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
    <div class="tit-area">
        <p class="title">
            <span class="top-txt">재단소식</span>
            <span class="tit">뉴스룸</span>
        </p>
    </div>
    <div class="container">

        <!-- 여기에 image 박스를 추가할 수 있습니다. -->
        <div class="box"><a href="https://www.netmarblefoundation.org/notice/view/406"><img src="./image/image1.JPG"
                                                                                            alt="image1"></a></div>
        <div class="box"><a href="https://www.netmarblefoundation.org/notice/view/404"><img src="./image/image2.JPG"
                                                                                            alt="image2"></a></div>
        <div class="box"><a href="https://www.netmarblefoundation.org/notice/view/403"><img src="./image/image3.JPG"
                                                                                            alt="image3"></a></div>
        <div class="box"><a href="https://www.netmarblefoundation.org/notice/view/398"><img src="./image/image4.JPG"
                                                                                            alt="image4"></a></div>
        <div class="box"><a href="https://www.netmarblefoundation.org/notice/view/392"><img src="./image/image5.JPG"
                                                                                            alt="image5"></a></div>
        <div class="box"><a href="https://www.netmarblefoundation.org/notice/view/391"><img src="./image/image6.JPG"
                                                                                            alt="image6"></a></div>
        <div class="box"><a href="https://www.netmarblefoundation.org/notice/view/388"><img src="./image/image7.JPG"
                                                                                            alt="image7"></a></div>
        <div class="box"><a href="https://www.netmarblefoundation.org/notice/view/383"><img src="./image/image8.JPG"
                                                                                            alt="image8"></a></div>
                                                                                            
        <!-- 추가 image 박스들... -->
    </div>

    <div class="load-more">
        <button id="loadButton">더보기</button>
    </div>
</div>
<script src="js/notice.js"></script>

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

</body>
</html>







