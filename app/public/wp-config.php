<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '={yjKG7ow<Q0u_%7-6 onVOTG4cLu,m;hr2ma=|%:I2Gsg^&CX[xtz6$<{]=Avi_' );
define( 'SECURE_AUTH_KEY',   'Ruc,@1Glmj05Af12AiL9[26E^hDF[SUXW]7m![HU6}FZN!1;?~HN~i[n/J:;`*EL' );
define( 'LOGGED_IN_KEY',     'Fi1?SinzISEK7j/.sJ2z/!(to7Vu<6ve$p[khwNDVjh|9(5v1fpiIz79/HoJ NSg' );
define( 'NONCE_KEY',         'pshwm:*qIg8Ca{jp#p<TC(ft3:Y@MD2U,2vop7DDZ0xfUTpK0Kj2J]}RR/:G8[Lx' );
define( 'AUTH_SALT',         'h.,naH[.mNjjo|/wm/n^]uwKH  PAc~PuSW3?2>4B(H7uKhK>A,`_X_dH2vY?Qw7' );
define( 'SECURE_AUTH_SALT',  'Bu4S WpGr?u X.-:]{#NP0`Cpi Jt{lSssF{i`ZqR+RaKjW?jU>8WN;,k6wNG@yV' );
define( 'LOGGED_IN_SALT',    ')>beR7Xnmp7r[-xyh8rRLZ|]0+O>!;9[ t^{bf2hMy6 lR9u~zu@+6)g($ 6}akz' );
define( 'NONCE_SALT',        'MmcXq-Tm7,HZfV--MEz$:<&:eBn$2`l@{Z&Yp<Fp A}sB/XTFkg,M({Xj}Ol?4,?' );
define( 'WP_CACHE_KEY_SALT', 'z*A^^KY1:z/!)9tnSx3&_IK%.0PUk3Jl4DaHOC^bXaE1tD)j j;438``jk$k,-0Z' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
