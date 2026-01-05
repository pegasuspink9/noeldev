<?php
/**
 * Register Custom Taxonomies
 * 
 * @package LightDarkOrangyPro
 */

// Register taxonomies
function lightdarkorangypro_register_taxonomies() {
    register_taxonomy('project_type', 'project', array(
        'labels' => array(
            'name' => 'Project Category',
            'singular_name' => 'Project Type',
            'add_new_item' => 'Add New Project Type',
            'edit_item' => 'Edit Project Type',
        ),
        'hierarchical' => true,
        'public' => true,
        'show_in_rest' => true, 
        'rewrite' => array('slug' => 'project-type'),
        'show_admin_column' => true,
    ));

    // Taxonomy for Skills: skill_category
    register_taxonomy('skill_category', 'skill', array(
        'labels' => array(
            'name' => 'Skill Categories',
            'singular_name' => 'Skill Category',
            'add_new_item' => 'Add New Skill Category',
            'edit_item' => 'Edit Skill Category',
        ),
        'hierarchical' => true, // Like categories
        'public' => true,
        'show_in_rest' => true,
        'rewrite' => array('slug' => 'skill-category'),
    ));
}
add_action('init', 'lightdarkorangypro_register_taxonomies');