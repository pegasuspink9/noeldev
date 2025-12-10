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
                // 1. Retrieve Custom Fields
                $client = get_post_meta(get_the_ID(), '_project_client_name', true);
                $url = get_post_meta(get_the_ID(), '_project_url', true);
                $date = get_post_meta(get_the_ID(), '_project_completion_date', true);
                $role = get_post_meta(get_the_ID(), '_project_role', true);
                
                // Tech Stack is an array of IDs
                $tech_ids = get_post_meta(get_the_ID(), '_project_tech_stack_ids', true); 
                
                // Gallery is a string of URLs separated by commas
                $gallery_string = get_post_meta(get_the_ID(), '_project_gallery', true);
            ?>

            <!-- Hero / Title Section -->
            <div class="project-hero glass-panel">
                <div class="project-hero-inner">
                    <h1 class="single-title"><?php the_title(); ?></h1>
                    
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
                            <span class="meta-value"><?php echo $date ? esc_html($date) : 'Ongoing'; ?></span>
                        </div>
                        <div class="meta-box">
                            <span class="meta-label">Live Link</span>
                            <?php if($url): ?>
                                <a href="<?php echo esc_url($url); ?>" target="_blank" class="meta-link">Visit Site <span class="arrow">↗</span></a>
                            <?php else: ?>
                                <span class="meta-value">Offline</span>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Featured Image -->
            <?php if(has_post_thumbnail()): ?>
            <div class="project-banner glass-panel">
                <?php the_post_thumbnail('full', ['class' => 'featured-img']); ?>
            </div>
            <?php endif; ?>

            <!-- Main Content Area -->
            <div class="project-body-grid">
                
                <!-- Left: Description & Gallery -->
                <div class="project-main-content glass-panel">
                    <h3 class="section-heading">Project Overview</h3>
                    <div class="the-content">
                        <?php the_content(); ?>
                    </div>

                    <!-- Gallery Section -->
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

                <div class="project-sidebar glass-panel">
                    <h3 class="section-heading">Tech Stack</h3>
                    <div class="single-tech-container-wrapper">
                        <?php 
                        if(is_array($tech_ids) && !empty($tech_ids)) {
                            
                            // 1. Group skills by category
                            $grouped_skills = array();
                            
                            foreach($tech_ids as $tid) {
                                $skill_post = get_post($tid);
                                if($skill_post) {
                                    // Get category, default to 'Other' if missing
                                    $cat = get_post_meta($tid, '_skill_category', true);
                                    if(empty($cat)) { $cat = 'Other'; }
                                    
                                    $grouped_skills[$cat][] = $skill_post;
                                }
                            }

                            // 2. Define Sort Order (Optional, ensures specific order)
                            $cat_order = array('Frontend', 'Backend', 'Database', 'UI/UX', 'DevOps', 'Tools', 'Other');

                            // 3. Display Groups
                            foreach($cat_order as $cat_name) {
                                if(isset($grouped_skills[$cat_name])) {
                                    echo '<div class="tech-category-group">';
                                    echo '<h4 class="tech-cat-title">' . esc_html($cat_name) . '</h4>';
                                    echo '<div class="single-tech-container">';
                                    
                                    foreach($grouped_skills[$cat_name] as $skill) {
                                        echo '<span class="single-tech-tag">' . esc_html($skill->post_title) . '</span>';
                                    }
                                    
                                    echo '</div>'; // End container
                                    echo '</div>'; // End group
                                }
                            }

                        } else {
                            echo '<p>No tech stack defined.</p>';
                        }
                        ?>
                    </div>
                </div>

            </div>

            <!-- Navigation -->
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