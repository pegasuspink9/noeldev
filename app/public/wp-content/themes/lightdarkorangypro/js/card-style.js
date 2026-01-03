document.addEventListener('DOMContentLoaded', function() {
    const observerOptions = {
        threshold: 0.2,
        rootMargin: '0px 0px -50px 0px'
    };

    let observerCallback = (entries) => {
    requestAnimationFrame(() => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible');
                entry.target.style.opacity = '1';
                entry.target.style.transform = 'translateY(0)';
            }
        });
    });
    };

    const observer = new IntersectionObserver(observerCallback, observerOptions);

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

    // Observe skill category containers for the drop-in animation
    const skillCategories = document.querySelectorAll('.skill-category-container');
    skillCategories.forEach((cat, index) => {
        // Stagger the animation delay for each category
        cat.style.animationDelay = `${index * 0.15}s`;
        observer.observe(cat);
    });

    const projectWrappers = document.querySelectorAll('.project-wrapper');
    projectWrappers.forEach((wrapper, index) => {
        // Optional: add a slight delay based on index if you want them to slide one after another
        wrapper.style.animationDelay = `${index * 0.1}s`;
        observer.observe(wrapper);
    });
});