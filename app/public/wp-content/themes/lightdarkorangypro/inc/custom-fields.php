<?php
/**
 * Register Custom Meta Boxes for Projects
 */

// 1. Add the Meta Box
function lightdarkorangypro_add_project_meta_box() {
    add_meta_box(
        'project_details_meta',      // ID
        'Project Details',           // Title
        'lightdarkorangypro_render_project_meta', // Callback function
        'project',                   // Screen (Post Type)
        'normal',                    // Context
        'high'                       // Priority
    );
}
add_action('add_meta_boxes', 'lightdarkorangypro_add_project_meta_box');

// 2. Render the Fields (The HTML in the admin area)
function lightdarkorangypro_render_project_meta($post) {
    // Security nonce
    wp_nonce_field('save_project_meta', 'project_meta_nonce');

    // Retrieve existing values
    $client_name = get_post_meta($post->ID, '_project_client_name', true);
    $project_url = get_post_meta($post->ID, '_project_url', true);
    $completion_date = get_post_meta($post->ID, '_project_completion_date', true);
    $role = get_post_meta($post->ID, '_project_role', true);
    $gallery = get_post_meta($post->ID, '_project_gallery', true);
    $selected_tech = get_post_meta($post->ID, '_project_tech_stack_ids', true); // Returns array
    if(!is_array($selected_tech)) $selected_tech = array();

    ?>
    <style>
        .ldo-meta-row { margin-bottom: 15px; }
        .ldo-meta-row label { display: block; font-weight: bold; margin-bottom: 5px; }
        .ldo-meta-row input[type="text"], .ldo-meta-row input[type="url"], .ldo-meta-row textarea { width: 100%; }
        .ldo-tech-checkboxes { max-height: 150px; overflow-y: scroll; border: 1px solid #ddd; padding: 10px; }
    </style>

    <div class="ldo-meta-row">
        <label for="client_name">Client Name</label>
        <input type="text" id="client_name" name="project_client_name" value="<?php echo esc_attr($client_name); ?>">
    </div>

    <div class="ldo-meta-row">
        <label for="project_url">Project URL</label>
        <input type="url" id="project_url" name="project_url" value="<?php echo esc_attr($project_url); ?>">
    </div>

    <div class="ldo-meta-row">
        <label for="completion_date">Completion Date</label>
        <input type="date" id="completion_date" name="project_completion_date" value="<?php echo esc_attr($completion_date); ?>">
    </div>

    <div class="ldo-meta-row">
        <label for="project_role">Responsibilities / Role</label>
        <textarea id="project_role" name="project_role" rows="4"><?php echo esc_textarea($role); ?></textarea>
    </div>

    <div class="ldo-meta-row">
        <label>Tech Stack Used</label>
        <div class="ldo-tech-checkboxes">
            <?php 
            // Query all Tech Stack posts
            $tech_stacks = get_posts(array('post_type' => 'tech_stack', 'numberposts' => -1, 'orderby' => 'title', 'order' => 'ASC'));
            
            if($tech_stacks) {
                foreach($tech_stacks as $tech) {
                    $checked = in_array($tech->ID, $selected_tech) ? 'checked' : '';
                    echo '<label style="font-weight:normal; margin-bottom:5px;">';
                    echo '<input type="checkbox" name="project_tech_stack_ids[]" value="' . $tech->ID . '" ' . $checked . '> ' . esc_html($tech->post_title);
                    echo '</label><br>';
                }
            } else {
                echo 'No Tech Stacks found. Please add some in the Tech Stack menu.';
            }
            ?>
        </div>
        <p class="description">Select the technologies used in this project.</p>
    </div>

    <div class="ldo-meta-row">
        <label for="project_gallery">Project Gallery (Image URLs)</label>
        <input type="text" id="project_gallery" name="project_gallery" value="<?php echo esc_attr($gallery); ?>">
        <p class="description">Enter image URLs separated by commas.</p>
    </div>
    <?php
}

// 3. Save the Data
function lightdarkorangypro_save_project_meta($post_id) {
    // Check nonce
    if (!isset($_POST['project_meta_nonce']) || !wp_verify_nonce($_POST['project_meta_nonce'], 'save_project_meta')) return;
    
    // Autosave check
    if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) return;

    // Permissions check
    if (!current_user_can('edit_post', $post_id)) return;

    // Save Fields
    if (isset($_POST['project_client_name'])) 
        update_post_meta($post_id, '_project_client_name', sanitize_text_field($_POST['project_client_name']));
    
    if (isset($_POST['project_url'])) 
        update_post_meta($post_id, '_project_url', esc_url_raw($_POST['project_url']));

    if (isset($_POST['project_completion_date'])) 
        update_post_meta($post_id, '_project_completion_date', sanitize_text_field($_POST['project_completion_date']));

    if (isset($_POST['project_role'])) 
        update_post_meta($post_id, '_project_role', sanitize_textarea_field($_POST['project_role']));

    if (isset($_POST['project_gallery'])) 
        update_post_meta($post_id, '_project_gallery', sanitize_text_field($_POST['project_gallery']));

    // Save Tech Stack (Array)
    if (isset($_POST['project_tech_stack_ids'])) {
        // Sanitize array of IDs
        $tech_ids = array_map('intval', $_POST['project_tech_stack_ids']);
        update_post_meta($post_id, '_project_tech_stack_ids', $tech_ids);
    } else {
        // If nothing selected, clear the meta
        delete_post_meta($post_id, '_project_tech_stack_ids');
    }
}


