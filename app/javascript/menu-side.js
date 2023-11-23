window.addEventListener('turbo:load', function(){
  const menuOpen = document.querySelector(".menu-open");
  const pullDownMenu = document.getElementById("menu-side");
  const closeMenuButton = document.getElementById("close-menu-button");

  menuOpen.addEventListener('mouseover', function() {
    this.style.color = "#e8d3ca";
  });
  menuOpen.addEventListener('mouseout', function() {
    this.style.color = "";
  });

  menuOpen.addEventListener('click', function() {
    if (pullDownMenu.style.display === "block") {
      pullDownMenu.style.display = "none";
      menuOpen.classList.toggle("active");
    } else {
      pullDownMenu.style.display = "block";
    }
  });

  if (closeMenuButton) {
    closeMenuButton.addEventListener('click', function() {
      pullDownMenu.style.display = "none";
      menuOpen.classList.remove("active");
    });
  }
});