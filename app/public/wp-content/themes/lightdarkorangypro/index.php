
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
                        <h1 class="hero-title-right">I'm </h1>
                        <h1 class="hero-name-right">Noel Avila</h1>
                        <p class="hero-subtitle-right">Aspiring Full-stack developer</p>
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

            <section id="skills" class="section section-light">
                <div class="container">
                    <h2 class="section-title">My Skills & Tools</h2>
                    
                    <div class="grid grid-3">
                        <div class="skill-card">
                            <h3 class="skill-title">Frontend</h3>
                            <p>HTML, CSS, JavaScript, React, Vue.js</p>
                        </div>
                        
                        <div class="skill-card">
                            <h3 class="skill-title">Backend</h3>
                            <p>PHP, Node.js, Python, Laravel</p>
                        </div>
                        
                        <div class="skill-card">
                            <h3 class="skill-title">Database</h3>
                            <p>MySQL, PostgreSQL, MongoDB</p>
                        </div>
                        
                        <div class="skill-card">
                            <h3 class="skill-title">DevOps</h3>
                            <p>Git, Docker, AWS, CI/CD</p>
                        </div>
                        
                        <div class="skill-card">
                            <h3 class="skill-title">Design</h3>
                            <p>Figma, Adobe XD, Photoshop</p>
                        </div>
                        
                        <div class="skill-card">
                            <h3 class="skill-title">Tools</h3>
                            <p>VS Code, Postman, Webpack</p>
                        </div>
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