add_action('save_post', 'lightdarkorangypro_save_project_meta');




function lightdarkorangypro_add_skill_meta_box() {
    add_meta_box(
        'skill_details_meta',
        'Skill Details',
        'lightdarkorangypro_render_skill_meta',
        'skill', // Post Type
        'normal',
        'high'
    );
}
add_action('add_meta_boxes', 'lightdarkorangypro_add_skill_meta_box');

function lightdarkorangypro_render_skill_meta($post) {
    wp_nonce_field('save_skill_meta', 'skill_meta_nonce');

    $skill_list = get_post_meta($post->ID, '_skill_list', true);
    $mastery_percent = get_post_meta($post->ID, '_skill_mastery_percent', true);
    $mastery_label = get_post_meta($post->ID, '_skill_mastery_label', true);
    ?>
    
    <div class="ldo-meta-row">
        <label>Skill List (e.g., HTML, CSS, React)</label>
        <textarea name="skill_list" rows="3" style="width:100%"><?php echo esc_textarea($skill_list); ?></textarea>
    </div>

    <div class="ldo-meta-row">
        <label>Mastery Percentage (Number only)</label>
        <input type="number" name="skill_mastery_percent" value="<?php echo esc_attr($mastery_percent); ?>" min="0" max="100">
    </div>

    <div class="ldo-meta-row">
        <label>Mastery Label (e.g., "Advanced Level")</label>
        <input type="text" name="skill_mastery_label" value="<?php echo esc_attr($mastery_label); ?>" style="width:100%">
    </div>
    <?php
}

function lightdarkorangypro_save_skill_meta($post_id) {
    if (!isset($_POST['skill_meta_nonce']) || !wp_verify_nonce($_POST['skill_meta_nonce'], 'save_skill_meta')) return;
    if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) return;
    if (!current_user_can('edit_post', $post_id)) return;

    if (isset($_POST['skill_list'])) 
        update_post_meta($post_id, '_skill_list', sanitize_textarea_field($_POST['skill_list']));
    
    if (isset($_POST['skill_mastery_percent'])) 
        update_post_meta($post_id, '_skill_mastery_percent', (int)$_POST['skill_mastery_percent']);

    if (isset($_POST['skill_mastery_label'])) 
        update_post_meta($post_id, '_skill_mastery_label', sanitize_text_field($_POST['skill_mastery_label']));
}
add_action('save_post', 'lightdarkorangypro_save_skill_meta');


