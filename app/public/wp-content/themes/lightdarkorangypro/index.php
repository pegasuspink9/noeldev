<div class="hero-background-overlay"></div>  

<?php get_header(); ?>

<div class="site-container">
    <?php get_sidebar();?>

    <div class="main-content-wrapper">
        <main class="stack-layout">
            
            <!-- Layer 1: Hero (Base Layer) -->
            <div class="layer-card" id="layer-hero">
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
            </div>

            <!-- Layer 2: Skills (Covers Hero) -->
            <div class="layer-card" id="layer-skills">
                <div class="layer-content">
                    <?php get_template_part('./skills'); ?>
                </div>
            </div>

            <!-- Layer 3: Projects (Covers Skills) -->
            <div class="layer-card" id="layer-projects">
                <div class="layer-content">
                    <?php get_template_part('./projects'); ?>
                </div>
            </div>

            <!-- Layer 4: Services (Covers Projects) -->
            <div class="layer-card" id="layer-achievements">
                <div class="layer-content">
                    <?php get_template_part('./achievements'); ?>
                </div>
            </div>
            
        </main>
    </div>

    <?php get_template_part( 'burger-sidebar' ); ?>
</div>

<?php get_footer(); ?>