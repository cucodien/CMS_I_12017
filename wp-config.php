<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'test');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', '192.168.100.48');

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
define('AUTH_KEY',         't!|1Z/l,l/>f.TComw{Hx}|CE]q9S&JT3;<gUONz#( a5h# VP)dudyhloSre4YH');
define('SECURE_AUTH_KEY',  '}brdBCZz{|&p&:L)xNZW6{UE&C*^4MG0WjsydRLc;]Fc=FbDkiC5S|,sb^b24xtb');
define('LOGGED_IN_KEY',    '$TXvE:#_9Dd2cd-avQK.F~;?SJqFrT;)rD* < ^bE03aJ{3~4C/>;,-.v!zge>0$');
define('NONCE_KEY',        'Ee{RzWhElg-oRg<3^$VT$vJB]ICS3CIe0ul6HsSp@4EQuee!i3/W=Q5NP7>zkVsN');
define('AUTH_SALT',        '4Z)&/N?QD>TE%R$J,4LDyGh FS4%P?pYk{59c:Yv~`0^k,aC<I3,3#)fBO#Yk2yM');
define('SECURE_AUTH_SALT', '0/A>WeH]s_Ak?[f,hzaTPaU2Ls`bGsb#_nDFpLSIU9l!>LpMUMa,9by99q2..*|S');
define('LOGGED_IN_SALT',   '`@}cMk!PzEJ_{u_So`X(Bp`jKfy8Oz pK$cE(4<>dE4I8>Bbn!Y6ZI]ZHB[ejw|Y');
define('NONCE_SALT',       '?rY?D5.vQ:[-Ro#6wu`)&h<PlMm*#-7cBy&g{L+!-UR~t0xWR?p?SbO;Fbq,t|,n');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
