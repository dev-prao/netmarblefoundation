// 페이지 로딩이 완료되면 이벤트 핸들러를 등록
document.addEventListener("DOMContentLoaded", function () {
    // 헤더 요소를 찾습니다.
    var header = document.querySelector(".header");
    var logoWhite = document.querySelector(".logo_white");
    var logo = document.querySelector(".logo");
    var lnb = document.querySelectorAll(".lnb_title");

    // 헤더 요소에 마우스 호버 이벤트를 등록
    header.addEventListener("mouseover", function () {
        this.classList.add("header_on");
        logo.classList.add("on");
        logoWhite.classList.remove("on");
        lnb.forEach(function (item) {
            item.classList.add("on");
        });
    });

    // 헤더 요소에 마우스 떠남 이벤트를 등록
    header.addEventListener("mouseout", function () {
        this.classList.remove("header_on");
        logoWhite.classList.add("on");
        logo.classList.remove("on");
        lnb.forEach(function (item) {
            item.classList.remove("on");
        });
    });

    // 스크롤 위치에 따른 헤더 요소 이벤트 핸들러
    window.addEventListener("scroll", function () {
        // 현재 스크롤 위치를 가져옵니다.
        var currentScrollPos = window.pageYOffset;

        if (currentScrollPos > 0) {
            header.classList.add("header_on");
            logo.classList.add("on");
            logoWhite.classList.remove("on");
            lnb.forEach(function (item) {
                item.classList.add("on");
            });
        } else {
            header.classList.remove("header_on");
            logoWhite.classList.add("on");
            logo.classList.remove("on");
            lnb.forEach(function (item) {
                item.classList.remove("on");
            });
        }
    });
});