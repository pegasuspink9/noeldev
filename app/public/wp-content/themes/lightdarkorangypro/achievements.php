<section id="achievements" class="section section-light">
    <div class="container">
        <h2 class="section-title-achievements">Achievements</h2>
        
        <div class="achievements-grid">
            <?php
            $achievements_query = new WP_Query(array(
                'post_type' => 'achievement',
                'posts_per_page' => 3,
                'orderby' => 'date',
                'order' => 'DESC'
            ));

            if ($achievements_query->have_posts()) :
                  while ($achievements_query->have_posts()) : $achievements_query->the_post();
                    $location = get_post_meta(get_the_ID(), '_achievement_location', true);
                    $description = get_post_meta(get_the_ID(), '_achievement_description', true);
                    $custom_image_url = get_post_meta(get_the_ID(), '_achievement_image_url', true);
                    
                    $image_url = $custom_image_url ? $custom_image_url : get_the_post_thumbnail_url(get_the_ID(), 'large');
                    
                    
            ?>
            <!-- Dynamic Achievement Card -->
            <div class="achievement-card">
                <div class="achievement-image-wrapper">
                    <img src="<?php echo esc_url($image_url); ?>" alt="<?php the_title_attribute(); ?>" class="achievement-img" loading="lazy">
                </div>
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
            <?php
                endwhile;
                wp_reset_postdata();
            else :
            ?>
                <p style="color: white; text-align: center; grid-column: 1/-1;">No achievements found. Please add some in the WordPress admin.</p>
            <?php endif; ?>
        </div>

        <div style="text-align: center; margin-top: 40px;">
            <a href="<?php echo get_post_type_archive_link('achievement'); ?>" class="view-all-btn-achievements">
                View All Achievements
            </a>
        </div>
    </div>
</section>