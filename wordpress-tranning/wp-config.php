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
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'vertrigo');

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
define('AUTH_KEY',         'Y*L9.usI1>^%t+_vF[[Z-8hP0GIBME8.Bu&{nzia22bkW#r.YpFJ:DE27La<Rn:;');
define('SECURE_AUTH_KEY',  '5?&s[l.#A-,0oIS74P/^< a@;(SMzd+^1+(H.1Mg845ZsM{y,d!TRG=wgj6Q|#>#');
define('LOGGED_IN_KEY',    'y=>}?A:4Z(7dx[0wi|zI7]^a;A#nbzN|wBn,H(>tNv=xqbQ#.hUP1C!`u]Dg+#,@');
define('NONCE_KEY',        '%1:/Cn)3Gp~npB2uBOV^8(8M{S@;}6Q~NO;[#Ei.callfT#6 ]ONBHN@jIRTnvj`');
define('AUTH_SALT',        'Le&NlFiEv~g:^H>ib5?7=)4Ng_z0,W]&*Du>$^q;Xq?d<SwP[z<-]FVo] ]>9N#2');
define('SECURE_AUTH_SALT', 'z`S? $MdbF~np>R_aE-Sbg*CDQ!cm?bq{!=1^BkGluYn (ivC[tC^M2.$n15!T)I');
define('LOGGED_IN_SALT',   '_BG^%Uhv@r9vg$NAKDZqPyaO-bQ(T50-B,jqj^H04b66zQ!)k)]y:b!CTr,:d<{4');
define('NONCE_SALT',       'O ~~x!4F+R1Ee!|)pp`@$2U`O!`zZn1KeQBf[b@J6@:QB[yKBV?>TK?comy:]oBi');

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
