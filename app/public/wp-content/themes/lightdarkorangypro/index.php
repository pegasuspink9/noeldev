<div class="hero-background-overlay"></div>  

<?php get_header(); ?>

<div class="site-container">
    <?php get_sidebar();?>

    <div class="main-content-wrapper">
         <main class="stack-layout">
            
            <!-- Layer 1: Hero (Base Layer) -->
            <div class="layer-card" id="layer-hero">
                <div class="layer-content">
                    <?php get_template_part('hero'); ?>
                </div>
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