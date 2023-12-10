window.addEventListener('turbo:load', function(){
  const articles = document.querySelectorAll(".mypage-list, .follow-list");
  articles.forEach(function(article) {
    article.addEventListener('mouseover', function() {
      this.style.borderBottom = "solid 1px #000000";
    });
    article.addEventListener('mouseout', function() {
      this.style.borderBottom = "";
    });
  });
});
