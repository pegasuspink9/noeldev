<?php
if ( ! defined( 'ABSPATH' ) ) {
    exit; // Exit if accessed directly.
}
?>

<aside class="burger-sidebar">
    <nav class="burger-nav">
        <ul class="burger-nav-list">
            <li>
                <a href="<?php echo esc_url( home_url( '/' ) ); ?>" class="burger-nav-link">Home</a>
            </li>
            <li>
                <a href="#skills" class="burger-nav-link">Skills</a>
            </li>
            <li>
                <a href="#projects" class="burger-nav-link">Projects</a>
            </li>
            <li>
                <a href="#achievements" class="burger-nav-link">Achievements</a>
            </li>
            <li>
                <a href="<?php echo esc_url( home_url( '/contact' ) ); ?>" class="burger-nav-link">Contact</a>
            </li>
        </ul>
    </nav>
</aside>