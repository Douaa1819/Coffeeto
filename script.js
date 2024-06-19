document.addEventListener('DOMContentLoaded', () => {
    const menu = document.querySelector('.menu');
    const navbar = document.querySelector('.navbar');
    // const nav = document.querySelector('.nav');
    menu.addEventListener('click', () => {
        navbar.style.display = navbar.style.display === 'flex' ? 'none' : 'flex';
    });
});
