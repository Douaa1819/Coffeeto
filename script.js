document.addEventListener('DOMContentLoaded', () => {
    const menu = document.querySelector('.menu');
    const navbar = document.querySelector('.navbar');
    menu.addEventListener('click', () => {
        navbar.style.display = navbar.style.display === 'flex' ? 'none' : 'flex';
    });

    document.addEventListener('DOMContentLoaded', () => {
        const menus = document.querySelector('.menus');
        const navbars = document.querySelector('.navbars');
    
        menus.addEventListener('click', () => {
            navbars.style.display = navbars.style.display === 'flex' ? 'none' : 'flex';
        });
    });
    

});
