window.addEventListener('turbo:load', function(){
  const menu = document.getElementById("meal-time-dropdown");
  const pullDownMenu = document.getElementById("meal-time-dpull-down")

menu.addEventListener('click', function(){
  if (pullDownMenu.getAttribute("style") == "display:block;") {
      pullDownMenu.removeAttribute("style", "display:block;");
    } else {
        pullDownMenu.setAttribute("style", "display:block;");
    }
  });
});