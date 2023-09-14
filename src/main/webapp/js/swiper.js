document.addEventListener("DOMContentLoaded", function () {
    var swiper = new Swiper(".swiper-container", {
        autoplay: {
            delay: 5000,
            disableOnInteraction: false,
        },
        speed: 500,
        loop: true,
        pagination: {
            el: ".swiper-pagination",
            type: "fraction",
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        allowTouchMove: false,
        on: {
            init: function () {
                var progressBar = document.querySelector(".swiper-progress-bar");
                progressBar.classList.remove("animate");
                progressBar.classList.remove("active");
                progressBar.classList.add("animate");
                progressBar.classList.add("active");
            },
            slideChangeTransitionStart: function () {
                var progressBar = document.querySelector(".swiper-progress-bar");
                progressBar.classList.remove("animate");
                progressBar.classList.remove("active");
                progressBar.classList.add("active");
            },
            slideChangeTransitionEnd: function () {
                var progressBar = document.querySelector(".swiper-progress-bar");
                progressBar.classList.add("animate");
            },
        },
    });

    var mySwiper2 = new Swiper('.myCategorySlider', {
        slidesPerView: 3,
        spaceBetween: 30,
        effect: 'slide',
        centeredSlides: false,
        loopAdditionalSlides: 0,
        loopFillGroupWithBlank: false,
        loop: false,
        scrollbar: {
            el: ".swiper-scrollbar",
            hide: true,
        },
        observer: true,
        observeParents: true,
    });
});
