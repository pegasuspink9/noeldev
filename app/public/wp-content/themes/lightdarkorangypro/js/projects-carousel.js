

document.addEventListener('DOMContentLoaded', function() {
    const track = document.querySelector('.projects-track');
    const prevBtn = document.querySelector('.carousel-arrow-prev');
    const nextBtn = document.querySelector('.carousel-arrow-next');
    const projectCards = document.querySelectorAll('.project-wrapper');
    
    if (!track || !prevBtn || !nextBtn || projectCards.length === 0) return;
    
    let currentIndex = 0;
    const cardsPerView = 2;
    const totalCards = projectCards.length;
    const maxIndex = Math.max(0, totalCards - cardsPerView);
    
    function updateCarousel() {
        const cardWidth = projectCards[0].offsetWidth;
        const gap = 40; // Match your CSS gap
        const offset = currentIndex * (cardWidth + gap);
        
        track.style.transform = `translateX(-${offset}px)`;
        
        prevBtn.disabled = currentIndex === 0;
        nextBtn.disabled = currentIndex >= maxIndex;
    }
    
    function goToPrev() {
        if (currentIndex > 0) {
            currentIndex--;
            updateCarousel();
        }
    }
    
    function goToNext() {
        if (currentIndex < maxIndex) {
            currentIndex++;
            updateCarousel();
        }
    }
    
    prevBtn.addEventListener('click', goToPrev);
    nextBtn.addEventListener('click', goToNext);
    
    updateCarousel();
    
    let resizeTimer;
    window.addEventListener('resize', function() {
        clearTimeout(resizeTimer);
        resizeTimer = setTimeout(function() {
            currentIndex = Math.min(currentIndex, maxIndex);
            updateCarousel();
        }, 250);
    });
});