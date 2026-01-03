document.addEventListener('DOMContentLoaded', function() {
    const scrollContainer = document.querySelector('.main-content-wrapper');
    const layers = document.querySelectorAll('.layer-card');
    if (!scrollContainer || layers.length === 0) return;
    
    function optimizeLayers() {
        let activeIndex = 0;
        
        // Find the highest index layer that has reached the top
        layers.forEach((layer, index) => {
            const rect = layer.getBoundingClientRect();
            if (rect.top <= 10) { 
                activeIndex = index;
            }
        });
        
        layers.forEach((layer, index) => {
            // If the layer is behind the current active one, hide it completely
            if (index < activeIndex) {
                layer.style.visibility = 'hidden';
                layer.style.opacity = '0';
                layer.style.pointerEvents = 'none';
                // Stop the browser from rendering this layer at all
                layer.style.contentVisibility = 'hidden';
            } else {
                // Show the current layer and everything below it
                layer.style.visibility = 'visible';
                layer.style.opacity = '1';
                layer.style.pointerEvents = 'auto';
                layer.style.contentVisibility = 'visible';
            }
        });
    }

    let isRunning = false;
    scrollContainer.addEventListener('scroll', () => {
        if (!isRunning) {
            window.requestAnimationFrame(() => {
                optimizeLayers();
                isRunning = false;
            });
            isRunning = true;
        }
    }, { passive: true });
    
    optimizeLayers();
});