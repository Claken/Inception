<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'sachouam');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'user');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'password');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'AAiaYr>mtPvx9~8%},sxCw2zCTxzoqyDmpvI?raf_ajbkY.f(-+#JREh7&Yhn6`C');
define('SECURE_AUTH_KEY',  ' 0t9dd>/m[WV_*-]LpHyEui,3-@cLgX(:/nAGS9SlA(=4&Ao}j|oippWU)cXMwXV');
define('LOGGED_IN_KEY',    'j~ <J76XJ)$(wevy|6b/Q7Y:]nig V.w-+]18}) Bc_@L}XNrkkyt;P7F,|~BO%3');
define('NONCE_KEY',        'ggk|%^7+,Wiu5ENE9gNhmd%!vz^4gEO/rD{^WaKCi:+Q>aR~a4@pXQy: ~5-iQp6');
define('AUTH_SALT',        '0>KyiH,k1U_6Q0^TSu>t?JY/|{1r-SXo-&MDJ  ujo,|CfYh+DdapI=l#DwZ5cvL');
define('SECURE_AUTH_SALT', 'lI{]lcP|Li2Q+|V:}xvUBXTMm|-[0mHMA?Br;v?!hLr8!O+~)$d3;`B{_|92,/QY');
define('LOGGED_IN_SALT',   'jWPzFcp<fu^A)I/) 6{TqgF6[W $[6=Fb!aiYh`p~.!sC@u?@xurd!t+ld(W=;5F');
define('NONCE_SALT',       'E6gX]n:d=88oBVqEq_k<k]+ESaaQy<%lQp$|.=]o5IMnf8p1W4[D8sAq;W5N2q/&');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');
