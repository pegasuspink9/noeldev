
<div class="hero-background-overlay"></div>  

<?php get_header(); ?>

<div class="site-container">
    <?php get_sidebar();?>

    <div class="main-content-wrapper">
        <main>
            <section class="hero" id="hero1">
                <h1 class="hero-title">Welcome to my portfolio</h1>
                <p class="hero-subtitle">Get to know me well!</p>

                <a href="#contact" class="hero-cta" aria-label="Hire me now">Hire Me Now</a>
            </section>

            <section class="hero-right" id="hero2">
                <div class="hero-right-inner">
                    <div class="hero-right-content">
                        <p class="hero-title-right">Hi! I'm Noel Avila</p>
                        <p class="hero-name-right">Aspiring Full-stack Developer</p>
                        <p class="hero-description">
                            <span id="typewriter-text"></span><span class="cursor">|</span>
                        </p>
                    </div>
                    <div class="hero-right-figure">
                        <img 
                            src="<?php echo get_template_directory_uri(); ?>/images/placeholder.png" 
                            class="hero-right-image"
                            alt="Noel Avila portrait placeholder"
                            loading="lazy"
                        />
                    </div>
                </div>
            </section>

        <?php get_template_part('./skills'); ?>

        <section id="projects" class="section">
        <div class="container">
        <h2 class="section-title-projects">Projects</h2>
        
        <div class="grid grid-3">
            <?php
            // Define an array of gradient color pairs for variety (add more as needed)
            $gradient_colors = array(
                array('rgba(255, 99, 133, 0.77)', 'rgba(255, 255, 255, 0.37)'), // Red-pink
                array('rgba(54, 162, 235, 0.77)', 'rgba(255, 255, 255, 0.37)'), // Blue
                array('rgba(255, 205, 86, 0.77)', 'rgba(255, 255, 255, 0.37)'),  // Yellow
                array('rgba(75, 192, 192, 0.77)', 'rgba(255, 255, 255, 0.37)'), // Teal
                array('rgba(153, 102, 255, 0.77)', 'rgba(255, 255, 255, 0.37)'), // Purple
                array('rgba(255, 159, 64, 0.77)', 'rgba(255, 255, 255, 0.37)'),  // Orange
                array('rgba(201, 203, 207, 0.77)', 'rgba(255, 255, 255, 0.37)'), // Gray
            );
            
            // 1. Query the 'project' Post Type
            $args = array(
                'post_type'      => 'project',
                'posts_per_page' => -1,
                'orderby'        => 'date',
                'order'          => 'DESC'
            );
            
            $projects_query = new WP_Query($args);
            
            // 2. Start the Loop
            if ($projects_query->have_posts()) :
                while ($projects_query->have_posts()) : $projects_query->the_post();
                    
                    // Get Tech Stack for the card content
                    $tech_ids = get_post_meta(get_the_ID(), '_project_tech_stack_ids', true);
                    $custom_preview_url = get_post_meta(get_the_ID(), '_project_preview_image_url', true);

                    if (!empty($custom_preview_url)) {
                        $display_image_url = $custom_preview_url;
                    } elseif (has_post_thumbnail()) {
                        $display_image_url = get_the_post_thumbnail_url(get_the_ID(), 'large');
                    } else {
                        $display_image_url = get_template_directory_uri() . '/images/placeholder.png';
                    }
                    ?>

                    <!-- New wrapper for positioning -->
                    <div class="project-wrapper">
                        <div class="project-card">
                            <div class="project-header">
                                <h3 class="project-title"><?php the_title(); ?></h3>
                                <?php
                                $full_content = get_the_content();
                                $stripped_content = wp_strip_all_tags($full_content);
                                $trimmed_content = wp_trim_words($stripped_content, 20, '...');
                                ?>
                                <p class="project-card-description"><?php echo esc_html($trimmed_content); ?></p>
                                <div class="project-separator"></div>
                            </div>
                            
                            <div class="project-preview">
                                <img src="<?php echo esc_url($display_image_url); ?>"
                                    alt="<?php the_title_attribute(); ?>"
                                    loading="lazy"
                                />
                            </div>
                            
                            <div class="project-content">
                                <?php 
                                if(is_array($tech_ids) && !empty($tech_ids)) {
                                    $count = 0;
                                    foreach($tech_ids as $tid) {
                                        if($count >= 4) break; // Limit to 4 tags on card
                                        $t_post = get_post($tid);
                                        if($t_post) {
                                            // Pick a random gradient
                                            $current_colors = $gradient_colors[array_rand($gradient_colors)];
                                            $bg_gradient = 'linear-gradient(135deg, ' . $current_colors[0] . ', ' . $current_colors[1] . ')';
                                            echo '<span class="tech-tag" style="background: ' . $bg_gradient . ';">' . esc_html($t_post->post_title) . '</span>';
                                        }
                                        $count++;
                                    }
                                }
                                ?>
                            </div>
                        </div>

                        <!-- Moved outside the card -->
                        <a href="<?php the_permalink(); ?>" class="project-btn" aria-label="View Project">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </a>
                    </div>

                <?php endwhile; 
                wp_reset_postdata(); // Reset query
            else : ?>
                <p style="color:white;">No projects found. Please add them in the Dashboard.</p>
            <?php endif; ?>
        </div>

    </div>
</section>

            <section id="services" class="section section-light">
                <div class="container">
                    <h2 class="section-title">Services</h2>
                    
                    <div class="grid grid-2">
                        <div class="service-card">
                            <h3 class="service-title">Web Design</h3>
                            <p>Creating beautiful and functional websites.</p>
                        </div>
                        
                        <div class="service-card">
                            <h3 class="service-title">Development</h3>
                            <p>Building custom web applications.</p>
                        </div>
                        
                        <div class="service-card">
                            <h3 class="service-title">Consulting</h3>
                            <p>Providing expert advice and guidance.</p>
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </div>

    <?php get_template_part( 'burger-sidebar' ); ?>
</div>

<?php get_footer(); ?>