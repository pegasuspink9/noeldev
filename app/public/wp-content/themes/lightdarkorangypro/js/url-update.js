document.addEventListener('DOMContentLoaded', function() {
    const scrollContainer = document.querySelector('.main-content-wrapper');
    if (!scrollContainer) return;

    const layers = [
        { id: 'layer-hero', hash: 'home' }, 
        { id: 'layer-skills', hash: 'skills' },
        { id: 'layer-projects', hash: 'projects' },
        { id: 'layer-services', hash: 'services' }
    ];

    // --- PART 1: HANDLE INITIAL LOAD (SEARCH) ---
    function scrollToHash() {
        const hash = window.location.hash.replace('#', '');
        if (!hash) return;

        const targetLayer = layers.find(l => l.hash === hash);
        if (targetLayer) {
            const element = document.getElementById(targetLayer.id);
            if (element) {
                // Small delay to ensure layout is ready
                setTimeout(() => {
                    element.scrollIntoView({ behavior: 'smooth' });
                }, 100);
            }
        }
    }

    // Run on load
    scrollToHash();

    // --- PART 2: UPDATE URL ON SCROLL ---
    let currentHash = window.location.hash.replace('#', '') || 'home';

    function updateURL() {
        const layerElements = document.querySelectorAll('.layer-card');
        let activeIndex = 0;

        layerElements.forEach((layer, index) => {
            const rect = layer.getBoundingClientRect();
            if (rect.top <= 10) { 
                activeIndex = index;
            }
        });
        const activeId = layerElements[activeIndex].id;
        const target = layers.find(l => l.id === activeId);

        if (target && currentHash !== target.hash) {
            currentHash = target.hash;
            const newUrl = target.hash === 'home' ? 
                window.location.pathname : 
                '#' + target.hash;
            
            history.replaceState(null, null, newUrl);
        }
    }

    scrollContainer.addEventListener('scroll', () => {
        requestAnimationFrame(updateURL);
    }, { passive: true });
});