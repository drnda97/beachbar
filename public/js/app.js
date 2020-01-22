window.addEventListener('scroll', (e) => {
  var navbar = document.querySelector('nav');
  var img_pos = document.querySelector('#img_pos');
  var logo = document.querySelector('.logo');
  var ul_nav = document.querySelector('.nav_ul');
  if(window.scrollY > 0){
    navbar.style.top = '0';
    navbar.style.left = '0';
    logo.style.margin = '0';
    logo.style.float = 'left';
    logo.style.marginRight = '574px';
    img_pos.style.width = '100px';
    img_pos.style.padding = '15px';
    ul_nav.style.display = 'block';
    ul_nav.style.clear = 'none';
    ul_nav.style.float = 'right';
    ul_nav.style.paddingTop = '30px';
    ul_nav.style.paddingBottom = '30px';
  }
  if(window.scrollY > 120){
    navbar.style.position = 'fixed';    
  }
  if(window.scrollY === 0){
    navbar.style.position = '';
    logo.style.margin = '0 auto';
    logo.style.float = 'none';
    logo.style.marginRight = '0';
    img_pos.style.width = '220px';
    ul_nav.style.display = '';
    ul_nav.style.clear = 'both';
    ul_nav.style.float = '';
    ul_nav.style.paddingTop = '';
  }
});
window.addEventListener('load', () => {
  var dropdown = document.getElementsByClassName("dropdown");
  dropDownMenu(dropdown);
});

function dropDownMenu(dropdown){
  var i;

  for (i = 0; i < dropdown.length; i++) {
    dropdown[i].addEventListener("click", (e) => {
      e.target.classList.toggle("active");
      var dropdownContent = e.target.parentNode.nextElementSibling;
      if (dropdownContent.style.display === "block") {
        dropdownContent.style.display = "none";
      } else {
        dropdownContent.style.display = "block";
      }
    });
  }

  var slideIndex = 0;
  carousel();

  function carousel() {
    var i;
    var x = document.querySelectorAll(".slider ul li");
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > x.length) {slideIndex = 1}
    x[slideIndex-1].style.display = "block";
    setTimeout(carousel, 5000); // Change image every 5 seconds
  }
}