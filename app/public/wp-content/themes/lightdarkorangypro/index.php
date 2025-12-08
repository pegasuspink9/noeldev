<?php get_header(); ?>

<div class="site-container">
    <?php get_sidebar(); // Profile sidebar on the left ?>

    <div class="main-content-wrapper">
        <main>
            <section class="hero">
                <h1 class="hero-title">Welcome to My Portfolio</h1>
                <p class="hero-subtitle">Showcasing my work and services</p>
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
        </main><!-- Closes the main tag -->
    </div><!-- Closes .main-content-wrapper -->

    <?php get_template_part( 'burger-sidebar' ); // Burger sidebar on the far right ?>
</div><!-- Closes .site-container -->

<?php get_footer(); ?>