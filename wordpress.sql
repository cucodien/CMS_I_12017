-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 15, 2017 at 09:45 AM
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
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `wordpress`;

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
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-15 06:10:24', '2017-11-15 06:10:24', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=146 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:69/wordpress', 'yes'),
(2, 'home', 'http://localhost:69/wordpress', 'yes'),
(3, 'blogname', 'WORDPRESS-TRAINNING-4.8.3', 'yes'),
(4, 'blogdescription', 'Lê Ngọc Nguyên', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vuamapcankiengan@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=17&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
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
(51, 'blog_public', '1', 'yes'),
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
(79, 'widget_text', 'a:9:{i:2;a:4:{s:5:"title";s:16:"Tìm Chúng Tôi";s:4:"text";s:175:"<strong>Địa chỉ</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Giờ</strong>\nThứ hai - Thứ sáu: 9:00AM - 5:00PM\nThứ bảy và Chủ nhật: 11:00AM - 3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:27:"Giới thiệu về website";s:4:"text";s:155:"Đây là một nơi tốt để giới thiệu bản thân và trang web của bạn hoặc đưa ra các thông tin để người xem tin tưởng hơn.";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:16:"Tìm Chúng Tôi";s:4:"text";s:175:"<strong>Địa chỉ</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Giờ</strong>\nThứ hai - Thứ sáu: 9:00AM - 5:00PM\nThứ bảy và Chủ nhật: 11:00AM - 3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:27:"Giới thiệu về website";s:4:"text";s:155:"Đây là một nơi tốt để giới thiệu bản thân và trang web của bạn hoặc đưa ra các thông tin để người xem tin tưởng hơn.";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;i:6;a:4:{s:5:"title";s:16:"Tìm Chúng Tôi";s:4:"text";s:175:"<strong>Địa chỉ</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Giờ</strong>\nThứ hai - Thứ sáu: 9:00AM - 5:00PM\nThứ bảy và Chủ nhật: 11:00AM - 3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:7;a:4:{s:5:"title";s:27:"Giới thiệu về website";s:4:"text";s:155:"Đây là một nơi tốt để giới thiệu bản thân và trang web của bạn hoặc đưa ra các thông tin để người xem tin tưởng hơn.";s:6:"filter";b:1;s:6:"visual";b:1;}i:8;a:4:{s:5:"title";s:16:"Tìm Chúng Tôi";s:4:"text";s:175:"<strong>Địa chỉ</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Giờ</strong>\nThứ hai - Thứ sáu: 9:00AM - 5:00PM\nThứ bảy và Chủ nhật: 11:00AM - 3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:9;a:4:{s:5:"title";s:27:"Giới thiệu về website";s:4:"text";s:155:"Đây là một nơi tốt để giới thiệu bản thân và trang web của bạn hoặc đưa ra các thông tin để người xem tin tưởng hơn.";s:6:"filter";b:1;s:6:"visual";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '20', 'yes'),
(84, 'page_on_front', '17', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'vi', 'yes'),
(95, 'widget_search', 'a:4:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;i:3;a:1:{s:5:"title";s:11:"Tìm kiếm";}i:4;a:1:{s:5:"title";s:11:"Tìm kiếm";}}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:6:"text-6";i:1;s:8:"search-3";i:2;s:6:"text-7";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-8";}s:9:"sidebar-3";a:2:{i:0;s:6:"text-9";i:1;s:8:"search-4";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:3:{i:1510769425;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1510812768;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:6:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:3:"top";i:2;s:6:"social";i:3;}s:7:"panel_1";i:21;s:7:"panel_2";i:18;s:7:"panel_3";i:20;s:7:"panel_4";i:19;}', 'yes'),
(114, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"4.8.3";s:12:"last_checked";i:1510726298;}', 'no'),
(115, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1510726298;}', 'no'),
(118, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1510732846;}', 'no'),
(120, '_transient_timeout_dash_v2_a5a61dcab273495c31cd79aafebbdc74', '1510769571', 'no'),
(121, '_transient_dash_v2_a5a61dcab273495c31cd79aafebbdc74', '<div class="rss-widget"><p><strong>Lỗi RSS:</strong> WP HTTP Error: cURL error 6: Could not resolve host: vi.wordpress.org</p></div><div class="rss-widget"><p><strong>Lỗi RSS:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(122, 'can_compress_scripts', '1', 'no'),
(140, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(143, '_site_transient_timeout_theme_roots', '1510734646', 'no'),
(144, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(145, '_transient_is_multi_author', '0', 'yes');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=119 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 5, '_wp_attached_file', '2017/11/espresso.jpg'),
(3, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2017/11/espresso.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"espresso-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"espresso-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"espresso-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"espresso-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"espresso-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4, 5, '_starter_content_theme', 'twentyseventeen'),
(5, 5, '_customize_draft_post_name', 'espresso'),
(6, 6, '_wp_attached_file', '2017/11/sandwich.jpg'),
(7, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2017/11/sandwich.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"sandwich-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"sandwich-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"sandwich-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"sandwich-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"sandwich-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(8, 6, '_starter_content_theme', 'twentyseventeen'),
(9, 6, '_customize_draft_post_name', 'banh-kep'),
(10, 7, '_wp_attached_file', '2017/11/coffee.jpg'),
(11, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:18:"2017/11/coffee.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"coffee-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"coffee-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"coffee-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"coffee-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"coffee-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(12, 7, '_starter_content_theme', 'twentyseventeen'),
(13, 7, '_customize_draft_post_name', 'coffee'),
(14, 8, '_customize_draft_post_name', 'trang-chu'),
(15, 9, '_thumbnail_id', '6'),
(16, 9, '_customize_draft_post_name', 'gioi-thieu'),
(17, 10, '_thumbnail_id', '5'),
(18, 10, '_customize_draft_post_name', 'lien-he'),
(19, 11, '_thumbnail_id', '7'),
(20, 11, '_customize_draft_post_name', 'blog'),
(21, 12, '_thumbnail_id', '5'),
(22, 12, '_customize_draft_post_name', 'mot-phan-trang-chu'),
(23, 14, '_wp_attached_file', '2017/11/espresso-1.jpg'),
(24, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:22:"2017/11/espresso-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"espresso-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"espresso-1-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"espresso-1-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"espresso-1-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:22:"espresso-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(25, 14, '_starter_content_theme', 'twentyseventeen'),
(27, 15, '_wp_attached_file', '2017/11/sandwich-1.jpg'),
(28, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:22:"2017/11/sandwich-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"sandwich-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"sandwich-1-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"sandwich-1-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"sandwich-1-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:22:"sandwich-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(29, 15, '_starter_content_theme', 'twentyseventeen'),
(31, 16, '_wp_attached_file', '2017/11/coffee-1.jpg'),
(32, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2017/11/coffee-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"coffee-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"coffee-1-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"coffee-1-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"coffee-1-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"coffee-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(33, 16, '_starter_content_theme', 'twentyseventeen'),
(36, 18, '_thumbnail_id', '15'),
(38, 19, '_thumbnail_id', '14'),
(40, 20, '_thumbnail_id', '16'),
(42, 21, '_thumbnail_id', '14'),
(44, 28, '_menu_item_type', 'custom'),
(45, 28, '_menu_item_menu_item_parent', '0'),
(46, 28, '_menu_item_object_id', '28'),
(47, 28, '_menu_item_object', 'custom'),
(48, 28, '_menu_item_target', ''),
(49, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 28, '_menu_item_xfn', ''),
(51, 28, '_menu_item_url', 'http://localhost:69/wordpress/'),
(52, 29, '_menu_item_type', 'post_type'),
(53, 29, '_menu_item_menu_item_parent', '0'),
(54, 29, '_menu_item_object_id', '18'),
(55, 29, '_menu_item_object', 'page'),
(56, 29, '_menu_item_target', ''),
(57, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(58, 29, '_menu_item_xfn', ''),
(59, 29, '_menu_item_url', ''),
(60, 30, '_menu_item_type', 'post_type'),
(61, 30, '_menu_item_menu_item_parent', '0'),
(62, 30, '_menu_item_object_id', '20'),
(63, 30, '_menu_item_object', 'page'),
(64, 30, '_menu_item_target', ''),
(65, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(66, 30, '_menu_item_xfn', ''),
(67, 30, '_menu_item_url', ''),
(68, 31, '_menu_item_type', 'post_type'),
(69, 31, '_menu_item_menu_item_parent', '0'),
(70, 31, '_menu_item_object_id', '19'),
(71, 31, '_menu_item_object', 'page'),
(72, 31, '_menu_item_target', ''),
(73, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 31, '_menu_item_xfn', ''),
(75, 31, '_menu_item_url', ''),
(76, 32, '_menu_item_type', 'custom'),
(77, 32, '_menu_item_menu_item_parent', '0'),
(78, 32, '_menu_item_object_id', '32'),
(79, 32, '_menu_item_object', 'custom'),
(80, 32, '_menu_item_target', ''),
(81, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(82, 32, '_menu_item_xfn', ''),
(83, 32, '_menu_item_url', 'https://www.yelp.com'),
(84, 33, '_menu_item_type', 'custom'),
(85, 33, '_menu_item_menu_item_parent', '0'),
(86, 33, '_menu_item_object_id', '33'),
(87, 33, '_menu_item_object', 'custom'),
(88, 33, '_menu_item_target', ''),
(89, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(90, 33, '_menu_item_xfn', ''),
(91, 33, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(92, 34, '_menu_item_type', 'custom'),
(93, 34, '_menu_item_menu_item_parent', '0'),
(94, 34, '_menu_item_object_id', '34'),
(95, 34, '_menu_item_object', 'custom'),
(96, 34, '_menu_item_target', ''),
(97, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(98, 34, '_menu_item_xfn', ''),
(99, 34, '_menu_item_url', 'https://twitter.com/wordpress'),
(100, 35, '_menu_item_type', 'custom'),
(101, 35, '_menu_item_menu_item_parent', '0'),
(102, 35, '_menu_item_object_id', '35'),
(103, 35, '_menu_item_object', 'custom'),
(104, 35, '_menu_item_target', ''),
(105, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(106, 35, '_menu_item_xfn', ''),
(107, 35, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(108, 36, '_menu_item_type', 'custom'),
(109, 36, '_menu_item_menu_item_parent', '0'),
(110, 36, '_menu_item_object_id', '36'),
(111, 36, '_menu_item_object', 'custom'),
(112, 36, '_menu_item_target', ''),
(113, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(114, 36, '_menu_item_xfn', ''),
(115, 36, '_menu_item_url', 'mailto:wordpress@example.com'),
(116, 22, '_wp_trash_meta_status', 'publish'),
(117, 22, '_wp_trash_meta_time', '1510728917'),
(118, 17, '_edit_lock', '1510732849:1');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-11-15 06:10:24', '2017-11-15 06:10:24', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2017-11-15 06:10:24', '2017-11-15 06:10:24', '', 0, 'http://localhost:69/CMS/braches/?p=1', 0, 'post', '', 1),
(2, 1, '2017-11-15 06:10:24', '2017-11-15 06:10:24', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href="http://localhost:69/CMS/braches/wp-admin/">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2017-11-15 06:10:24', '2017-11-15 06:10:24', '', 0, 'http://localhost:69/CMS/braches/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-11-15 06:12:49', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-15 06:12:49', '0000-00-00 00:00:00', '', 0, 'http://localhost:69/CMS/braches/?p=3', 0, 'post', '', 0),
(4, 2, '2017-11-15 06:32:44', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-15 06:32:44', '0000-00-00 00:00:00', '', 0, 'http://192.168.100.48:69/CMS/braches/?p=4', 0, 'post', '', 0),
(5, 1, '2017-11-15 06:36:38', '0000-00-00 00:00:00', '', 'Espresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-11-15 06:36:20', '0000-00-00 00:00:00', '', 0, 'http://192.168.100.48:69/CMS/braches/wp-content/uploads/2017/11/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2017-11-15 06:36:38', '0000-00-00 00:00:00', '', 'Bánh kẹp', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-11-15 06:36:21', '0000-00-00 00:00:00', '', 0, 'http://192.168.100.48:69/CMS/braches/wp-content/uploads/2017/11/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2017-11-15 06:36:38', '0000-00-00 00:00:00', '', 'Coffee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-11-15 06:36:22', '0000-00-00 00:00:00', '', 0, 'http://192.168.100.48:69/CMS/braches/wp-content/uploads/2017/11/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2017-11-15 06:36:38', '0000-00-00 00:00:00', 'Chào mừng đến với trang web của bạn! Đây là trang chủ của bạn, nơi mà hầu hết người truy cập sẽ nhìn thấy khi lần đầu họ đến trang web của bạn.', 'Trang chủ', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-15 06:36:23', '0000-00-00 00:00:00', '', 0, 'http://192.168.100.48:69/CMS/braches/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-11-15 06:36:38', '0000-00-00 00:00:00', 'Bạn có thể là một nghệ sĩ muốn giới thiệu bản thân và công việc của bạn ở đây hoặc có thể bạn là một doanh nghiệp viết ra sứ mệnh của mình.', 'Giới thiệu', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-15 06:36:23', '0000-00-00 00:00:00', '', 0, 'http://192.168.100.48:69/CMS/braches/?page_id=9', 0, 'page', '', 0),
(10, 1, '2017-11-15 06:36:38', '0000-00-00 00:00:00', 'Trang này có các thông tin liên lạc, ví dụ như địa chỉ và điện thoại. Bạn có thể thử cài ứng dụng để thêm phần liên lạc', 'Liên hệ', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-15 06:36:23', '0000-00-00 00:00:00', '', 0, 'http://192.168.100.48:69/CMS/braches/?page_id=10', 0, 'page', '', 0),
(11, 1, '2017-11-15 06:36:38', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-15 06:36:23', '0000-00-00 00:00:00', '', 0, 'http://192.168.100.48:69/CMS/braches/?page_id=11', 0, 'page', '', 0),
(12, 1, '2017-11-15 06:36:38', '0000-00-00 00:00:00', 'Đây là trang chủ mẫu. Trang chủ có thể chứa bất kỳ cái gì, bao gồm các bài blog gần nhất', 'Một phần trang chủ', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-15 06:36:23', '0000-00-00 00:00:00', '', 0, 'http://192.168.100.48:69/CMS/braches/?page_id=12', 0, 'page', '', 0),
(13, 1, '2017-11-15 06:36:38', '0000-00-00 00:00:00', '{"widget_text[2]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjE2OiJUw6xtIENow7puZyBUw7RpIjtzOjQ6InRleHQiO3M6MTc1OiI8c3Ryb25nPsSQ4buLYSBjaOG7iTwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkdp4budPC9zdHJvbmc+ClRo4bupIGhhaSAtIFRo4bupIHPDoXU6IDk6MDBBTSAtIDU6MDBQTQpUaOG7qSBi4bqjeSB2w6AgQ2jhu6cgbmjhuq10OiAxMTowMEFNIC0gMzowMFBNIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==","title":"T\\u00ecm Ch\\u00fang T\\u00f4i","is_widget_customizer_js_value":true,"instance_hash_key":"0a382118e2d2916761b25a5e40ca83d7"},"type":"option","user_id":1},"widget_search[3]":{"starter_content":true,"value":{"encoded_serialized_instance":"YToxOntzOjU6InRpdGxlIjtzOjExOiJUw6xtIGtp4bq\\/bSI7fQ==","title":"T\\u00ecm ki\\u1ebfm","is_widget_customizer_js_value":true,"instance_hash_key":"d1aa31343c02b17fb295c1a9f5f0ab68"},"type":"option","user_id":1},"widget_text[3]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjI3OiJHaeG7m2kgdGhp4buHdSB24buBIHdlYnNpdGUiO3M6NDoidGV4dCI7czoxNTU6IsSQw6J5IGzDoCBt4buZdCBuxqFpIHThu5F0IMSR4buDIGdp4bubaSB0aGnhu4d1IGLhuqNuIHRow6JuIHbDoCB0cmFuZyB3ZWIgY+G7p2EgYuG6oW4gaG\\/hurdjIMSRxrBhIHJhIGPDoWMgdGjDtG5nIHRpbiDEkeG7gyBuZ8aw4budaSB4ZW0gdGluIHTGsOG7n25nIGjGoW4uIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==","title":"Gi\\u1edbi thi\\u1ec7u v\\u1ec1 website","is_widget_customizer_js_value":true,"instance_hash_key":"8f82db29124d9f6c1f2dc7a0c7f850f7"},"type":"option","user_id":1},"sidebars_widgets[sidebar-1]":{"starter_content":true,"value":["text-2","search-3","text-3"],"type":"option","user_id":1},"widget_text[4]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjE2OiJUw6xtIENow7puZyBUw7RpIjtzOjQ6InRleHQiO3M6MTc1OiI8c3Ryb25nPsSQ4buLYSBjaOG7iTwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkdp4budPC9zdHJvbmc+ClRo4bupIGhhaSAtIFRo4bupIHPDoXU6IDk6MDBBTSAtIDU6MDBQTQpUaOG7qSBi4bqjeSB2w6AgQ2jhu6cgbmjhuq10OiAxMTowMEFNIC0gMzowMFBNIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==","title":"T\\u00ecm Ch\\u00fang T\\u00f4i","is_widget_customizer_js_value":true,"instance_hash_key":"0a382118e2d2916761b25a5e40ca83d7"},"type":"option","user_id":1},"sidebars_widgets[sidebar-2]":{"starter_content":true,"value":["text-4"],"type":"option","user_id":1},"widget_text[5]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjI3OiJHaeG7m2kgdGhp4buHdSB24buBIHdlYnNpdGUiO3M6NDoidGV4dCI7czoxNTU6IsSQw6J5IGzDoCBt4buZdCBuxqFpIHThu5F0IMSR4buDIGdp4bubaSB0aGnhu4d1IGLhuqNuIHRow6JuIHbDoCB0cmFuZyB3ZWIgY+G7p2EgYuG6oW4gaG\\/hurdjIMSRxrBhIHJhIGPDoWMgdGjDtG5nIHRpbiDEkeG7gyBuZ8aw4budaSB4ZW0gdGluIHTGsOG7n25nIGjGoW4uIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==","title":"Gi\\u1edbi thi\\u1ec7u v\\u1ec1 website","is_widget_customizer_js_value":true,"instance_hash_key":"8f82db29124d9f6c1f2dc7a0c7f850f7"},"type":"option","user_id":1},"widget_search[4]":{"starter_content":true,"value":{"encoded_serialized_instance":"YToxOntzOjU6InRpdGxlIjtzOjExOiJUw6xtIGtp4bq\\/bSI7fQ==","title":"T\\u00ecm ki\\u1ebfm","is_widget_customizer_js_value":true,"instance_hash_key":"d1aa31343c02b17fb295c1a9f5f0ab68"},"type":"option","user_id":1},"sidebars_widgets[sidebar-3]":{"starter_content":true,"value":["text-5","search-4"],"type":"option","user_id":1},"nav_menus_created_posts":{"starter_content":true,"value":[5,6,7,8,9,10,11,12],"type":"option","user_id":1},"nav_menu[-1]":{"starter_content":true,"value":{"name":"Menu tr\\u00ean c\\u00f9ng"},"type":"nav_menu","user_id":1},"nav_menu_item[-1]":{"starter_content":true,"value":{"type":"custom","title":"Trang ch\\u1ee7","url":"http:\\/\\/192.168.100.48:69\\/CMS\\/braches\\/","position":0,"nav_menu_term_id":-1,"object_id":0},"type":"nav_menu_item","user_id":1},"nav_menu_item[-2]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":9,"position":1,"nav_menu_term_id":-1,"title":"Gi\\u1edbi thi\\u1ec7u"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-3]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":11,"position":2,"nav_menu_term_id":-1,"title":"Blog"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-4]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":10,"position":3,"nav_menu_term_id":-1,"title":"Li\\u00ean h\\u1ec7"},"type":"nav_menu_item","user_id":1},"twentyseventeen::nav_menu_locations[top]":{"starter_content":true,"value":-1,"type":"theme_mod","user_id":1},"nav_menu[-5]":{"starter_content":true,"value":{"name":"Menu m\\u1ea1ng x\\u00e3 h\\u1ed9i"},"type":"nav_menu","user_id":1},"nav_menu_item[-5]":{"starter_content":true,"value":{"title":"Yelp","url":"https:\\/\\/www.yelp.com","position":0,"nav_menu_term_id":-5,"object_id":0},"type":"nav_menu_item","user_id":1},"nav_menu_item[-6]":{"starter_content":true,"value":{"title":"Facebook","url":"https:\\/\\/www.facebook.com\\/wordpress","position":1,"nav_menu_term_id":-5,"object_id":0},"type":"nav_menu_item","user_id":1},"nav_menu_item[-7]":{"starter_content":true,"value":{"title":"Twitter","url":"https:\\/\\/twitter.com\\/wordpress","position":2,"nav_menu_term_id":-5,"object_id":0},"type":"nav_menu_item","user_id":1},"nav_menu_item[-8]":{"starter_content":true,"value":{"title":"Instagram","url":"https:\\/\\/www.instagram.com\\/explore\\/tags\\/wordcamp\\/","position":3,"nav_menu_term_id":-5,"object_id":0},"type":"nav_menu_item","user_id":1},"nav_menu_item[-9]":{"starter_content":true,"value":{"title":"Email","url":"mailto:wordpress@example.com","position":4,"nav_menu_term_id":-5,"object_id":0},"type":"nav_menu_item","user_id":1},"twentyseventeen::nav_menu_locations[social]":{"starter_content":true,"value":-5,"type":"theme_mod","user_id":1},"show_on_front":{"starter_content":true,"value":"page","type":"option","user_id":1},"page_on_front":{"starter_content":true,"value":8,"type":"option","user_id":1},"page_for_posts":{"starter_content":true,"value":11,"type":"option","user_id":1},"twentyseventeen::panel_1":{"starter_content":true,"value":12,"type":"theme_mod","user_id":1},"twentyseventeen::panel_2":{"starter_content":true,"value":9,"type":"theme_mod","user_id":1},"twentyseventeen::panel_3":{"starter_content":true,"value":11,"type":"theme_mod","user_id":1},"twentyseventeen::panel_4":{"starter_content":true,"value":10,"type":"theme_mod","user_id":1},"blogname":{"value":"WORDPRESS","type":"option","user_id":1}}', '', '', 'auto-draft', 'closed', 'closed', '', 'fd8bb534-ae90-4f57-a2c7-c6f4f1d0336d', '', '', '2017-11-15 06:36:38', '2017-11-15 06:36:38', '', 0, 'http://192.168.100.48:69/CMS/braches/?p=13', 0, 'customize_changeset', '', 0),
(14, 1, '2017-11-15 06:55:15', '2017-11-15 06:55:15', '', 'Espresso', '', 'inherit', 'open', 'closed', '', 'espresso', '', '', '2017-11-15 06:55:15', '2017-11-15 06:55:15', '', 0, 'http://localhost:69/wordpress/wp-content/uploads/2017/11/espresso-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2017-11-15 06:55:15', '2017-11-15 06:55:15', '', 'Bánh kẹp', '', 'inherit', 'open', 'closed', '', 'banh-kep', '', '', '2017-11-15 06:55:15', '2017-11-15 06:55:15', '', 0, 'http://localhost:69/wordpress/wp-content/uploads/2017/11/sandwich-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 'Coffee', '', 'inherit', 'open', 'closed', '', 'coffee', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 0, 'http://localhost:69/wordpress/wp-content/uploads/2017/11/coffee-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', 'Chào mừng đến với trang web của bạn! Đây là trang chủ của bạn, nơi mà hầu hết người truy cập sẽ nhìn thấy khi lần đầu họ đến trang web của bạn.', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 0, 'http://localhost:69/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', 'Bạn có thể là một nghệ sĩ muốn giới thiệu bản thân và công việc của bạn ở đây hoặc có thể bạn là một doanh nghiệp viết ra sứ mệnh của mình.', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 0, 'http://localhost:69/wordpress/?page_id=18', 0, 'page', '', 0),
(19, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', 'Trang này có các thông tin liên lạc, ví dụ như địa chỉ và điện thoại. Bạn có thể thử cài ứng dụng để thêm phần liên lạc', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 0, 'http://localhost:69/wordpress/?page_id=19', 0, 'page', '', 0),
(20, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 0, 'http://localhost:69/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', 'Đây là trang chủ mẫu. Trang chủ có thể chứa bất kỳ cái gì, bao gồm các bài blog gần nhất', 'Một phần trang chủ', '', 'publish', 'closed', 'closed', '', 'mot-phan-trang-chu', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 0, 'http://localhost:69/wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2017-11-15 06:55:15', '2017-11-15 06:55:15', '{"widget_text[6]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjE2OiJUw6xtIENow7puZyBUw7RpIjtzOjQ6InRleHQiO3M6MTc1OiI8c3Ryb25nPsSQ4buLYSBjaOG7iTwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkdp4budPC9zdHJvbmc+ClRo4bupIGhhaSAtIFRo4bupIHPDoXU6IDk6MDBBTSAtIDU6MDBQTQpUaOG7qSBi4bqjeSB2w6AgQ2jhu6cgbmjhuq10OiAxMTowMEFNIC0gMzowMFBNIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==","title":"T\\u00ecm Ch\\u00fang T\\u00f4i","is_widget_customizer_js_value":true,"instance_hash_key":"0a382118e2d2916761b25a5e40ca83d7"},"type":"option","user_id":1},"widget_search[3]":{"starter_content":true,"value":{"encoded_serialized_instance":"YToxOntzOjU6InRpdGxlIjtzOjExOiJUw6xtIGtp4bq\\/bSI7fQ==","title":"T\\u00ecm ki\\u1ebfm","is_widget_customizer_js_value":true,"instance_hash_key":"d1aa31343c02b17fb295c1a9f5f0ab68"},"type":"option","user_id":1},"widget_text[7]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjI3OiJHaeG7m2kgdGhp4buHdSB24buBIHdlYnNpdGUiO3M6NDoidGV4dCI7czoxNTU6IsSQw6J5IGzDoCBt4buZdCBuxqFpIHThu5F0IMSR4buDIGdp4bubaSB0aGnhu4d1IGLhuqNuIHRow6JuIHbDoCB0cmFuZyB3ZWIgY+G7p2EgYuG6oW4gaG\\/hurdjIMSRxrBhIHJhIGPDoWMgdGjDtG5nIHRpbiDEkeG7gyBuZ8aw4budaSB4ZW0gdGluIHTGsOG7n25nIGjGoW4uIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==","title":"Gi\\u1edbi thi\\u1ec7u v\\u1ec1 website","is_widget_customizer_js_value":true,"instance_hash_key":"8f82db29124d9f6c1f2dc7a0c7f850f7"},"type":"option","user_id":1},"sidebars_widgets[sidebar-1]":{"starter_content":true,"value":["text-6","search-3","text-7"],"type":"option","user_id":1},"widget_text[8]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjE2OiJUw6xtIENow7puZyBUw7RpIjtzOjQ6InRleHQiO3M6MTc1OiI8c3Ryb25nPsSQ4buLYSBjaOG7iTwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkdp4budPC9zdHJvbmc+ClRo4bupIGhhaSAtIFRo4bupIHPDoXU6IDk6MDBBTSAtIDU6MDBQTQpUaOG7qSBi4bqjeSB2w6AgQ2jhu6cgbmjhuq10OiAxMTowMEFNIC0gMzowMFBNIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==","title":"T\\u00ecm Ch\\u00fang T\\u00f4i","is_widget_customizer_js_value":true,"instance_hash_key":"0a382118e2d2916761b25a5e40ca83d7"},"type":"option","user_id":1},"sidebars_widgets[sidebar-2]":{"starter_content":true,"value":["text-8"],"type":"option","user_id":1},"widget_text[9]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjI3OiJHaeG7m2kgdGhp4buHdSB24buBIHdlYnNpdGUiO3M6NDoidGV4dCI7czoxNTU6IsSQw6J5IGzDoCBt4buZdCBuxqFpIHThu5F0IMSR4buDIGdp4bubaSB0aGnhu4d1IGLhuqNuIHRow6JuIHbDoCB0cmFuZyB3ZWIgY+G7p2EgYuG6oW4gaG\\/hurdjIMSRxrBhIHJhIGPDoWMgdGjDtG5nIHRpbiDEkeG7gyBuZ8aw4budaSB4ZW0gdGluIHTGsOG7n25nIGjGoW4uIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==","title":"Gi\\u1edbi thi\\u1ec7u v\\u1ec1 website","is_widget_customizer_js_value":true,"instance_hash_key":"8f82db29124d9f6c1f2dc7a0c7f850f7"},"type":"option","user_id":1},"widget_search[4]":{"starter_content":true,"value":{"encoded_serialized_instance":"YToxOntzOjU6InRpdGxlIjtzOjExOiJUw6xtIGtp4bq\\/bSI7fQ==","title":"T\\u00ecm ki\\u1ebfm","is_widget_customizer_js_value":true,"instance_hash_key":"d1aa31343c02b17fb295c1a9f5f0ab68"},"type":"option","user_id":1},"sidebars_widgets[sidebar-3]":{"starter_content":true,"value":["text-9","search-4"],"type":"option","user_id":1},"nav_menus_created_posts":{"starter_content":true,"value":[14,15,16,17,18,19,20,21],"type":"option","user_id":1},"nav_menu[-1]":{"value":{"name":"Menu tr\\u00ean c\\u00f9ng","description":"","parent":0,"auto_add":false},"type":"nav_menu","user_id":1},"nav_menu_item[-1]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":0,"type":"custom","title":"Trang ch\\u1ee7","url":"http:\\/\\/localhost:69\\/wordpress\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-1,"_invalid":false,"type_label":"Link t\\u00f9y ch\\u1ecdn"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-2]":{"value":{"object_id":18,"object":"page","menu_item_parent":0,"position":1,"type":"post_type","title":"Gi\\u1edbi thi\\u1ec7u","url":"","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Gi\\u1edbi thi\\u1ec7u","nav_menu_term_id":-1,"_invalid":false,"type_label":"Trang"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-3]":{"value":{"object_id":20,"object":"page","menu_item_parent":0,"position":2,"type":"post_type","title":"Blog","url":"","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Blog","nav_menu_term_id":-1,"_invalid":false,"type_label":"Trang"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-4]":{"value":{"object_id":19,"object":"page","menu_item_parent":0,"position":3,"type":"post_type","title":"Li\\u00ean h\\u1ec7","url":"","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Li\\u00ean h\\u1ec7","nav_menu_term_id":-1,"_invalid":false,"type_label":"Trang"},"type":"nav_menu_item","user_id":1},"twentyseventeen::nav_menu_locations[top]":{"starter_content":true,"value":-1,"type":"theme_mod","user_id":1},"nav_menu[-5]":{"value":{"name":"Menu m\\u1ea1ng x\\u00e3 h\\u1ed9i","description":"","parent":0,"auto_add":false},"type":"nav_menu","user_id":1},"nav_menu_item[-5]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":0,"type":"custom","title":"Yelp","url":"https:\\/\\/www.yelp.com","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-5,"_invalid":false,"type_label":"Link t\\u00f9y ch\\u1ecdn"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-6]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":1,"type":"custom","title":"Facebook","url":"https:\\/\\/www.facebook.com\\/wordpress","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-5,"_invalid":false,"type_label":"Link t\\u00f9y ch\\u1ecdn"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-7]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":2,"type":"custom","title":"Twitter","url":"https:\\/\\/twitter.com\\/wordpress","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-5,"_invalid":false,"type_label":"Link t\\u00f9y ch\\u1ecdn"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-8]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":3,"type":"custom","title":"Instagram","url":"https:\\/\\/www.instagram.com\\/explore\\/tags\\/wordcamp\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-5,"_invalid":false,"type_label":"Link t\\u00f9y ch\\u1ecdn"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-9]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":4,"type":"custom","title":"Email","url":"mailto:wordpress@example.com","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-5,"_invalid":false,"type_label":"Link t\\u00f9y ch\\u1ecdn"},"type":"nav_menu_item","user_id":1},"twentyseventeen::nav_menu_locations[social]":{"starter_content":true,"value":-5,"type":"theme_mod","user_id":1},"show_on_front":{"starter_content":true,"value":"page","type":"option","user_id":1},"page_on_front":{"starter_content":true,"value":17,"type":"option","user_id":1},"page_for_posts":{"starter_content":true,"value":20,"type":"option","user_id":1},"twentyseventeen::panel_1":{"starter_content":true,"value":21,"type":"theme_mod","user_id":1},"twentyseventeen::panel_2":{"starter_content":true,"value":18,"type":"theme_mod","user_id":1},"twentyseventeen::panel_3":{"starter_content":true,"value":20,"type":"theme_mod","user_id":1},"twentyseventeen::panel_4":{"starter_content":true,"value":19,"type":"theme_mod","user_id":1},"blogdescription":{"value":"L\\u00ea Ng\\u1ecdc Nguy\\u00ean","type":"option","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'a61502af-f6f5-42f5-9eca-01c18d90653d', '', '', '2017-11-15 06:55:15', '2017-11-15 06:55:15', '', 0, 'http://localhost:69/wordpress/?p=22', 0, 'customize_changeset', '', 0),
(23, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', 'Chào mừng đến với trang web của bạn! Đây là trang chủ của bạn, nơi mà hầu hết người truy cập sẽ nhìn thấy khi lần đầu họ đến trang web của bạn.', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 17, 'http://localhost:69/wordpress/2017/11/15/17-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', 'Bạn có thể là một nghệ sĩ muốn giới thiệu bản thân và công việc của bạn ở đây hoặc có thể bạn là một doanh nghiệp viết ra sứ mệnh của mình.', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 18, 'http://localhost:69/wordpress/2017/11/15/18-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', 'Trang này có các thông tin liên lạc, ví dụ như địa chỉ và điện thoại. Bạn có thể thử cài ứng dụng để thêm phần liên lạc', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 19, 'http://localhost:69/wordpress/2017/11/15/19-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 20, 'http://localhost:69/wordpress/2017/11/15/20-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', 'Đây là trang chủ mẫu. Trang chủ có thể chứa bất kỳ cái gì, bao gồm các bài blog gần nhất', 'Một phần trang chủ', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 21, 'http://localhost:69/wordpress/2017/11/15/21-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 0, 'http://localhost:69/wordpress/2017/11/15/trang-chu/', 0, 'nav_menu_item', '', 0),
(29, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 0, 'http://localhost:69/wordpress/2017/11/15/29/', 1, 'nav_menu_item', '', 0),
(30, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 0, 'http://localhost:69/wordpress/2017/11/15/30/', 2, 'nav_menu_item', '', 0),
(31, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 0, 'http://localhost:69/wordpress/2017/11/15/31/', 3, 'nav_menu_item', '', 0),
(32, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 0, 'http://localhost:69/wordpress/2017/11/15/yelp/', 0, 'nav_menu_item', '', 0),
(33, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 0, 'http://localhost:69/wordpress/2017/11/15/facebook/', 1, 'nav_menu_item', '', 0),
(34, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 0, 'http://localhost:69/wordpress/2017/11/15/twitter/', 2, 'nav_menu_item', '', 0),
(35, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 0, 'http://localhost:69/wordpress/2017/11/15/instagram/', 3, 'nav_menu_item', '', 0),
(36, 1, '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2017-11-15 06:55:16', '2017-11-15 06:55:16', '', 0, 'http://localhost:69/wordpress/2017/11/15/email/', 4, 'nav_menu_item', '', 0),
(37, 3, '2017-11-15 07:13:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-15 07:13:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:69/wordpress/?p=37', 0, 'post', '', 0),
(38, 1, '2017-11-15 08:03:27', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-15 08:03:27', '0000-00-00 00:00:00', '', 0, 'http://localhost:69/wordpress/?p=38', 0, 'post', '', 0);

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
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'Menu trên cùng', 'menu-tren-cung', 0),
(3, 'Menu mạng xã hội', 'menu-mang-xa-hoi', 0);

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
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 3, 0),
(33, 3, 0),
(34, 3, 0),
(35, 3, 0),
(36, 3, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'nguyenln'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'ocean'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:5:{s:64:"edd435b627fd4aa1319d40843ccb284862c9f0622b24562c380ea2230c25b8e4";a:4:{s:10:"expiration";i:1510899167;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1510726367;}s:64:"e8725640f1cbf6d3b5e0c7e2e7b2e3a6b0a0612c67d6a686d88b22fb340b2a5b";a:4:{s:10:"expiration";i:1510899995;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1510727195;}s:64:"b99daf9d952c25e7beb78ee532c6e4f830cc0f39af8d78408dbde4ce5d3599fa";a:4:{s:10:"expiration";i:1510900374;s:2:"ip";s:14:"192.168.100.48";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1510727574;}s:64:"e93578ebbacedb6cb55fd9428f22a839487ec02863687c3785192bf933891231";a:4:{s:10:"expiration";i:1511937182;s:2:"ip";s:14:"192.168.100.48";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1510727582;}s:64:"db13cec94effd36c7907d4b30a1718f0fde3ab61d7285f55e5639930cb309dba";a:4:{s:10:"expiration";i:1511938304;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1510728704;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 2, 'nickname', 'tuandt'),
(18, 2, 'first_name', 'tuan'),
(19, 2, 'last_name', 'do'),
(20, 2, 'description', ''),
(21, 2, 'rich_editing', 'true'),
(22, 2, 'comment_shortcuts', 'false'),
(23, 2, 'admin_color', 'ectoplasm'),
(24, 2, 'use_ssl', '0'),
(25, 2, 'show_admin_bar_front', 'true'),
(26, 2, 'locale', ''),
(27, 2, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(28, 2, 'wp_user_level', '7'),
(29, 2, 'dismissed_wp_pointers', ''),
(30, 3, 'nickname', 'thinhdq'),
(31, 3, 'first_name', 'thinh'),
(32, 3, 'last_name', 'do'),
(33, 3, 'description', ''),
(34, 3, 'rich_editing', 'true'),
(35, 3, 'comment_shortcuts', 'false'),
(36, 3, 'admin_color', 'light'),
(37, 3, 'use_ssl', '0'),
(38, 3, 'show_admin_bar_front', 'true'),
(39, 3, 'locale', ''),
(40, 3, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
(41, 3, 'wp_user_level', '2'),
(42, 3, 'dismissed_wp_pointers', ''),
(43, 4, 'nickname', 'hoatnt'),
(44, 4, 'first_name', 'hoa'),
(45, 4, 'last_name', 'tran'),
(46, 4, 'description', ''),
(47, 4, 'rich_editing', 'true'),
(48, 4, 'comment_shortcuts', 'false'),
(49, 4, 'admin_color', 'blue'),
(50, 4, 'use_ssl', '0'),
(51, 4, 'show_admin_bar_front', 'true'),
(52, 4, 'locale', ''),
(53, 4, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(54, 4, 'wp_user_level', '0'),
(55, 4, 'dismissed_wp_pointers', ''),
(56, 2, 'session_tokens', 'a:3:{s:64:"67caf89c7ac9a12967e99c0cb45818e683e632b9c921a3b79a7c0f66c9151d77";a:4:{s:10:"expiration";i:1510900363;s:2:"ip";s:13:"192.168.100.1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1510727563;}s:64:"b90ab616fe8a0e1dec6b44bfb9c9e9ea2d24c33feb71817aff4668d8efa3ba96";a:4:{s:10:"expiration";i:1510902406;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1510729606;}s:64:"86ca46c8fecb291d7cf495f67d3c961511b2f4e8d02f49d3f2a09d188d52ddd4";a:4:{s:10:"expiration";i:1510906509;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1510733709;}}'),
(57, 2, 'wp_dashboard_quick_press_last_post_id', '4'),
(58, 3, 'session_tokens', 'a:1:{s:64:"147adf77818947a06a066e6aa2a21cf76ab664175f18df1840749925cb49f6aa";a:4:{s:10:"expiration";i:1511939586;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1510729986;}}'),
(59, 3, 'wp_dashboard_quick_press_last_post_id', '37'),
(60, 4, 'session_tokens', 'a:1:{s:64:"b698150fe6e3190894587431e557b29f53e442594c7a3624eec768eca9351d19";a:4:{s:10:"expiration";i:1510903196;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1510730396;}}'),
(61, 4, 'wp_user-settings', 'mfold=f'),
(62, 4, 'wp_user-settings-time', '1510730881'),
(63, 5, 'nickname', 'thapnv'),
(64, 5, 'first_name', 'thap'),
(65, 5, 'last_name', 'nguyen'),
(66, 5, 'description', ''),
(67, 5, 'rich_editing', 'true'),
(68, 5, 'comment_shortcuts', 'false'),
(69, 5, 'admin_color', 'fresh'),
(70, 5, 'use_ssl', '0'),
(71, 5, 'show_admin_bar_front', 'true'),
(72, 5, 'locale', ''),
(73, 5, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(74, 5, 'wp_user_level', '0'),
(75, 5, 'dismissed_wp_pointers', ''),
(76, 5, 'session_tokens', 'a:1:{s:64:"f11c71c2e120f654de83ab1c68c79fc53dee6c34127bc0c731d3e301cc4e7e86";a:4:{s:10:"expiration";i:1510905328;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1510732528;}}'),
(77, 5, 'wp_user-settings', 'mfold=f'),
(78, 5, 'wp_user-settings-time', '1510732697'),
(79, 1, 'wp_user-settings', 'editor=tinymce&post_dfw=off'),
(80, 1, 'wp_user-settings-time', '1510732824'),
(81, 5, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:18:"dashboard_activity";s:4:"side";s:17:"dashboard_primary";s:7:"column3";s:0:"";s:7:"column4";s:0:"";}'),
(82, 5, 'closedpostboxes_dashboard', 'a:0:{}'),
(83, 5, 'metaboxhidden_dashboard', 'a:0:{}');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'nguyenln', '$P$BxS5UpZqjDN5aVPQbsOCoY1oBYLht40', 'nguyenln', 'vuamapcankiengan@gmail.com', '', '2017-11-15 06:10:24', '', 0, 'nguyenln'),
(2, 'tuandt', '$P$BtO9YMj0EHkGBwiJUL.cZqk9arAkgq1', 'tuandt', 'dothanhtuantt6@gmail.com', '', '2017-11-15 06:13:36', '1510726417:$P$BiAUwUT9C2PUx9zB1RRTWxn6zQ.b9i.', 0, 'do tuan'),
(3, 'thinhdq', '$P$BHwKXX/fb0yZ4uVuIYdoos3uaQPlAW1', 'thinhdq', 'doquocthinh250296@gmail.com', '', '2017-11-15 06:14:28', '1510726469:$P$Bv.cqMD8YZv4XoTT1auFuyc7qtYFzR0', 0, 'do thinh'),
(4, 'hoatnt', '$P$Bu7/AmeOf7J6cHv7j5P1UVsyH2o3.r/', 'hoatnt', 'hoalamanhnhat@gmail.com', '', '2017-11-15 06:16:07', '1510726568:$P$BNdZL.vLKZYvghGwX9CeMvN76kRq3T/', 0, 'tran hoa'),
(5, 'thapnv', '$P$BppNTOF9xKtmYMZ6tDdffiyUBX1aO51', 'thapnv', 'thapnguyen587@gmail.com', '', '2017-11-15 07:48:08', '1510732089:$P$BkoQYImj8VjJbFqruwT5nWjgorNktu/', 0, 'nguyen thap');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
