<?php
/**
 * Projects Section Template
 * 
 * @package LightDarkOrangyPro
 */

if (!defined('ABSPATH')) {
    exit;
}
?>

<section id="projects" class="section">
    <div class="container">
        <h2 class="section-title-projects">Projects</h2>
        
        <!-- Carousel Wrapper -->
        <div class="projects-carousel-wrapper">
            <!-- Previous Arrow -->
            <button class="carousel-arrow carousel-arrow-prev" aria-label="Previous Projects">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M15 18L9 12L15 6" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
            </button>
            
            <!-- Viewport -->
            <div class="projects-viewport">
                <!-- REMOVED 'grid grid-3' classes to fix layout issues -->
                <div class="projects-track">
                    <?php
                    $gradient_colors = array(
                        array('rgba(255, 99, 133, 0.77)', 'rgba(255, 255, 255, 0.37)'),
                        array('rgba(54, 162, 235, 0.77)', 'rgba(255, 255, 255, 0.37)'),
                        array('rgba(255, 205, 86, 0.77)', 'rgba(255, 255, 255, 0.37)'),
                        array('rgba(75, 192, 192, 0.77)', 'rgba(255, 255, 255, 0.37)'),
                        array('rgba(153, 102, 255, 0.77)', 'rgba(255, 255, 255, 0.37)'),
                        array('rgba(255, 159, 64, 0.77)', 'rgba(255, 255, 255, 0.37)'),
                        array('rgba(0, 79, 236, 0.77)', 'rgba(255, 255, 255, 0.37)'),
                    );
                    
                    $args = array(
                        'post_type'      => 'project',
                        'posts_per_page' => -1,
                        'orderby'        => 'date',
                        'order'          => 'DESC'
                    );
                    
                    $projects_query = new WP_Query($args);
                    
                    if ($projects_query->have_posts()) :
                        while ($projects_query->have_posts()) : $projects_query->the_post();
                            
                            $tech_ids = get_post_meta(get_the_ID(), '_project_tech_stack_ids', true);
                            $custom_preview_url = get_post_meta(get_the_ID(), '_project_preview_image_url', true);

                            $terms = get_the_terms(get_the_ID(), 'project_type');
                            $project_cat = (!empty($terms) && !is_wp_error($terms)) ? $terms[0]->name : '';

                            $terms = get_the_terms(get_the_ID(), 'project_type');
                            $project_cat = (!empty($terms) && !is_wp_error($terms)) ? $terms[0]->name : '';
 
                             if (!empty($custom_preview_url)) {
                                $display_image_url = $custom_preview_url;
                            } elseif (has_post_thumbnail()) {
                                $display_image_url = get_the_post_thumbnail_url(get_the_ID(), size: 'large');
                            } else {
                            $display_image_url = ''; 
                            }
                            
                            $tech_skills = array();


                            if (is_array($tech_ids) && !empty($tech_ids)) {
                                foreach ($tech_ids as $tid) {
                                    $t_post = get_post($tid);
                                    if ($t_post) {
                                        $tech_skills[] = $t_post->post_title;
                                    }
                                }
                            }
                            ?>

                        <div class="project-wrapper">
                            <div class="project-card">
                                <div class="project-header">
                                    <?php if ($project_cat) : 
                                        $cat_colors = $gradient_colors[array_rand($gradient_colors)];
                                        $cat_bg = 'linear-gradient(135deg, ' . $cat_colors[0] . ', ' . $cat_colors[1] . ')';
                                    ?>
                                        <span class="project-category-tag" style="background: <?php echo $cat_bg; ?>;"><?php echo esc_html($project_cat); ?></span>
                                    <?php endif; ?>
                                    <h3 class="project-title"><?php the_title(); ?></h3>
                                    <?php
                                    $full_content = get_the_content();
                                    $stripped_content = wp_strip_all_tags($full_content);
                                    $trimmed_content = wp_trim_words($stripped_content, 7, '...');
                                    ?>
                                    <p class="project-card-description"><?php echo esc_html($trimmed_content); ?></p>
                                    <div class="project-separator"></div>
                                </div>
                            </div>
                            
                            <div class="image-preview-outerstyle">
                                <div class="project-preview">
                                    <img src="<?php echo esc_url($display_image_url); ?>"
                                        alt="<?php the_title_attribute(); ?>"
                                        loading="lazy"
                                    />
                                </div>
                                
                                <div class="project-content">
                                    <?php 
                                    if (!empty($tech_skills)) {
                                        $count = 0;
                                        foreach ($tech_skills as $skill_name) {
                                            if ($count >= 4) break;
                                            $current_colors = $gradient_colors[array_rand($gradient_colors)];
                                            $bg_gradient = 'linear-gradient(135deg, ' . $current_colors[0] . ', ' . $current_colors[1] . ')';
                                            echo '<span class="tech-tag" style="background: ' . $bg_gradient . ';">' . esc_html($skill_name) . '</span>';
                                            $count++;
                                        }
                                    }
                                    ?>
                                </div>
                            </div>
                            
                            <div class="project-card-shadow"></div>
                            
                            <a href="<?php the_permalink(); ?>" class="project-btn" aria-label="View Project">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                            </a>
                        </div>

                        <?php endwhile; 
                        wp_reset_postdata();
                    else : ?>
                        <p style="color:white;">No projects found. Please add them in the Dashboard.</p>
                    <?php endif; ?>
                </div>
            </div>
            
            <!-- Next Arrow -->
            <button class="carousel-arrow carousel-arrow-next" aria-label="Next Projects">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M9 18L15 12L9 6" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
            </button>
        </div>

        <div class="view-all-projects-container">
            <a href="<?php echo get_post_type_archive_link('project'); ?>" class="view-all-btn">
                <span>View All Projects</span>
                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <line x1="5" y1="12" x2="19" y2="12"></line>
                    <polyline points="12 5 19 12 12 19"></polyline>
                </svg>
            </a>
        </div>
    </div>
</section>