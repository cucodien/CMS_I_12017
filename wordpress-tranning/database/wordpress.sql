-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 13, 2017 at 02:56 AM
-- Server version: 5.5.34
-- PHP Version: 5.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-13 01:58:40', '2017-11-13 01:58:40', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=132 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:69/wordpress', 'yes'),
(2, 'home', 'http://localhost:69/wordpress', 'yes'),
(3, 'blogname', 'wordpress tranning 4.8.3', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dothanhtuantt6@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=7&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '10', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:4:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;i:3;a:1:{s:5:"title";s:6:"Search";}i:4;a:1:{s:5:"title";s:6:"Search";}}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:6:"text-2";i:1;s:8:"search-3";i:2;s:6:"text-3";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-4";}s:9:"sidebar-3";a:2:{i:0;s:6:"text-5";i:1;s:8:"search-4";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'cron', 'a:3:{i:1510581521;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1510624735;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:6:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:3:"top";i:2;s:6:"social";i:3;}s:7:"panel_1";i:11;s:7:"panel_2";i:8;s:7:"panel_3";i:10;s:7:"panel_4";i:9;}', 'yes'),
(113, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"4.8.3";s:12:"last_checked";i:1510538329;}', 'no'),
(114, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1510538329;}', 'no'),
(115, '_site_transient_timeout_theme_roots', '1510540129', 'no'),
(116, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(117, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1510539306;}', 'no'),
(119, 'can_compress_scripts', '1', 'no'),
(120, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1510581543', 'no'),
(121, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(130, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(131, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2017/11/espresso.jpg'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2017/11/espresso.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"espresso-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"espresso-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"espresso-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"espresso-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"espresso-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4, 4, '_starter_content_theme', 'twentyseventeen'),
(6, 5, '_wp_attached_file', '2017/11/sandwich.jpg'),
(7, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2017/11/sandwich.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"sandwich-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"sandwich-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"sandwich-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"sandwich-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"sandwich-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(8, 5, '_starter_content_theme', 'twentyseventeen'),
(10, 6, '_wp_attached_file', '2017/11/coffee.jpg'),
(11, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:18:"2017/11/coffee.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"coffee-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"coffee-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"coffee-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"coffee-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"coffee-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(12, 6, '_starter_content_theme', 'twentyseventeen'),
(15, 8, '_thumbnail_id', '5'),
(17, 9, '_thumbnail_id', '4'),
(19, 10, '_thumbnail_id', '6'),
(21, 11, '_thumbnail_id', '4'),
(23, 18, '_menu_item_type', 'custom'),
(24, 18, '_menu_item_menu_item_parent', '0'),
(25, 18, '_menu_item_object_id', '18'),
(26, 18, '_menu_item_object', 'custom'),
(27, 18, '_menu_item_target', ''),
(28, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(29, 18, '_menu_item_xfn', ''),
(30, 18, '_menu_item_url', 'http://localhost:69/wordpress/'),
(31, 19, '_menu_item_type', 'post_type'),
(32, 19, '_menu_item_menu_item_parent', '0'),
(33, 19, '_menu_item_object_id', '8'),
(34, 19, '_menu_item_object', 'page'),
(35, 19, '_menu_item_target', ''),
(36, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(37, 19, '_menu_item_xfn', ''),
(38, 19, '_menu_item_url', ''),
(39, 20, '_menu_item_type', 'post_type'),
(40, 20, '_menu_item_menu_item_parent', '0'),
(41, 20, '_menu_item_object_id', '10'),
(42, 20, '_menu_item_object', 'page'),
(43, 20, '_menu_item_target', ''),
(44, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(45, 20, '_menu_item_xfn', ''),
(46, 20, '_menu_item_url', ''),
(47, 21, '_menu_item_type', 'post_type'),
(48, 21, '_menu_item_menu_item_parent', '0'),
(49, 21, '_menu_item_object_id', '9'),
(50, 21, '_menu_item_object', 'page'),
(51, 21, '_menu_item_target', ''),
(52, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(53, 21, '_menu_item_xfn', ''),
(54, 21, '_menu_item_url', ''),
(55, 22, '_menu_item_type', 'custom'),
(56, 22, '_menu_item_menu_item_parent', '0'),
(57, 22, '_menu_item_object_id', '22'),
(58, 22, '_menu_item_object', 'custom'),
(59, 22, '_menu_item_target', ''),
(60, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(61, 22, '_menu_item_xfn', ''),
(62, 22, '_menu_item_url', 'https://www.yelp.com'),
(63, 23, '_menu_item_type', 'custom'),
(64, 23, '_menu_item_menu_item_parent', '0'),
(65, 23, '_menu_item_object_id', '23'),
(66, 23, '_menu_item_object', 'custom'),
(67, 23, '_menu_item_target', ''),
(68, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 23, '_menu_item_xfn', ''),
(70, 23, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(71, 24, '_menu_item_type', 'custom'),
(72, 24, '_menu_item_menu_item_parent', '0'),
(73, 24, '_menu_item_object_id', '24'),
(74, 24, '_menu_item_object', 'custom'),
(75, 24, '_menu_item_target', ''),
(76, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(77, 24, '_menu_item_xfn', ''),
(78, 24, '_menu_item_url', 'https://twitter.com/wordpress'),
(79, 25, '_menu_item_type', 'custom'),
(80, 25, '_menu_item_menu_item_parent', '0'),
(81, 25, '_menu_item_object_id', '25'),
(82, 25, '_menu_item_object', 'custom'),
(83, 25, '_menu_item_target', ''),
(84, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(85, 25, '_menu_item_xfn', ''),
(86, 25, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(87, 26, '_menu_item_type', 'custom'),
(88, 26, '_menu_item_menu_item_parent', '0'),
(89, 26, '_menu_item_object_id', '26'),
(90, 26, '_menu_item_object', 'custom'),
(91, 26, '_menu_item_target', ''),
(92, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(93, 26, '_menu_item_xfn', ''),
(94, 26, '_menu_item_url', 'mailto:wordpress@example.com'),
(95, 12, '_wp_trash_meta_status', 'publish'),
(96, 12, '_wp_trash_meta_time', '1510539326');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-11-13 01:58:40', '2017-11-13 01:58:40', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-11-13 01:58:40', '2017-11-13 01:58:40', '', 0, 'http://localhost:69/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2017-11-13 01:58:40', '2017-11-13 01:58:40', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:69/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-11-13 01:58:40', '2017-11-13 01:58:40', '', 0, 'http://localhost:69/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-11-13 01:58:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-13 01:58:56', '0000-00-00 00:00:00', '', 0, 'http://localhost:69/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 'Espresso', '', 'inherit', 'open', 'closed', '', 'espresso', '', '', '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 0, 'http://localhost:69/wordpress/wp-content/uploads/2017/11/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 'Sandwich', '', 'inherit', 'open', 'closed', '', 'sandwich', '', '', '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 0, 'http://localhost:69/wordpress/wp-content/uploads/2017/11/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 'Coffee', '', 'inherit', 'open', 'closed', '', 'coffee', '', '', '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 0, 'http://localhost:69/wordpress/wp-content/uploads/2017/11/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2017-11-13 02:15:25', '2017-11-13 02:15:25', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 0, 'http://localhost:69/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-11-13 02:15:25', '2017-11-13 02:15:25', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 0, 'http://localhost:69/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-11-13 02:15:25', '2017-11-13 02:15:25', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 0, 'http://localhost:69/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 0, 'http://localhost:69/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2017-11-13 02:15:25', '2017-11-13 02:15:25', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'publish', 'closed', 'closed', '', 'a-homepage-section', '', '', '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 0, 'http://localhost:69/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2017-11-13 02:15:25', '2017-11-13 02:15:25', '{"widget_text[2]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=","title":"Find Us","is_widget_customizer_js_value":true,"instance_hash_key":"c44d9683d69144d0e25da156e5afecb3"},"type":"option","user_id":1},"widget_search[3]":{"starter_content":true,"value":{"encoded_serialized_instance":"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==","title":"Search","is_widget_customizer_js_value":true,"instance_hash_key":"1bdb2bd3180d65eab3bd9d8ee13ae247"},"type":"option","user_id":1},"widget_text[3]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=","title":"About This Site","is_widget_customizer_js_value":true,"instance_hash_key":"c448438f1abafb968171a16662afda3f"},"type":"option","user_id":1},"sidebars_widgets[sidebar-1]":{"starter_content":true,"value":["text-2","search-3","text-3"],"type":"option","user_id":1},"widget_text[4]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=","title":"Find Us","is_widget_customizer_js_value":true,"instance_hash_key":"c44d9683d69144d0e25da156e5afecb3"},"type":"option","user_id":1},"sidebars_widgets[sidebar-2]":{"starter_content":true,"value":["text-4"],"type":"option","user_id":1},"widget_text[5]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=","title":"About This Site","is_widget_customizer_js_value":true,"instance_hash_key":"c448438f1abafb968171a16662afda3f"},"type":"option","user_id":1},"widget_search[4]":{"starter_content":true,"value":{"encoded_serialized_instance":"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==","title":"Search","is_widget_customizer_js_value":true,"instance_hash_key":"1bdb2bd3180d65eab3bd9d8ee13ae247"},"type":"option","user_id":1},"sidebars_widgets[sidebar-3]":{"starter_content":true,"value":["text-5","search-4"],"type":"option","user_id":1},"nav_menus_created_posts":{"starter_content":true,"value":[4,5,6,7,8,9,10,11],"type":"option","user_id":1},"nav_menu[-1]":{"value":{"name":"Top Menu","description":"","parent":0,"auto_add":false},"type":"nav_menu","user_id":1},"nav_menu_item[-1]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":0,"type":"custom","title":"Home","url":"http:\\/\\/localhost:69\\/wordpress\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-1,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-2]":{"value":{"object_id":8,"object":"page","menu_item_parent":0,"position":1,"type":"post_type","title":"About","url":"","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"About","nav_menu_term_id":-1,"_invalid":false,"type_label":"Page"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-3]":{"value":{"object_id":10,"object":"page","menu_item_parent":0,"position":2,"type":"post_type","title":"Blog","url":"","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Blog","nav_menu_term_id":-1,"_invalid":false,"type_label":"Page"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-4]":{"value":{"object_id":9,"object":"page","menu_item_parent":0,"position":3,"type":"post_type","title":"Contact","url":"","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Contact","nav_menu_term_id":-1,"_invalid":false,"type_label":"Page"},"type":"nav_menu_item","user_id":1},"twentyseventeen::nav_menu_locations[top]":{"starter_content":true,"value":-1,"type":"theme_mod","user_id":1},"nav_menu[-5]":{"value":{"name":"Social Links Menu","description":"","parent":0,"auto_add":false},"type":"nav_menu","user_id":1},"nav_menu_item[-5]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":0,"type":"custom","title":"Yelp","url":"https:\\/\\/www.yelp.com","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-5,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-6]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":1,"type":"custom","title":"Facebook","url":"https:\\/\\/www.facebook.com\\/wordpress","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-5,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-7]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":2,"type":"custom","title":"Twitter","url":"https:\\/\\/twitter.com\\/wordpress","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-5,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-8]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":3,"type":"custom","title":"Instagram","url":"https:\\/\\/www.instagram.com\\/explore\\/tags\\/wordcamp\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-5,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-9]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":4,"type":"custom","title":"Email","url":"mailto:wordpress@example.com","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-5,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1},"twentyseventeen::nav_menu_locations[social]":{"starter_content":true,"value":-5,"type":"theme_mod","user_id":1},"show_on_front":{"starter_content":true,"value":"page","type":"option","user_id":1},"page_on_front":{"starter_content":true,"value":7,"type":"option","user_id":1},"page_for_posts":{"starter_content":true,"value":10,"type":"option","user_id":1},"twentyseventeen::panel_1":{"starter_content":true,"value":11,"type":"theme_mod","user_id":1},"twentyseventeen::panel_2":{"starter_content":true,"value":8,"type":"theme_mod","user_id":1},"twentyseventeen::panel_3":{"starter_content":true,"value":10,"type":"theme_mod","user_id":1},"twentyseventeen::panel_4":{"starter_content":true,"value":9,"type":"theme_mod","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', '5b7ae468-6807-4687-8653-2b99619c74d2', '', '', '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 0, 'http://localhost:69/wordpress/?p=12', 0, 'customize_changeset', '', 0),
(13, 1, '2017-11-13 02:15:25', '2017-11-13 02:15:25', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 7, 'http://localhost:69/wordpress/2017/11/13/7-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2017-11-13 02:15:25', '2017-11-13 02:15:25', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 8, 'http://localhost:69/wordpress/2017/11/13/8-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-11-13 02:15:25', '2017-11-13 02:15:25', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 9, 'http://localhost:69/wordpress/2017/11/13/9-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 10, 'http://localhost:69/wordpress/2017/11/13/10-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-11-13 02:15:25', '2017-11-13 02:15:25', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 11, 'http://localhost:69/wordpress/2017/11/13/11-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-11-13 02:15:25', '2017-11-13 02:15:25', '', 0, 'http://localhost:69/wordpress/2017/11/13/home/', 0, 'nav_menu_item', '', 0),
(19, 1, '2017-11-13 02:15:26', '2017-11-13 02:15:26', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2017-11-13 02:15:26', '2017-11-13 02:15:26', '', 0, 'http://localhost:69/wordpress/2017/11/13/19/', 1, 'nav_menu_item', '', 0),
(20, 1, '2017-11-13 02:15:26', '2017-11-13 02:15:26', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2017-11-13 02:15:26', '2017-11-13 02:15:26', '', 0, 'http://localhost:69/wordpress/2017/11/13/20/', 2, 'nav_menu_item', '', 0),
(21, 1, '2017-11-13 02:15:26', '2017-11-13 02:15:26', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2017-11-13 02:15:26', '2017-11-13 02:15:26', '', 0, 'http://localhost:69/wordpress/2017/11/13/21/', 3, 'nav_menu_item', '', 0),
(22, 1, '2017-11-13 02:15:26', '2017-11-13 02:15:26', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2017-11-13 02:15:26', '2017-11-13 02:15:26', '', 0, 'http://localhost:69/wordpress/2017/11/13/yelp/', 0, 'nav_menu_item', '', 0),
(23, 1, '2017-11-13 02:15:26', '2017-11-13 02:15:26', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2017-11-13 02:15:26', '2017-11-13 02:15:26', '', 0, 'http://localhost:69/wordpress/2017/11/13/facebook/', 1, 'nav_menu_item', '', 0),
(24, 1, '2017-11-13 02:15:26', '2017-11-13 02:15:26', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2017-11-13 02:15:26', '2017-11-13 02:15:26', '', 0, 'http://localhost:69/wordpress/2017/11/13/twitter/', 2, 'nav_menu_item', '', 0),
(25, 1, '2017-11-13 02:15:26', '2017-11-13 02:15:26', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2017-11-13 02:15:26', '2017-11-13 02:15:26', '', 0, 'http://localhost:69/wordpress/2017/11/13/instagram/', 3, 'nav_menu_item', '', 0),
(26, 1, '2017-11-13 02:15:26', '2017-11-13 02:15:26', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2017-11-13 02:15:26', '2017-11-13 02:15:26', '', 0, 'http://localhost:69/wordpress/2017/11/13/email/', 4, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Menu', 'top-menu', 0),
(3, 'Social Links Menu', 'social-links-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 3, 0),
(23, 3, 0),
(24, 3, 0),
(25, 3, 0),
(26, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'ectoplasm'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"e7f5f99b01214caae8e6abf9fd09a2740919fbc1f251347c73c4f6951b7f5092";a:4:{s:10:"expiration";i:1510711135;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1510538335;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BX.YP7BhXmPzn2b01Jqs3zCWJfn/Ee.', 'admin', 'dothanhtuantt6@gmail.com', '', '2017-11-13 01:58:40', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
