document.addEventListener('DOMContentLoaded', function() {
    const categoryContainers = document.querySelectorAll('.skill-category-container');
    
    categoryContainers.forEach(container => {
        container.addEventListener('click', function(e) {
            // Don't trigger if clicking on a skill card
            if (e.target.closest('.skill-card-scene')) {
                return;
            }
            
            const isExpanded = this.classList.contains('expanded');
            
            // Collapse all containers
            categoryContainers.forEach(c => c.classList.remove('expanded'));
            
            // If this wasn't expanded, expand it
            if (!isExpanded) {
                this.classList.add('expanded');
                
                // Smooth scroll to show the expanded container
                setTimeout(() => {
                    this.scrollIntoView({ 
                        behavior: 'smooth', 
                        block: 'nearest' 
                    });
                }, 100);
            }
        });
    });
});