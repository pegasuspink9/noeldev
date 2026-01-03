<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php bloginfo( 'name' ); ?></title>
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<?php wp_body_open(); ?>

<!-- The main site header with navigation, positioned absolutely -->
<header>
    <nav>
        <ul class="main-nav">
            <li>
                <a href="<?php echo esc_url( home_url( '/' ) ); ?>">Home</a>
            </li>
            <li>
                <a href="#skills">Skills</a>
            </li>
            <li>
                <a href="#projects">Projects</a>
            </li>
            <li>
                <a href="#services">Services</a>
            </li>
            <li>
                <a href="<?php echo esc_url( home_url( '/contact' ) ); ?>">Contact</a>
            </li>
        </ul>
    </nav>
</header>