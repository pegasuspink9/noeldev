<?php
/**
 * The template for displaying Achievement archives
 */

get_header(); ?>

<main id="primary" class="site-main archive-page bg-animated">
    <!-- Floating Background Shapes -->
    <div class="blob blob-1"></div>
    <div class="blob blob-2"></div>
    <div class="blob blob-3"></div>
    <div class="blob blob-4"></div>
    <div class="blob blob-5"></div>
    <div class="blob blob-6"></div>

     <section id="achievements" class="section active-layer" style="min-height: 100vh; background: transparent; padding-top: 120px; position: relative; z-index: 1;">
        <div class="container">
            <h1 class="section-title-achievements visible">All Achievements</h1>
            
            <div class="achievements-grid">
                <?php if (have_posts()) : ?>
                    <?php while (have_posts()) : the_post(); 
                        $location = get_post_meta(get_the_ID(), '_achievement_location', true);
                        $description = get_post_meta(get_the_ID(), '_achievement_description', true);
                        $image_url = get_post_meta(get_the_ID(), '_achievement_image_url', true);
                        
                        // Fallback to featured image if custom URL is empty
                        if (!$image_url && has_post_thumbnail()) {
                            $image_url = get_the_post_thumbnail_url(get_the_ID(), 'large');
                        }
                    ?>
                        <div class="achievement-card">
                            <?php if ($image_url) : ?>
                                <div class="achievement-image-wrapper">
                                    <img src="<?php echo esc_url($image_url); ?>" alt="<?php the_title_attribute(); ?>" class="achievement-img" loading="lazy">
                                </div>
                            <?php endif; ?>
                            
                            <div class="achievement-content">
                                <h3 class="achievement-title"><?php the_title(); ?></h3>
                                <?php if ($location) : ?>
                                    <p class="achievement-location"><?php echo esc_html($location); ?></p>
                                <?php endif; ?>
                                <div class="achievement-desc">
                                    <?php echo wpautop(esc_html($description)); ?>
                                </div>
                            </div>
                        </div>
                    <?php endwhile; ?>
                <?php else : ?>
                    <p style="color: white; text-align: center; grid-column: 1/-1;">No achievements found.</p>
                <?php endif; ?>
            </div>

            <!-- Optional: Add pagination if you have many achievements -->
              <div class="archive-pagination">
                <?php 
                echo paginate_links(array(
                    'prev_text' => '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M15 18L9 12L15 6"/></svg>',
                    'next_text' => '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M9 18L15 12L9 6"/></svg>',
                )); 
                ?>
            </div>
        </div>
    </section>
</main>

<?php get_footer(); ?>