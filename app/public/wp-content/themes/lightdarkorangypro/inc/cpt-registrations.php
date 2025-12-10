<?php
/**
 * Register Custom Post Types and Taxonomies
 */

function lightdarkorangypro_register_cpts() {

    // --- 1. Tech Stack CPT ---
    register_post_type('tech_stack', array(
        'labels' => array(
            'name' => 'Tech Stacks',
            'singular_name' => 'Tech Stack',
            'add_new_item' => 'Add New Tech Stack',
            'edit_item' => 'Edit Tech Stack',
        ),
        'public' => true,
        'has_archive' => false,
        'menu_icon' => 'dashicons-code-standards',
        'supports' => array('title', 'thumbnail'), // Title serves as the Tech Name
        'show_in_rest' => true,
    ));

    // Taxonomy: Tech Category
    register_taxonomy('tech_category', 'tech_stack', array(
        'labels' => array(
            'name' => 'Tech Categories',
            'singular_name' => 'Tech Category',
        ),
        'hierarchical' => true, // Like standard Categories
        'show_in_rest' => true,
    ));

    // --- 2. Project CPT ---
    register_post_type('project', array(
        'labels' => array(
            'name' => 'Projects',
            'singular_name' => 'Project',
            'add_new_item' => 'Add New Project',
            'edit_item' => 'Edit Project',
        ),
        'public' => true,
        'has_archive' => true,
        'menu_icon' => 'dashicons-portfolio',
        'supports' => array('title', 'editor', 'thumbnail'), // Editor is for main description
        'show_in_rest' => true,
    ));

    register_post_type('skill', array(
        'labels' => array(
            'name' => 'Skills',
            'singular_name' => 'Skill Card',
            'add_new_item' => 'Add New Skill Card',
            'edit_item' => 'Edit Skill Card',
        ),
        'public' => true,
        'has_archive' => false,
        'menu_icon' => 'dashicons-awards', 
        'supports' => array('title', 'thumbnail'), 
        'show_in_rest' => true,
    ));


      // Taxonomy: Project Type
    register_taxonomy('project_type', 'project', array(
        'labels' => array(
            'name' => 'Project Types',
            'singular_name' => 'Project Type',
        ),
        'hierarchical' => true,
        'show_in_rest' => true,
    ));
}
add_action('init', 'lightdarkorangypro_register_cpts');