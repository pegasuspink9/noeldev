<?php
/**
 * Skills Section Template
 * 
 * @package LightDarkOrangyPro
 */

// Define categories
$skill_categories = get_terms(array(
    'taxonomy' => 'skill_category',
    'hide_empty' => false, 
));

$categories = array();
if (!empty($skill_categories)) {
    foreach ($skill_categories as $cat) {
        $categories[$cat->name] = array(); 
    }
}

// Add a default if no categories exist
if (empty($categories)) {
    $categories['Uncategorized'] = array();
}

$skills_query = new WP_Query(array(
    'post_type'      => 'skill',
    'posts_per_page' => -1,
    'order'          => 'ASC',
    'orderby'        => 'date'
));


if ($skills_query->have_posts()) :
    while ($skills_query->have_posts()) : $skills_query->the_post();
        // Get category from taxonomy
        $skill_terms = get_the_terms(get_the_ID(), 'skill_category');
        $skill_category = (!empty($skill_terms) && !is_wp_error($skill_terms)) ? $skill_terms[0]->name : 'Others';
        
        if (!isset($categories[$skill_category])) {
            $categories[$skill_category] = array(); // Fallback
        }

        $percent = get_post_meta(get_the_ID(), '_skill_mastery_percent', true);
        
        if ($percent >= 76) {
            $label = 'Expert';
        } elseif ($percent >= 51) {
            $label = 'Advanced';
        } elseif ($percent >= 26) {
            $label = 'Intermediate';
        } else {
            $label = 'Beginner';
        }
        
        $custom_icon_url = get_post_meta(get_the_ID(), '_skill_icon_url', true);
        $icon = $custom_icon_url ?: get_the_post_thumbnail_url(get_the_ID(), 'full') ?: get_template_directory_uri() . '/images/html-logo.png';
        
        $categories[$skill_category][] = array(
            'title' => get_the_title(),
            'percent' => $percent,
            'label' => $label,
            'icon' => $icon
        );
    endwhile;
    wp_reset_postdata();
endif;
?>

<section id="skills" class="section">
    <div class="container">
        <h1 class="section-title-skills">My Skills & Tools</h1>

        <div class="skills-wrapper section-light">
            <?php
            // Display categories
            foreach ($categories as $category_name => $skills) :
                if (empty($skills)) continue; // Skip empty categories
                ?>
                <div class="skill-category-container" data-category="<?php echo esc_attr(strtolower($category_name)); ?>">
                    <div class="category-header">
                        <h2 class="category-title"><?php echo esc_html($category_name); ?></h2>
                        <span class="category-count"><?php echo count($skills); ?> skills</span>
                    </div>
                    
                    <div class="category-cards-wrapper">
                        <?php foreach ($skills as $skill) : ?>
                            <div class="skill-card-scene">
                                <div class="skill-card">
                                    <div class="skill-card-face skill-card-front">
                                        <h3 class="skill-title"><?php echo esc_html($skill['title']); ?></h3>
                                        <div class="card-separator"></div>
                                        <img src="<?php echo esc_url($skill['icon']); ?>" class="skill-icon" alt="<?php echo esc_attr($skill['title']); ?>">
                                    </div>
                                    <div class="skill-card-face skill-card-back">
                                        <h3 class="skill-title">Mastery</h3>
                                        <div class="mastery-percent"><?php echo esc_html($skill['percent']); ?>%</div>
                                         <p class="mastery-label"><?php echo esc_html($skill['label']); ?></p>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</section>