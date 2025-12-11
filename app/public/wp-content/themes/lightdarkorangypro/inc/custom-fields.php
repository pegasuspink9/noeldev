<?php
/**
 * Register Custom Meta Boxes for Projects
 */

// 1. Add the Meta Box
function lightdarkorangypro_add_project_meta_box() {
    add_meta_box(
        'project_details_meta',      // ID
        'Project Details',           // Title
        'lightdarkorangypro_render_project_meta', 
        'project',                   // Screen (Post Type)
        'normal',                    // Context
        'high'                       // Priority
    );
}
add_action('add_meta_boxes', 'lightdarkorangypro_add_project_meta_box');

function lightdarkorangypro_render_project_meta($post) {
    // Security nonce
    wp_nonce_field('save_project_meta', 'project_meta_nonce');

    // Retrieve existing values
    $client_name = get_post_meta($post->ID, '_project_client_name', true);
    $project_url = get_post_meta($post->ID, '_project_url', true);
    $completion_date = get_post_meta($post->ID, '_project_completion_date', true);
    $role = get_post_meta($post->ID, '_project_role', true);
    $gallery = get_post_meta($post->ID, '_project_gallery', true);
    $preview_image_url = get_post_meta($post->ID, '_project_preview_image_url', true);
    
    // Get currently selected skills
    $selected_tech = get_post_meta($post->ID, '_project_tech_stack_ids', true); 
    if(!is_array($selected_tech)) $selected_tech = array();

    ?>
    <style>
        .ldo-meta-row { margin-bottom: 15px; }
        .ldo-meta-row label { display: block; font-weight: bold; margin-bottom: 5px; }
        .ldo-meta-row input[type="text"], .ldo-meta-row input[type="url"], .ldo-meta-row textarea { width: 100%; }
        
        /* Checkbox Container Styles */
        .ldo-tech-checkboxes { 
            max-height: 300px; 
            overflow-y: scroll; 
            border: 1px solid #ddd; 
            padding: 10px; 
            background: #fff;
        }
        .ldo-tech-category {
            margin-top: 10px;
            margin-bottom: 5px;
            padding-bottom: 5px;
            border-bottom: 1px solid #eee;
            font-weight: 700;
            color: #2271b1; /* WordPress Blue */
            text-transform: uppercase;
            font-size: 11px;
        }
        .ldo-tech-item {
            display: inline-block;
            margin-right: 15px;
            margin-bottom: 5px;
        }
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
        <label for="project_preview_image_url">Project Preview Image URL</label>
        <input type="url" id="project_preview_image_url" name="project_preview_image_url" value="<?php echo esc_attr($preview_image_url); ?>">
        <p class="description">Enter a URL for the project's main preview image (e.g., from your media library or a CDN).</p>
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
        <label>Tech Stack / Skills Used</label>
        <div class="ldo-tech-checkboxes">
            <?php 
            // 1. Fetch ALL Skills
            $all_skills = get_posts(array(
                'post_type'      => 'skill', 
                'numberposts'    => -1,
                'orderby'        => 'title',
                'order'          => 'ASC'
            ));
            
            if($all_skills) {
                $grouped_skills = array();
                
                foreach($all_skills as $skill) {
                    $cat = get_post_meta($skill->ID, '_skill_category', true);
                    if(empty($cat)) { $cat = 'Uncategorized'; }
                    $grouped_skills[$cat][] = $skill;
                }

                $cat_order = array('Frontend', 'Backend', 'Database', 'UI/UX', 'DevOps', 'Tools', 'Uncategorized');

                foreach($cat_order as $category_name) {
                    if(isset($grouped_skills[$category_name])) {
                        echo '<div class="ldo-tech-category">' . esc_html($category_name) . '</div>';
                        
                        foreach($grouped_skills[$category_name] as $skill_post) {
                            $checked = in_array($skill_post->ID, $selected_tech) ? 'checked' : '';
                            ?>
                            <label class="ldo-tech-item">
                                <input type="checkbox" name="project_tech_stack_ids[]" value="<?php echo $skill_post->ID; ?>" <?php echo $checked; ?>> 
                                <?php echo esc_html($skill_post->post_title); ?>
                            </label>
                            <?php
                        }
                    }
                }
            } else {
                echo 'No Skills found. Please add items to the "Skills" menu first.';
            }
            ?>
        </div>
        <p class="description">Select the skills from your existing library that were used in this project.</p>
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

     if (isset($_POST['project_preview_image_url'])) // Save the new field
        update_post_meta($post_id, '_project_preview_image_url', esc_url_raw($_POST['project_preview_image_url']));
    else
        delete_post_meta($post_id, '_project_preview_image_url');

    // Save Tech Stack (Array)
    if (isset($_POST['project_tech_stack_ids'])) {
        // Sanitize array of IDs
        $tech_ids = array_map('intval', $_POST['project_tech_stack_ids']);
        update_post_meta($post_id, '_project_tech_stack_ids', $tech_ids);
    } else {
        delete_post_meta($post_id, '_project_tech_stack_ids');
    }
}
add_action('save_post', 'lightdarkorangypro_save_project_meta');


