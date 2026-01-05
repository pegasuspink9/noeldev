<?php

get_header(); ?>

<div class="site-container no-sidebar">
    <div class="main-content-wrapper full-width">
        <main class="single-project-main bg-animated">
            
            <!-- Floating Background Shapes -->
            <div class="blob blob-1"></div>
            <div class="blob blob-2"></div>
            <div class="blob blob-3"></div>
            <div class="blob blob-4"></div>
            <div class="blob blob-5"></div>
            <div class="blob blob-6"></div>


            <?php while ( have_posts() ) : the_post(); 
                $client = get_post_meta(get_the_ID(), '_project_client_name', true);
                $url = get_post_meta(get_the_ID(), '_project_url', true);
                $date = get_post_meta(get_the_ID(), '_project_completion_date', true);
                $role = get_post_meta(get_the_ID(), '_project_role', true);
                $tech_ids = get_post_meta(get_the_ID(), '_project_tech_stack_ids', true); 
                $gallery_string = get_post_meta(get_the_ID(), '_project_gallery', true);
                $preview_image_url = get_post_meta(get_the_ID(), '_project_preview_image_url', true);
                
                // Fetch Project Category (Taxonomy)
                $terms = get_the_terms(get_the_ID(), 'project_type');
                $project_cat = (!empty($terms) && !is_wp_error($terms)) ? $terms[0]->name : 'Uncategorized';
                
                // Determine main preview image
                $main_image = $preview_image_url ? $preview_image_url : get_the_post_thumbnail_url(get_the_ID(), 'full');
            ?>

            <div class="project-content-container">
                
                <!-- Header Section -->
                <header class="project-header-center">
                    <h1 class="single-title"><?php the_title(); ?></h1>
                    <p class="single-subtitle">Glassmorphism Showcase &bull; <?php echo date('Y'); ?></p>
                </header>

                <div class="project-layout-grid">
                    
                    <!-- Left Column: Main Preview & Description -->
                    <div class="col-main">
                        
                        <!-- Tilt Card: Main Preview -->
                        <!-- DELAY: 0.1s -->
                        <div class="tilt-card card-entry entry-left" style="--anim-delay: 0.1s;">
                            <div class="tilt-card-inner">
                                <div class="preview-image-wrapper">
                                    <?php if($main_image): ?>
                                        <img src="<?php echo esc_url($main_image); ?>" alt="<?php the_title_attribute(); ?>" class="main-preview-img">
                                    <?php endif; ?>
                                </div>
                                <div class="preview-overlay">
                                    <div>
                                        <h2 class="preview-title">Main Preview</h2>
                                        <?php if($url): ?>
                                            <a href="<?php echo esc_url($url); ?>" target="_blank" class="live-link">
                                                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg>
                                                Visit Live Site
                                            </a>
                                        <?php else: ?>
                                            <span class="live-link live-link-disabled">Offline / Private</span>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Glass Card: Description -->
                        <!-- DELAY: 0.3s -->
                        <div class="glass-card card-entry entry-left" style="--anim-delay: 0.3s;">
                            <h3 class="card-heading">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="7" width="20" height="14" rx="2" ry="2"></rect><path d="M16 21V5a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v16"></path></svg>
                                Project Overview
                            </h3>
                            <div class="the-content">
                                <?php the_content(); ?>
                            </div>
                            <div class="role-section">
                                <span class="role-label">Responsibilities / Role</span>
                                <span class="role-value"><?php echo $role ? esc_html($role) : 'Full Stack Development'; ?></span>
                            </div>
                        </div>

                    </div>

                    <!-- Right Column: Sidebar Details -->
                    <div class="col-sidebar">
                        
                        <div class="tilt-card card-entry entry-right" style="--anim-delay: 0.2s;">
                            <div class="glass-card project-details-card">
                                <h3 class="card-heading project-details-heading">Project Details</h3>
                                
                                <div class="detail-row">
                                    <div class="icon-box orange">
                                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20.59 13.41l-7.17 7.17a2 2 0 0 1-2.83 0L2 12V2h10l8.59 8.59a2 2 0 0 1 0 2.82z"></path><line x1="7" y1="7" x2="7.01" y2="7"></line></svg>
                                    </div>
                                    <div class="detail-content">
                                        <small>Category</small>
                                        <p><?php echo esc_html($project_cat); ?></p>
                                    </div>
                                </div>
                                
                                <div class="detail-row">
                                    <div class="icon-box blue">
                                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                                    </div>
                                    <div class="detail-content">
                                        <small>Client</small>
                                        <p><?php echo $client ? esc_html($client) : 'Personal'; ?></p>
                                    </div>
                                </div>

                                <div class="detail-row">
                                    <div class="icon-box purple">
                                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                                    </div>
                                    <div class="detail-content">
                                        <small>Completion Date</small>
                                        <p><?php echo $date ? esc_html(date('F j, Y', strtotime($date))) : 'Ongoing'; ?></p>
                                    </div>
                                </div>

                                <div class="detail-row">
                                    <div class="icon-box green">
                                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                                    </div>
                                    <div class="detail-content">
                                        <small>Tech Team</small>
                                        <p>Noel Devs</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Glass Card: Tech Stack -->
                        <!-- DELAY: 0.4s -->
                        <div class="glass-card card-entry entry-right" style="--anim-delay: 0.4s;">
                            <h3 class="card-heading tech-heading">
                                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polygon points="12 2 2 7 12 12 22 7 12 2"></polygon><polyline points="2 17 12 22 22 17"></polyline><polyline points="2 12 12 17 22 12"></polyline></svg>
                                Tech Stack & Skills
                            </h3>
                            
                            <?php 
                            if(is_array($tech_ids) && !empty($tech_ids)) {
                                $grouped_skills = array();
                                foreach($tech_ids as $tid) {
                                    $skill_post = get_post($tid);
                                    if($skill_post) {
                                        $terms = get_the_terms($tid, 'skill_category');
                                        $cat = (!empty($terms) && !is_wp_error($terms)) ? $terms[0]->name : 'Others';
                                        $grouped_skills[$cat][] = $skill_post;
                                    }
                                }
                                
                                foreach($grouped_skills as $cat => $skills) {
                                    echo '<div class="tech-group">';
                                    echo '<div class="tech-group-title">';
                                    if(stripos($cat, 'front') !== false) echo '<svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="16 18 22 12 16 6"></polyline><polyline points="8 6 2 12 8 18"></polyline></svg>';
                                    elseif(stripos($cat, 'back') !== false) echo '<svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="2" y="2" width="20" height="8" rx="2" ry="2"></rect><rect x="2" y="14" width="20" height="8" rx="2" ry="2"></rect><line x1="6" y1="6" x2="6.01" y2="6"></line><line x1="6" y1="18" x2="6.01" y2="18"></line></svg>';
                                    else echo '<svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="3"></circle><path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"></path></svg>';
                                    
                                    echo esc_html($cat) . '</div>';
                                    echo '<div class="tech-badges">';
                                    foreach($skills as $skill) {
                                        echo '<span class="glass-badge">' . esc_html($skill->post_title) . '</span>';
                                    }
                                    echo '</div></div>';
                                }
                            } else {
                                echo '<p style="color:rgba(255,255,255,0.5);">No tech stack defined.</p>';
                            }
                            ?>
                        </div>

                    </div>
                </div>

                <!-- Gallery Section -->
                <?php if($gallery_string): 
                    $gallery_images = explode(',', $gallery_string);
                ?>
                <div class="gallery-section">
                    <h3 class="gallery-heading">Project Gallery</h3>
                    <div class="gallery-grid">
                        <?php foreach($gallery_images as $img_url): 
                            $img_url = trim($img_url);
                            if(!empty($img_url)): ?>
                            <div class="gallery-card tilt-card">
                                <img src="<?php echo esc_url($img_url); ?>" alt="Gallery Image" class="gallery-img" loading="lazy">
                                <div class="gallery-overlay">
                                    <span class="view-btn" onclick="openLightbox('<?php echo esc_url($img_url); ?>')">View Full</span>
                                </div>
                            </div>
                        <?php endif; endforeach; ?>
                    </div>
                </div>
                <?php endif; ?>

                <footer class="project-footer">
                    <p>&copy; <?php echo date('Y'); ?> <?php echo $client ? esc_html($client) : 'Noel Devs'; ?> Project. All rights reserved.</p>
                    <a href="<?php echo home_url('/#projects'); ?>">Back to Portfolio</a>
                </footer>

   </div>

        <?php endwhile; ?>
    </main>
</div>


                <!-- Lightbox Modal -->
<div id="galleryLightbox" class="lightbox-modal">
    <span class="close-lightbox" onclick="closeLightbox()">&times;</span>
    <img class="lightbox-content" id="lightboxImg">
</div>

<script>
    
function openLightbox(imgUrl) {
    const modal = document.getElementById('galleryLightbox');
    const modalImg = document.getElementById('lightboxImg');
    modal.style.display = "flex";
    modalImg.src = imgUrl;
    document.body.style.overflow = 'hidden'; // Prevent scrolling
}

function closeLightbox() {
    const modal = document.getElementById('galleryLightbox');
    modal.style.display = "none";
    document.body.style.overflow = 'auto'; // Restore scrolling
}

// Close on click outside image
document.getElementById('galleryLightbox').addEventListener('click', function(e) {
    if (e.target === this) closeLightbox();
});
</script>

</div> <?php get_footer(); ?>