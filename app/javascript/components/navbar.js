function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-fixed-top');
  if (navbar) {
    window.addEventListener('scroll', (e) => {
      if (window.scrollY >= window.innerHeight - 120) {
        navbar.classList.add('navbar-wagon-white');
      } else {
        navbar.classList.remove('navbar-wagon-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
