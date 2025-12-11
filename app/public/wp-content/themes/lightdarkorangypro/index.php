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

            <?php get_template_part('./projects'); ?>

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