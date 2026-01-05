document.addEventListener('DOMContentLoaded', function() {
    const scrollContainer = document.querySelector('.main-content-wrapper');
    if (!scrollContainer) return;

    const layers = [
        { id: 'layer-hero', hash: 'home' }, 
        { id: 'layer-skills', hash: 'skills' },
        { id: 'layer-projects', hash: 'projects' },
        { id: 'layer-achievements', hash: 'achievements' }
    ];

    const layerElements = document.querySelectorAll('.layer-card');

    function updateActiveState() {
        let activeIndex = 0;
        layerElements.forEach((layer, index) => {
            const rect = layer.getBoundingClientRect();
            // Threshold adjusted to 50% of viewport for snappier activation
            if (rect.top <= window.innerHeight / 2) { 
                activeIndex = index;
            }
        });

        const activeLayer = layerElements[activeIndex];
        const target = layers.find(l => l.id === activeLayer.id);

        // Update Classes
        layerElements.forEach(layer => layer.classList.remove('active-layer'));
        activeLayer.classList.add('active-layer');

        // Update URL
        if (target && window.location.hash !== '#' + target.hash) {
            const newUrl = target.hash === 'home' ? window.location.pathname : '#' + target.hash;
            history.replaceState(null, null, newUrl);
        }
    }

    // Initial Load
    const hash = window.location.hash.replace('#', '');
    if (hash) {
        const targetLayer = layers.find(l => l.hash === hash);
        if (targetLayer) {
            const element = document.getElementById(targetLayer.id);
            if (element) element.scrollIntoView();
        }
    }
    updateActiveState(); // Run once on load

    scrollContainer.addEventListener('scroll', () => {
        requestAnimationFrame(updateActiveState);
    }, { passive: true });

    document.addEventListener('click', function(e) {
        const link = e.target.closest('.burger-nav-link, .hero-cta'); // Target sidebar and hero buttons
        if (!link) return;

        const href = link.getAttribute('href');
        
        // Check if it's an internal hash link
        if (href && href.includes('#')) {
            const hash = href.split('#')[1] || 'home';
            const targetLayer = layers.find(l => l.hash === hash);

            if (targetLayer) {
                const element = document.getElementById(targetLayer.id);
                if (element) {
                    e.preventDefault(); // Stop browser from jumping
                    element.scrollIntoView({ behavior: 'smooth' });
                }
            }
        }
    });
});