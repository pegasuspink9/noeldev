document.addEventListener('DOMContentLoaded', function() {
    const categoryContainers = document.querySelectorAll('.skill-category-container');
    const skillsWrapper = document.querySelector('.skills-wrapper.section-light');

    categoryContainers.forEach(container => {
        container.addEventListener('click', function(e) {
            // Do not trigger if clicking on a skill card within an already expanded category
            if (e.target.closest('.skill-card-scene') && this.classList.contains('expanded')) {
                return;
            }
            
            const isExpanded = this.classList.contains('expanded');
            
            // Collapse all containers first
            categoryContainers.forEach(c => c.classList.remove('expanded'));
            
            // If the clicked container was not expanded, expand it
            if (!isExpanded) {
                this.classList.add('expanded');
                skillsWrapper.classList.add('expanded-active'); // Add class to wrapper to expand it
                
                // Smooth scroll to show the expanded container
                setTimeout(() => {
                    this.scrollIntoView({ 
                        behavior: 'smooth', 
                        block: 'nearest' 
                    });
                }, 100);
            } else {
                // If it was already expanded and clicked again, collapse it and shrink the wrapper
                skillsWrapper.classList.remove('expanded-active'); // Remove class from wrapper
            }
        });
    });

    // Optional: Collapse all categories and shrink wrapper if clicking outside the skills wrapper
    document.addEventListener('click', function(e) {
        if (!e.target.closest('.skills-wrapper.section-light')) {
            categoryContainers.forEach(c => c.classList.remove('expanded'));
            skillsWrapper.classList.remove('expanded-active');
        }
    });
});