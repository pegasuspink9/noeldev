document.addEventListener('DOMContentLoaded', function() {
    const categoryContainers = document.querySelectorAll('.skill-category-container');
    const skillsWrapper = document.querySelector('.skills-wrapper.section-light');

    categoryContainers.forEach(container => {
        container.addEventListener('click', function(e) {
            if (e.target.closest('.skill-card-scene') && this.classList.contains('expanded')) {
                return;
            }
            
            const isExpanded = this.classList.contains('expanded');
            
            // 1. Collapse all containers first
            categoryContainers.forEach(c => c.classList.remove('expanded'));
            
            if (!isExpanded) {
                this.classList.add('expanded');
                skillsWrapper.classList.add('expanded-active');
                
                setTimeout(() => {
                    this.scrollIntoView({ 
                        behavior: 'smooth', 
                        block: 'center',  // Centers vertically
                        inline: 'center'  // Centers horizontally (This is the key fix)
                    });
                }, 300); 
                
            } else {
                skillsWrapper.classList.remove('expanded-active');
            }
        });
    });

    // Collapse when clicking outside
    document.addEventListener('click', function(e) {
        if (!e.target.closest('.skills-wrapper.section-light')) {
            categoryContainers.forEach(c => c.classList.remove('expanded'));
            skillsWrapper.classList.remove('expanded-active');
        }
    });
});