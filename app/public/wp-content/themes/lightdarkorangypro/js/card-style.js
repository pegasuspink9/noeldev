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
                } else {
                    entry.target.classList.remove('visible');
                }
            });
        });
    };

    const observer = new IntersectionObserver(observerCallback, observerOptions);

    // Observe Skills section title
    const sectionTitle = document.querySelector('#skills .section-title, #skills .section-title-skills');
    if (sectionTitle) {
        observer.observe(sectionTitle);
    }

    // Observe Achievements section title
    const achievementsTitle = document.querySelector('.section-title-achievements');
    if (achievementsTitle) {
        observer.observe(achievementsTitle);
    }

    // OPTIMIZED: Observe skill category containers with transition delays
    const skillCategories = document.querySelectorAll('.skill-category-container');
    skillCategories.forEach((cat, index) => {
        // Use transitionDelay instead of animationDelay
        cat.style.transitionDelay = `${index * 0.1}s`;
        observer.observe(cat);
    });

    const projectWrappers = document.querySelectorAll('.project-wrapper');
    projectWrappers.forEach((wrapper, index) => {
        wrapper.style.animationDelay = `${index * 0.1}s`;
        observer.observe(wrapper);
    });
});