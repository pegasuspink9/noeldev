document.addEventListener('DOMContentLoaded', function() {
    const categoryContainers = document.querySelectorAll('.skill-category-container');
    const skillsWrapper = document.querySelector('.skills-wrapper.section-light');

    if (!categoryContainers.length || !skillsWrapper) return;

    categoryContainers.forEach(container => {
        container.addEventListener('click', function(e) {
            // Prevent the "click outside" listener from firing
            e.stopPropagation();

            // If clicking a card inside an already expanded category, don't collapse
            if (e.target.closest('.skill-card-scene') && this.classList.contains('expanded')) {
                return;
            }
            
            const isExpanded = this.classList.contains('expanded');
            
            // 1. Collapse all other containers first
            categoryContainers.forEach(c => c.classList.remove('expanded'));
            
            if (!isExpanded) {
                // 2. Expand the clicked one
                this.classList.add('expanded');
                skillsWrapper.classList.add('expanded-active');
                
                // Scroll the wrapper to show the expanded content if it's off-screen
                const wrapperRect = skillsWrapper.getBoundingClientRect();
                const containerRect = this.getBoundingClientRect();
                
                if (containerRect.left < wrapperRect.left || containerRect.right > wrapperRect.right) {
                    this.scrollIntoView({ behavior: 'smooth', block: 'nearest', inline: 'center' });
                }
            } else {
                // 3. If it was already expanded, just collapse it
                skillsWrapper.classList.remove('expanded-active');
            }
        });
    });

    // Collapse when clicking anywhere else on the page
    document.addEventListener('click', function(e) {
        if (!e.target.closest('.skills-wrapper.section-light')) {
            categoryContainers.forEach(c => c.classList.remove('expanded'));
            skillsWrapper.classList.remove('expanded-active');
        }
    });
});