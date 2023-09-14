var imageContainer = document.querySelector('.image-container');
var mainTitle = document.querySelector('.main_title');

window.addEventListener('scroll', function() {
  var scrollPosition = window.scrollY;
  var maxOpacity = 1;
  var minOpacity = 0;

  var opacity = maxOpacity - (scrollPosition / (document.body.clientHeight - window.innerHeight)) * (maxOpacity - minOpacity);

  if (opacity < minOpacity) {
    opacity = minOpacity;
  } else if (opacity > maxOpacity) {
    opacity = maxOpacity;
  }

  imageContainer.style.opacity = opacity;

  var titleOpacity = 1 - (scrollPosition / (document.body.clientHeight - window.innerHeight));
  mainTitle.style.opacity = titleOpacity;

  if (titleOpacity <= 0) {
    mainTitle.style.display = 'none';
  } else {
    mainTitle.style.display = 'block';
  }
});

window.addEventListener('load',function(event){
    AOS.init();
})



