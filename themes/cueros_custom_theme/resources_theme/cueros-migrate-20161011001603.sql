# WordPress MySQL database migration
#
# Generated: Tuesday 11. October 2016 00:16 UTC
# Hostname: localhost
# Database: `cueros`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Señor WordPress', '', 'https://wordpress.org/', '', '2016-09-01 16:31:37', '2016-09-01 16:31:37', 'Hola, esto es un comentario.\nPara eliminar un comentario, sólo necesita iniciar sesión y ver los comentarios de la entrada. Allí tendrá la opción de editar o eliminarlos.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_mgmlp_folders`
#

DROP TABLE IF EXISTS `wp_mgmlp_folders`;


#
# Table structure of table `wp_mgmlp_folders`
#

CREATE TABLE `wp_mgmlp_folders` (
  `post_id` bigint(20) NOT NULL,
  `folder_id` bigint(20) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_mgmlp_folders`
#
INSERT INTO `wp_mgmlp_folders` ( `post_id`, `folder_id`) VALUES
(5, 0),
(6, 5),
(7, 6) ;

#
# End of data contents of table `wp_mgmlp_folders`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=429 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/cueros', 'yes'),
(2, 'home', 'http://localhost/cueros', 'yes'),
(3, 'blogname', 'Cueros', 'yes'),
(4, 'blogdescription', 'Otro sitio de WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jgomez@ingenioart.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:189:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:14:"slider-home/?$";s:31:"index.php?post_type=slider-home";s:44:"slider-home/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=slider-home&feed=$matches[1]";s:39:"slider-home/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=slider-home&feed=$matches[1]";s:31:"slider-home/page/([0-9]{1,})/?$";s:49:"index.php?post_type=slider-home&paged=$matches[1]";s:17:"theme-producto/?$";s:34:"index.php?post_type=theme-producto";s:47:"theme-producto/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-producto&feed=$matches[1]";s:42:"theme-producto/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-producto&feed=$matches[1]";s:34:"theme-producto/page/([0-9]{1,})/?$";s:52:"index.php?post_type=theme-producto&paged=$matches[1]";s:23:"theme-gallery-images/?$";s:40:"index.php?post_type=theme-gallery-images";s:53:"theme-gallery-images/feed/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?post_type=theme-gallery-images&feed=$matches[1]";s:48:"theme-gallery-images/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?post_type=theme-gallery-images&feed=$matches[1]";s:40:"theme-gallery-images/page/([0-9]{1,})/?$";s:58:"index.php?post_type=theme-gallery-images&paged=$matches[1]";s:22:"theme-gallery-video/?$";s:39:"index.php?post_type=theme-gallery-video";s:52:"theme-gallery-video/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?post_type=theme-gallery-video&feed=$matches[1]";s:47:"theme-gallery-video/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?post_type=theme-gallery-video&feed=$matches[1]";s:39:"theme-gallery-video/page/([0-9]{1,})/?$";s:57:"index.php?post_type=theme-gallery-video&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:54:"wpmf-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:49:"wpmf-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:30:"wpmf-category/([^/]+)/embed/?$";s:46:"index.php?wpmf-category=$matches[1]&embed=true";s:42:"wpmf-category/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?wpmf-category=$matches[1]&paged=$matches[2]";s:24:"wpmf-category/([^/]+)/?$";s:35:"index.php?wpmf-category=$matches[1]";s:58:"producto-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?producto_category=$matches[1]&feed=$matches[2]";s:53:"producto-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?producto_category=$matches[1]&feed=$matches[2]";s:34:"producto-category/([^/]+)/embed/?$";s:50:"index.php?producto_category=$matches[1]&embed=true";s:46:"producto-category/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?producto_category=$matches[1]&paged=$matches[2]";s:28:"producto-category/([^/]+)/?$";s:39:"index.php?producto_category=$matches[1]";s:39:"slider-home/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"slider-home/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"slider-home/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"slider-home/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"slider-home/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"slider-home/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"slider-home/([^/]+)/embed/?$";s:44:"index.php?slider-home=$matches[1]&embed=true";s:32:"slider-home/([^/]+)/trackback/?$";s:38:"index.php?slider-home=$matches[1]&tb=1";s:52:"slider-home/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?slider-home=$matches[1]&feed=$matches[2]";s:47:"slider-home/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?slider-home=$matches[1]&feed=$matches[2]";s:40:"slider-home/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?slider-home=$matches[1]&paged=$matches[2]";s:47:"slider-home/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?slider-home=$matches[1]&cpage=$matches[2]";s:36:"slider-home/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?slider-home=$matches[1]&page=$matches[2]";s:28:"slider-home/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"slider-home/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"slider-home/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"slider-home/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"slider-home/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"slider-home/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:42:"theme-producto/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"theme-producto/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"theme-producto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-producto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-producto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"theme-producto/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"theme-producto/([^/]+)/embed/?$";s:47:"index.php?theme-producto=$matches[1]&embed=true";s:35:"theme-producto/([^/]+)/trackback/?$";s:41:"index.php?theme-producto=$matches[1]&tb=1";s:55:"theme-producto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-producto=$matches[1]&feed=$matches[2]";s:50:"theme-producto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-producto=$matches[1]&feed=$matches[2]";s:43:"theme-producto/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?theme-producto=$matches[1]&paged=$matches[2]";s:50:"theme-producto/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?theme-producto=$matches[1]&cpage=$matches[2]";s:39:"theme-producto/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?theme-producto=$matches[1]&page=$matches[2]";s:31:"theme-producto/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"theme-producto/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"theme-producto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-producto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-producto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"theme-producto/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:"theme-gallery-images/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:58:"theme-gallery-images/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:78:"theme-gallery-images/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"theme-gallery-images/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"theme-gallery-images/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:54:"theme-gallery-images/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"theme-gallery-images/([^/]+)/embed/?$";s:53:"index.php?theme-gallery-images=$matches[1]&embed=true";s:41:"theme-gallery-images/([^/]+)/trackback/?$";s:47:"index.php?theme-gallery-images=$matches[1]&tb=1";s:61:"theme-gallery-images/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?theme-gallery-images=$matches[1]&feed=$matches[2]";s:56:"theme-gallery-images/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?theme-gallery-images=$matches[1]&feed=$matches[2]";s:49:"theme-gallery-images/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?theme-gallery-images=$matches[1]&paged=$matches[2]";s:56:"theme-gallery-images/([^/]+)/comment-page-([0-9]{1,})/?$";s:60:"index.php?theme-gallery-images=$matches[1]&cpage=$matches[2]";s:45:"theme-gallery-images/([^/]+)(?:/([0-9]+))?/?$";s:59:"index.php?theme-gallery-images=$matches[1]&page=$matches[2]";s:37:"theme-gallery-images/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"theme-gallery-images/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"theme-gallery-images/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"theme-gallery-images/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"theme-gallery-images/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"theme-gallery-images/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:47:"theme-gallery-video/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"theme-gallery-video/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"theme-gallery-video/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"theme-gallery-video/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"theme-gallery-video/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"theme-gallery-video/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"theme-gallery-video/([^/]+)/embed/?$";s:52:"index.php?theme-gallery-video=$matches[1]&embed=true";s:40:"theme-gallery-video/([^/]+)/trackback/?$";s:46:"index.php?theme-gallery-video=$matches[1]&tb=1";s:60:"theme-gallery-video/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?theme-gallery-video=$matches[1]&feed=$matches[2]";s:55:"theme-gallery-video/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?theme-gallery-video=$matches[1]&feed=$matches[2]";s:48:"theme-gallery-video/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?theme-gallery-video=$matches[1]&paged=$matches[2]";s:55:"theme-gallery-video/([^/]+)/comment-page-([0-9]{1,})/?$";s:59:"index.php?theme-gallery-video=$matches[1]&cpage=$matches[2]";s:44:"theme-gallery-video/([^/]+)(?:/([0-9]+))?/?$";s:58:"index.php?theme-gallery-video=$matches[1]&page=$matches[2]";s:36:"theme-gallery-video/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"theme-gallery-video/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"theme-gallery-video/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"theme-gallery-video/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"theme-gallery-video/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"theme-gallery-video/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:33:"duplicate-post/duplicate-post.php";i:1;s:37:"error-log-viewer/error-log-viewer.php";i:2;s:31:"live-admin-customzier/index.php";i:3;s:35:"wp-media-folder/wp-media-folder.php";i:4;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'cueros_custom_theme', 'yes'),
(41, 'stylesheet', 'cueros_custom_theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:37:"error-log-viewer/error-log-viewer.php";s:18:"rrrlgvwr_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'es_PE', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:5:{i:1476160299;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1476162619;a:1:{s:36:"check_plugin_updates-wp-media-folder";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1476203803;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1476206837;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(137, 'recently_activated', 'a:0:{}', 'yes'),
(140, 'db_upgraded', '', 'yes'),
(143, 'can_compress_scripts', '1', 'no'),
(148, 'mgmlp_sort_order', '0', 'yes'),
(149, 'maxgalleria_media_library_version', '3.0.3', 'yes'),
(150, 'mgmlp_upload_folder_name', 'uploads', 'yes'),
(151, 'mgmlp_upload_folder_id', '5', 'yes'),
(152, 'mgmlp_src_fix', '1', 'yes'),
(162, 'duplicate_post_copyexcerpt', '1', 'yes'),
(163, 'duplicate_post_copyattachments', '0', 'yes'),
(164, 'duplicate_post_copychildren', '0', 'yes'),
(165, 'duplicate_post_copystatus', '0', 'yes'),
(166, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(167, 'duplicate_post_show_row', '1', 'yes'),
(168, 'duplicate_post_show_adminbar', '1', 'yes'),
(169, 'duplicate_post_show_submitbox', '1', 'yes'),
(170, 'duplicate_post_version', '2.6', 'yes'),
(173, 'bstwbsftwppdtplgns_options', 'a:1:{s:8:"bws_menu";a:1:{s:7:"version";a:1:{s:37:"error-log-viewer/error-log-viewer.php";s:5:"1.9.0";}}}', 'yes'),
(174, 'rrrlgvwr_options', 'a:15:{s:21:"plugin_option_version";s:5:"1.0.4";s:21:"php_error_log_visible";i:0;s:11:"lines_count";s:2:"40";s:16:"confirm_filesize";i:0;s:14:"error_log_path";s:43:"C:/xampp/htdocs/cueros/wp-content/debug.log";s:17:"count_visible_log";i:1;s:14:"frequency_send";i:1;s:8:"hour_day";i:3600;s:23:"display_settings_notice";i:0;s:22:"suggest_feature_banner";i:1;s:13:"first_install";i:1472749387;s:19:"go_settings_counter";i:1;s:9:"file_path";a:1:{i:1;s:43:"C:/xampp/htdocs/cueros/wp-content/debug.log";}s:10:"send_email";i:1;s:15:"0_debug_visible";i:1;}', 'yes'),
(176, 'wpmf_use_taxonomy', '1', 'yes'),
(179, 'wpmf_gallery_image_size_value', '["thumbnail","medium","large","full"]', 'yes'),
(180, 'wpmf_padding_masonry', '5', 'yes'),
(181, 'wpmf_padding_portfolio', '10', 'yes'),
(182, 'wpmf_usegellery', '1', 'yes'),
(183, 'wpmf_useorder', '1', 'yes'),
(184, 'wpmf_folder_option1', '0', 'yes'),
(185, 'wpmf_option_override', '0', 'yes'),
(186, 'wpmf_active_media', '0', 'yes'),
(187, 'wpmf_folder_option2', '1', 'yes'),
(188, 'wpmf_option_searchall', '0', 'yes'),
(189, 'wpmf_usegellery_lightbox', '1', 'yes'),
(190, 'wpmf_media_rename', '0', 'yes'),
(191, 'wpmf_patern_rename', '{sitename} - {foldername} - #', 'yes'),
(192, 'wpmf_rename_number', '0', 'yes'),
(193, 'wpmf_option_media_remove', '0', 'yes'),
(194, 'wpmf_default_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(195, 'wpmf_selected_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(196, 'wpmf_weight_default', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(197, 'wpmf_weight_selected', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(198, 'wpmf_color_singlefile', '{"bgdownloadlink":"#444444","hvdownloadlink":"#888888","fontdownloadlink":"#ffffff","hoverfontcolor":"#ffffff"}', 'yes'),
(199, 'wpmf_option_singlefile', '0', 'yes'),
(200, 'external_updates-wp-media-folder', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1476114453;s:14:"checkedVersion";s:5:"3.3.3";s:6:"update";O:8:"stdClass":7:{s:2:"id";i:0;s:4:"slug";s:15:"wp-media-folder";s:7:"version";s:5:"3.8.2";s:8:"homepage";s:61:"https://www.joomunited.com/wordpress-products/wp-media-folder";s:12:"download_url";s:120:"https://www.joomunited.com/index.php?option=com_juupdater&task=download.download&extension=wp-media-folder&version=3.8.2";s:14:"upgrade_notice";s:29:"Upgrade to the latest version";s:8:"filename";s:35:"wp-media-folder/wp-media-folder.php";}}', 'no'),
(201, '_wpmf_import_notice_flag', 'no', 'yes'),
(204, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1472750766;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(205, 'current_theme', 'Cueros Web Wallpay Website', 'yes'),
(206, 'theme_mods_cueros_custom_theme', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:9:"main-menu";i:2;}}', 'yes'),
(207, 'theme_switched', '', 'yes'),
(209, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(255, 'producto_category_children', 'a:2:{i:5;a:4:{i:0;i:6;i:1;i:7;i:2;i:8;i:3;i:9;}i:10;a:1:{i:0;i:11;}}', 'yes'),
(269, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:21:"jgomez@ingenioart.com";s:7:"version";s:5:"4.6.1";s:9:"timestamp";i:1475681940;}', 'no'),
(301, 'theme_settings', 'a:14:{s:18:"theme_phone_text_1";s:15:"+(408) 194-7557";s:18:"theme_phone_text_2";s:15:"+(408) 194-7557";s:16:"theme_cel_text_1";s:9:"987665544";s:16:"theme_cel_text_2";s:9:"987665545";s:16:"theme_email_text";s:15:"abc@example.com";s:18:"theme_address_text";s:39:"123 Main Street, Anytown, CA 122456 PER";s:19:"theme_atention_text";s:0:"";s:20:"theme_social_fb_text";s:35:"http://fontawesome.io/icon/youtube/";s:25:"theme_social_twitter_text";s:35:"http://fontawesome.io/icon/youtube/";s:25:"theme_social_youtube_text";s:35:"http://fontawesome.io/icon/youtube/";s:27:"theme_social_instagram_text";s:0:"";s:26:"theme_social_linkedin_text";s:0:"";s:23:"theme_social_gplus_text";s:0:"";s:27:"theme_social_pinterest_text";s:0:"";}', 'yes'),
(332, 'category_children', 'a:0:{}', 'yes'),
(346, 'wpmf-category_children', 'a:1:{i:3;a:1:{i:0;i:18;}}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(17, 13, '_edit_last', '1'),
(18, 13, '_edit_lock', '1472750713:1'),
(19, 15, '_edit_last', '1'),
(20, 15, '_edit_lock', '1475704187:1'),
(21, 17, '_edit_last', '1'),
(22, 17, '_edit_lock', '1472750736:1'),
(23, 19, '_edit_last', '1'),
(24, 19, '_edit_lock', '1476132374:1'),
(25, 21, '_edit_last', '1'),
(26, 21, '_edit_lock', '1475775673:1'),
(27, 23, '_edit_last', '1'),
(28, 23, '_edit_lock', '1475783240:1'),
(29, 26, '_edit_last', '1'),
(30, 26, '_edit_lock', '1472750991:1'),
(40, 29, '_menu_item_type', 'post_type'),
(41, 29, '_menu_item_menu_item_parent', '0'),
(42, 29, '_menu_item_object_id', '17'),
(43, 29, '_menu_item_object', 'page'),
(44, 29, '_menu_item_target', ''),
(45, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(46, 29, '_menu_item_xfn', ''),
(47, 29, '_menu_item_url', ''),
(49, 30, '_menu_item_type', 'post_type'),
(50, 30, '_menu_item_menu_item_parent', '0'),
(51, 30, '_menu_item_object_id', '26'),
(52, 30, '_menu_item_object', 'page'),
(53, 30, '_menu_item_target', ''),
(54, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(55, 30, '_menu_item_xfn', ''),
(56, 30, '_menu_item_url', ''),
(58, 31, '_menu_item_type', 'post_type'),
(59, 31, '_menu_item_menu_item_parent', '0'),
(60, 31, '_menu_item_object_id', '21'),
(61, 31, '_menu_item_object', 'page'),
(62, 31, '_menu_item_target', ''),
(63, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(64, 31, '_menu_item_xfn', ''),
(65, 31, '_menu_item_url', ''),
(67, 32, '_menu_item_type', 'post_type'),
(68, 32, '_menu_item_menu_item_parent', '0'),
(69, 32, '_menu_item_object_id', '13'),
(70, 32, '_menu_item_object', 'page'),
(71, 32, '_menu_item_target', ''),
(72, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(73, 32, '_menu_item_xfn', ''),
(74, 32, '_menu_item_url', ''),
(76, 33, '_menu_item_type', 'post_type'),
(77, 33, '_menu_item_menu_item_parent', '0'),
(78, 33, '_menu_item_object_id', '15'),
(79, 33, '_menu_item_object', 'page'),
(80, 33, '_menu_item_target', ''),
(81, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(82, 33, '_menu_item_xfn', ''),
(83, 33, '_menu_item_url', ''),
(85, 34, '_menu_item_type', 'post_type'),
(86, 34, '_menu_item_menu_item_parent', '0'),
(87, 34, '_menu_item_object_id', '23'),
(88, 34, '_menu_item_object', 'page'),
(89, 34, '_menu_item_target', ''),
(90, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(91, 34, '_menu_item_xfn', ''),
(92, 34, '_menu_item_url', ''),
(94, 35, '_menu_item_type', 'post_type'),
(95, 35, '_menu_item_menu_item_parent', '0'),
(96, 35, '_menu_item_object_id', '19'),
(97, 35, '_menu_item_object', 'page'),
(98, 35, '_menu_item_target', ''),
(99, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(100, 35, '_menu_item_xfn', ''),
(101, 35, '_menu_item_url', ''),
(102, 43, '_edit_last', '1'),
(103, 43, '_edit_lock', '1472766348:1'),
(104, 43, 'mb_code_product_text', 'MO 1614'),
(105, 43, 'mb_price_product_text', 'S/. 109.00'),
(106, 44, '_wp_attached_file', '2016/09/producto_cueros_artesania_personal_001.jpg'),
(107, 44, 'wpmf_size', '50690'),
(108, 44, 'wpmf_filetype', 'jpg'),
(109, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:450;s:6:"height";i:600;s:4:"file";s:50:"2016/09/producto_cueros_artesania_personal_001.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:50:"producto_cueros_artesania_personal_001-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:50:"producto_cueros_artesania_personal_001-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:50:"producto_cueros_artesania_personal_001-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:50:"producto_cueros_artesania_personal_001-263x350.jpg";s:5:"width";i:263;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(110, 43, '_thumbnail_id', '44'),
(111, 45, '_edit_last', '1'),
(112, 45, '_edit_lock', '1472766516:1'),
(113, 45, 'mb_code_product_text', 'MO 1614'),
(114, 45, 'mb_price_product_text', 'S/. 109.00'),
(115, 45, '_thumbnail_id', '44'),
(116, 45, '_dp_original', '43'),
(117, 46, '_edit_last', '1'),
(118, 46, '_edit_lock', '1476137541:1'),
(119, 46, 'mb_code_product_text', 'MO 1614'),
(120, 46, 'mb_price_product_text', 'S/. 109.00'),
(121, 46, '_thumbnail_id', '44'),
(122, 46, '_dp_original', '43'),
(123, 47, '_edit_last', '1'),
(124, 47, '_edit_lock', '1472769357:1'),
(130, 49, '_edit_last', '1'),
(131, 49, '_edit_lock', '1476119940:1'),
(133, 49, '_dp_original', '47'),
(134, 50, '_edit_last', '1'),
(135, 50, '_edit_lock', '1475781007:1'),
(139, 50, 'mb_image_gallery', '44,44,44'),
(140, 50, 'mb_image_gallery', '44,44,44') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(141, 52, '_dp_original', '1'),
(142, 52, '_edit_last', '1'),
(144, 52, '_edit_lock', '1475688301:1'),
(145, 54, '_edit_last', '1'),
(146, 54, '_edit_lock', '1475688568:1'),
(147, 54, '_oembed_3ba961bab1abd759144ce2e17a88fd25', '<iframe width="500" height="281" src="https://www.youtube.com/embed/D7yW0FUOHuE?feature=oembed" frameborder="0" allowfullscreen></iframe>'),
(148, 54, '_oembed_time_3ba961bab1abd759144ce2e17a88fd25', '1475688700'),
(149, 54, 'mb_image_gallery', ''),
(150, 55, '_edit_last', '1'),
(151, 55, '_edit_lock', '1475696187:1'),
(152, 55, '_oembed_3ba961bab1abd759144ce2e17a88fd25', '<iframe width="500" height="281" src="https://www.youtube.com/embed/D7yW0FUOHuE?feature=oembed" frameborder="0" allowfullscreen></iframe>'),
(153, 55, '_oembed_time_3ba961bab1abd759144ce2e17a88fd25', '1475688726'),
(154, 55, 'mb_image_gallery', ''),
(155, 15, 'mb_featured_banner', 'http://localhost/cueros/wp-content/uploads/2016/09/banner_sample.jpg'),
(156, 15, 'mb_image_gallery', ',58,57,58'),
(157, 56, '_wp_attached_file', '2016/09/banner_sample.jpg'),
(158, 56, 'wpmf_size', '58332'),
(159, 56, 'wpmf_filetype', 'jpg'),
(160, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:189;s:4:"file";s:25:"2016/09/banner_sample.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"banner_sample-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"banner_sample-300x30.jpg";s:5:"width";i:300;s:6:"height";i:30;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"banner_sample-768x76.jpg";s:5:"width";i:768;s:6:"height";i:76;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"banner_sample-1024x101.jpg";s:5:"width";i:1024;s:6:"height";i:101;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"banner_sample-210x189.jpg";s:5:"width";i:210;s:6:"height";i:189;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:24:"banner_sample-784x77.jpg";s:5:"width";i:784;s:6:"height";i:77;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(161, 57, '_wp_attached_file', '2016/09/nosotros_cueros_artesania_foto_3.jpg'),
(162, 57, 'wpmf_size', '115177'),
(163, 57, 'wpmf_filetype', 'jpg'),
(164, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:477;s:4:"file";s:44:"2016/09/nosotros_cueros_artesania_foto_3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"nosotros_cueros_artesania_foto_3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"nosotros_cueros_artesania_foto_3-300x298.jpg";s:5:"width";i:300;s:6:"height";i:298;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:44:"nosotros_cueros_artesania_foto_3-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:44:"nosotros_cueros_artesania_foto_3-352x350.jpg";s:5:"width";i:352;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(165, 58, '_wp_attached_file', '2016/09/nosotros_cueros_artesania_foto_2.jpg'),
(166, 58, 'wpmf_size', '87592'),
(167, 58, 'wpmf_filetype', 'jpg'),
(168, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:477;s:4:"file";s:44:"2016/09/nosotros_cueros_artesania_foto_2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"nosotros_cueros_artesania_foto_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"nosotros_cueros_artesania_foto_2-300x298.jpg";s:5:"width";i:300;s:6:"height";i:298;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:44:"nosotros_cueros_artesania_foto_2-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:44:"nosotros_cueros_artesania_foto_2-352x350.jpg";s:5:"width";i:352;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(169, 15, '_wp_page_template', 'default'),
(170, 19, '_wp_page_template', 'page-services.php'),
(171, 19, 'mb_featured_banner', ''),
(172, 19, 'mb_image_gallery', ',58,57,56'),
(173, 21, '_wp_page_template', 'page-gallery.php'),
(174, 61, '_edit_last', '1'),
(175, 61, '_edit_lock', '1476125226:1'),
(176, 61, 'mb_image_gallery', '44,44,44'),
(177, 61, 'mb_image_gallery', '44,44,44'),
(178, 61, '_dp_original', '50'),
(179, 23, '_wp_page_template', 'page-products.php'),
(180, 46, 'mb_image_gallery', ',62,62,62'),
(181, 62, '_wp_attached_file', '2016/09/producto_cueros_artesania_personal_001-1.jpg'),
(182, 62, 'wpmf_size', '50690'),
(183, 62, 'wpmf_filetype', 'jpg'),
(184, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:450;s:6:"height";i:600;s:4:"file";s:52:"2016/09/producto_cueros_artesania_personal_001-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:52:"producto_cueros_artesania_personal_001-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:52:"producto_cueros_artesania_personal_001-1-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:52:"producto_cueros_artesania_personal_001-1-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:52:"producto_cueros_artesania_personal_001-1-263x350.jpg";s:5:"width";i:263;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(185, 47, '_wp_trash_meta_status', 'publish'),
(186, 47, '_wp_trash_meta_time', '1476120030'),
(187, 47, '_wp_desired_post_slug', '100-cueros'),
(188, 63, '_wp_attached_file', '2016/09/slider_home.jpg'),
(189, 63, 'wpmf_size', '72457'),
(190, 63, 'wpmf_filetype', 'jpg'),
(191, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:617;s:4:"file";s:23:"2016/09/slider_home.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"slider_home-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"slider_home-300x96.jpg";s:5:"width";i:300;s:6:"height";i:96;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"slider_home-768x247.jpg";s:5:"width";i:768;s:6:"height";i:247;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"slider_home-1024x329.jpg";s:5:"width";i:1024;s:6:"height";i:329;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"slider_home-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:23:"slider_home-784x252.jpg";s:5:"width";i:784;s:6:"height";i:252;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(192, 49, '_thumbnail_id', '63'),
(193, 49, 'mb_image_gallery', ''),
(194, 64, '_edit_last', '1'),
(195, 64, '_edit_lock', '1476122781:1'),
(197, 64, '_thumbnail_id', '63'),
(198, 64, 'mb_image_gallery', ''),
(199, 64, '_dp_original', '49'),
(200, 65, '_edit_last', '1'),
(201, 65, '_wp_page_template', 'page-videos.php'),
(202, 65, 'mb_featured_banner', ''),
(203, 65, 'mb_image_gallery', ''),
(204, 65, '_edit_lock', '1476132348:1'),
(205, 67, '_menu_item_type', 'post_type'),
(206, 67, '_menu_item_menu_item_parent', '31'),
(207, 67, '_menu_item_object_id', '65'),
(208, 67, '_menu_item_object', 'page'),
(209, 67, '_menu_item_target', ''),
(210, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(211, 67, '_menu_item_xfn', ''),
(212, 67, '_menu_item_url', '') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-09-01 16:31:37', '2016-09-01 16:31:37', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2016-09-01 16:31:37', '2016-09-01 16:31:37', '', 0, 'http://localhost/cueros/?p=1', 0, 'post', '', 1),
(5, 1, '2016-09-01 16:39:44', '2016-09-01 16:39:44', '', 'uploads', '', 'publish', 'closed', 'closed', '', 'uploads', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/cueros/wp-content/uploads', 0, 'mgmlp_media_folder', '', 0),
(6, 1, '2016-09-01 16:39:44', '2016-09-01 16:39:44', '', '2016', '', 'publish', 'closed', 'closed', '', '2016', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/cueros/wp-content/uploads/2016', 0, 'mgmlp_media_folder', '', 0),
(7, 1, '2016-09-01 16:39:44', '2016-09-01 16:39:44', '', '09', '', 'publish', 'closed', 'closed', '', '09', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/cueros/wp-content/uploads/2016/09', 0, 'mgmlp_media_folder', '', 0),
(13, 1, '2016-09-01 17:27:33', '2016-09-01 17:27:33', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2016-09-01 17:27:33', '2016-09-01 17:27:33', '', 0, 'http://localhost/cueros/?page_id=13', 0, 'page', '', 0),
(14, 1, '2016-09-01 17:27:33', '2016-09-01 17:27:33', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-09-01 17:27:33', '2016-09-01 17:27:33', '', 13, 'http://localhost/cueros/2016/09/01/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-09-01 17:27:46', '2016-09-01 17:27:46', 'Fundada en 1973 por Marina Bustamante, Renzo Costa ha logrado posicionarse como\r\nuna de las firmas mas importantes de diseño de prendas y artículos de cuero.\r\n\r\nActualmente cuenta con más de 40 puntos de venta en los centros comerciales más importántes\r\ndel Perú tales como el Jockey Plata, Larcomar y la cadena Real Plaza; así como puntos\r\nindependientes o stand alone en zonas estratégicas de Lima. Más recientemente, Renzo Costa\r\nha ingresado con éxito al mercado Chileno emplazándose en reconocidas zonas comerciales.', 'Nosotros', '', 'publish', 'closed', 'closed', '', 'nosotros', '', '', '2016-10-05 20:39:56', '2016-10-05 20:39:56', '', 0, 'http://localhost/cueros/?page_id=15', 0, 'page', '', 0),
(16, 1, '2016-09-01 17:27:46', '2016-09-01 17:27:46', '', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-09-01 17:27:46', '2016-09-01 17:27:46', '', 15, 'http://localhost/cueros/2016/09/01/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2016-09-01 17:27:57', '2016-09-01 17:27:57', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-09-01 17:27:57', '2016-09-01 17:27:57', '', 0, 'http://localhost/cueros/?page_id=17', 0, 'page', '', 0),
(18, 1, '2016-09-01 17:27:57', '2016-09-01 17:27:57', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2016-09-01 17:27:57', '2016-09-01 17:27:57', '', 17, 'http://localhost/cueros/2016/09/01/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-09-01 17:29:14', '2016-09-01 17:29:14', '<strong>MANTENIMIENTO </strong>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\n<strong>REPARACIÓN</strong>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;', 'Servicios', '', 'publish', 'closed', 'closed', '', 'servicios', '', '', '2016-10-06 17:15:02', '2016-10-06 17:15:02', '', 0, 'http://localhost/cueros/?page_id=19', 0, 'page', '', 0),
(20, 1, '2016-09-01 17:29:14', '2016-09-01 17:29:14', '', 'Servicios', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-09-01 17:29:14', '2016-09-01 17:29:14', '', 19, 'http://localhost/cueros/2016/09/01/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2016-09-01 17:29:24', '2016-09-01 17:29:24', '', 'Galeria', '', 'publish', 'closed', 'closed', '', 'galeria', '', '', '2016-10-06 17:41:13', '2016-10-06 17:41:13', '', 0, 'http://localhost/cueros/?page_id=21', 0, 'page', '', 0),
(22, 1, '2016-09-01 17:29:24', '2016-09-01 17:29:24', '', 'Galeria', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-09-01 17:29:24', '2016-09-01 17:29:24', '', 21, 'http://localhost/cueros/2016/09/01/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2016-09-01 17:29:33', '2016-09-01 17:29:33', '', 'Productos', '', 'publish', 'closed', 'closed', '', 'producto', '', '', '2016-10-06 19:47:19', '2016-10-06 19:47:19', '', 0, 'http://localhost/cueros/?page_id=23', 0, 'page', '', 0),
(24, 1, '2016-09-01 17:29:33', '2016-09-01 17:29:33', '', 'Producto', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-09-01 17:29:33', '2016-09-01 17:29:33', '', 23, 'http://localhost/cueros/2016/09/01/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2016-09-01 17:29:41', '2016-09-01 17:29:41', '', 'Productos', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-09-01 17:29:41', '2016-09-01 17:29:41', '', 23, 'http://localhost/cueros/2016/09/01/23-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2016-09-01 17:29:50', '2016-09-01 17:29:50', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2016-09-01 17:29:50', '2016-09-01 17:29:50', '', 0, 'http://localhost/cueros/?page_id=26', 0, 'page', '', 0),
(27, 1, '2016-09-01 17:29:50', '2016-09-01 17:29:50', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2016-09-01 17:29:50', '2016-09-01 17:29:50', '', 26, 'http://localhost/cueros/2016/09/01/26-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2016-09-01 18:16:44', '2016-09-01 18:16:44', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2016-10-10 20:49:12', '2016-10-10 20:49:12', '', 0, 'http://localhost/cueros/?p=29', 3, 'nav_menu_item', '', 0),
(30, 1, '2016-09-01 18:16:45', '2016-09-01 18:16:45', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2016-10-10 20:49:13', '2016-10-10 20:49:13', '', 0, 'http://localhost/cueros/?p=30', 8, 'nav_menu_item', '', 0),
(31, 1, '2016-09-01 18:16:45', '2016-09-01 18:16:45', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2016-10-10 20:49:12', '2016-10-10 20:49:12', '', 0, 'http://localhost/cueros/?p=31', 5, 'nav_menu_item', '', 0),
(32, 1, '2016-09-01 18:16:45', '2016-09-01 18:16:45', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2016-10-10 20:49:12', '2016-10-10 20:49:12', '', 0, 'http://localhost/cueros/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2016-09-01 18:16:46', '2016-09-01 18:16:46', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2016-10-10 20:49:12', '2016-10-10 20:49:12', '', 0, 'http://localhost/cueros/?p=33', 2, 'nav_menu_item', '', 0),
(34, 1, '2016-09-01 18:16:46', '2016-09-01 18:16:46', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2016-10-10 20:49:12', '2016-10-10 20:49:12', '', 0, 'http://localhost/cueros/?p=34', 7, 'nav_menu_item', '', 0),
(35, 1, '2016-09-01 18:16:46', '2016-09-01 18:16:46', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2016-10-10 20:49:12', '2016-10-10 20:49:12', '', 0, 'http://localhost/cueros/?p=35', 4, 'nav_menu_item', '', 0),
(43, 1, '2016-09-01 21:25:51', '2016-09-01 21:25:51', '', 'Monedero', '', 'publish', 'closed', 'closed', '', 'monedero', '', '', '2016-09-01 21:38:50', '2016-09-01 21:38:50', '', 0, 'http://localhost/cueros/?post_type=theme-producto&#038;p=43', 0, 'theme-producto', '', 0),
(44, 1, '2016-09-01 21:38:43', '2016-09-01 21:38:43', '', 'producto_cueros_artesania_personal_001', '', 'inherit', 'open', 'closed', '', 'producto_cueros_artesania_personal_001', '', '', '2016-09-01 21:38:43', '2016-09-01 21:38:43', '', 43, 'http://localhost/cueros/wp-content/uploads/2016/09/producto_cueros_artesania_personal_001.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2016-09-01 21:48:18', '2016-09-01 21:48:18', '', 'Monedero', '', 'publish', 'closed', 'closed', '', 'monedero-3', '', '', '2016-09-01 21:48:36', '2016-09-01 21:48:36', '', 0, 'http://localhost/cueros/?post_type=theme-producto&#038;p=45', 0, 'theme-producto', '', 0),
(46, 1, '2016-09-01 21:48:25', '2016-09-01 21:48:25', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Monedero', '', 'publish', 'closed', 'closed', '', 'monedero-2', '', '', '2016-10-06 20:51:53', '2016-10-06 20:51:53', '', 0, 'http://localhost/cueros/?post_type=theme-producto&#038;p=46', 0, 'theme-producto', '', 0),
(47, 1, '2016-09-01 22:37:12', '2016-09-01 22:37:12', 'accesorios originales', '100% cueros', '', 'trash', 'closed', 'closed', '', '100-cueros__trashed', '', '', '2016-10-10 17:20:30', '2016-10-10 17:20:30', '', 0, 'http://localhost/cueros/?post_type=slider-home&#038;p=47', 0, 'slider-home', '', 0),
(49, 1, '2016-09-01 22:38:27', '2016-09-01 22:38:27', 'accesorios originales', '100% cueros', '', 'publish', 'closed', 'closed', '', '100-cueros-2', '', '', '2016-10-10 17:21:05', '2016-10-10 17:21:05', '', 0, 'http://localhost/cueros/?post_type=slider-home&#038;p=49', 0, 'slider-home', '', 0),
(50, 1, '2016-09-02 19:24:49', '2016-09-02 19:24:49', '', 'Artesanía Tarma', '', 'publish', 'closed', 'closed', '', 'artesania-tarma', '', '', '2016-09-02 21:03:04', '2016-09-02 21:03:04', '', 0, 'http://localhost/cueros/?post_type=theme-gallery-images&#038;p=50', 0, 'theme-gallery-images', '', 0),
(51, 1, '2016-10-05 16:14:15', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-05 16:14:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/cueros/?p=51', 0, 'post', '', 0),
(52, 1, '2016-10-05 17:24:04', '2016-10-05 17:24:04', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo-2', '', '', '2016-10-05 17:25:00', '2016-10-05 17:25:00', '', 0, 'http://localhost/cueros/?p=52', 0, 'post', '', 0),
(53, 1, '2016-10-05 17:25:00', '2016-10-05 17:25:00', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2016-10-05 17:25:00', '2016-10-05 17:25:00', '', 52, 'http://localhost/cueros/2016/10/05/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2016-10-05 17:31:42', '2016-10-05 17:31:42', 'https://www.youtube.com/watch?v=D7yW0FUOHuE', 'Video Muestra', '', 'publish', 'closed', 'closed', '', 'video-muestra', '', '', '2016-10-05 17:31:42', '2016-10-05 17:31:42', '', 0, 'http://localhost/cueros/?post_type=theme-gallery-video&#038;p=54', 0, 'theme-gallery-video', '', 0),
(55, 1, '2016-10-05 17:32:06', '2016-10-05 17:32:06', 'https://www.youtube.com/watch?v=D7yW0FUOHuE', 'Video Muestra', '', 'publish', 'closed', 'closed', '', 'video-muestra-2', '', '', '2016-10-05 17:32:06', '2016-10-05 17:32:06', '', 0, 'http://localhost/cueros/?post_type=theme-gallery-video&#038;p=55', 0, 'theme-gallery-video', '', 0),
(56, 1, '2016-10-05 19:55:29', '2016-10-05 19:55:29', '', 'banner_sample', '', 'inherit', 'open', 'closed', '', 'banner_sample', '', '', '2016-10-05 19:55:29', '2016-10-05 19:55:29', '', 15, 'http://localhost/cueros/wp-content/uploads/2016/09/banner_sample.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2016-10-05 20:18:37', '2016-10-05 20:18:37', '', 'nosotros_cueros_artesania_foto_3', '', 'inherit', 'open', 'closed', '', 'nosotros_cueros_artesania_foto_3', '', '', '2016-10-05 20:18:37', '2016-10-05 20:18:37', '', 15, 'http://localhost/cueros/wp-content/uploads/2016/09/nosotros_cueros_artesania_foto_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2016-10-05 20:18:39', '2016-10-05 20:18:39', '', 'nosotros_cueros_artesania_foto_2', '', 'inherit', 'open', 'closed', '', 'nosotros_cueros_artesania_foto_2', '', '', '2016-10-05 20:18:39', '2016-10-05 20:18:39', '', 15, 'http://localhost/cueros/wp-content/uploads/2016/09/nosotros_cueros_artesania_foto_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2016-10-05 20:39:56', '2016-10-05 20:39:56', 'Fundada en 1973 por Marina Bustamante, Renzo Costa ha logrado posicionarse como\r\nuna de las firmas mas importantes de diseño de prendas y artículos de cuero.\r\n\r\nActualmente cuenta con más de 40 puntos de venta en los centros comerciales más importántes\r\ndel Perú tales como el Jockey Plata, Larcomar y la cadena Real Plaza; así como puntos\r\nindependientes o stand alone en zonas estratégicas de Lima. Más recientemente, Renzo Costa\r\nha ingresado con éxito al mercado Chileno emplazándose en reconocidas zonas comerciales.', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-10-05 20:39:56', '2016-10-05 20:39:56', '', 15, 'http://localhost/cueros/2016/10/05/15-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2016-10-06 17:14:44', '2016-10-06 17:14:44', '<strong>MANTENIMIENTO </strong>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\n<strong>REPARACIÓN</strong>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;', 'Servicios', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-10-06 17:14:44', '2016-10-06 17:14:44', '', 19, 'http://localhost/cueros/2016/10/06/19-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2016-10-06 19:12:59', '2016-10-06 19:12:59', 'otra galería mas para la colección', 'Artesanía Otra', '', 'publish', 'closed', 'closed', '', 'artesania-otra', '', '', '2016-10-06 19:12:59', '2016-10-06 19:12:59', '', 0, 'http://localhost/cueros/?post_type=theme-gallery-images&#038;p=61', 0, 'theme-gallery-images', '', 0),
(62, 1, '2016-10-06 20:51:40', '2016-10-06 20:51:40', '', 'producto_cueros_artesania_personal_001', '', 'inherit', 'open', 'closed', '', 'producto_cueros_artesania_personal_001-2', '', '', '2016-10-06 20:51:40', '2016-10-06 20:51:40', '', 46, 'http://localhost/cueros/wp-content/uploads/2016/09/producto_cueros_artesania_personal_001-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2016-10-10 17:20:59', '2016-10-10 17:20:59', '', 'slider_home', '', 'inherit', 'open', 'closed', '', 'slider_home', '', '', '2016-10-10 17:20:59', '2016-10-10 17:20:59', '', 49, 'http://localhost/cueros/wp-content/uploads/2016/09/slider_home.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2016-10-10 17:21:28', '2016-10-10 17:21:28', 'accesorios originales', '100% cueros', '', 'publish', 'closed', 'closed', '', '100-cueros', '', '', '2016-10-10 17:21:34', '2016-10-10 17:21:34', '', 0, 'http://localhost/cueros/?post_type=slider-home&#038;p=64', 0, 'slider-home', '', 0),
(65, 1, '2016-10-10 20:48:09', '2016-10-10 20:48:09', '', 'Videos', '', 'publish', 'closed', 'closed', '', 'videos', '', '', '2016-10-10 20:48:09', '2016-10-10 20:48:09', '', 0, 'http://localhost/cueros/?page_id=65', 0, 'page', '', 0),
(66, 1, '2016-10-10 20:48:09', '2016-10-10 20:48:09', '', 'Videos', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2016-10-10 20:48:09', '2016-10-10 20:48:09', '', 65, 'http://localhost/cueros/2016/10/10/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2016-10-10 20:49:12', '2016-10-10 20:49:12', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2016-10-10 20:49:12', '2016-10-10 20:49:12', '', 0, 'http://localhost/cueros/?p=67', 6, 'nav_menu_item', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(34, 2, 0),
(35, 2, 0),
(44, 3, 0),
(46, 5, 0),
(46, 7, 0),
(46, 10, 0),
(46, 11, 0),
(46, 15, 0),
(46, 16, 0),
(46, 17, 0),
(52, 1, 0),
(56, 12, 0),
(57, 12, 0),
(58, 12, 0),
(62, 18, 0),
(63, 4, 0),
(67, 2, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'wpmf-category', '', 0, 1),
(4, 4, 'wpmf-category', '', 0, 1),
(5, 5, 'producto_category', '', 0, 1),
(6, 6, 'producto_category', '', 5, 0),
(7, 7, 'producto_category', '', 5, 1),
(8, 8, 'producto_category', '', 5, 0),
(9, 9, 'producto_category', '', 5, 0),
(10, 10, 'producto_category', '', 0, 1),
(11, 11, 'producto_category', '', 10, 1),
(12, 12, 'wpmf-category', '', 0, 3),
(13, 13, 'category', '', 0, 0),
(14, 14, 'category', '', 0, 0),
(15, 15, 'post_tag', '', 0, 1),
(16, 16, 'post_tag', '', 0, 1),
(17, 17, 'post_tag', '', 0, 1),
(18, 18, 'wpmf-category', '', 3, 1) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#
INSERT INTO `wp_termmeta` ( `meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 10, 'meta_tax_order', '2'),
(2, 5, 'meta_tax_order', '1'),
(3, 13, 'meta_tax_order', '1'),
(4, 14, 'meta_tax_order', '1') ;

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'PRODUCTOS', 'productos', 1),
(4, 'SLIDERHOME', 'sliderhome', 1),
(5, 'Cueros', 'cueros', 0),
(6, 'Art. Personal', 'art-personal', 0),
(7, 'Art. Oficina', 'art-oficina', 0),
(8, 'Adornos', 'adornos', 0),
(9, 'Calzados', 'calzados', 0),
(10, 'Artesania', 'artesania', 0),
(11, 'Bordado', 'bordado', 0),
(12, 'NOSOTROS', 'nosotros', 1),
(13, 'Calzados', 'calzados', 0),
(14, 'Art. Personal', 'art-personal', 0),
(15, 'ropa', 'ropa', 0),
(16, 'cueros', 'cueros', 0),
(17, 'comida', 'comida', 0),
(18, 'CASACA', 'casas', 1) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'cuerosweb'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:4:{s:64:"519f814d504e1e24695b698e63cf0b1d235d51f8513b0ddfca10e445ac250835";a:4:{s:10:"expiration";i:1476287252;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476114452;}s:64:"05946d7c0034dd6716705a0b7f21ee06ce814df9085fd0ca73af4a12d7060300";a:4:{s:10:"expiration";i:1476288723;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476115923;}s:64:"2a09a6c10079e900472a22558ba0e7d8064e435a18a18f9e219d55a8ea105701";a:4:{s:10:"expiration";i:1476304791;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476131991;}s:64:"96dd3b1936e0ecec8fbd1e2bb303bda230131a9dab4d433736a3f51c4f1c4961";a:4:{s:10:"expiration";i:1476317244;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476144444;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '51'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(18, 1, 'closedpostboxes_theme-producto', 'a:1:{i:0;s:10:"postcustom";}'),
(19, 1, 'metaboxhidden_theme-producto', 'a:1:{i:0;s:7:"slugdiv";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=1'),
(21, 1, 'wp_user-settings-time', '1475774080'),
(22, 1, 'closedpostboxes_theme-gallery-images', 'a:2:{i:0;s:11:"postexcerpt";i:1;s:10:"postcustom";}'),
(23, 1, 'metaboxhidden_theme-gallery-images', 'a:1:{i:0;s:7:"slugdiv";}'),
(24, 1, 'nav_menu_recently_edited', '2') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BAIBck3Yn0ReDj7ufd4lW3CqAaVMN20', 'admin', 'jgomez@ingenioart.com', '', '2016-09-01 16:31:36', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

