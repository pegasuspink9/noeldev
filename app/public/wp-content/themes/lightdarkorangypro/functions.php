<?php
/**
 * Light Dark Orangy Pro functions and definitions
 *
 * @package LightDarkOrangyPro
 */

/**
 * Sets up theme defaults and registers support for various WordPress features.
 */
function lightdarkorangypro_setup() {
    add_theme_support( 'title-tag' );

    register_nav_menus( array(
        'primary' => esc_html__( 'Primary Menu', 'lightdarkorangypro' ),
    ) );
}
add_action( 'after_setup_theme', 'lightdarkorangypro_setup' );


function lightdarkorangypro_scripts() {
    // Main stylesheet
    wp_enqueue_style( 'lightdarkorangypro-style', get_stylesheet_uri(), array(), '1.0.0' );
    
    // Header styles
    wp_enqueue_style( 'lightdarkorangypro-header', get_template_directory_uri() . '/css/header.css', array('lightdarkorangypro-style'), '1.0.0' );
    
    // Home page styles
    wp_enqueue_style( 'lightdarkorangypro-home', get_template_directory_uri() . '/css/home.css', array('lightdarkorangypro-style'), '1.0.0' );
    
    // Skills styles
    wp_enqueue_style( 'lightdarkorangypro-skills', get_template_directory_uri() . '/css/skills.css', array('lightdarkorangypro-style'), '1.0.0' );

    // Projects styles
    wp_enqueue_style( 'lightdarkorangypro-projects', get_template_directory_uri() . '/css/project.css', array('lightdarkorangypro-style'), '1.0.0' );

    // Sidebar styles
    wp_enqueue_style( 'lightdarkorangypro-sidebar', get_template_directory_uri() . '/css/sidebar.css', array('lightdarkorangypro-style'), '1.0.0' );
    
    // Burger Sidebar styles
    wp_enqueue_style( 'lightdarkorangypro-burger-sidebar', get_template_directory_uri() . '/css/burger-sidebar.css', array('lightdarkorangypro-style'), '1.0.0' );
    
    // Footer styles
    wp_enqueue_style( 'lightdarkorangypro-footer', get_template_directory_uri() . '/css/footer.css', array('lightdarkorangypro-style'), '1.0.0' );

    // JavaScript files
    wp_enqueue_script( 'lightdarkorangypro-typing', get_template_directory_uri() . '/js/typing-effect.js', array(), '1.0.0', true );

    wp_enqueue_script( 'lightdarkorangypro-card-style', get_template_directory_uri() . '/js/card-style.js', array(), '1.0.0', true );

    wp_enqueue_script( 'lightdarkorangypro-skills-accordion', 
        get_template_directory_uri() . '/js/skills-accordion.js', 
        array(), '1.0.0', true );

    // Single project page styles
    if ( is_singular('project') ) {
        wp_enqueue_style( 'lightdarkorangypro-project-single', get_template_directory_uri() . '/css/project-single.css', array('lightdarkorangypro-style'), '1.0.0' );
    }
}
add_action( 'wp_enqueue_scripts', 'lightdarkorangypro_scripts' );


function lightdarkorangypro_performance_optimizations() {
    ?>
    <style id="performance-optimizations">
        /* Critical performance CSS loaded inline */
        * {
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        
        /* Reduce motion for users who prefer it */
        @media (prefers-reduced-motion: reduce) {
            *,
            *::before,
            *::after {
                animation-duration: 0.01ms !important;
                animation-iteration-count: 1 !important;
                transition-duration: 0.01ms !important;
                scroll-behavior: auto !important;
            }
        }
        
        /* Force GPU acceleration on critical elements */
        .layer-card,
        .hero,
        .hero-right,
        .project-card,
        .skill-card {
            transform: translateZ(0);
            -webkit-transform: translateZ(0);
        }
    </style>
    <?php
}
add_action( 'wp_head', 'lightdarkorangypro_performance_optimizations', 1 );

/**
 * Load Custom Post Types and Fields
 */
require get_template_directory() . '/inc/cpt-registrations.php';
require get_template_directory() . '/inc/custom-fields.php';
require get_template_directory() . '/inc/taxonomies.php';