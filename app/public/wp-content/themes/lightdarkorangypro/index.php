
<div class="hero-background-overlay"></div>  <!-- Standalone background overlay -->

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

        <section id="skills" class="section"> <!-- Removed 'section-light' from here -->
        <div class="container">
        
        <h1 class="section-title-skills">My Skills & Tools</h1>

        <div class="skills-wrapper section-light">
            <div class="grid grid-4">
                
                <?php
                $skills_query = new WP_Query(array(
                    'post_type'      => 'skill',
                    'posts_per_page' => -1,
                    'order'          => 'ASC',
                    'orderby'        => 'date'
                ));

                if ($skills_query->have_posts()) :
                    while ($skills_query->have_posts()) : $skills_query->the_post();
                        
                        // Get Meta Data
                        $skill_list = get_post_meta(get_the_ID(), '_skill_list', true);
                        $percent = get_post_meta(get_the_ID(), '_skill_mastery_percent', true);
                        $label = get_post_meta(get_the_ID(), '_skill_mastery_label', true);
                        
                        // Get Icon URL
                        $icon_url = get_the_post_thumbnail_url(get_the_ID(), 'full');
                        if(!$icon_url) {
                            $icon_url = get_template_directory_uri() . '/images/placeholder.png';
                        }
                        ?>

                        <div class="skill-card-scene">
                            <div class="skill-card">
                                <div class="skill-card-face skill-card-front">
                                    <h3 class="skill-title"><?php the_title(); ?></h3>
                                    <div class="card-separator"></div>
                                    
                                    <img src="<?php echo esc_url($icon_url); ?>" class="skill-icon" alt="<?php the_title(); ?> Icon">
                                    
                                    <p><?php echo esc_html($skill_list); ?></p>
                                </div>

                                <div class="skill-card-face skill-card-back">
                                    <h3 class="skill-title">Mastery</h3>
                                    <div class="mastery-percent"><?php echo esc_html($percent); ?>%</div>
                                    <p><?php echo esc_html($label); ?></p>
                                </div>
                            </div>
                        </div>

                    <?php endwhile;
                    wp_reset_postdata();
                else : ?>
                    <p style="text-align:center; width:100%;">No skills added yet.</p>
                <?php endif; ?>

                    </div> 
                </div> <!-- End .skills-wrapper -->
            </div> 
        </section>

            <section id="projects" class="section">
                <div class="container">
                    <h2 class="section-title">Projects</h2>
                    
                    <div class="grid grid-3">
                        <div class="project-card">
                            <h3 class="project-title">Project 1</h3>
                            <p>Description of your first project goes here.</p>
                        </div>
                         <div class="project-card">
                            <h3 class="project-title">Project 2</h3>
                            <p>Description of your second project goes here.</p>
                        </div>
                        
                        <div class="project-card">
                            <h3 class="project-title">Project 3</h3>
                            <p>Description of your third project goes here.</p>
                        </div>
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