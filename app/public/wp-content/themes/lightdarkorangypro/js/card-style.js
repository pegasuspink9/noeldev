document.addEventListener('DOMContentLoaded', function() {
    const observerOptions = {
        threshold: 0.2,
        rootMargin: '0px 0px -50px 0px'
    };

    const observer = new IntersectionObserver(function(entries) {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible'); // Add class instead
                entry.target.style.opacity = '1';
                entry.target.style.transform = 'translateY(0)';
            }
        });
    }, observerOptions);

    // Observe both possible class names
    const sectionTitle = document.querySelector('#skills .section-title, #skills .section-title-skills');
    if (sectionTitle) {
        observer.observe(sectionTitle);
    }

    const skillCards = document.querySelectorAll('.skill-card-scene');
    skillCards.forEach((card, index) => {
        card.style.transitionDelay = `${index * 0.1}s`;
        observer.observe(card);
    });
});