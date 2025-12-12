<?php
/**
 * Template Name: Single Project
 * Template Post Type: project
 */

get_header(); ?>

<div class="site-container">
    <?php get_sidebar(); ?>

    <div class="main-content-wrapper">
        <main class="single-project-main">
            
            <?php while ( have_posts() ) : the_post(); 
                $client = get_post_meta(get_the_ID(), '_project_client_name', true);
                $url = get_post_meta(get_the_ID(), '_project_url', true);
                $date = get_post_meta(get_the_ID(), '_project_completion_date', true);
                $role = get_post_meta(get_the_ID(), '_project_role', true);
                
                $tech_ids = get_post_meta(get_the_ID(), '_project_tech_stack_ids', true); 
                
                $gallery_string = get_post_meta(get_the_ID(), '_project_gallery', true);
                
                // Get the preview image URL for hero background
                $preview_image_url = get_post_meta(get_the_ID(), '_project_preview_image_url', true);
                $hero_style = '';
                if (!empty($preview_image_url)) {
                    $hero_style = ' style="background-image: url(' . esc_url($preview_image_url) . ');"';
                }
            ?>

            <!-- Hero: Title Only -->
            <div class="project-hero glass-panel"<?php echo $hero_style; ?>>
                <div class="project-hero-inner">
                    <h1 class="single-title"><?php the_title(); ?></h1>
                </div>
            </div>

            <?php if(has_post_thumbnail()): ?>
            <div class="project-banner glass-panel">
                <?php the_post_thumbnail('full', ['class' => 'featured-img']); ?>
            </div>
            <?php endif; ?>

            <div class="project-body-grid">
                
                <!-- Main Content Column -->
                <div class="project-main-content glass-panel compressed-content">
                    <h3 class="section-heading">Project Overview</h3>
                    
                    <div class="the-content">
                        <?php the_content(); ?>
                    </div>

                    <!-- MOVED: Meta Boxes (Client, Role, etc) are now here -->
                    <div class="project-meta-grid">
                        <div class="meta-box">
                            <span class="meta-label">Client</span>
                            <span class="meta-value"><?php echo $client ? esc_html($client) : 'Personal Project'; ?></span>
                        </div>
                        <div class="meta-box">
                            <span class="meta-label">Role</span>
                            <span class="meta-value"><?php echo $role ? esc_html($role) : 'Full Stack Dev'; ?></span>
                        </div>
                        <div class="meta-box">
                                <span class="meta-label">Date</span>
                                <span class="meta-value">
                                    <?php 
                                    if ($date) {
                                        echo esc_html(date('F j, Y', strtotime($date)));
                                    } else {
                                        echo 'Ongoing';
                                    }
                                    ?>
                                </span>
                            </div>

                        <div class="meta-box">
                            <span class="meta-label">Live Link</span>
                            <?php if($url): ?>
                                <a href="<?php echo esc_url($url); ?>" target="_blank" class="meta-link">Visit Site </a>
                            <?php else: ?>
                                <span class="meta-value">Offline</span>
                            <?php endif; ?>
                        </div>
                    </div>

                    <?php if($gallery_string): 
                        $gallery_images = explode(',', $gallery_string);
                    ?>
                    <div class="project-gallery">
                        <h3 class="section-heading">Gallery</h3>
                        <div class="gallery-grid">
                            <?php foreach($gallery_images as $img_url): 
                                $img_url = trim($img_url);
                                if(!empty($img_url)): ?>
                                <div class="gallery-item">
                                    <img src="<?php echo esc_url($img_url); ?>" alt="Project Screenshot" loading="lazy">
                                </div>
                            <?php endif; endforeach; ?>
                        </div>
                    </div>
                    <?php endif; ?>
                </div>

                <!-- Sidebar Column -->
                <div class="project-sidebar glass-panel">
                    <h3 class="section-heading">Tech Stack</h3>
                    <div class="single-tech-container-wrapper">
                        <?php 
                            if(is_array($tech_ids) && !empty($tech_ids)) {
                            $grouped_skills = array();
                            foreach($tech_ids as $tid) {
                                $skill_post = get_post($tid);
                                if($skill_post) {
                                    $terms = get_the_terms($tid, 'skill_category');
                                    $cat = (!empty($terms) && !is_wp_error($terms)) ? strtolower($terms[0]->name) : 'uncategorized';
                                    $grouped_skills[$cat][] = $skill_post;
                                }
                            }
                            
                            // Preferred order for known categories (lowercase for matching)
                            $preferred_order = array('frontend', 'backend', 'database', 'ui/ux', 'devops', 'tools', 'uncategorized');
                            
                            // Build display list: prioritize preferred order, then add any extras
                            $display_cats = array();
                            foreach($preferred_order as $cat) {
                                if(isset($grouped_skills[$cat])) {
                                    $display_cats[$cat] = $grouped_skills[$cat];
                                }
                            }
                            // Add any categories not in preferred order
                            foreach($grouped_skills as $cat => $skills) {
                                if(!isset($display_cats[$cat])) {
                                    $display_cats[$cat] = $skills;
                                }
                            }
                            
                            // Define gradient colors (unchanged)
                            $gradient_colors = array(
                                array('rgba(255, 99, 133, 0.77)', 'rgba(255, 255, 255, 0.37)'), // Red-pink
                                array('rgba(54, 162, 235, 0.77)', 'rgba(255, 255, 255, 0.37)'), // Blue
                                array('rgba(255, 205, 86, 0.77)', 'rgba(255, 255, 255, 0.37)'),  // Yellow
                                array('rgba(75, 192, 192, 0.77)', 'rgba(255, 255, 255, 0.37)'), // Teal
                                array('rgba(153, 102, 255, 0.77)', 'rgba(255, 255, 255, 0.37)'), // Purple
                                array('rgba(255, 159, 64, 0.77)', 'rgba(255, 255, 255, 0.37)'),  // Orange
                                array('rgba(201, 203, 207, 0.77)', 'rgba(255, 255, 255, 0.37)'), // Gray
                            );
                            
                            $color_index = 0;
                            
                            // Display all categories dynamically
                            foreach($display_cats as $cat_name => $skills) {
                                echo '<div class="tech-category-group">';
                                echo '<h4 class="tech-cat-title">' . esc_html(ucfirst($cat_name)) . '</h4>';
                                echo '<div class="single-tech-container">';
                                foreach($skills as $skill) {
                                    $current_colors = $gradient_colors[$color_index % count($gradient_colors)];
                                    $bg_gradient = 'linear-gradient(135deg, ' . $current_colors[0] . ', ' . $current_colors[1] . ')';
                                    
                                    echo '<span class="single-tech-tag" style="background: ' . $bg_gradient . ';" data-color-index="' . ($color_index % count($gradient_colors)) . '">' . esc_html($skill->post_title) . '</span>';
                                    
                                    $color_index++;
                                }
                                echo '</div></div>';
                            }
                        } else {
                            echo '<p>No tech stack defined.</p>';
                        }
                            ?>
                    </div>
                </div>

            </div>

            <div class="project-navigation">
                <a href="<?php echo home_url('/#projects'); ?>" class="nav-btn glass-btn">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M19 12H5M12 19l-7-7 7-7"/></svg>
                    Back to Projects
                </a>
            </div>

            <?php endwhile; ?>
        </main>
    </div>
    
    <?php get_template_part( 'burger-sidebar' ); ?>
</div>

<?php get_footer(); ?>