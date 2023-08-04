document.addEventListener("DOMContentLoaded", function () {
    // Swiper 객체를 생성합니다.
    const progressCircle = document.querySelector(".autoplay-progress svg");
    const progressContent = document.querySelector(".autoplay-progress span");
    var mySwiper1 = new Swiper('.mySlideSwiper', {
        slidesPerView: 1,
        effect: 'slide',
        centeredSlides: true,
        loopAdditionalSlides: 0,
        loopFillGroupWithBlank: false,
        autoplay: {
            delay: 5000,
            disableOnInteraction: false
        },
        loop: true,
        navigation: {   // 버튼
            prevEl: ".swiper-button-prev",
            nextEl: ".swiper-button-next",
        },
        pagination: {
            el: '.swiper-pagination', // pagination 요소를 지정합니다.
            clickable: false,          // 사용자가 pagination을 클릭할 수 있도록 합니다.
            type: 'fraction',

        },
        on: {
            autoplayTimeLeft(s, time, progress) {
                progressCircle.style.setProperty("--progress", 1 - progress);
                progressContent.textContent = `${Math.ceil(time / 1000)}s`;
            }
        }

    });

    function updateProgressBar(progress) {
        var timeBar = document.querySelector(".time-bar");
        timeBar.style.width = progress + "%";
    }

    var mySwiper2 = new Swiper('.myCategorySlider', {
        slidesPerView: 3,
        spaceBetween: 30,    // 슬라이드 사이 여백
        effect: 'slide',
        centeredSlides: false,
        loopAdditionalSlides: 0,
        loopFillGroupWithBlank: false,
        loop: false,
        pagination: {
            el: '.swiper-pagination', // pagination 요소를 지정합니다.
            clickable: false,          // 사용자가 pagination을 클릭할 수 있도록 합니다.
            type: 'fraction',
        },
        scrollbar: {
            el: ".swiper-scrollbar",
            hide: true,
        },
        observer: true,
        observeParents: true

    });
})
