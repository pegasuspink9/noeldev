document.addEventListener('DOMContentLoaded', function() {
    const categoryContainers = document.querySelectorAll('.skill-category-container');
    const skillsWrapper = document.querySelector('.skills-wrapper.section-light');

    if (!categoryContainers.length || !skillsWrapper) return;

    categoryContainers.forEach(container => {
        container.addEventListener('click', function(e) {
            e.stopPropagation();

            // If clicking a card inside an already expanded category, don't collapse
            if (e.target.closest('.skill-card-scene') && this.classList.contains('expanded')) {
                return;
            }
            
            const isExpanded = this.classList.contains('expanded');
            
            if (!isExpanded) {
                // ENTER FOCUS MODE
                
                // 1. Hide all other containers
                categoryContainers.forEach(c => {
                    if (c !== this) {
                        c.classList.add('hidden-category');
                        c.classList.remove('expanded');
                    }
                });

                // 2. Expand the clicked one
                this.classList.remove('hidden-category');
                this.classList.add('expanded');
                skillsWrapper.classList.add('expanded-active');
                
            } else {
                // EXIT FOCUS MODE (Restore all)
                
                // 1. Show all containers
                categoryContainers.forEach(c => {
                    c.classList.remove('hidden-category');
                    c.classList.remove('expanded');
                });

                // 2. Reset wrapper
                skillsWrapper.classList.remove('expanded-active');
            }
        });
    });

    // Collapse/Reset when clicking anywhere else on the page
    document.addEventListener('click', function(e) {
        if (!e.target.closest('.skills-wrapper.section-light')) {
            categoryContainers.forEach(c => {
                c.classList.remove('hidden-category');
                c.classList.remove('expanded');
            });
            skillsWrapper.classList.remove('expanded-active');
        }
    });
});