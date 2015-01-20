<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'localhost_support_list_finder');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'T;HSqZmV1#r+}-]pD0dG[y:]K;k+lL<ijJ7]~H@ctZ-n,z$/@;fbV eT[=@v%@g-');
define('SECURE_AUTH_KEY',  'AWRhcZy-$= [ot>5XcbE(xje<zM9Aw;!3Bu;Y%J},68WU?WQ;)N>N#38*C}+2~A#');
define('LOGGED_IN_KEY',    'sDuN<x1ld^XIZ-Xh8 42cw(-d0PmGPyLw/w-m+lH^8:u>rSJ%%k>hmD-7NPN/LR%');
define('NONCE_KEY',        'a>1F4i&|D=axOuMjOvH-YXV #1&Ln)*DpaWT;|~g<j4+yGl-V$^I2#5J!&]WPiVb');
define('AUTH_SALT',        '%?X~fv|c+Z#<):CZ]ttOHc3M6lpZ!~Ag(2)wc{*-%Iuao}o_|;OYJ]O$|hwjwF]x');
define('SECURE_AUTH_SALT', ']+[ $Ue&!5kM(}lQqeHs-..g=-UZFAh|M`eJ]&-:J|+v##-%zf+!iVR&-RwN>AEZ');
define('LOGGED_IN_SALT',   '!@ .G|-V^-Y?S$:2uz Qp[oh;@FD&dq~,3(48gjnftg}Srctf@:fnq2=ca-> YB>');
define('NONCE_SALT',       'czy@-Wf6,/GHp0I&3/8}!O9f{$1p](+:,Qs;h-E,wl{30)rbWm38%8f$!vQa|Uma');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
