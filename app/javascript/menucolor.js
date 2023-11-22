window.addEventListener('turbo:load', function(){
  const articles = document.querySelectorAll(".meal-time-list, .submit-text, .post-show-menu");
  articles.forEach(function(article) {
    article.addEventListener('mouseover', function() {
      this.style.backgroundColor = "#e8d3ca";
      this.style.color = "#FFFFFF";
    });
    article.addEventListener('mouseout', function() {
      this.style.backgroundColor = "";
      this.style.color = "";
    });
  });
});