/**
 * SKILLS META BOXES WITH CATEGORY
 */

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

    
    $mastery_percent = get_post_meta($post->ID, '_skill_mastery_percent', true);
    $mastery_label = get_post_meta($post->ID, '_skill_mastery_label', true);
    $skill_category = get_post_meta($post->ID, '_skill_category', true);
    $skill_icon_url = get_post_meta($post->ID, '_skill_icon_url', true);
    ?>
    
    <div class="ldo-meta-row">
        <label><strong>Skill Category</strong></label>
        <select name="skill_category" style="width:100%; padding:8px;">
            <option value="">-- Select Category --</option>
            <option value="Frontend" <?php selected($skill_category, 'Frontend'); ?>>Frontend</option>
            <option value="Backend" <?php selected($skill_category, 'Backend'); ?>>Backend</option>
            <option value="Database" <?php selected($skill_category, 'Database'); ?>>Database</option>
            <option value="UI/UX" <?php selected($skill_category, 'UI/UX'); ?>>UI/UX</option>
            <option value="DevOps" <?php selected($skill_category, 'DevOps'); ?>>DevOps</option>
            <option value="Tools" <?php selected($skill_category, 'Tools'); ?>>Tools</option>
        </select>
        <p class="description">Choose which category this skill belongs to.</p>
    </div>

    <div class="ldo-meta-row">
        <label for="skill_icon_url">Skill Icon URL</label>
        <input type="url" id="skill_icon_url" name="skill_icon_url" value="<?php echo esc_attr($skill_icon_url); ?>" style="width:100%; padding:8px;">
        <p class="description">Enter the URL for the skill icon (e.g., from your media library or a CDN). If left blank, the post's featured image will be used as a fallback, or a default icon if neither is available.</p>
    </div>
    

    <div class="ldo-meta-row">
        <label>Mastery Percentage (0-100)</label>
        <input type="number" name="skill_mastery_percent" value="<?php echo esc_attr($mastery_percent); ?>" min="0" max="100" style="width:100%; padding:8px;">
    </div>
    <?php
}

function lightdarkorangypro_save_skill_meta($post_id) {
    if (!isset($_POST['skill_meta_nonce']) || !wp_verify_nonce($_POST['skill_meta_nonce'], 'save_skill_meta')) return;
    if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) return;
    if (!current_user_can('edit_post', $post_id)) return;

    // Save Category
    if (isset($_POST['skill_category'])) 
        update_post_meta($post_id, '_skill_category', sanitize_text_field($_POST['skill_category']));

    if (isset($_POST['skill_mastery_label'])) 
        update_post_meta($post_id, '_skill_mastery_label', sanitize_text_field($_POST['skill_mastery_label']));

    if (isset($_POST['skill_icon_url'])) 
        update_post_meta($post_id, '_skill_icon_url', esc_url_raw($_POST['skill_icon_url']));
    else
        delete_post_meta($post_id, '_skill_icon_url');

    if (isset($_POST['skill_mastery_percent'])) 
        update_post_meta($post_id, '_skill_mastery_percent', intval($_POST['skill_mastery_percent']));
    else
        delete_post_meta($post_id, '_skill_mastery_percent');


}
add_action('save_post', 'lightdarkorangypro_save_skill_meta');