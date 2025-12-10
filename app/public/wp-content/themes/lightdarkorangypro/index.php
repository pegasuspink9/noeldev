
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

        <section id="skills" class="section">
        <div class="container">
        <h1 class="section-title-skills">My Skills & Tools</h1>

        <div class="skills-wrapper section-light">
            <?php
            // Define categories
            $categories = array(
                'Frontend' => array(),
                'Backend' => array(),
                'Database' => array(),
                'UI/UX' => array(),
                'DevOps' => array(),
                'Tools' => array()
            );

            // Query all skills
            $skills_query = new WP_Query(array(
                'post_type'      => 'skill',
                'posts_per_page' => -1,
                'order'          => 'ASC',
                'orderby'        => 'date'
            ));

            // Organize skills by category
            if ($skills_query->have_posts()) :
                while ($skills_query->have_posts()) : $skills_query->the_post();
                    $skill_category = get_post_meta(get_the_ID(), '_skill_category', true);
                    
                    if (!$skill_category || !isset($categories[$skill_category])) {
                        $skill_category = 'Tools'; // Default category
                    }
                    
                    $categories[$skill_category][] = array(
                        'title' => get_the_title(),
                        'list' => get_post_meta(get_the_ID(), '_skill_list', true),
                        'percent' => get_post_meta(get_the_ID(), '_skill_mastery_percent', true),
                        'label' => get_post_meta(get_the_ID(), '_skill_mastery_label', true),
                        'icon' => get_the_post_thumbnail_url(get_the_ID(), 'full') ?: get_template_directory_uri() . '/images/placeholder.png'
                    );
                endwhile;
                wp_reset_postdata();
            endif;

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
                                        <p><?php echo esc_html($skill['list']); ?></p>
                                    </div>
                                    <div class="skill-card-face skill-card-back">
                                        <h3 class="skill-title">Mastery</h3>
                                        <div class="mastery-percent"><?php echo esc_html($skill['percent']); ?>%</div>
                                        <p><?php echo esc_html($skill['label']); ?></p>
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