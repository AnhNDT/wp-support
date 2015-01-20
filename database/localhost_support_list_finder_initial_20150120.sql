/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : localhost_support_list_finder

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2015-01-20 13:16:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wp_commentmeta`
-- ----------------------------
DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_commentmeta
-- ----------------------------

-- ----------------------------
-- Table structure for `wp_comments`
-- ----------------------------
DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_comments
-- ----------------------------

-- ----------------------------
-- Table structure for `wp_links`
-- ----------------------------
DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_links
-- ----------------------------

-- ----------------------------
-- Table structure for `wp_options`
-- ----------------------------
DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=411 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_options
-- ----------------------------
INSERT INTO `wp_options` VALUES ('1', 'siteurl', 'http://localhost.support.list-finder.jp', 'yes');
INSERT INTO `wp_options` VALUES ('2', 'home', 'http://localhost.support.list-finder.jp', 'yes');
INSERT INTO `wp_options` VALUES ('3', 'blogname', 'リストファインダーカスタマーサポート', 'yes');
INSERT INTO `wp_options` VALUES ('4', 'blogdescription', 'Just another WordPress site', 'yes');
INSERT INTO `wp_options` VALUES ('5', 'users_can_register', '0', 'yes');
INSERT INTO `wp_options` VALUES ('6', 'admin_email', 'anhndt@vn.innovation.co.jp', 'yes');
INSERT INTO `wp_options` VALUES ('7', 'start_of_week', '1', 'yes');
INSERT INTO `wp_options` VALUES ('8', 'use_balanceTags', '0', 'yes');
INSERT INTO `wp_options` VALUES ('9', 'use_smilies', '1', 'yes');
INSERT INTO `wp_options` VALUES ('10', 'require_name_email', '1', 'yes');
INSERT INTO `wp_options` VALUES ('11', 'comments_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES ('12', 'posts_per_rss', '10', 'yes');
INSERT INTO `wp_options` VALUES ('13', 'rss_use_excerpt', '0', 'yes');
INSERT INTO `wp_options` VALUES ('14', 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO `wp_options` VALUES ('15', 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO `wp_options` VALUES ('16', 'mailserver_pass', 'password', 'yes');
INSERT INTO `wp_options` VALUES ('17', 'mailserver_port', '110', 'yes');
INSERT INTO `wp_options` VALUES ('18', 'default_category', '1', 'yes');
INSERT INTO `wp_options` VALUES ('19', 'default_comment_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES ('20', 'default_ping_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES ('21', 'default_pingback_flag', '0', 'yes');
INSERT INTO `wp_options` VALUES ('22', 'posts_per_page', '10', 'yes');
INSERT INTO `wp_options` VALUES ('23', 'date_format', 'F j, Y', 'yes');
INSERT INTO `wp_options` VALUES ('24', 'time_format', 'g:i a', 'yes');
INSERT INTO `wp_options` VALUES ('25', 'links_updated_date_format', 'F j, Y g:i a', 'yes');
INSERT INTO `wp_options` VALUES ('26', 'comment_moderation', '0', 'yes');
INSERT INTO `wp_options` VALUES ('27', 'moderation_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES ('28', 'permalink_structure', '/%post_id%/', 'yes');
INSERT INTO `wp_options` VALUES ('29', 'gzipcompression', '0', 'yes');
INSERT INTO `wp_options` VALUES ('30', 'hack_file', '0', 'yes');
INSERT INTO `wp_options` VALUES ('31', 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `wp_options` VALUES ('32', 'moderation_keys', '', 'no');
INSERT INTO `wp_options` VALUES ('33', 'active_plugins', 'a:6:{i:0;s:47:\"custom-field-template/custom-field-template.php\";i:1;s:39:\"custom-permalinks/custom-permalinks.php\";i:2;s:59:\"custom-post-type-permalinks/custom-post-type-permalinks.php\";i:3;s:21:\"exec-php/exec-php.php\";i:4;s:41:\"wp-multibyte-patch/wp-multibyte-patch.php\";i:5;s:27:\"wp-optimize/wp-optimize.php\";}', 'yes');
INSERT INTO `wp_options` VALUES ('34', 'category_base', '', 'yes');
INSERT INTO `wp_options` VALUES ('35', 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `wp_options` VALUES ('36', 'advanced_edit', '0', 'yes');
INSERT INTO `wp_options` VALUES ('37', 'comment_max_links', '2', 'yes');
INSERT INTO `wp_options` VALUES ('38', 'gmt_offset', '0', 'yes');
INSERT INTO `wp_options` VALUES ('39', 'default_email_category', '1', 'yes');
INSERT INTO `wp_options` VALUES ('40', 'recently_edited', 'a:2:{i:0;s:101:\"S:\\support.list-finder.jp\\localhost\\source/wp-content/plugins/custom-permalinks/custom-permalinks.php\";i:1;s:0:\"\";}', 'no');
INSERT INTO `wp_options` VALUES ('41', 'template', 'support', 'yes');
INSERT INTO `wp_options` VALUES ('42', 'stylesheet', 'support', 'yes');
INSERT INTO `wp_options` VALUES ('43', 'comment_whitelist', '1', 'yes');
INSERT INTO `wp_options` VALUES ('44', 'blacklist_keys', '', 'no');
INSERT INTO `wp_options` VALUES ('45', 'comment_registration', '0', 'yes');
INSERT INTO `wp_options` VALUES ('46', 'html_type', 'text/html', 'yes');
INSERT INTO `wp_options` VALUES ('47', 'use_trackback', '0', 'yes');
INSERT INTO `wp_options` VALUES ('48', 'default_role', 'subscriber', 'yes');
INSERT INTO `wp_options` VALUES ('49', 'db_version', '30133', 'yes');
INSERT INTO `wp_options` VALUES ('50', 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `wp_options` VALUES ('51', 'upload_path', '', 'yes');
INSERT INTO `wp_options` VALUES ('52', 'blog_public', '0', 'yes');
INSERT INTO `wp_options` VALUES ('53', 'default_link_category', '2', 'yes');
INSERT INTO `wp_options` VALUES ('54', 'show_on_front', 'posts', 'yes');
INSERT INTO `wp_options` VALUES ('55', 'tag_base', '', 'yes');
INSERT INTO `wp_options` VALUES ('56', 'show_avatars', '1', 'yes');
INSERT INTO `wp_options` VALUES ('57', 'avatar_rating', 'G', 'yes');
INSERT INTO `wp_options` VALUES ('58', 'upload_url_path', '', 'yes');
INSERT INTO `wp_options` VALUES ('59', 'thumbnail_size_w', '150', 'yes');
INSERT INTO `wp_options` VALUES ('60', 'thumbnail_size_h', '150', 'yes');
INSERT INTO `wp_options` VALUES ('61', 'thumbnail_crop', '1', 'yes');
INSERT INTO `wp_options` VALUES ('62', 'medium_size_w', '300', 'yes');
INSERT INTO `wp_options` VALUES ('63', 'medium_size_h', '300', 'yes');
INSERT INTO `wp_options` VALUES ('64', 'avatar_default', 'mystery', 'yes');
INSERT INTO `wp_options` VALUES ('65', 'large_size_w', '1024', 'yes');
INSERT INTO `wp_options` VALUES ('66', 'large_size_h', '1024', 'yes');
INSERT INTO `wp_options` VALUES ('67', 'image_default_link_type', 'file', 'yes');
INSERT INTO `wp_options` VALUES ('68', 'image_default_size', '', 'yes');
INSERT INTO `wp_options` VALUES ('69', 'image_default_align', '', 'yes');
INSERT INTO `wp_options` VALUES ('70', 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES ('71', 'close_comments_days_old', '14', 'yes');
INSERT INTO `wp_options` VALUES ('72', 'thread_comments', '1', 'yes');
INSERT INTO `wp_options` VALUES ('73', 'thread_comments_depth', '5', 'yes');
INSERT INTO `wp_options` VALUES ('74', 'page_comments', '0', 'yes');
INSERT INTO `wp_options` VALUES ('75', 'comments_per_page', '50', 'yes');
INSERT INTO `wp_options` VALUES ('76', 'default_comments_page', 'newest', 'yes');
INSERT INTO `wp_options` VALUES ('77', 'comment_order', 'asc', 'yes');
INSERT INTO `wp_options` VALUES ('78', 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES ('79', 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('80', 'widget_text', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES ('81', 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES ('82', 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO `wp_options` VALUES ('83', 'timezone_string', '', 'yes');
INSERT INTO `wp_options` VALUES ('84', 'page_for_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES ('85', 'page_on_front', '0', 'yes');
INSERT INTO `wp_options` VALUES ('86', 'default_post_format', '0', 'yes');
INSERT INTO `wp_options` VALUES ('87', 'link_manager_enabled', '0', 'yes');
INSERT INTO `wp_options` VALUES ('88', 'initial_db_version', '30133', 'yes');
INSERT INTO `wp_options` VALUES ('89', 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:64:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:8:\"exec_php\";b:1;s:15:\"edit_others_php\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes');
INSERT INTO `wp_options` VALUES ('90', 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('91', 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('92', 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('93', 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('94', 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('95', 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO `wp_options` VALUES ('96', 'cron', 'a:6:{i:1421772504;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1421772505;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1421783280;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1421815734;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1421819313;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes');
INSERT INTO `wp_options` VALUES ('107', 'can_compress_scripts', '1', 'yes');
INSERT INTO `wp_options` VALUES ('125', 'theme_mods_twentyfifteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1421729344;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes');
INSERT INTO `wp_options` VALUES ('126', 'current_theme', 'support', 'yes');
INSERT INTO `wp_options` VALUES ('127', 'theme_mods_support', 'a:1:{i:0;b:0;}', 'yes');
INSERT INTO `wp_options` VALUES ('128', 'theme_switched', '', 'yes');
INSERT INTO `wp_options` VALUES ('129', 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES ('133', 'wp-optimize-schedule', 'false', 'no');
INSERT INTO `wp_options` VALUES ('134', 'wp-optimize-last-optimized', 'Never', 'no');
INSERT INTO `wp_options` VALUES ('135', 'wp-optimize-schedule-type', 'wpo_weekly', 'no');
INSERT INTO `wp_options` VALUES ('136', 'wp-optimize-retention-enabled', 'false', 'no');
INSERT INTO `wp_options` VALUES ('137', 'wp-optimize-retention-period', '2', 'no');
INSERT INTO `wp_options` VALUES ('138', 'wp-optimize-enable-admin-menu', 'false', 'no');
INSERT INTO `wp_options` VALUES ('139', 'wp-optimize-total-cleaned', '0', 'no');
INSERT INTO `wp_options` VALUES ('140', 'wp-optimize-auto', 'a:8:{s:9:\"revisions\";s:4:\"true\";s:6:\"drafts\";s:4:\"true\";s:5:\"spams\";s:4:\"true\";s:10:\"unapproved\";s:5:\"false\";s:9:\"transient\";s:5:\"false\";s:8:\"postmeta\";s:5:\"false\";s:4:\"tags\";s:5:\"false\";s:8:\"optimize\";s:4:\"true\";}', 'yes');
INSERT INTO `wp_options` VALUES ('141', 'wp-optimize-settings', 'a:5:{s:14:\"user-revisions\";b:1;s:11:\"user-drafts\";b:1;s:10:\"user-spams\";b:1;s:15:\"user-unapproved\";b:1;s:13:\"user-optimize\";b:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('157', 'custom_field_template_data', 'a:8:{s:33:\"custom_field_template_before_list\";s:4:\"<ul>\";s:32:\"custom_field_template_after_list\";s:5:\"</ul>\";s:34:\"custom_field_template_before_value\";s:4:\"<li>\";s:33:\"custom_field_template_after_value\";s:5:\"</li>\";s:13:\"custom_fields\";a:1:{i:0;a:2:{s:5:\"title\";s:16:\"Default Template\";s:7:\"content\";s:507:\"[Plan]\ntype = text\nsize = 35\nlabel = Where are you going to go?\n\n[Plan]\ntype = textfield\nsize = 35\nhideKey = true\n\n[Favorite Fruits]\ntype = checkbox\nvalue = apple # orange # banana # grape\ndefault = orange # grape\n\n[Miles Walked]\ntype = radio\nvalue = 0-9 # 10-19 # 20+\ndefault = 10-19\nclearButton = true\n\n[Temper Level]\ntype = select\nvalue = High # Medium # Low\ndefault = Low\n\n[Hidden Thought]\ntype = textarea\nrows = 4\ncols = 40\ntinyMCE = true\nhtmlEditor = true\nmediaButton = true\n\n[File Upload]\ntype = file\";}}s:16:\"shortcode_format\";a:1:{i:0;s:344:\"<table class=\"cft\">\n<tbody>\n<tr>\n<th>Plan</th><td colspan=\"3\">[Plan]</td>\n</tr>\n<tr>\n<th>Favorite Fruits</th><td>[Favorite Fruits]</td>\n<th>Miles Walked</th><td>[Miles Walked]</td>\n</tr>\n<tr>\n<th>Temper Level</th><td colspan=\"3\">[Temper Level]</td>\n</tr>\n<tr>\n<th>Hidden Thought</th><td colspan=\"3\">[Hidden Thought]</td>\n</tr>\n</tbody>\n</table>\";}s:3:\"css\";s:574:\".cft { overflow:hidden; }\n.cft:after { content:\" \"; clear:both; height:0; display:block; visibility:hidden; }\n.cft dl { margin:10px 0; }\n.cft dl:after { content:\" \"; clear:both; height:0; display:block; visibility:hidden; }\n.cft dt { width:20%; clear:both; float:left; display:inline; font-weight:bold; text-align:center; }\n.cft dt .hideKey { visibility:hidden; }\n.cft dd { margin:0 0 0 21%; }\n.cft dd p.label { font-weight:bold; margin:0; }\n.cft_instruction { margin:10px; }\n.cft fieldset { border:1px solid #CCC; margin:5px; padding:5px; }\n.cft .dl_checkbox { margin:0; }\n\";s:5:\"posts\";a:1:{i:6;s:1:\"0\";}}', 'yes');
INSERT INTO `wp_options` VALUES ('225', 'exec-php', 'a:2:{s:7:\"version\";s:3:\"4.9\";s:14:\"widget_support\";b:1;}', 'yes');
INSERT INTO `wp_options` VALUES ('406', '_transient_timeout_feed_696c5cae47c2819ede33327da4ef81e5', '1421777738', 'no');
INSERT INTO `wp_options` VALUES ('407', '_transient_feed_696c5cae47c2819ede33327da4ef81e5', 'a:4:{s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"feed\";a:1:{i:0;a:6:{s:4:\"data\";s:18:\"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:1:{s:36:\"http://www.w3.org/XML/1998/namespace\";a:1:{s:4:\"lang\";s:2:\"en\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"WP-Optimize\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"text\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Jekyll\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:33:\"https://github.com/mojombo/jekyll\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:20:\"application/atom+xml\";s:4:\"href\";s:43:\"http://wp-optimize.ruhanirabin.com/feed.xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:9:\"alternate\";s:4:\"type\";s:9:\"text/html\";s:4:\"href\";s:35:\"http://wp-optimize.ruhanirabin.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:7:\"updated\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2014-10-17T18:09:13+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://wp-optimize.ruhanirabin.com/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:10:\"\n  \n  \n  \n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:3:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Ruhani Rabin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:3:\"uri\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://wp-optimize.ruhanirabin.com/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:5:\"email\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"get@email.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}}}}}s:5:\"entry\";a:3:{i:0;a:6:{s:4:\"data\";s:22:\"\n  \n  \n  \n  \n  \n  \n  \n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"URGENT BugFix: 1.8.9.7\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:9:\"alternate\";s:4:\"type\";s:9:\"text/html\";s:4:\"href\";s:57:\"http://wp-optimize.ruhanirabin.com/urgent-bugfix-1-8-9-7/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"http://wp-optimize.ruhanirabin.com/urgent-bugfix-1-8-9-7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2014-09-08T10:19:26+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:7:\"updated\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2014-09-08T10:19:26+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:18:\"\n    \n    \n    \n  \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:3:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Ruhani Rabin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:3:\"uri\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"http://wp-optimize.ruhanirabin.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:5:\"email\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"get@email.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:1496:\"<p>Just after releasing the previous update with new changes; I have noticed that the <strong>Disable/Enable trackback/comments buttons</strong> on the setting screen causing the <strong>AUTO SCHEDULE</strong> option to reset itself. </p>\n\n<p>In fact, executing any of the <strong>Disable/Enable trackback/comments buttons</strong> will disable the <strong>AUTO SCHEDULE</strong> option, ==you will still be able to enable it by clicking the checkbox==. </p>\n\n<p><img src=\"http://wp-optimize.ruhanirabin.com/images/enable-disable-trackback-comments-update2.png\" alt=\"Image\" /></p>\n\n<p><em>I’ve made the _necessary changes_ and re-organize the Settings Screen so this does not happen again. Refer to the new screen above.</em></p>\n\n<h2 id=\"how-does-the-new-screen-work\">How does the new screen work?</h2>\n<ol>\n  <li>If you want to disable or enable trackbacks and comments, select the dropdown list for each of them. </li>\n  <li>Press <strong>SAVE SETTINGS</strong>, it will enable or disable the corresponding feature such as Trackbacks and Comments.</li>\n  <li><strong>This only reflects the ==published posts==</strong>, the reason of doing that is - ==Drafts or unpublished post you may choose to enable comments or trackbacks, it is up to you.== </li>\n</ol>\n\n  <p><a href=\"http://wp-optimize.ruhanirabin.com/urgent-bugfix-1-8-9-7/\">URGENT BugFix: 1.8.9.7</a> was originally published by Ruhani Rabin at <a href=\"http://wp-optimize.ruhanirabin.com\">WP-Optimize</a> on September 08, 2014.</p>\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}}}}i:1;a:6:{s:4:\"data\";s:22:\"\n  \n  \n  \n  \n  \n  \n  \n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Changes in v1.8.9.6\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:9:\"alternate\";s:4:\"type\";s:9:\"text/html\";s:4:\"href\";s:55:\"http://wp-optimize.ruhanirabin.com/changes-in-v1-8-9-6/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"http://wp-optimize.ruhanirabin.com/changes-in-v1-8-9-6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2014-09-04T11:21:19+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:7:\"updated\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2014-09-04T11:21:19+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:18:\"\n    \n    \n    \n  \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:3:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Ruhani Rabin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:3:\"uri\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"http://wp-optimize.ruhanirabin.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:5:\"email\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"get@email.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:925:\"<h3 id=\"whats-changed\">What’s changed</h3>\n<p><img src=\"http://wp-optimize.ruhanirabin.com/images/enable-disable-trackbacks.png\" alt=\"Image\" /></p>\n\n<ol>\n  <li>There were few <strong>number formatting problem</strong> and detection of InnoDB table format. Charles Dee Rice solved the problems that I missed out. Thank you!</li>\n  <li>Now has the ability to batch <strong>enable/disable trackbacks and comments</strong> for <strong><em>all your published posts</em></strong>. Please remember this is a batch operation. If there is a post that was disabled but the rest of the other posts were enabled, the batch operation will reset it. </li>\n  <li>Other code optimizations and cleanup</li>\n</ol>\n\n  <p><a href=\"http://wp-optimize.ruhanirabin.com/changes-in-v1-8-9-6/\">Changes in v1.8.9.6</a> was originally published by Ruhani Rabin at <a href=\"http://wp-optimize.ruhanirabin.com\">WP-Optimize</a> on September 04, 2014.</p>\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}}}}i:2;a:6:{s:4:\"data\";s:25:\"\n  \n  \n  \n  \n  \n  \n  \n  \n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"What\'s new in release v.1.8.9\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:9:\"alternate\";s:4:\"type\";s:9:\"text/html\";s:4:\"href\";s:72:\"http://wp-optimize.ruhanirabin.com/whats-new-in-release-v-dot-1-8-dot-9/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:2:\"id\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"http://wp-optimize.ruhanirabin.com/whats-new-in-release-v-dot-1-8-dot-9\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:7:\"updated\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"2014-06-13 23:06:06 +0000T00:00:00-00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:9:\"published\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"2014-05-12T00:00:00+00:00\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:6:\"author\";a:1:{i:0;a:6:{s:4:\"data\";s:18:\"\n    \n    \n    \n  \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";s:5:\"child\";a:1:{s:27:\"http://www.w3.org/2005/Atom\";a:3:{s:4:\"name\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Ruhani Rabin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:3:\"uri\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"http://wp-optimize.ruhanirabin.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}s:5:\"email\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"get@email.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}}}}}s:7:\"content\";a:1:{i:0;a:5:{s:4:\"data\";s:2514:\"<p>There are a lot of stuff that has been re-coded in this release. </p>\n\n<h3 id=\"most-notable-changes-are\">Most notable changes are:</h3>\n\n<ol>\n  <li>\n    <p>Persistent settings for main screen: Allows user to save the checkbox selection on the main screen so next time they do not need to select the items they use frequently. Red marked items could not be saved. <img src=\"http://wp-optimize.ruhanirabin.com/images/2014-05-12-1.png\" alt=\"Image\" /></p>\n  </li>\n  <li>\n    <p>Credits page has been re-organized with proper information and links. Now includes GitHub master branch commits.</p>\n  </li>\n  <li>\n    <p>Now cleans up redundant comment meta data and akismet left over data from comments meta data table. </p>\n  </li>\n  <li>\n    <p>Time settings according to the blog local time, so schedules and time display will show time properly. This would only work if the blog time has been set up properly</p>\n  </li>\n  <li>\n    <p>I have enabled mixed type tables optimization. So basically what will it do? It will enable you to run optimization if you have mixed of innoDB and MyISAM tables. But, it will skip the optimization commands on innoDB tables. Some tables may report wrong size, haven’t been able to find a proper workaround to this. </p>\n  </li>\n  <li>\n    <p>New table type column - this gives you an overlook of what types of tables you have on your database.  <img src=\"http://wp-optimize.ruhanirabin.com/images/table-type-display.png\" alt=\"Image\" /></p>\n  </li>\n  <li>\n    <p>InnoDB table type <strong>Overhead Size</strong>  are set to <strong>0 bytes</strong> because most of the time they report wrong overhead size.</p>\n  </li>\n  <li>\n    <p>Shows last blog post from GitHub Pages for WP-Optimize at the <strong>Status Log</strong></p>\n  </li>\n  <li>\n    <p><strong>Independent translation portal</strong> for Translators to live update translations before actual releases. So their translation at always in sync. <strong><a href=\"http://wp-optimize.ruhanirabin.com/translations/\">Read instructions</a></strong> <img src=\"http://wp-optimize.ruhanirabin.com/images/translations-interface.png\" alt=\"Image\" /></p>\n  </li>\n  <li>\n    <p>Updated SQL Queries to include backticks for better compatibilty with reserved names. </p>\n  </li>\n</ol>\n\n\n  <p><a href=\"http://wp-optimize.ruhanirabin.com/whats-new-in-release-v-dot-1-8-dot-9/\">What\'s new in release v.1.8.9</a> was originally published by Ruhani Rabin at <a href=\"http://wp-optimize.ruhanirabin.com\">WP-Optimize</a> on May 12, 2014.</p>\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:4:\"type\";s:4:\"html\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:2:\"en\";}}}}}}}}}}}}s:4:\"type\";i:512;s:7:\"headers\";a:17:{s:6:\"server\";s:10:\"GitHub.com\";s:12:\"content-type\";s:23:\"text/xml; charset=utf-8\";s:13:\"last-modified\";s:29:\"Fri, 17 Oct 2014 18:09:15 GMT\";s:7:\"expires\";s:29:\"Mon, 19 Jan 2015 16:59:43 GMT\";s:13:\"cache-control\";s:11:\"max-age=600\";s:16:\"content-encoding\";s:4:\"gzip\";s:14:\"content-length\";s:4:\"2660\";s:13:\"accept-ranges\";s:5:\"bytes\";s:4:\"date\";s:29:\"Tue, 20 Jan 2015 06:15:33 GMT\";s:3:\"via\";s:11:\"1.1 varnish\";s:3:\"age\";s:1:\"0\";s:10:\"connection\";s:5:\"close\";s:11:\"x-served-by\";s:14:\"cache-hk93-HKG\";s:7:\"x-cache\";s:3:\"HIT\";s:12:\"x-cache-hits\";s:1:\"1\";s:7:\"x-timer\";s:28:\"S1421734533.544968,VS0,VE244\";s:4:\"vary\";s:15:\"Accept-Encoding\";}s:5:\"build\";s:14:\"20130910210210\";}', 'no');
INSERT INTO `wp_options` VALUES ('408', '_transient_timeout_feed_mod_696c5cae47c2819ede33327da4ef81e5', '1421777738', 'no');
INSERT INTO `wp_options` VALUES ('409', '_transient_feed_mod_696c5cae47c2819ede33327da4ef81e5', '1421734538', 'no');
INSERT INTO `wp_options` VALUES ('410', 'rewrite_rules', 'a:96:{s:6:\"faq/?$\";s:23:\"index.php?post_type=faq\";s:36:\"faq/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?post_type=faq&feed=$matches[1]\";s:31:\"faq/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?post_type=faq&feed=$matches[1]\";s:23:\"faq/page/([0-9]{1,})/?$\";s:41:\"index.php?post_type=faq&paged=$matches[1]\";s:78:\"faq/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:94:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]&post_type=faq\";s:73:\"faq/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:94:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]&post_type=faq\";s:66:\"faq/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:95:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]&post_type=faq\";s:48:\"faq/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:77:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&post_type=faq\";s:65:\"faq/date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:78:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]&post_type=faq\";s:60:\"faq/date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:78:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]&post_type=faq\";s:53:\"faq/date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:79:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]&post_type=faq\";s:35:\"faq/date/([0-9]{4})/([0-9]{1,2})/?$\";s:61:\"index.php?year=$matches[1]&monthnum=$matches[2]&post_type=faq\";s:52:\"faq/date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?year=$matches[1]&feed=$matches[2]&post_type=faq\";s:47:\"faq/date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?year=$matches[1]&feed=$matches[2]&post_type=faq\";s:40:\"faq/date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:58:\"index.php?year=$matches[1]&paged=$matches[2]&post_type=faq\";s:22:\"faq/date/([0-9]{4})/?$\";s:40:\"index.php?year=$matches[1]&post_type=faq\";s:21:\"faq/author/([^/]+)/?$\";s:47:\"index.php?author_name=$matches[1]&post_type=faq\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:29:\"faq/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"faq/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"faq/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"faq/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"faq/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:24:\"(faq)/(.+?)/trackback/?$\";s:61:\"index.php?post_type=faq&slug=$matches[1]&faq=$matches[2]&tb=1\";s:44:\"(faq)/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:73:\"index.php?post_type=faq&slug=$matches[1]&faq=$matches[2]&feed=$matches[3]\";s:39:\"(faq)/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:73:\"index.php?post_type=faq&slug=$matches[1]&faq=$matches[2]&feed=$matches[3]\";s:32:\"(faq)/(.+?)/page/?([0-9]{1,})/?$\";s:74:\"index.php?post_type=faq&slug=$matches[1]&faq=$matches[2]&paged=$matches[3]\";s:39:\"(faq)/(.+?)/comment-page-([0-9]{1,})/?$\";s:74:\"index.php?post_type=faq&slug=$matches[1]&faq=$matches[2]&cpage=$matches[3]\";s:24:\"(faq)/(.+?)(/[0-9]+)?/?$\";s:73:\"index.php?post_type=faq&slug=$matches[1]&faq=$matches[2]&page=$matches[3]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:74:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:62:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:49:\"date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"date/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:48:\"date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:43:\"date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:36:\"date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:18:\"date/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:28:\"[0-9]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"[0-9]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"[0-9]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"[0-9]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"[0-9]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:21:\"([0-9]+)/trackback/?$\";s:28:\"index.php?p=$matches[1]&tb=1\";s:41:\"([0-9]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:36:\"([0-9]+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:29:\"([0-9]+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&paged=$matches[2]\";s:36:\"([0-9]+)/comment-page-([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&cpage=$matches[2]\";s:21:\"([0-9]+)(/[0-9]+)?/?$\";s:40:\"index.php?p=$matches[1]&page=$matches[2]\";s:17:\"[0-9]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:27:\"[0-9]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:47:\"[0-9]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:42:\"[0-9]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:42:\"[0-9]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)(/[0-9]+)?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes');

-- ----------------------------
-- Table structure for `wp_postmeta`
-- ----------------------------
DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_postmeta
-- ----------------------------
INSERT INTO `wp_postmeta` VALUES ('7', '6', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('8', '6', '_edit_lock', '1421734216:1');
INSERT INTO `wp_postmeta` VALUES ('11', '6', 'Miles Walked', '10-19');
INSERT INTO `wp_postmeta` VALUES ('12', '6', 'Temper Level', 'Low');
INSERT INTO `wp_postmeta` VALUES ('15', '6', 'custom_permalink', 'download-material/');
INSERT INTO `wp_postmeta` VALUES ('16', '10', '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES ('17', '10', '_edit_lock', '1421734370:1');

-- ----------------------------
-- Table structure for `wp_posts`
-- ----------------------------
DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
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
  `post_password` varchar(20) NOT NULL DEFAULT '',
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
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_posts
-- ----------------------------
INSERT INTO `wp_posts` VALUES ('6', '1', '2015-01-20 05:53:22', '2015-01-20 05:53:22', '<?php require TEMPLATEPATH . \'/page-download-material.php\'; ?>', '各種資料ダウンロード', '', 'publish', 'open', 'open', '', '%e5%90%84%e7%a8%ae%e8%b3%87%e6%96%99%e3%83%80%e3%82%a6%e3%83%b3%e3%83%ad%e3%83%bc%e3%83%89', '', '', '2015-01-20 06:03:56', '2015-01-20 06:03:56', '', '0', 'http://localhost.support.list-finder.jp/?page_id=6', '0', 'page', '', '0');
INSERT INTO `wp_posts` VALUES ('10', '1', '2015-01-20 06:13:05', '2015-01-20 06:13:05', 'Test', 'Test', '', 'publish', 'open', 'open', '', 'test', '', '', '2015-01-20 06:13:05', '2015-01-20 06:13:05', '', '0', 'http://localhost.support.list-finder.jp/?post_type=faq&#038;p=10', '0', 'faq', '', '0');

-- ----------------------------
-- Table structure for `wp_terms`
-- ----------------------------
DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_terms
-- ----------------------------
INSERT INTO `wp_terms` VALUES ('1', 'Uncategorized', 'uncategorized', '0');

-- ----------------------------
-- Table structure for `wp_term_relationships`
-- ----------------------------
DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_term_relationships
-- ----------------------------

-- ----------------------------
-- Table structure for `wp_term_taxonomy`
-- ----------------------------
DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_term_taxonomy
-- ----------------------------
INSERT INTO `wp_term_taxonomy` VALUES ('1', '1', 'category', '', '0', '0');

-- ----------------------------
-- Table structure for `wp_usermeta`
-- ----------------------------
DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_usermeta
-- ----------------------------
INSERT INTO `wp_usermeta` VALUES ('1', '1', 'nickname', 'admdev');
INSERT INTO `wp_usermeta` VALUES ('2', '1', 'first_name', '');
INSERT INTO `wp_usermeta` VALUES ('3', '1', 'last_name', '');
INSERT INTO `wp_usermeta` VALUES ('4', '1', 'description', '');
INSERT INTO `wp_usermeta` VALUES ('5', '1', 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES ('6', '1', 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES ('7', '1', 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES ('8', '1', 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES ('9', '1', 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES ('10', '1', 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES ('11', '1', 'wp_user_level', '10');
INSERT INTO `wp_usermeta` VALUES ('12', '1', 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,cptp_pointer0871,wp410_dfw');
INSERT INTO `wp_usermeta` VALUES ('13', '1', 'show_welcome_panel', '1');
INSERT INTO `wp_usermeta` VALUES ('14', '1', 'session_tokens', 'a:1:{s:64:\"a9b36abd929e6e70e250b7439d93538a9cda349d3b04b5eb6370e6edd1b56eb9\";a:4:{s:10:\"expiration\";i:1421902120;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:72:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0\";s:5:\"login\";i:1421729320;}}');
INSERT INTO `wp_usermeta` VALUES ('15', '1', 'wp_dashboard_quick_press_last_post_id', '8');
INSERT INTO `wp_usermeta` VALUES ('16', '1', 'closedpostboxes_page', 'a:0:{}');
INSERT INTO `wp_usermeta` VALUES ('17', '1', 'metaboxhidden_page', 'a:4:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES ('18', '1', 'wp_user-settings', 'editor=html');
INSERT INTO `wp_usermeta` VALUES ('19', '1', 'wp_user-settings-time', '1421733835');

-- ----------------------------
-- Table structure for `wp_users`
-- ----------------------------
DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wp_users
-- ----------------------------
INSERT INTO `wp_users` VALUES ('1', 'admdev', '$P$BvykKcwzYXp4OeZPQKl3hHZqSa2YYU/', 'admdev', 'anhndt@vn.innovation.co.jp', '', '2015-01-20 04:48:15', '', '0', 'admdev');
