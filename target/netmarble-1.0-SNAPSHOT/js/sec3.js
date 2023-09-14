const btnNotice = document.getElementById('btn_notice');
const btnNews = document.getElementById('btn_news');
const btnSocial = document.getElementById('btn_social');

const swiperNotice = document.getElementById('swiper_notice');
const swiperNews = document.getElementById('swiper_news');
const swiperSocial = document.getElementById('swiper_social');

btnNotice.addEventListener('click', () => {
    btnNotice.classList.add('on');
    btnNews.classList.remove('on');
    btnSocial.classList.remove('on');

    swiperNotice.classList.add('on');
    swiperNews.classList.remove('on');
    swiperSocial.classList.remove('on');
});

btnNews.addEventListener('click', () => {
    btnNotice.classList.remove('on');
    btnNews.classList.add('on');
    btnSocial.classList.remove('on');

    swiperNotice.classList.remove('on');
    swiperNews.classList.add('on');
    swiperSocial.classList.remove('on');
});

btnSocial.addEventListener('click', () => {
    btnNotice.classList.remove('on');
    btnNews.classList.remove('on');
    btnSocial.classList.add('on');

    swiperNotice.classList.remove('on');
    swiperNews.classList.remove('on');
    swiperSocial.classList.add('on');
});