var loadButton = document.getElementById("loadButton");
var container = document.querySelector(".container");
var maxBoxes = 40; // 최대 박스 개수

var imageLinks = [
  "", // 이미지 1에 대한 하이퍼링크
  "","","","","","","",
  "https://www.netmarblefoundation.org/notice/view/379",
  "https://www.netmarblefoundation.org/notice/view/369",
  "https://www.netmarblefoundation.org/notice/view/368",
  "https://www.netmarblefoundation.org/notice/view/346",
  "https://www.netmarblefoundation.org/notice/view/337",
  "https://www.netmarblefoundation.org/notice/view/334",
  "https://www.netmarblefoundation.org/notice/view/333",
  "https://www.netmarblefoundation.org/notice/view/314",
  "https://www.google.com","https://www.google.com","https://www.google.com","https://www.google.com",
  "https://www.google.com","https://www.google.com","https://www.google.com","https://www.google.com",
  "https://www.google.com","https://www.google.com","https://www.google.com","https://www.google.com",
];

loadButton.addEventListener("click", function () {
  var currentBoxes = container.children.length;

  if (currentBoxes < maxBoxes) {
    // 이미지 박스 추가
    for (var i = 0; i < 8; i++) {
      if (currentBoxes < maxBoxes) {
        var newBox = document.createElement("div");
        newBox.className = "box";

        // 개별 하이퍼링크를 생성하고 이미지를 포함시킴
        var link = document.createElement("a");
        link.href = imageLinks[currentBoxes]; // 해당 이미지에 대한 하이퍼링크
        link.target = "_blank"; // 새 창에서 열기
        var img = document.createElement("img");
        img.src = "image/이미지" + (currentBoxes + 1) + ".jpg";
        img.alt = "새 소식 준비중 " + (currentBoxes + 1);

        link.appendChild(img);
        newBox.appendChild(link);
        container.appendChild(newBox);

        currentBoxes++;
      }
    }

    if (currentBoxes >= maxBoxes) {
      loadButton.classList.add("hidden"); // 버튼 숨기기
    }
  }
});



