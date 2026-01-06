-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2025-12-08 05:34:16','2025-12-08 05:34:16','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=739 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'cron','a:9:{i:1767659662;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1767677662;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1767677755;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1767677760;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1767681256;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1767683056;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1767684856;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1767774958;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','on');
INSERT INTO `wp_options` VALUES (2,'siteurl','http://localhost:10004','on');
INSERT INTO `wp_options` VALUES (3,'home','http://localhost:10004','on');
INSERT INTO `wp_options` VALUES (4,'blogname','noeldevs','on');
INSERT INTO `wp_options` VALUES (5,'blogdescription','','on');
INSERT INTO `wp_options` VALUES (6,'users_can_register','0','on');
INSERT INTO `wp_options` VALUES (7,'admin_email','dev-email@wpengine.local','on');
INSERT INTO `wp_options` VALUES (8,'start_of_week','1','on');
INSERT INTO `wp_options` VALUES (9,'use_balanceTags','0','on');
INSERT INTO `wp_options` VALUES (10,'use_smilies','1','on');
INSERT INTO `wp_options` VALUES (11,'require_name_email','1','on');
INSERT INTO `wp_options` VALUES (12,'comments_notify','1','on');
INSERT INTO `wp_options` VALUES (13,'posts_per_rss','10','on');
INSERT INTO `wp_options` VALUES (14,'rss_use_excerpt','0','on');
INSERT INTO `wp_options` VALUES (15,'mailserver_url','mail.example.com','on');
INSERT INTO `wp_options` VALUES (16,'mailserver_login','login@example.com','on');
INSERT INTO `wp_options` VALUES (17,'mailserver_pass','','on');
INSERT INTO `wp_options` VALUES (18,'mailserver_port','110','on');
INSERT INTO `wp_options` VALUES (19,'default_category','1','on');
INSERT INTO `wp_options` VALUES (20,'default_comment_status','open','on');
INSERT INTO `wp_options` VALUES (21,'default_ping_status','open','on');
INSERT INTO `wp_options` VALUES (22,'default_pingback_flag','1','on');
INSERT INTO `wp_options` VALUES (23,'posts_per_page','10','on');
INSERT INTO `wp_options` VALUES (24,'date_format','F j, Y','on');
INSERT INTO `wp_options` VALUES (25,'time_format','g:i a','on');
INSERT INTO `wp_options` VALUES (26,'links_updated_date_format','F j, Y g:i a','on');
INSERT INTO `wp_options` VALUES (27,'comment_moderation','0','on');
INSERT INTO `wp_options` VALUES (28,'moderation_notify','1','on');
INSERT INTO `wp_options` VALUES (29,'permalink_structure','/%postname%/','on');
INSERT INTO `wp_options` VALUES (30,'rewrite_rules','a:167:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:10:\"project/?$\";s:27:\"index.php?post_type=project\";s:40:\"project/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:35:\"project/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:27:\"project/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=project&paged=$matches[1]\";s:15:\"achievements/?$\";s:31:\"index.php?post_type=achievement\";s:45:\"achievements/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=achievement&feed=$matches[1]\";s:40:\"achievements/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=achievement&feed=$matches[1]\";s:32:\"achievements/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=achievement&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"project/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"project/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"project/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"project/([^/]+)/embed/?$\";s:40:\"index.php?project=$matches[1]&embed=true\";s:28:\"project/([^/]+)/trackback/?$\";s:34:\"index.php?project=$matches[1]&tb=1\";s:48:\"project/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:43:\"project/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:36:\"project/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&paged=$matches[2]\";s:43:\"project/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&cpage=$matches[2]\";s:32:\"project/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?project=$matches[1]&page=$matches[2]\";s:24:\"project/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"project/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"project/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"skill/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"skill/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"skill/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"skill/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"skill/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"skill/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"skill/([^/]+)/embed/?$\";s:38:\"index.php?skill=$matches[1]&embed=true\";s:26:\"skill/([^/]+)/trackback/?$\";s:32:\"index.php?skill=$matches[1]&tb=1\";s:34:\"skill/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?skill=$matches[1]&paged=$matches[2]\";s:41:\"skill/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?skill=$matches[1]&cpage=$matches[2]\";s:30:\"skill/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?skill=$matches[1]&page=$matches[2]\";s:22:\"skill/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"skill/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"skill/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"skill/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"skill/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"skill/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"achievements/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"achievements/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"achievements/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"achievements/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"achievements/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"achievements/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"achievements/([^/]+)/embed/?$\";s:44:\"index.php?achievement=$matches[1]&embed=true\";s:33:\"achievements/([^/]+)/trackback/?$\";s:38:\"index.php?achievement=$matches[1]&tb=1\";s:53:\"achievements/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?achievement=$matches[1]&feed=$matches[2]\";s:48:\"achievements/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?achievement=$matches[1]&feed=$matches[2]\";s:41:\"achievements/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?achievement=$matches[1]&paged=$matches[2]\";s:48:\"achievements/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?achievement=$matches[1]&cpage=$matches[2]\";s:37:\"achievements/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?achievement=$matches[1]&page=$matches[2]\";s:29:\"achievements/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"achievements/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"achievements/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"achievements/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"achievements/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"achievements/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"project-type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?project_type=$matches[1]&feed=$matches[2]\";s:48:\"project-type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?project_type=$matches[1]&feed=$matches[2]\";s:29:\"project-type/([^/]+)/embed/?$\";s:45:\"index.php?project_type=$matches[1]&embed=true\";s:41:\"project-type/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?project_type=$matches[1]&paged=$matches[2]\";s:23:\"project-type/([^/]+)/?$\";s:34:\"index.php?project_type=$matches[1]\";s:55:\"skill-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?skill_category=$matches[1]&feed=$matches[2]\";s:50:\"skill-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?skill_category=$matches[1]&feed=$matches[2]\";s:31:\"skill-category/([^/]+)/embed/?$\";s:47:\"index.php?skill_category=$matches[1]&embed=true\";s:43:\"skill-category/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?skill_category=$matches[1]&paged=$matches[2]\";s:25:\"skill-category/([^/]+)/?$\";s:36:\"index.php?skill_category=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:23:\"index.php?sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','on');
INSERT INTO `wp_options` VALUES (31,'hack_file','0','on');
INSERT INTO `wp_options` VALUES (32,'blog_charset','UTF-8','on');
INSERT INTO `wp_options` VALUES (33,'moderation_keys','','off');
INSERT INTO `wp_options` VALUES (34,'active_plugins','a:0:{}','on');
INSERT INTO `wp_options` VALUES (35,'category_base','','on');
INSERT INTO `wp_options` VALUES (36,'ping_sites','https://rpc.pingomatic.com/','on');
INSERT INTO `wp_options` VALUES (37,'comment_max_links','2','on');
INSERT INTO `wp_options` VALUES (38,'gmt_offset','0','on');
INSERT INTO `wp_options` VALUES (39,'default_email_category','1','on');
INSERT INTO `wp_options` VALUES (40,'recently_edited','','off');
INSERT INTO `wp_options` VALUES (41,'template','lightdarkorangypro','on');
INSERT INTO `wp_options` VALUES (42,'stylesheet','lightdarkorangypro','on');
INSERT INTO `wp_options` VALUES (43,'comment_registration','0','on');
INSERT INTO `wp_options` VALUES (44,'html_type','text/html','on');
INSERT INTO `wp_options` VALUES (45,'use_trackback','0','on');
INSERT INTO `wp_options` VALUES (46,'default_role','subscriber','on');
INSERT INTO `wp_options` VALUES (47,'db_version','60717','on');
INSERT INTO `wp_options` VALUES (48,'uploads_use_yearmonth_folders','1','on');
INSERT INTO `wp_options` VALUES (49,'upload_path','','on');
INSERT INTO `wp_options` VALUES (50,'blog_public','1','on');
INSERT INTO `wp_options` VALUES (51,'default_link_category','2','on');
INSERT INTO `wp_options` VALUES (52,'show_on_front','posts','on');
INSERT INTO `wp_options` VALUES (53,'tag_base','','on');
INSERT INTO `wp_options` VALUES (54,'show_avatars','1','on');
INSERT INTO `wp_options` VALUES (55,'avatar_rating','G','on');
INSERT INTO `wp_options` VALUES (56,'upload_url_path','','on');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_w','150','on');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_h','150','on');
INSERT INTO `wp_options` VALUES (59,'thumbnail_crop','1','on');
INSERT INTO `wp_options` VALUES (60,'medium_size_w','300','on');
INSERT INTO `wp_options` VALUES (61,'medium_size_h','300','on');
INSERT INTO `wp_options` VALUES (62,'avatar_default','mystery','on');
INSERT INTO `wp_options` VALUES (63,'large_size_w','1024','on');
INSERT INTO `wp_options` VALUES (64,'large_size_h','1024','on');
INSERT INTO `wp_options` VALUES (65,'image_default_link_type','none','on');
INSERT INTO `wp_options` VALUES (66,'image_default_size','','on');
INSERT INTO `wp_options` VALUES (67,'image_default_align','','on');
INSERT INTO `wp_options` VALUES (68,'close_comments_for_old_posts','0','on');
INSERT INTO `wp_options` VALUES (69,'close_comments_days_old','14','on');
INSERT INTO `wp_options` VALUES (70,'thread_comments','1','on');
INSERT INTO `wp_options` VALUES (71,'thread_comments_depth','5','on');
INSERT INTO `wp_options` VALUES (72,'page_comments','0','on');
INSERT INTO `wp_options` VALUES (73,'comments_per_page','50','on');
INSERT INTO `wp_options` VALUES (74,'default_comments_page','newest','on');
INSERT INTO `wp_options` VALUES (75,'comment_order','asc','on');
INSERT INTO `wp_options` VALUES (76,'sticky_posts','a:0:{}','on');
INSERT INTO `wp_options` VALUES (77,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (78,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (79,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (80,'uninstall_plugins','a:0:{}','off');
INSERT INTO `wp_options` VALUES (81,'timezone_string','','on');
INSERT INTO `wp_options` VALUES (82,'page_for_posts','0','on');
INSERT INTO `wp_options` VALUES (83,'page_on_front','0','on');
INSERT INTO `wp_options` VALUES (84,'default_post_format','0','on');
INSERT INTO `wp_options` VALUES (85,'link_manager_enabled','0','on');
INSERT INTO `wp_options` VALUES (86,'finished_splitting_shared_terms','1','on');
INSERT INTO `wp_options` VALUES (87,'site_icon','0','on');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_w','768','on');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_h','0','on');
INSERT INTO `wp_options` VALUES (90,'wp_page_for_privacy_policy','3','on');
INSERT INTO `wp_options` VALUES (91,'show_comments_cookies_opt_in','1','on');
INSERT INTO `wp_options` VALUES (92,'admin_email_lifespan','1780724056','on');
INSERT INTO `wp_options` VALUES (93,'disallowed_keys','','off');
INSERT INTO `wp_options` VALUES (94,'comment_previously_approved','1','on');
INSERT INTO `wp_options` VALUES (95,'auto_plugin_theme_update_emails','a:0:{}','off');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_dev','enabled','on');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_minor','enabled','on');
INSERT INTO `wp_options` VALUES (98,'auto_update_core_major','enabled','on');
INSERT INTO `wp_options` VALUES (99,'wp_force_deactivated_plugins','a:0:{}','on');
INSERT INTO `wp_options` VALUES (100,'wp_attachment_pages_enabled','0','on');
INSERT INTO `wp_options` VALUES (101,'wp_notes_notify','1','on');
INSERT INTO `wp_options` VALUES (102,'initial_db_version','60717','on');
INSERT INTO `wp_options` VALUES (103,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','on');
INSERT INTO `wp_options` VALUES (104,'fresh_site','1','off');
INSERT INTO `wp_options` VALUES (105,'user_count','1','off');
INSERT INTO `wp_options` VALUES (106,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (107,'sidebars_widgets','a:5:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:8:\"footer-1\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:13:\"array_version\";i:3;}','auto');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (110,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (111,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (112,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (113,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (114,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (115,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (116,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (122,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:3:\"6.9\";s:5:\"files\";a:584:{i:0;s:31:\"accordion-heading/style-rtl.css\";i:1;s:35:\"accordion-heading/style-rtl.min.css\";i:2;s:27:\"accordion-heading/style.css\";i:3;s:31:\"accordion-heading/style.min.css\";i:4;s:28:\"accordion-item/style-rtl.css\";i:5;s:32:\"accordion-item/style-rtl.min.css\";i:6;s:24:\"accordion-item/style.css\";i:7;s:28:\"accordion-item/style.min.css\";i:8;s:29:\"accordion-panel/style-rtl.css\";i:9;s:33:\"accordion-panel/style-rtl.min.css\";i:10;s:25:\"accordion-panel/style.css\";i:11;s:29:\"accordion-panel/style.min.css\";i:12;s:23:\"accordion/style-rtl.css\";i:13;s:27:\"accordion/style-rtl.min.css\";i:14;s:19:\"accordion/style.css\";i:15;s:23:\"accordion/style.min.css\";i:16;s:23:\"archives/editor-rtl.css\";i:17;s:27:\"archives/editor-rtl.min.css\";i:18;s:19:\"archives/editor.css\";i:19;s:23:\"archives/editor.min.css\";i:20;s:22:\"archives/style-rtl.css\";i:21;s:26:\"archives/style-rtl.min.css\";i:22;s:18:\"archives/style.css\";i:23;s:22:\"archives/style.min.css\";i:24;s:20:\"audio/editor-rtl.css\";i:25;s:24:\"audio/editor-rtl.min.css\";i:26;s:16:\"audio/editor.css\";i:27;s:20:\"audio/editor.min.css\";i:28;s:19:\"audio/style-rtl.css\";i:29;s:23:\"audio/style-rtl.min.css\";i:30;s:15:\"audio/style.css\";i:31;s:19:\"audio/style.min.css\";i:32;s:19:\"audio/theme-rtl.css\";i:33;s:23:\"audio/theme-rtl.min.css\";i:34;s:15:\"audio/theme.css\";i:35;s:19:\"audio/theme.min.css\";i:36;s:21:\"avatar/editor-rtl.css\";i:37;s:25:\"avatar/editor-rtl.min.css\";i:38;s:17:\"avatar/editor.css\";i:39;s:21:\"avatar/editor.min.css\";i:40;s:20:\"avatar/style-rtl.css\";i:41;s:24:\"avatar/style-rtl.min.css\";i:42;s:16:\"avatar/style.css\";i:43;s:20:\"avatar/style.min.css\";i:44;s:21:\"button/editor-rtl.css\";i:45;s:25:\"button/editor-rtl.min.css\";i:46;s:17:\"button/editor.css\";i:47;s:21:\"button/editor.min.css\";i:48;s:20:\"button/style-rtl.css\";i:49;s:24:\"button/style-rtl.min.css\";i:50;s:16:\"button/style.css\";i:51;s:20:\"button/style.min.css\";i:52;s:22:\"buttons/editor-rtl.css\";i:53;s:26:\"buttons/editor-rtl.min.css\";i:54;s:18:\"buttons/editor.css\";i:55;s:22:\"buttons/editor.min.css\";i:56;s:21:\"buttons/style-rtl.css\";i:57;s:25:\"buttons/style-rtl.min.css\";i:58;s:17:\"buttons/style.css\";i:59;s:21:\"buttons/style.min.css\";i:60;s:22:\"calendar/style-rtl.css\";i:61;s:26:\"calendar/style-rtl.min.css\";i:62;s:18:\"calendar/style.css\";i:63;s:22:\"calendar/style.min.css\";i:64;s:25:\"categories/editor-rtl.css\";i:65;s:29:\"categories/editor-rtl.min.css\";i:66;s:21:\"categories/editor.css\";i:67;s:25:\"categories/editor.min.css\";i:68;s:24:\"categories/style-rtl.css\";i:69;s:28:\"categories/style-rtl.min.css\";i:70;s:20:\"categories/style.css\";i:71;s:24:\"categories/style.min.css\";i:72;s:19:\"code/editor-rtl.css\";i:73;s:23:\"code/editor-rtl.min.css\";i:74;s:15:\"code/editor.css\";i:75;s:19:\"code/editor.min.css\";i:76;s:18:\"code/style-rtl.css\";i:77;s:22:\"code/style-rtl.min.css\";i:78;s:14:\"code/style.css\";i:79;s:18:\"code/style.min.css\";i:80;s:18:\"code/theme-rtl.css\";i:81;s:22:\"code/theme-rtl.min.css\";i:82;s:14:\"code/theme.css\";i:83;s:18:\"code/theme.min.css\";i:84;s:22:\"columns/editor-rtl.css\";i:85;s:26:\"columns/editor-rtl.min.css\";i:86;s:18:\"columns/editor.css\";i:87;s:22:\"columns/editor.min.css\";i:88;s:21:\"columns/style-rtl.css\";i:89;s:25:\"columns/style-rtl.min.css\";i:90;s:17:\"columns/style.css\";i:91;s:21:\"columns/style.min.css\";i:92;s:33:\"comment-author-name/style-rtl.css\";i:93;s:37:\"comment-author-name/style-rtl.min.css\";i:94;s:29:\"comment-author-name/style.css\";i:95;s:33:\"comment-author-name/style.min.css\";i:96;s:29:\"comment-content/style-rtl.css\";i:97;s:33:\"comment-content/style-rtl.min.css\";i:98;s:25:\"comment-content/style.css\";i:99;s:29:\"comment-content/style.min.css\";i:100;s:26:\"comment-date/style-rtl.css\";i:101;s:30:\"comment-date/style-rtl.min.css\";i:102;s:22:\"comment-date/style.css\";i:103;s:26:\"comment-date/style.min.css\";i:104;s:31:\"comment-edit-link/style-rtl.css\";i:105;s:35:\"comment-edit-link/style-rtl.min.css\";i:106;s:27:\"comment-edit-link/style.css\";i:107;s:31:\"comment-edit-link/style.min.css\";i:108;s:32:\"comment-reply-link/style-rtl.css\";i:109;s:36:\"comment-reply-link/style-rtl.min.css\";i:110;s:28:\"comment-reply-link/style.css\";i:111;s:32:\"comment-reply-link/style.min.css\";i:112;s:30:\"comment-template/style-rtl.css\";i:113;s:34:\"comment-template/style-rtl.min.css\";i:114;s:26:\"comment-template/style.css\";i:115;s:30:\"comment-template/style.min.css\";i:116;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:117;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:118;s:38:\"comments-pagination-numbers/editor.css\";i:119;s:42:\"comments-pagination-numbers/editor.min.css\";i:120;s:34:\"comments-pagination/editor-rtl.css\";i:121;s:38:\"comments-pagination/editor-rtl.min.css\";i:122;s:30:\"comments-pagination/editor.css\";i:123;s:34:\"comments-pagination/editor.min.css\";i:124;s:33:\"comments-pagination/style-rtl.css\";i:125;s:37:\"comments-pagination/style-rtl.min.css\";i:126;s:29:\"comments-pagination/style.css\";i:127;s:33:\"comments-pagination/style.min.css\";i:128;s:29:\"comments-title/editor-rtl.css\";i:129;s:33:\"comments-title/editor-rtl.min.css\";i:130;s:25:\"comments-title/editor.css\";i:131;s:29:\"comments-title/editor.min.css\";i:132;s:23:\"comments/editor-rtl.css\";i:133;s:27:\"comments/editor-rtl.min.css\";i:134;s:19:\"comments/editor.css\";i:135;s:23:\"comments/editor.min.css\";i:136;s:22:\"comments/style-rtl.css\";i:137;s:26:\"comments/style-rtl.min.css\";i:138;s:18:\"comments/style.css\";i:139;s:22:\"comments/style.min.css\";i:140;s:20:\"cover/editor-rtl.css\";i:141;s:24:\"cover/editor-rtl.min.css\";i:142;s:16:\"cover/editor.css\";i:143;s:20:\"cover/editor.min.css\";i:144;s:19:\"cover/style-rtl.css\";i:145;s:23:\"cover/style-rtl.min.css\";i:146;s:15:\"cover/style.css\";i:147;s:19:\"cover/style.min.css\";i:148;s:22:\"details/editor-rtl.css\";i:149;s:26:\"details/editor-rtl.min.css\";i:150;s:18:\"details/editor.css\";i:151;s:22:\"details/editor.min.css\";i:152;s:21:\"details/style-rtl.css\";i:153;s:25:\"details/style-rtl.min.css\";i:154;s:17:\"details/style.css\";i:155;s:21:\"details/style.min.css\";i:156;s:20:\"embed/editor-rtl.css\";i:157;s:24:\"embed/editor-rtl.min.css\";i:158;s:16:\"embed/editor.css\";i:159;s:20:\"embed/editor.min.css\";i:160;s:19:\"embed/style-rtl.css\";i:161;s:23:\"embed/style-rtl.min.css\";i:162;s:15:\"embed/style.css\";i:163;s:19:\"embed/style.min.css\";i:164;s:19:\"embed/theme-rtl.css\";i:165;s:23:\"embed/theme-rtl.min.css\";i:166;s:15:\"embed/theme.css\";i:167;s:19:\"embed/theme.min.css\";i:168;s:19:\"file/editor-rtl.css\";i:169;s:23:\"file/editor-rtl.min.css\";i:170;s:15:\"file/editor.css\";i:171;s:19:\"file/editor.min.css\";i:172;s:18:\"file/style-rtl.css\";i:173;s:22:\"file/style-rtl.min.css\";i:174;s:14:\"file/style.css\";i:175;s:18:\"file/style.min.css\";i:176;s:23:\"footnotes/style-rtl.css\";i:177;s:27:\"footnotes/style-rtl.min.css\";i:178;s:19:\"footnotes/style.css\";i:179;s:23:\"footnotes/style.min.css\";i:180;s:23:\"freeform/editor-rtl.css\";i:181;s:27:\"freeform/editor-rtl.min.css\";i:182;s:19:\"freeform/editor.css\";i:183;s:23:\"freeform/editor.min.css\";i:184;s:22:\"gallery/editor-rtl.css\";i:185;s:26:\"gallery/editor-rtl.min.css\";i:186;s:18:\"gallery/editor.css\";i:187;s:22:\"gallery/editor.min.css\";i:188;s:21:\"gallery/style-rtl.css\";i:189;s:25:\"gallery/style-rtl.min.css\";i:190;s:17:\"gallery/style.css\";i:191;s:21:\"gallery/style.min.css\";i:192;s:21:\"gallery/theme-rtl.css\";i:193;s:25:\"gallery/theme-rtl.min.css\";i:194;s:17:\"gallery/theme.css\";i:195;s:21:\"gallery/theme.min.css\";i:196;s:20:\"group/editor-rtl.css\";i:197;s:24:\"group/editor-rtl.min.css\";i:198;s:16:\"group/editor.css\";i:199;s:20:\"group/editor.min.css\";i:200;s:19:\"group/style-rtl.css\";i:201;s:23:\"group/style-rtl.min.css\";i:202;s:15:\"group/style.css\";i:203;s:19:\"group/style.min.css\";i:204;s:19:\"group/theme-rtl.css\";i:205;s:23:\"group/theme-rtl.min.css\";i:206;s:15:\"group/theme.css\";i:207;s:19:\"group/theme.min.css\";i:208;s:21:\"heading/style-rtl.css\";i:209;s:25:\"heading/style-rtl.min.css\";i:210;s:17:\"heading/style.css\";i:211;s:21:\"heading/style.min.css\";i:212;s:19:\"html/editor-rtl.css\";i:213;s:23:\"html/editor-rtl.min.css\";i:214;s:15:\"html/editor.css\";i:215;s:19:\"html/editor.min.css\";i:216;s:20:\"image/editor-rtl.css\";i:217;s:24:\"image/editor-rtl.min.css\";i:218;s:16:\"image/editor.css\";i:219;s:20:\"image/editor.min.css\";i:220;s:19:\"image/style-rtl.css\";i:221;s:23:\"image/style-rtl.min.css\";i:222;s:15:\"image/style.css\";i:223;s:19:\"image/style.min.css\";i:224;s:19:\"image/theme-rtl.css\";i:225;s:23:\"image/theme-rtl.min.css\";i:226;s:15:\"image/theme.css\";i:227;s:19:\"image/theme.min.css\";i:228;s:29:\"latest-comments/style-rtl.css\";i:229;s:33:\"latest-comments/style-rtl.min.css\";i:230;s:25:\"latest-comments/style.css\";i:231;s:29:\"latest-comments/style.min.css\";i:232;s:27:\"latest-posts/editor-rtl.css\";i:233;s:31:\"latest-posts/editor-rtl.min.css\";i:234;s:23:\"latest-posts/editor.css\";i:235;s:27:\"latest-posts/editor.min.css\";i:236;s:26:\"latest-posts/style-rtl.css\";i:237;s:30:\"latest-posts/style-rtl.min.css\";i:238;s:22:\"latest-posts/style.css\";i:239;s:26:\"latest-posts/style.min.css\";i:240;s:18:\"list/style-rtl.css\";i:241;s:22:\"list/style-rtl.min.css\";i:242;s:14:\"list/style.css\";i:243;s:18:\"list/style.min.css\";i:244;s:22:\"loginout/style-rtl.css\";i:245;s:26:\"loginout/style-rtl.min.css\";i:246;s:18:\"loginout/style.css\";i:247;s:22:\"loginout/style.min.css\";i:248;s:19:\"math/editor-rtl.css\";i:249;s:23:\"math/editor-rtl.min.css\";i:250;s:15:\"math/editor.css\";i:251;s:19:\"math/editor.min.css\";i:252;s:18:\"math/style-rtl.css\";i:253;s:22:\"math/style-rtl.min.css\";i:254;s:14:\"math/style.css\";i:255;s:18:\"math/style.min.css\";i:256;s:25:\"media-text/editor-rtl.css\";i:257;s:29:\"media-text/editor-rtl.min.css\";i:258;s:21:\"media-text/editor.css\";i:259;s:25:\"media-text/editor.min.css\";i:260;s:24:\"media-text/style-rtl.css\";i:261;s:28:\"media-text/style-rtl.min.css\";i:262;s:20:\"media-text/style.css\";i:263;s:24:\"media-text/style.min.css\";i:264;s:19:\"more/editor-rtl.css\";i:265;s:23:\"more/editor-rtl.min.css\";i:266;s:15:\"more/editor.css\";i:267;s:19:\"more/editor.min.css\";i:268;s:30:\"navigation-link/editor-rtl.css\";i:269;s:34:\"navigation-link/editor-rtl.min.css\";i:270;s:26:\"navigation-link/editor.css\";i:271;s:30:\"navigation-link/editor.min.css\";i:272;s:29:\"navigation-link/style-rtl.css\";i:273;s:33:\"navigation-link/style-rtl.min.css\";i:274;s:25:\"navigation-link/style.css\";i:275;s:29:\"navigation-link/style.min.css\";i:276;s:33:\"navigation-submenu/editor-rtl.css\";i:277;s:37:\"navigation-submenu/editor-rtl.min.css\";i:278;s:29:\"navigation-submenu/editor.css\";i:279;s:33:\"navigation-submenu/editor.min.css\";i:280;s:25:\"navigation/editor-rtl.css\";i:281;s:29:\"navigation/editor-rtl.min.css\";i:282;s:21:\"navigation/editor.css\";i:283;s:25:\"navigation/editor.min.css\";i:284;s:24:\"navigation/style-rtl.css\";i:285;s:28:\"navigation/style-rtl.min.css\";i:286;s:20:\"navigation/style.css\";i:287;s:24:\"navigation/style.min.css\";i:288;s:23:\"nextpage/editor-rtl.css\";i:289;s:27:\"nextpage/editor-rtl.min.css\";i:290;s:19:\"nextpage/editor.css\";i:291;s:23:\"nextpage/editor.min.css\";i:292;s:24:\"page-list/editor-rtl.css\";i:293;s:28:\"page-list/editor-rtl.min.css\";i:294;s:20:\"page-list/editor.css\";i:295;s:24:\"page-list/editor.min.css\";i:296;s:23:\"page-list/style-rtl.css\";i:297;s:27:\"page-list/style-rtl.min.css\";i:298;s:19:\"page-list/style.css\";i:299;s:23:\"page-list/style.min.css\";i:300;s:24:\"paragraph/editor-rtl.css\";i:301;s:28:\"paragraph/editor-rtl.min.css\";i:302;s:20:\"paragraph/editor.css\";i:303;s:24:\"paragraph/editor.min.css\";i:304;s:23:\"paragraph/style-rtl.css\";i:305;s:27:\"paragraph/style-rtl.min.css\";i:306;s:19:\"paragraph/style.css\";i:307;s:23:\"paragraph/style.min.css\";i:308;s:35:\"post-author-biography/style-rtl.css\";i:309;s:39:\"post-author-biography/style-rtl.min.css\";i:310;s:31:\"post-author-biography/style.css\";i:311;s:35:\"post-author-biography/style.min.css\";i:312;s:30:\"post-author-name/style-rtl.css\";i:313;s:34:\"post-author-name/style-rtl.min.css\";i:314;s:26:\"post-author-name/style.css\";i:315;s:30:\"post-author-name/style.min.css\";i:316;s:25:\"post-author/style-rtl.css\";i:317;s:29:\"post-author/style-rtl.min.css\";i:318;s:21:\"post-author/style.css\";i:319;s:25:\"post-author/style.min.css\";i:320;s:33:\"post-comments-count/style-rtl.css\";i:321;s:37:\"post-comments-count/style-rtl.min.css\";i:322;s:29:\"post-comments-count/style.css\";i:323;s:33:\"post-comments-count/style.min.css\";i:324;s:33:\"post-comments-form/editor-rtl.css\";i:325;s:37:\"post-comments-form/editor-rtl.min.css\";i:326;s:29:\"post-comments-form/editor.css\";i:327;s:33:\"post-comments-form/editor.min.css\";i:328;s:32:\"post-comments-form/style-rtl.css\";i:329;s:36:\"post-comments-form/style-rtl.min.css\";i:330;s:28:\"post-comments-form/style.css\";i:331;s:32:\"post-comments-form/style.min.css\";i:332;s:32:\"post-comments-link/style-rtl.css\";i:333;s:36:\"post-comments-link/style-rtl.min.css\";i:334;s:28:\"post-comments-link/style.css\";i:335;s:32:\"post-comments-link/style.min.css\";i:336;s:26:\"post-content/style-rtl.css\";i:337;s:30:\"post-content/style-rtl.min.css\";i:338;s:22:\"post-content/style.css\";i:339;s:26:\"post-content/style.min.css\";i:340;s:23:\"post-date/style-rtl.css\";i:341;s:27:\"post-date/style-rtl.min.css\";i:342;s:19:\"post-date/style.css\";i:343;s:23:\"post-date/style.min.css\";i:344;s:27:\"post-excerpt/editor-rtl.css\";i:345;s:31:\"post-excerpt/editor-rtl.min.css\";i:346;s:23:\"post-excerpt/editor.css\";i:347;s:27:\"post-excerpt/editor.min.css\";i:348;s:26:\"post-excerpt/style-rtl.css\";i:349;s:30:\"post-excerpt/style-rtl.min.css\";i:350;s:22:\"post-excerpt/style.css\";i:351;s:26:\"post-excerpt/style.min.css\";i:352;s:34:\"post-featured-image/editor-rtl.css\";i:353;s:38:\"post-featured-image/editor-rtl.min.css\";i:354;s:30:\"post-featured-image/editor.css\";i:355;s:34:\"post-featured-image/editor.min.css\";i:356;s:33:\"post-featured-image/style-rtl.css\";i:357;s:37:\"post-featured-image/style-rtl.min.css\";i:358;s:29:\"post-featured-image/style.css\";i:359;s:33:\"post-featured-image/style.min.css\";i:360;s:34:\"post-navigation-link/style-rtl.css\";i:361;s:38:\"post-navigation-link/style-rtl.min.css\";i:362;s:30:\"post-navigation-link/style.css\";i:363;s:34:\"post-navigation-link/style.min.css\";i:364;s:27:\"post-template/style-rtl.css\";i:365;s:31:\"post-template/style-rtl.min.css\";i:366;s:23:\"post-template/style.css\";i:367;s:27:\"post-template/style.min.css\";i:368;s:24:\"post-terms/style-rtl.css\";i:369;s:28:\"post-terms/style-rtl.min.css\";i:370;s:20:\"post-terms/style.css\";i:371;s:24:\"post-terms/style.min.css\";i:372;s:31:\"post-time-to-read/style-rtl.css\";i:373;s:35:\"post-time-to-read/style-rtl.min.css\";i:374;s:27:\"post-time-to-read/style.css\";i:375;s:31:\"post-time-to-read/style.min.css\";i:376;s:24:\"post-title/style-rtl.css\";i:377;s:28:\"post-title/style-rtl.min.css\";i:378;s:20:\"post-title/style.css\";i:379;s:24:\"post-title/style.min.css\";i:380;s:26:\"preformatted/style-rtl.css\";i:381;s:30:\"preformatted/style-rtl.min.css\";i:382;s:22:\"preformatted/style.css\";i:383;s:26:\"preformatted/style.min.css\";i:384;s:24:\"pullquote/editor-rtl.css\";i:385;s:28:\"pullquote/editor-rtl.min.css\";i:386;s:20:\"pullquote/editor.css\";i:387;s:24:\"pullquote/editor.min.css\";i:388;s:23:\"pullquote/style-rtl.css\";i:389;s:27:\"pullquote/style-rtl.min.css\";i:390;s:19:\"pullquote/style.css\";i:391;s:23:\"pullquote/style.min.css\";i:392;s:23:\"pullquote/theme-rtl.css\";i:393;s:27:\"pullquote/theme-rtl.min.css\";i:394;s:19:\"pullquote/theme.css\";i:395;s:23:\"pullquote/theme.min.css\";i:396;s:39:\"query-pagination-numbers/editor-rtl.css\";i:397;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:398;s:35:\"query-pagination-numbers/editor.css\";i:399;s:39:\"query-pagination-numbers/editor.min.css\";i:400;s:31:\"query-pagination/editor-rtl.css\";i:401;s:35:\"query-pagination/editor-rtl.min.css\";i:402;s:27:\"query-pagination/editor.css\";i:403;s:31:\"query-pagination/editor.min.css\";i:404;s:30:\"query-pagination/style-rtl.css\";i:405;s:34:\"query-pagination/style-rtl.min.css\";i:406;s:26:\"query-pagination/style.css\";i:407;s:30:\"query-pagination/style.min.css\";i:408;s:25:\"query-title/style-rtl.css\";i:409;s:29:\"query-title/style-rtl.min.css\";i:410;s:21:\"query-title/style.css\";i:411;s:25:\"query-title/style.min.css\";i:412;s:25:\"query-total/style-rtl.css\";i:413;s:29:\"query-total/style-rtl.min.css\";i:414;s:21:\"query-total/style.css\";i:415;s:25:\"query-total/style.min.css\";i:416;s:20:\"query/editor-rtl.css\";i:417;s:24:\"query/editor-rtl.min.css\";i:418;s:16:\"query/editor.css\";i:419;s:20:\"query/editor.min.css\";i:420;s:19:\"quote/style-rtl.css\";i:421;s:23:\"quote/style-rtl.min.css\";i:422;s:15:\"quote/style.css\";i:423;s:19:\"quote/style.min.css\";i:424;s:19:\"quote/theme-rtl.css\";i:425;s:23:\"quote/theme-rtl.min.css\";i:426;s:15:\"quote/theme.css\";i:427;s:19:\"quote/theme.min.css\";i:428;s:23:\"read-more/style-rtl.css\";i:429;s:27:\"read-more/style-rtl.min.css\";i:430;s:19:\"read-more/style.css\";i:431;s:23:\"read-more/style.min.css\";i:432;s:18:\"rss/editor-rtl.css\";i:433;s:22:\"rss/editor-rtl.min.css\";i:434;s:14:\"rss/editor.css\";i:435;s:18:\"rss/editor.min.css\";i:436;s:17:\"rss/style-rtl.css\";i:437;s:21:\"rss/style-rtl.min.css\";i:438;s:13:\"rss/style.css\";i:439;s:17:\"rss/style.min.css\";i:440;s:21:\"search/editor-rtl.css\";i:441;s:25:\"search/editor-rtl.min.css\";i:442;s:17:\"search/editor.css\";i:443;s:21:\"search/editor.min.css\";i:444;s:20:\"search/style-rtl.css\";i:445;s:24:\"search/style-rtl.min.css\";i:446;s:16:\"search/style.css\";i:447;s:20:\"search/style.min.css\";i:448;s:20:\"search/theme-rtl.css\";i:449;s:24:\"search/theme-rtl.min.css\";i:450;s:16:\"search/theme.css\";i:451;s:20:\"search/theme.min.css\";i:452;s:24:\"separator/editor-rtl.css\";i:453;s:28:\"separator/editor-rtl.min.css\";i:454;s:20:\"separator/editor.css\";i:455;s:24:\"separator/editor.min.css\";i:456;s:23:\"separator/style-rtl.css\";i:457;s:27:\"separator/style-rtl.min.css\";i:458;s:19:\"separator/style.css\";i:459;s:23:\"separator/style.min.css\";i:460;s:23:\"separator/theme-rtl.css\";i:461;s:27:\"separator/theme-rtl.min.css\";i:462;s:19:\"separator/theme.css\";i:463;s:23:\"separator/theme.min.css\";i:464;s:24:\"shortcode/editor-rtl.css\";i:465;s:28:\"shortcode/editor-rtl.min.css\";i:466;s:20:\"shortcode/editor.css\";i:467;s:24:\"shortcode/editor.min.css\";i:468;s:24:\"site-logo/editor-rtl.css\";i:469;s:28:\"site-logo/editor-rtl.min.css\";i:470;s:20:\"site-logo/editor.css\";i:471;s:24:\"site-logo/editor.min.css\";i:472;s:23:\"site-logo/style-rtl.css\";i:473;s:27:\"site-logo/style-rtl.min.css\";i:474;s:19:\"site-logo/style.css\";i:475;s:23:\"site-logo/style.min.css\";i:476;s:27:\"site-tagline/editor-rtl.css\";i:477;s:31:\"site-tagline/editor-rtl.min.css\";i:478;s:23:\"site-tagline/editor.css\";i:479;s:27:\"site-tagline/editor.min.css\";i:480;s:26:\"site-tagline/style-rtl.css\";i:481;s:30:\"site-tagline/style-rtl.min.css\";i:482;s:22:\"site-tagline/style.css\";i:483;s:26:\"site-tagline/style.min.css\";i:484;s:25:\"site-title/editor-rtl.css\";i:485;s:29:\"site-title/editor-rtl.min.css\";i:486;s:21:\"site-title/editor.css\";i:487;s:25:\"site-title/editor.min.css\";i:488;s:24:\"site-title/style-rtl.css\";i:489;s:28:\"site-title/style-rtl.min.css\";i:490;s:20:\"site-title/style.css\";i:491;s:24:\"site-title/style.min.css\";i:492;s:26:\"social-link/editor-rtl.css\";i:493;s:30:\"social-link/editor-rtl.min.css\";i:494;s:22:\"social-link/editor.css\";i:495;s:26:\"social-link/editor.min.css\";i:496;s:27:\"social-links/editor-rtl.css\";i:497;s:31:\"social-links/editor-rtl.min.css\";i:498;s:23:\"social-links/editor.css\";i:499;s:27:\"social-links/editor.min.css\";i:500;s:26:\"social-links/style-rtl.css\";i:501;s:30:\"social-links/style-rtl.min.css\";i:502;s:22:\"social-links/style.css\";i:503;s:26:\"social-links/style.min.css\";i:504;s:21:\"spacer/editor-rtl.css\";i:505;s:25:\"spacer/editor-rtl.min.css\";i:506;s:17:\"spacer/editor.css\";i:507;s:21:\"spacer/editor.min.css\";i:508;s:20:\"spacer/style-rtl.css\";i:509;s:24:\"spacer/style-rtl.min.css\";i:510;s:16:\"spacer/style.css\";i:511;s:20:\"spacer/style.min.css\";i:512;s:20:\"table/editor-rtl.css\";i:513;s:24:\"table/editor-rtl.min.css\";i:514;s:16:\"table/editor.css\";i:515;s:20:\"table/editor.min.css\";i:516;s:19:\"table/style-rtl.css\";i:517;s:23:\"table/style-rtl.min.css\";i:518;s:15:\"table/style.css\";i:519;s:19:\"table/style.min.css\";i:520;s:19:\"table/theme-rtl.css\";i:521;s:23:\"table/theme-rtl.min.css\";i:522;s:15:\"table/theme.css\";i:523;s:19:\"table/theme.min.css\";i:524;s:24:\"tag-cloud/editor-rtl.css\";i:525;s:28:\"tag-cloud/editor-rtl.min.css\";i:526;s:20:\"tag-cloud/editor.css\";i:527;s:24:\"tag-cloud/editor.min.css\";i:528;s:23:\"tag-cloud/style-rtl.css\";i:529;s:27:\"tag-cloud/style-rtl.min.css\";i:530;s:19:\"tag-cloud/style.css\";i:531;s:23:\"tag-cloud/style.min.css\";i:532;s:28:\"template-part/editor-rtl.css\";i:533;s:32:\"template-part/editor-rtl.min.css\";i:534;s:24:\"template-part/editor.css\";i:535;s:28:\"template-part/editor.min.css\";i:536;s:27:\"template-part/theme-rtl.css\";i:537;s:31:\"template-part/theme-rtl.min.css\";i:538;s:23:\"template-part/theme.css\";i:539;s:27:\"template-part/theme.min.css\";i:540;s:24:\"term-count/style-rtl.css\";i:541;s:28:\"term-count/style-rtl.min.css\";i:542;s:20:\"term-count/style.css\";i:543;s:24:\"term-count/style.min.css\";i:544;s:30:\"term-description/style-rtl.css\";i:545;s:34:\"term-description/style-rtl.min.css\";i:546;s:26:\"term-description/style.css\";i:547;s:30:\"term-description/style.min.css\";i:548;s:23:\"term-name/style-rtl.css\";i:549;s:27:\"term-name/style-rtl.min.css\";i:550;s:19:\"term-name/style.css\";i:551;s:23:\"term-name/style.min.css\";i:552;s:28:\"term-template/editor-rtl.css\";i:553;s:32:\"term-template/editor-rtl.min.css\";i:554;s:24:\"term-template/editor.css\";i:555;s:28:\"term-template/editor.min.css\";i:556;s:27:\"term-template/style-rtl.css\";i:557;s:31:\"term-template/style-rtl.min.css\";i:558;s:23:\"term-template/style.css\";i:559;s:27:\"term-template/style.min.css\";i:560;s:27:\"text-columns/editor-rtl.css\";i:561;s:31:\"text-columns/editor-rtl.min.css\";i:562;s:23:\"text-columns/editor.css\";i:563;s:27:\"text-columns/editor.min.css\";i:564;s:26:\"text-columns/style-rtl.css\";i:565;s:30:\"text-columns/style-rtl.min.css\";i:566;s:22:\"text-columns/style.css\";i:567;s:26:\"text-columns/style.min.css\";i:568;s:19:\"verse/style-rtl.css\";i:569;s:23:\"verse/style-rtl.min.css\";i:570;s:15:\"verse/style.css\";i:571;s:19:\"verse/style.min.css\";i:572;s:20:\"video/editor-rtl.css\";i:573;s:24:\"video/editor-rtl.min.css\";i:574;s:16:\"video/editor.css\";i:575;s:20:\"video/editor.min.css\";i:576;s:19:\"video/style-rtl.css\";i:577;s:23:\"video/style-rtl.min.css\";i:578;s:15:\"video/style.css\";i:579;s:19:\"video/style.min.css\";i:580;s:19:\"video/theme-rtl.css\";i:581;s:23:\"video/theme-rtl.min.css\";i:582;s:15:\"video/theme.css\";i:583;s:19:\"video/theme.min.css\";}}','on');
INSERT INTO `wp_options` VALUES (126,'recovery_keys','a:0:{}','off');
INSERT INTO `wp_options` VALUES (127,'WPLANG','','auto');
INSERT INTO `wp_options` VALUES (128,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.9.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.9-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.9-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.9\";s:7:\"version\";s:3:\"6.9\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1767659043;s:15:\"version_checked\";s:3:\"6.9\";s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (129,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1767658922;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (132,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1767658923;s:7:\"checked\";a:4:{s:18:\"lightdarkorangypro\";s:5:\"1.0.0\";s:16:\"twentytwentyfive\";s:3:\"1.4\";s:16:\"twentytwentyfour\";s:3:\"1.4\";s:17:\"twentytwentythree\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.4.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.4.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (140,'can_compress_scripts','0','on');
INSERT INTO `wp_options` VALUES (151,'theme_mods_twentytwentyfive','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1765174116;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off');
INSERT INTO `wp_options` VALUES (152,'_transient_wp_styles_for_blocks','a:2:{s:4:\"hash\";s:32:\"4ad6ed4956ef7f814db220c22a123393\";s:6:\"blocks\";a:6:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:18:\"core/term-template\";s:120:\":where(.wp-block-term-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-term-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}','on');
INSERT INTO `wp_options` VALUES (155,'finished_updating_comment_type','1','auto');
INSERT INTO `wp_options` VALUES (158,'current_theme','Light Dark Orangy Pro','auto');
INSERT INTO `wp_options` VALUES (159,'theme_mods_lightdarkorangypro','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','on');
INSERT INTO `wp_options` VALUES (160,'theme_switched','','auto');
INSERT INTO `wp_options` VALUES (238,'_transient_health-check-site-status-result','{\"good\":17,\"recommended\":4,\"critical\":0}','on');
INSERT INTO `wp_options` VALUES (450,'recovery_mode_email_last_sent','1765500088','auto');
INSERT INTO `wp_options` VALUES (513,'_site_transient_timeout_php_check_617fc4d260191bf0de418d0d961f5a43','1768019100','off');
INSERT INTO `wp_options` VALUES (514,'_site_transient_php_check_617fc4d260191bf0de418d0d961f5a43','a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','off');
INSERT INTO `wp_options` VALUES (557,'_site_transient_timeout_browser_89db729cfcdc129111f017b0e7ac324a','1768050207','off');
INSERT INTO `wp_options` VALUES (558,'_site_transient_browser_89db729cfcdc129111f017b0e7ac324a','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"143.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','off');
INSERT INTO `wp_options` VALUES (631,'new_admin_email','dev-email@wpengine.local','auto');
INSERT INTO `wp_options` VALUES (700,'skill_category_children','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (713,'project_type_children','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (733,'_site_transient_timeout_wp_theme_files_patterns-f46e95725a1ae158fbf3a6e772e1edde','1767660719','off');
INSERT INTO `wp_options` VALUES (734,'_site_transient_wp_theme_files_patterns-f46e95725a1ae158fbf3a6e772e1edde','a:2:{s:7:\"version\";s:5:\"1.0.0\";s:8:\"patterns\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (737,'_site_transient_timeout_theme_roots','1767660722','off');
INSERT INTO `wp_options` VALUES (738,'_site_transient_theme_roots','a:4:{s:18:\"lightdarkorangypro\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";}','off');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=456 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,9,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (4,9,'_edit_lock','1765267317:1');
INSERT INTO `wp_postmeta` VALUES (6,9,'_skill_list','HTML, CSS, React');
INSERT INTO `wp_postmeta` VALUES (7,9,'_skill_mastery_percent','80');
INSERT INTO `wp_postmeta` VALUES (8,9,'_skill_mastery_label','Advanced Level');
INSERT INTO `wp_postmeta` VALUES (9,13,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (10,13,'_edit_lock','1765268631:1');
INSERT INTO `wp_postmeta` VALUES (11,13,'_skill_list','HTML, CSS, Reac');
INSERT INTO `wp_postmeta` VALUES (12,13,'_skill_mastery_percent','100');
INSERT INTO `wp_postmeta` VALUES (13,13,'_skill_mastery_label','Advanced Level');
INSERT INTO `wp_postmeta` VALUES (14,14,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (15,14,'_edit_lock','1765268662:1');
INSERT INTO `wp_postmeta` VALUES (16,14,'_skill_list','HTML, CSS, React');
INSERT INTO `wp_postmeta` VALUES (17,14,'_skill_mastery_percent','50');
INSERT INTO `wp_postmeta` VALUES (18,14,'_skill_mastery_label','Advanced Level');
INSERT INTO `wp_postmeta` VALUES (19,15,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (20,15,'_edit_lock','1765356287:1');
INSERT INTO `wp_postmeta` VALUES (21,15,'_skill_list','HTML, CSS, React)');
INSERT INTO `wp_postmeta` VALUES (22,15,'_skill_mastery_percent','100');
INSERT INTO `wp_postmeta` VALUES (23,15,'_skill_mastery_label','Advanced Level');
INSERT INTO `wp_postmeta` VALUES (24,16,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (25,16,'_skill_category','Frontend');
INSERT INTO `wp_postmeta` VALUES (26,16,'_skill_list','HTML');
INSERT INTO `wp_postmeta` VALUES (27,16,'_skill_mastery_percent','80');
INSERT INTO `wp_postmeta` VALUES (28,16,'_skill_mastery_label','Advanced Level');
INSERT INTO `wp_postmeta` VALUES (29,16,'_edit_lock','1765327477:1');
INSERT INTO `wp_postmeta` VALUES (30,17,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (31,17,'_edit_lock','1765500395:1');
INSERT INTO `wp_postmeta` VALUES (32,17,'_skill_category','Backend');
INSERT INTO `wp_postmeta` VALUES (33,17,'_skill_list','Secret');
INSERT INTO `wp_postmeta` VALUES (34,17,'_skill_mastery_percent','20');
INSERT INTO `wp_postmeta` VALUES (35,17,'_skill_mastery_label','20');
INSERT INTO `wp_postmeta` VALUES (36,18,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (37,18,'_edit_lock','1765346231:1');
INSERT INTO `wp_postmeta` VALUES (38,18,'_skill_category','Database');
INSERT INTO `wp_postmeta` VALUES (39,18,'_skill_list','Basta');
INSERT INTO `wp_postmeta` VALUES (40,18,'_skill_mastery_percent','100');
INSERT INTO `wp_postmeta` VALUES (41,18,'_skill_mastery_label','Begginer');
INSERT INTO `wp_postmeta` VALUES (42,19,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (43,19,'_edit_lock','1765432758:1');
INSERT INTO `wp_postmeta` VALUES (44,19,'_skill_category','DevOps');
INSERT INTO `wp_postmeta` VALUES (45,19,'_skill_list','difhaoihf');
INSERT INTO `wp_postmeta` VALUES (46,19,'_skill_mastery_percent','20');
INSERT INTO `wp_postmeta` VALUES (47,19,'_skill_mastery_label','Master kaayo');
INSERT INTO `wp_postmeta` VALUES (50,22,'_edit_lock','1765500097:1');
INSERT INTO `wp_postmeta` VALUES (51,22,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (52,22,'_project_client_name','SJC');
INSERT INTO `wp_postmeta` VALUES (53,22,'_project_url','https://ask-jc-chatbot.vercel.app/');
INSERT INTO `wp_postmeta` VALUES (54,22,'_project_completion_date','2025-12-24');
INSERT INTO `wp_postmeta` VALUES (55,22,'_project_role','Front end');
INSERT INTO `wp_postmeta` VALUES (56,22,'_project_gallery','https://images.pexels.com/photos/32490250/pexels-photo-32490250.jpeg?cs=srgb&dl=pexels-jay-soundo-2148060180-32490250.jpg&fm=jpg, https://images.pexels.com/photos/669502/pexels-photo-669502.jpeg?cs=srgb&dl=pexels-goumbik-669502.jpg&fm=jpg');
INSERT INTO `wp_postmeta` VALUES (58,22,'_project_tech_stack_ids','a:7:{i:0;i:16;i:1;i:17;i:2;i:18;i:3;i:19;i:4;i:13;i:5;i:14;i:6;i:9;}');
INSERT INTO `wp_postmeta` VALUES (61,18,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (62,18,'_wp_trash_meta_time','1765358297');
INSERT INTO `wp_postmeta` VALUES (63,18,'_wp_desired_post_slug','basta');
INSERT INTO `wp_postmeta` VALUES (64,33,'_edit_lock','1767498575:1');
INSERT INTO `wp_postmeta` VALUES (65,33,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (66,33,'_project_client_name','Tech people');
INSERT INTO `wp_postmeta` VALUES (67,33,'_project_url','http://sdcssd');
INSERT INTO `wp_postmeta` VALUES (68,33,'_project_completion_date','2026-01-01');
INSERT INTO `wp_postmeta` VALUES (69,33,'_project_role','sdfsdf');
INSERT INTO `wp_postmeta` VALUES (70,33,'_project_gallery','https://micomi-assets.me/Enemies/Avatar/antristotle_jyb4qh.png');
INSERT INTO `wp_postmeta` VALUES (71,33,'_project_tech_stack_ids','a:6:{i:0;i:65;i:1;i:51;i:2;i:68;i:3;i:66;i:4;i:57;i:5;i:69;}');
INSERT INTO `wp_postmeta` VALUES (72,33,'_project_preview_image_url','https://colorlib.com/wp/wp-content/uploads/sites/2/wix-free-simple-business-website-templates-1.jpg');
INSERT INTO `wp_postmeta` VALUES (74,40,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (75,40,'_edit_lock','1765445042:1');
INSERT INTO `wp_postmeta` VALUES (76,40,'_skill_category','Frontend');
INSERT INTO `wp_postmeta` VALUES (77,40,'_skill_icon_url','https://static.vecteezy.com/system/resources/previews/027/127/560/non_2x/javascript-logo-javascript-icon-transparent-free-png.png');
INSERT INTO `wp_postmeta` VALUES (78,40,'_skill_mastery_percent','80');
INSERT INTO `wp_postmeta` VALUES (80,51,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (81,51,'_edit_lock','1765499301:1');
INSERT INTO `wp_postmeta` VALUES (82,51,'_skill_icon_url','https://clipground.com/images/html-logo-png-3.png');
INSERT INTO `wp_postmeta` VALUES (83,51,'_skill_mastery_percent','90');
INSERT INTO `wp_postmeta` VALUES (87,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (88,56,'_edit_lock','1765500588:1');
INSERT INTO `wp_postmeta` VALUES (89,57,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (90,57,'_edit_lock','1765501062:1');
INSERT INTO `wp_postmeta` VALUES (91,57,'_skill_icon_url','https://www.php.net/images/logos/new-php-logo.svg');
INSERT INTO `wp_postmeta` VALUES (92,57,'_skill_mastery_percent','70');
INSERT INTO `wp_postmeta` VALUES (95,65,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (96,65,'_edit_lock','1765502200:1');
INSERT INTO `wp_postmeta` VALUES (97,65,'_skill_icon_url','https://cdn.freebiesupply.com/logos/large/2x/css3-logo-png-transparent.png');
INSERT INTO `wp_postmeta` VALUES (98,65,'_skill_mastery_percent','80');
INSERT INTO `wp_postmeta` VALUES (99,66,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (100,66,'_edit_lock','1765502268:1');
INSERT INTO `wp_postmeta` VALUES (101,66,'_skill_icon_url','https://d1.awsstatic.com/asset-repository/products/amazon-rds/1024px-MySQL.ff87215b43fd7292af172e2a5d9b844217262571.png');
INSERT INTO `wp_postmeta` VALUES (102,66,'_skill_mastery_percent','50');
INSERT INTO `wp_postmeta` VALUES (104,68,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (105,68,'_edit_lock','1765502372:1');
INSERT INTO `wp_postmeta` VALUES (106,68,'_skill_icon_url','https://logos-world.net/wp-content/uploads/2020/11/GitHub-Symbol.png');
INSERT INTO `wp_postmeta` VALUES (107,68,'_skill_mastery_percent','100');
INSERT INTO `wp_postmeta` VALUES (108,69,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (109,69,'_edit_lock','1767455887:1');
INSERT INTO `wp_postmeta` VALUES (110,69,'_skill_icon_url','');
INSERT INTO `wp_postmeta` VALUES (111,69,'_skill_mastery_percent','0');
INSERT INTO `wp_postmeta` VALUES (113,72,'_edit_lock','1767445656:1');
INSERT INTO `wp_postmeta` VALUES (114,72,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (115,72,'_project_client_name','example');
INSERT INTO `wp_postmeta` VALUES (116,72,'_project_url','https://ask-jc-chatbot.vercel.app/');
INSERT INTO `wp_postmeta` VALUES (117,72,'_project_completion_date','2026-01-28');
INSERT INTO `wp_postmeta` VALUES (118,72,'_project_role','Model');
INSERT INTO `wp_postmeta` VALUES (119,72,'_project_gallery','https://tse4.mm.bing.net/th/id/OIP.cOtN6_1WivUtjvclGVbslQHaHW?pid=Api&P=0&h=180');
INSERT INTO `wp_postmeta` VALUES (120,72,'_project_preview_image_url','https://tse4.mm.bing.net/th/id/OIP.cOtN6_1WivUtjvclGVbslQHaHW?pid=Api&P=0&h=180');
INSERT INTO `wp_postmeta` VALUES (121,72,'_project_tech_stack_ids','a:5:{i:0;i:14;i:1;i:16;i:2;i:65;i:3;i:68;i:4;i:66;}');
INSERT INTO `wp_postmeta` VALUES (122,72,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (123,72,'_wp_trash_meta_time','1767445803');
INSERT INTO `wp_postmeta` VALUES (124,72,'_wp_desired_post_slug','example');
INSERT INTO `wp_postmeta` VALUES (125,73,'_edit_lock','1767455530:1');
INSERT INTO `wp_postmeta` VALUES (126,73,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (127,73,'_project_client_name','dfgsdfdfg');
INSERT INTO `wp_postmeta` VALUES (128,73,'_project_url','http://gsdfgsdfg');
INSERT INTO `wp_postmeta` VALUES (129,73,'_project_completion_date','');
INSERT INTO `wp_postmeta` VALUES (130,73,'_project_role','');
INSERT INTO `wp_postmeta` VALUES (131,73,'_project_gallery','');
INSERT INTO `wp_postmeta` VALUES (132,73,'_project_preview_image_url','http://gsdfgsdfg');
INSERT INTO `wp_postmeta` VALUES (133,75,'_edit_lock','1767454894:1');
INSERT INTO `wp_postmeta` VALUES (134,76,'_edit_lock','1767490787:1');
INSERT INTO `wp_postmeta` VALUES (135,76,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (136,76,'_achievement_location','dfgsdfgsdfgsdfg');
INSERT INTO `wp_postmeta` VALUES (137,79,'_edit_lock','1767455219:1');
INSERT INTO `wp_postmeta` VALUES (138,80,'_edit_lock','1767455400:1');
INSERT INTO `wp_postmeta` VALUES (139,76,'_achievement_description','');
INSERT INTO `wp_postmeta` VALUES (140,76,'_achievement_image_url','');
INSERT INTO `wp_postmeta` VALUES (141,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (142,81,'_edit_lock','1767491445:1');
INSERT INTO `wp_postmeta` VALUES (143,81,'_achievement_location','SDAFASDFASDF');
INSERT INTO `wp_postmeta` VALUES (144,81,'_achievement_description','SDFASDF');
INSERT INTO `wp_postmeta` VALUES (145,81,'_achievement_image_url','');
INSERT INTO `wp_postmeta` VALUES (146,82,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (147,82,'_edit_lock','1767491658:1');
INSERT INTO `wp_postmeta` VALUES (148,82,'_achievement_location','safasfas');
INSERT INTO `wp_postmeta` VALUES (149,82,'_achievement_description','asdasdasasdas');
INSERT INTO `wp_postmeta` VALUES (150,82,'_achievement_image_url','https://www.pixelstalk.net/wp-content/uploads/2016/07/Download-Free-Pictures-3840x2160.jpg');
INSERT INTO `wp_postmeta` VALUES (151,83,'_edit_lock','1767499342:1');
INSERT INTO `wp_postmeta` VALUES (152,83,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (153,83,'_project_client_name','sdfasdfasdf');
INSERT INTO `wp_postmeta` VALUES (154,83,'_project_url','http://sdafasdf');
INSERT INTO `wp_postmeta` VALUES (155,83,'_project_completion_date','2026-02-04');
INSERT INTO `wp_postmeta` VALUES (156,83,'_project_role','sdfasdfsadf');
INSERT INTO `wp_postmeta` VALUES (157,83,'_project_gallery','');
INSERT INTO `wp_postmeta` VALUES (158,83,'_project_preview_image_url','http://sdfasdf');
INSERT INTO `wp_postmeta` VALUES (159,83,'_project_tech_stack_ids','a:1:{i:0;i:17;}');
INSERT INTO `wp_postmeta` VALUES (160,84,'_edit_lock','1767499765:1');
INSERT INTO `wp_postmeta` VALUES (161,84,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (162,84,'_project_client_name','asdfasdf');
INSERT INTO `wp_postmeta` VALUES (163,84,'_project_url','http://asdfasdf');
INSERT INTO `wp_postmeta` VALUES (164,84,'_project_completion_date','2026-01-15');
INSERT INTO `wp_postmeta` VALUES (165,84,'_project_role','sdfasdfasd');
INSERT INTO `wp_postmeta` VALUES (166,84,'_project_gallery','');
INSERT INTO `wp_postmeta` VALUES (167,84,'_project_preview_image_url','http://sdfasdf');
INSERT INTO `wp_postmeta` VALUES (168,85,'_edit_lock','1767499810:1');
INSERT INTO `wp_postmeta` VALUES (169,85,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (170,85,'_project_client_name','sdfasdf');
INSERT INTO `wp_postmeta` VALUES (171,85,'_project_url','http://sdfasdf');
INSERT INTO `wp_postmeta` VALUES (172,85,'_project_completion_date','');
INSERT INTO `wp_postmeta` VALUES (173,85,'_project_role','asdfasdfsda');
INSERT INTO `wp_postmeta` VALUES (174,85,'_project_gallery','');
INSERT INTO `wp_postmeta` VALUES (175,85,'_project_preview_image_url','http://sdfasdf');
INSERT INTO `wp_postmeta` VALUES (176,86,'_edit_lock','1767501637:1');
INSERT INTO `wp_postmeta` VALUES (177,86,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (178,86,'_project_client_name','sdfasdfsd');
INSERT INTO `wp_postmeta` VALUES (179,86,'_project_url','http://sdfasdfasd');
INSERT INTO `wp_postmeta` VALUES (180,86,'_project_completion_date','2026-01-21');
INSERT INTO `wp_postmeta` VALUES (181,86,'_project_role','sdfasdfsd');
INSERT INTO `wp_postmeta` VALUES (182,86,'_project_gallery','');
INSERT INTO `wp_postmeta` VALUES (183,86,'_project_preview_image_url','http://sdfasdfasd');
INSERT INTO `wp_postmeta` VALUES (184,87,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (185,87,'_edit_lock','1767502815:1');
INSERT INTO `wp_postmeta` VALUES (186,87,'_achievement_location','sdfghsdfghsdf');
INSERT INTO `wp_postmeta` VALUES (187,87,'_achievement_description','dfsgsdfgsdfsdfgsf');
INSERT INTO `wp_postmeta` VALUES (188,87,'_achievement_image_url','');
INSERT INTO `wp_postmeta` VALUES (189,88,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (190,88,'_edit_lock','1767502830:1');
INSERT INTO `wp_postmeta` VALUES (191,88,'_achievement_location','gsdfgsdg');
INSERT INTO `wp_postmeta` VALUES (192,88,'_achievement_description','dfgsdfgdfgsdfg');
INSERT INTO `wp_postmeta` VALUES (193,88,'_achievement_image_url','');
INSERT INTO `wp_postmeta` VALUES (194,89,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (195,89,'_edit_lock','1767502850:1');
INSERT INTO `wp_postmeta` VALUES (196,89,'_achievement_location','asdfasdfsda');
INSERT INTO `wp_postmeta` VALUES (197,89,'_achievement_description','asdfasdfasdf');
INSERT INTO `wp_postmeta` VALUES (198,89,'_achievement_image_url','');
INSERT INTO `wp_postmeta` VALUES (199,90,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (200,90,'_edit_lock','1767503003:1');
INSERT INTO `wp_postmeta` VALUES (201,90,'_achievement_location','sdfgsdafasd');
INSERT INTO `wp_postmeta` VALUES (202,90,'_achievement_description','sdafasdfasd');
INSERT INTO `wp_postmeta` VALUES (203,90,'_achievement_image_url','');
INSERT INTO `wp_postmeta` VALUES (204,92,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (205,92,'_edit_lock','1767537157:1');
INSERT INTO `wp_postmeta` VALUES (206,92,'_skill_icon_url','https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Typescript_logo_2020.svg/512px-Typescript_logo_2020.svg.png?20221110153201');
INSERT INTO `wp_postmeta` VALUES (207,92,'_skill_mastery_percent','70');
INSERT INTO `wp_postmeta` VALUES (208,93,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (209,93,'_edit_lock','1767537198:1');
INSERT INTO `wp_postmeta` VALUES (210,93,'_skill_icon_url','https://brandlogos.net/wp-content/uploads/2021/11/java-logo.png');
INSERT INTO `wp_postmeta` VALUES (211,93,'_skill_mastery_percent','67');
INSERT INTO `wp_postmeta` VALUES (212,94,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (213,94,'_edit_lock','1767537301:1');
INSERT INTO `wp_postmeta` VALUES (214,94,'_skill_icon_url','https://www.php.net/images/logos/new-php-logo.svg');
INSERT INTO `wp_postmeta` VALUES (215,94,'_skill_mastery_percent','70');
INSERT INTO `wp_postmeta` VALUES (216,95,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (217,95,'_edit_lock','1767537329:1');
INSERT INTO `wp_postmeta` VALUES (218,95,'_skill_icon_url','https://c0.uidownload.com/pngpics/2928/2667/c-logo-programming-language-icon-computer-software-symbol-blue-hexagon-design-coding-tutorial-image-tech-development-graphic-software-engineering-emblem.png');
INSERT INTO `wp_postmeta` VALUES (219,95,'_skill_mastery_percent','40');
INSERT INTO `wp_postmeta` VALUES (220,96,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (221,96,'_edit_lock','1767537401:1');
INSERT INTO `wp_postmeta` VALUES (222,96,'_skill_icon_url','https://fullstackacademy.in/wp-content/uploads/2024/11/azure_sql_database_logo_freelogovectors.net_-772x1024.png');
INSERT INTO `wp_postmeta` VALUES (223,96,'_skill_mastery_percent','90');
INSERT INTO `wp_postmeta` VALUES (224,97,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (225,97,'_edit_lock','1767537595:1');
INSERT INTO `wp_postmeta` VALUES (226,97,'_skill_icon_url','https://www.pngall.com/wp-content/uploads/15/React-Logo-PNG-Images.png');
INSERT INTO `wp_postmeta` VALUES (227,97,'_skill_mastery_percent','79');
INSERT INTO `wp_postmeta` VALUES (228,98,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (229,98,'_edit_lock','1767537618:1');
INSERT INTO `wp_postmeta` VALUES (230,98,'_skill_icon_url','https://logospng.org/download/html-5/logo-html-5-768.png');
INSERT INTO `wp_postmeta` VALUES (231,98,'_skill_mastery_percent','80');
INSERT INTO `wp_postmeta` VALUES (232,99,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (233,99,'_edit_lock','1767537638:1');
INSERT INTO `wp_postmeta` VALUES (234,99,'_skill_icon_url','https://cdn.freebiesupply.com/logos/large/2x/css3-logo-png-transparent.png');
INSERT INTO `wp_postmeta` VALUES (235,99,'_skill_mastery_percent','80');
INSERT INTO `wp_postmeta` VALUES (236,100,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (237,100,'_edit_lock','1767537688:1');
INSERT INTO `wp_postmeta` VALUES (238,100,'_skill_icon_url','https://brandslogos.com/wp-content/uploads/images/large/bootstrap-logo.png');
INSERT INTO `wp_postmeta` VALUES (239,100,'_skill_mastery_percent','75');
INSERT INTO `wp_postmeta` VALUES (240,101,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (241,101,'_edit_lock','1767537747:1');
INSERT INTO `wp_postmeta` VALUES (242,101,'_skill_icon_url','https://images.seeklogo.com/logo-png/36/1/material-ui-logo-png_seeklogo-363138.png');
INSERT INTO `wp_postmeta` VALUES (243,101,'_skill_mastery_percent','60');
INSERT INTO `wp_postmeta` VALUES (244,102,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (245,102,'_edit_lock','1767537780:1');
INSERT INTO `wp_postmeta` VALUES (246,102,'_skill_icon_url','https://www.pngall.com/wp-content/uploads/15/React-Logo-PNG-Images.png');
INSERT INTO `wp_postmeta` VALUES (247,102,'_skill_mastery_percent','85');
INSERT INTO `wp_postmeta` VALUES (248,103,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (249,103,'_edit_lock','1767537832:1');
INSERT INTO `wp_postmeta` VALUES (250,103,'_skill_icon_url','https://www.invictusstartechnology.ae/blog/wp-content/uploads/2024/01/React_Native_Logo.png');
INSERT INTO `wp_postmeta` VALUES (251,103,'_skill_mastery_percent','96');
INSERT INTO `wp_postmeta` VALUES (252,104,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (253,104,'_edit_lock','1767537857:1');
INSERT INTO `wp_postmeta` VALUES (254,104,'_skill_icon_url','https://images.seeklogo.com/logo-png/45/1/expo-go-app-logo-png_seeklogo-457073.png');
INSERT INTO `wp_postmeta` VALUES (255,104,'_skill_mastery_percent','100');
INSERT INTO `wp_postmeta` VALUES (256,105,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (257,105,'_edit_lock','1767537953:1');
INSERT INTO `wp_postmeta` VALUES (258,105,'_skill_icon_url','https://logonoid.com/images/postgresql-logo.png');
INSERT INTO `wp_postmeta` VALUES (259,105,'_skill_mastery_percent','100');
INSERT INTO `wp_postmeta` VALUES (260,106,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (261,106,'_edit_lock','1767537999:1');
INSERT INTO `wp_postmeta` VALUES (262,106,'_skill_icon_url','https://logos-world.net/wp-content/uploads/2020/11/GitHub-Symbol.png');
INSERT INTO `wp_postmeta` VALUES (263,106,'_skill_mastery_percent','95');
INSERT INTO `wp_postmeta` VALUES (264,107,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (265,107,'_edit_lock','1767538036:1');
INSERT INTO `wp_postmeta` VALUES (266,107,'_skill_icon_url','https://cdn.freebiesupply.com/logos/large/2x/git-icon-logo-png-transparent.png');
INSERT INTO `wp_postmeta` VALUES (267,107,'_skill_mastery_percent','80');
INSERT INTO `wp_postmeta` VALUES (268,108,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (269,108,'_edit_lock','1767538075:1');
INSERT INTO `wp_postmeta` VALUES (270,108,'_skill_icon_url','https://logospng.org/download/visual-studio-code/visual-studio-code-4096.png');
INSERT INTO `wp_postmeta` VALUES (271,108,'_skill_mastery_percent','100');
INSERT INTO `wp_postmeta` VALUES (272,109,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (273,109,'_edit_lock','1767538114:1');
INSERT INTO `wp_postmeta` VALUES (274,109,'_skill_icon_url','https://cdn.freelogovectors.net/wp-content/uploads/2020/12/postman-logo.png');
INSERT INTO `wp_postmeta` VALUES (275,109,'_skill_mastery_percent','100');
INSERT INTO `wp_postmeta` VALUES (276,110,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (277,110,'_edit_lock','1767538142:1');
INSERT INTO `wp_postmeta` VALUES (278,110,'_skill_icon_url','https://logotic.me/system/assets/uploads/vector-files/chatgpt-logo-1672775463-logotic-brand.svg');
INSERT INTO `wp_postmeta` VALUES (279,110,'_skill_mastery_percent','100');
INSERT INTO `wp_postmeta` VALUES (280,111,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (281,111,'_edit_lock','1767538190:1');
INSERT INTO `wp_postmeta` VALUES (282,111,'_skill_icon_url','https://logospng.org/download/microsoft-copilot/microsoft-copilot-1024.png');
INSERT INTO `wp_postmeta` VALUES (283,111,'_skill_mastery_percent','100');
INSERT INTO `wp_postmeta` VALUES (284,112,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (285,112,'_edit_lock','1767538254:1');
INSERT INTO `wp_postmeta` VALUES (286,112,'_skill_icon_url','https://logospng.org/download/node-js/logo-node-js-1024.png');
INSERT INTO `wp_postmeta` VALUES (287,112,'_skill_mastery_percent','90');
INSERT INTO `wp_postmeta` VALUES (288,113,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (289,113,'_edit_lock','1767538266:1');
INSERT INTO `wp_postmeta` VALUES (290,113,'_skill_icon_url','https://connect.saasvaap.com/assets/images/slider-ex.png');
INSERT INTO `wp_postmeta` VALUES (291,113,'_skill_mastery_percent','80');
INSERT INTO `wp_postmeta` VALUES (292,114,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (293,114,'_edit_lock','1767538348:1');
INSERT INTO `wp_postmeta` VALUES (294,114,'_skill_icon_url','https://cdn.freelogovectors.net/wp-content/uploads/2021/01/graphql-logo-freelogovectors.net_.png');
INSERT INTO `wp_postmeta` VALUES (295,114,'_skill_mastery_percent','87');
INSERT INTO `wp_postmeta` VALUES (296,9,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (297,9,'_wp_trash_meta_time','1767538798');
INSERT INTO `wp_postmeta` VALUES (298,9,'_wp_desired_post_slug','frontend');
INSERT INTO `wp_postmeta` VALUES (299,13,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (300,13,'_wp_trash_meta_time','1767538798');
INSERT INTO `wp_postmeta` VALUES (301,13,'_wp_desired_post_slug','backend');
INSERT INTO `wp_postmeta` VALUES (302,14,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (303,14,'_wp_trash_meta_time','1767538798');
INSERT INTO `wp_postmeta` VALUES (304,14,'_wp_desired_post_slug','database');
INSERT INTO `wp_postmeta` VALUES (305,15,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (306,15,'_wp_trash_meta_time','1767538798');
INSERT INTO `wp_postmeta` VALUES (307,15,'_wp_desired_post_slug','ui');
INSERT INTO `wp_postmeta` VALUES (308,16,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (309,16,'_wp_trash_meta_time','1767538798');
INSERT INTO `wp_postmeta` VALUES (310,16,'_wp_desired_post_slug','html');
INSERT INTO `wp_postmeta` VALUES (311,17,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (312,17,'_wp_trash_meta_time','1767538798');
INSERT INTO `wp_postmeta` VALUES (313,17,'_wp_desired_post_slug','backend-2');
INSERT INTO `wp_postmeta` VALUES (314,19,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (315,19,'_wp_trash_meta_time','1767538798');
INSERT INTO `wp_postmeta` VALUES (316,19,'_wp_desired_post_slug','basta-uy-sig-pangutana');
INSERT INTO `wp_postmeta` VALUES (317,40,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (318,40,'_wp_trash_meta_time','1767538798');
INSERT INTO `wp_postmeta` VALUES (319,40,'_wp_desired_post_slug','mastery-skill');
INSERT INTO `wp_postmeta` VALUES (320,51,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (321,51,'_wp_trash_meta_time','1767538798');
INSERT INTO `wp_postmeta` VALUES (322,51,'_wp_desired_post_slug','html-2');
INSERT INTO `wp_postmeta` VALUES (323,56,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (324,56,'_wp_trash_meta_time','1767538798');
INSERT INTO `wp_postmeta` VALUES (325,56,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (326,57,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (327,57,'_wp_trash_meta_time','1767538798');
INSERT INTO `wp_postmeta` VALUES (328,57,'_wp_desired_post_slug','php');
INSERT INTO `wp_postmeta` VALUES (329,65,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (330,65,'_wp_trash_meta_time','1767538798');
INSERT INTO `wp_postmeta` VALUES (331,65,'_wp_desired_post_slug','css');
INSERT INTO `wp_postmeta` VALUES (332,66,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (333,66,'_wp_trash_meta_time','1767538798');
INSERT INTO `wp_postmeta` VALUES (334,66,'_wp_desired_post_slug','mysql');
INSERT INTO `wp_postmeta` VALUES (335,68,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (336,68,'_wp_trash_meta_time','1767538798');
INSERT INTO `wp_postmeta` VALUES (337,68,'_wp_desired_post_slug','github');
INSERT INTO `wp_postmeta` VALUES (338,69,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (339,69,'_wp_trash_meta_time','1767538798');
INSERT INTO `wp_postmeta` VALUES (340,69,'_wp_desired_post_slug','wala-lang');
INSERT INTO `wp_postmeta` VALUES (341,86,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (342,86,'_wp_trash_meta_time','1767538942');
INSERT INTO `wp_postmeta` VALUES (343,86,'_wp_desired_post_slug','sdafasdf');
INSERT INTO `wp_postmeta` VALUES (344,85,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (345,85,'_wp_trash_meta_time','1767538942');
INSERT INTO `wp_postmeta` VALUES (346,85,'_wp_desired_post_slug','asdfasdf');
INSERT INTO `wp_postmeta` VALUES (347,84,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (348,84,'_wp_trash_meta_time','1767538942');
INSERT INTO `wp_postmeta` VALUES (349,84,'_wp_desired_post_slug','sadfasdf');
INSERT INTO `wp_postmeta` VALUES (350,83,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (351,83,'_wp_trash_meta_time','1767538942');
INSERT INTO `wp_postmeta` VALUES (352,83,'_wp_desired_post_slug','sdafasdfsda');
INSERT INTO `wp_postmeta` VALUES (353,73,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (354,73,'_wp_trash_meta_time','1767538942');
INSERT INTO `wp_postmeta` VALUES (355,73,'_wp_desired_post_slug','sdfgsdfgsdf');
INSERT INTO `wp_postmeta` VALUES (356,33,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (357,33,'_wp_trash_meta_time','1767538942');
INSERT INTO `wp_postmeta` VALUES (358,33,'_wp_desired_post_slug','micomi');
INSERT INTO `wp_postmeta` VALUES (359,22,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (360,22,'_wp_trash_meta_time','1767538942');
INSERT INTO `wp_postmeta` VALUES (361,22,'_wp_desired_post_slug','askjc');
INSERT INTO `wp_postmeta` VALUES (362,115,'_edit_lock','1767539752:1');
INSERT INTO `wp_postmeta` VALUES (363,115,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (364,115,'_project_client_name','Tech People');
INSERT INTO `wp_postmeta` VALUES (365,115,'_project_url','');
INSERT INTO `wp_postmeta` VALUES (366,115,'_project_completion_date','2026-01-04');
INSERT INTO `wp_postmeta` VALUES (367,115,'_project_role','Frontend developer- tech lead');
INSERT INTO `wp_postmeta` VALUES (368,115,'_project_gallery','https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767539219/fbb64749-4d7c-4aea-8c09-5a38ddf88c38_jkfyvz.jpg, https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767539319/291b895e-46b4-42fd-be24-c4204e5b66f8_t9if7o.jpg, https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767539390/4a4a205c-04a1-47d6-a519-70c170b5ae81_xbk4o2.jpg');
INSERT INTO `wp_postmeta` VALUES (369,115,'_project_preview_image_url','https://micomi-assets.me/Icons/Logo/logo.png');
INSERT INTO `wp_postmeta` VALUES (370,115,'_project_tech_stack_ids','a:10:{i:0;i:104;i:1;i:103;i:2;i:110;i:3;i:111;i:4;i:109;i:5;i:108;i:6;i:112;i:7;i:107;i:8;i:106;i:9;i:105;}');
INSERT INTO `wp_postmeta` VALUES (371,117,'_edit_lock','1767540904:1');
INSERT INTO `wp_postmeta` VALUES (372,117,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (373,117,'_project_client_name','SJC students');
INSERT INTO `wp_postmeta` VALUES (374,117,'_project_url','https://ask-jc-chatbot.vercel.app/');
INSERT INTO `wp_postmeta` VALUES (375,117,'_project_completion_date','2025-10-15');
INSERT INTO `wp_postmeta` VALUES (376,117,'_project_role','Full-stack developer - tech lead');
INSERT INTO `wp_postmeta` VALUES (377,117,'_project_gallery','https://res.cloudinary.com/dzoa2ekbu/image/upload/v1766764896/7ee71405-e6f6-41e2-9043-41dea0841ea5_qidldl.jpg, https://res.cloudinary.com/dzoa2ekbu/image/upload/v1766764897/2add6b2f-e997-4368-82ee-c61c1f36b2cd_i8zcm7.jpg, https://res.cloudinary.com/dzoa2ekbu/image/upload/v1766764904/a05d46fd-61dd-4dc8-9cef-f935a097f087_qd2pd7.jpg, https://res.cloudinary.com/dzoa2ekbu/image/upload/v1766764907/64d0038f-cd57-4730-abd1-034c39df1664_viwy6m.jpg, https://res.cloudinary.com/dzoa2ekbu/image/upload/v1766764909/5069e0a4-aabd-449b-a044-846798ca1711_dtcg9j.jpg, https://res.cloudinary.com/dzoa2ekbu/image/upload/v1766764914/418ab875-7b43-497d-94e6-6e2c5496790d_i3wabo.jpg, https://res.cloudinary.com/dzoa2ekbu/image/upload/v1766765131/4675605b-e65e-410e-b7fa-be16b1b41989_ojqphx.jpg, https://res.cloudinary.com/dzoa2ekbu/image/upload/v1766765328/7b172d68-64f8-403a-9758-50f339842ffe_uynpak.jpg, https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767540554/d24a1ba8-ab50-4bf8-b27d-fab7d709aea2.png');
INSERT INTO `wp_postmeta` VALUES (378,117,'_project_preview_image_url','https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767540323/dc17f468-94a8-44aa-949a-625f218dce7d.png');
INSERT INTO `wp_postmeta` VALUES (379,117,'_project_tech_stack_ids','a:10:{i:0;i:104;i:1;i:119;i:2;i:103;i:3;i:92;i:4;i:109;i:5;i:113;i:6;i:112;i:7;i:107;i:8;i:106;i:9;i:105;}');
INSERT INTO `wp_postmeta` VALUES (380,118,'_edit_lock','1767540466:1');
INSERT INTO `wp_postmeta` VALUES (381,119,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (382,119,'_edit_lock','1767540641:1');
INSERT INTO `wp_postmeta` VALUES (383,119,'_skill_icon_url','https://i.pinimg.com/originals/13/40/7c/13407c12f50f08d328800c3caef43f61.png');
INSERT INTO `wp_postmeta` VALUES (384,119,'_skill_mastery_percent','90');
INSERT INTO `wp_postmeta` VALUES (385,120,'_edit_lock','1767541876:1');
INSERT INTO `wp_postmeta` VALUES (386,120,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (387,120,'_project_client_name','Vinyl Buyer');
INSERT INTO `wp_postmeta` VALUES (388,120,'_project_url','https://github.com/pegasuspink9/Shoptify_Avila');
INSERT INTO `wp_postmeta` VALUES (389,120,'_project_completion_date','');
INSERT INTO `wp_postmeta` VALUES (390,120,'_project_role','');
INSERT INTO `wp_postmeta` VALUES (391,120,'_project_gallery','https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767541425/6d696ab8-9b24-4f18-a8ee-1cfb9820ec92_n6mfqn.jpg, https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767541400/abad6e1e-3b93-4f74-b3f0-6a9ec1295ac1_bwdnqh.jpg, https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767541509/52b1eb43-8a9f-47fa-abee-d69c9f3eeb18_cwqpyk.jpg, https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767541535/d3effd78-9284-4fa3-bde8-12fec0e3adc7_jq8bkz.jpg');
INSERT INTO `wp_postmeta` VALUES (392,120,'_project_preview_image_url','https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767541425/6d696ab8-9b24-4f18-a8ee-1cfb9820ec92_n6mfqn.jpg');
INSERT INTO `wp_postmeta` VALUES (393,120,'_project_tech_stack_ids','a:5:{i:0;i:104;i:1;i:103;i:2;i:114;i:3;i:112;i:4;i:105;}');
INSERT INTO `wp_postmeta` VALUES (394,121,'_edit_lock','1767541745:1');
INSERT INTO `wp_postmeta` VALUES (395,122,'_edit_lock','1767541751:1');
INSERT INTO `wp_postmeta` VALUES (396,123,'_edit_lock','1767542575:1');
INSERT INTO `wp_postmeta` VALUES (397,123,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (398,123,'_project_client_name','Students');
INSERT INTO `wp_postmeta` VALUES (399,123,'_project_url','https://github.com/CS305dev/app-Api-AvilaNoel');
INSERT INTO `wp_postmeta` VALUES (400,123,'_project_completion_date','2025-01-15');
INSERT INTO `wp_postmeta` VALUES (401,123,'_project_role','Student Management Dashboard – Full-stack Developer');
INSERT INTO `wp_postmeta` VALUES (402,123,'_project_gallery','https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767542150/b8449c36-88ea-47bc-8f97-59f1eb51dfbb_p6oy8c.jpg, https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767542142/9d95d308-c437-472e-b194-00e349caa11d_suiic6.jpg, https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767542140/44f78669-c9a9-4823-bb30-d1fb2a9bb45b_wz9hkf.jpg, https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767542136/dce59e54-4445-4fd8-92eb-1c6984919a92_rxbmlb.jpg');
INSERT INTO `wp_postmeta` VALUES (403,123,'_project_preview_image_url','https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767542150/b8449c36-88ea-47bc-8f97-59f1eb51dfbb_p6oy8c.jpg');
INSERT INTO `wp_postmeta` VALUES (404,123,'_project_tech_stack_ids','a:6:{i:0;i:101;i:1;i:102;i:2;i:111;i:3;i:113;i:4;i:112;i:5;i:105;}');
INSERT INTO `wp_postmeta` VALUES (405,90,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (406,90,'_wp_trash_meta_time','1767542589');
INSERT INTO `wp_postmeta` VALUES (407,90,'_wp_desired_post_slug','dfgsdfgsdf');
INSERT INTO `wp_postmeta` VALUES (408,89,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (409,89,'_wp_trash_meta_time','1767542589');
INSERT INTO `wp_postmeta` VALUES (410,89,'_wp_desired_post_slug','sfsdfasdf');
INSERT INTO `wp_postmeta` VALUES (411,88,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (412,88,'_wp_trash_meta_time','1767542589');
INSERT INTO `wp_postmeta` VALUES (413,88,'_wp_desired_post_slug','hshsdfg');
INSERT INTO `wp_postmeta` VALUES (414,87,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (415,87,'_wp_trash_meta_time','1767542589');
INSERT INTO `wp_postmeta` VALUES (416,87,'_wp_desired_post_slug','rhyshsdf');
INSERT INTO `wp_postmeta` VALUES (417,82,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (418,82,'_wp_trash_meta_time','1767542589');
INSERT INTO `wp_postmeta` VALUES (419,82,'_wp_desired_post_slug','fsdfasdf');
INSERT INTO `wp_postmeta` VALUES (420,81,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (421,81,'_wp_trash_meta_time','1767542589');
INSERT INTO `wp_postmeta` VALUES (422,81,'_wp_desired_post_slug','dgsdfgdfsgasdasd');
INSERT INTO `wp_postmeta` VALUES (423,76,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (424,76,'_wp_trash_meta_time','1767542589');
INSERT INTO `wp_postmeta` VALUES (425,76,'_wp_desired_post_slug','sdfgsdfgsdfg');
INSERT INTO `wp_postmeta` VALUES (426,124,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (427,124,'_edit_lock','1767542982:1');
INSERT INTO `wp_postmeta` VALUES (428,124,'_achievement_location','Saint Joseph College, 2023–Present');
INSERT INTO `wp_postmeta` VALUES (429,124,'_achievement_description','Provide one-on-one and group mentorship to students struggling with Java fundamentals and Object-Oriented Programming (OOP) concepts.');
INSERT INTO `wp_postmeta` VALUES (430,124,'_achievement_image_url','https://res.cloudinary.com/dzoa2ekbu/image/upload/v1766811276/received_456335354154248_mus1qj.jpg');
INSERT INTO `wp_postmeta` VALUES (431,125,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (432,125,'_edit_lock','1767543076:1');
INSERT INTO `wp_postmeta` VALUES (433,125,'_achievement_location','Saint Joseph College, 2023');
INSERT INTO `wp_postmeta` VALUES (434,125,'_achievement_description','Developed a responsive and user-centric website within a competitive timeframe, focusing on UI/UX best practices.');
INSERT INTO `wp_postmeta` VALUES (435,125,'_achievement_image_url','https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767543107/15f141cb-9863-4e54-a616-f0efc21fb29d_lzsexu.jpg');
INSERT INTO `wp_postmeta` VALUES (436,126,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (437,126,'_edit_lock','1767544048:1');
INSERT INTO `wp_postmeta` VALUES (438,126,'_achievement_location','Maasin City, 2025');
INSERT INTO `wp_postmeta` VALUES (439,126,'_achievement_description','Champion (1st Place) among many participants in an onsite CSS Battle, creating high-fidelity visual targets using pure CSS.');
INSERT INTO `wp_postmeta` VALUES (440,126,'_achievement_image_url','https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767544134/df0b138e-116a-4d09-9056-a3c54f80eefd_wqzlsp.jpg');
INSERT INTO `wp_postmeta` VALUES (441,127,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (442,127,'_edit_lock','1767544222:1');
INSERT INTO `wp_postmeta` VALUES (443,127,'_achievement_location','Saint Joseph College, 2024–2025');
INSERT INTO `wp_postmeta` VALUES (444,127,'_achievement_description','Collaborated with a panel of judges to determine winners by auditing code for bugs, scalability, and clean coding standards.');
INSERT INTO `wp_postmeta` VALUES (445,127,'_achievement_image_url','https://res.cloudinary.com/dzoa2ekbu/image/upload/v1766819883/d2c850e6-fdcb-4fa4-bf2c-278440342313_silmmd.jpg');
INSERT INTO `wp_postmeta` VALUES (446,128,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (447,128,'_edit_lock','1767544404:1');
INSERT INTO `wp_postmeta` VALUES (448,128,'_achievement_location','Western Leyte College, Ormoc City');
INSERT INTO `wp_postmeta` VALUES (449,128,'_achievement_description','Represented Saint Joseph College in a regional competition, competing against 16 teams from various institutions across the region.');
INSERT INTO `wp_postmeta` VALUES (450,128,'_achievement_image_url','https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767544486/3dfc9286-674d-44be-b89a-32b834158400_1_ajlrvs.jpg');
INSERT INTO `wp_postmeta` VALUES (451,129,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (452,129,'_edit_lock','1767544909:1');
INSERT INTO `wp_postmeta` VALUES (453,129,'_achievement_location','PhilNITS Foundation (formerly JITSE-Phil Foundation)');
INSERT INTO `wp_postmeta` VALUES (454,129,'_achievement_description','PhilNITS IT Passport Passer: Internationally recognized certification covering the end-to-end IT lifecycle, including software development management and corporate strategy');
INSERT INTO `wp_postmeta` VALUES (455,129,'_achievement_image_url','https://res.cloudinary.com/dm8i9u1pk/image/upload/v1767544759/6d419449-d3cb-4975-b0a6-40689c5bf436_hnqx6u.jpg');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `type_status_author` (`post_type`,`post_status`,`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2025-12-08 05:34:16','2025-12-08 05:34:16','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2025-12-08 05:34:16','2025-12-08 05:34:16','',0,'http://localhost:10004/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2025-12-08 05:34:16','2025-12-08 05:34:16','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10004/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2025-12-08 05:34:16','2025-12-08 05:34:16','',0,'http://localhost:10004/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2025-12-08 05:34:16','2025-12-08 05:34:16','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10004.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','draft','closed','open','','privacy-policy','','','2025-12-08 05:34:16','2025-12-08 05:34:16','',0,'http://localhost:10004/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2025-12-08 05:36:16','2025-12-08 05:36:16','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2025-12-08 05:36:16','2025-12-08 05:36:16','',0,'http://localhost:10004/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2025-12-09 07:50:21','2025-12-09 07:50:21','','Frontend','','trash','closed','closed','','frontend__trashed','','','2026-01-04 14:59:58','2026-01-04 14:59:58','',0,'http://localhost:10004/?post_type=skill&#038;p=9',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2025-12-09 07:53:45','2025-12-09 07:53:45','','Backend','','inherit','closed','closed','','9-autosave-v1','','','2025-12-09 07:53:45','2025-12-09 07:53:45','',9,'http://localhost:10004/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2025-12-09 08:26:12','2025-12-09 08:26:12','','Backend','','trash','closed','closed','','backend__trashed','','','2026-01-04 14:59:58','2026-01-04 14:59:58','',0,'http://localhost:10004/?post_type=skill&#038;p=13',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2025-12-09 08:26:42','2025-12-09 08:26:42','','Database','','trash','closed','closed','','database__trashed','','','2026-01-04 14:59:58','2026-01-04 14:59:58','',0,'http://localhost:10004/?post_type=skill&#038;p=14',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2025-12-09 08:27:00','2025-12-09 08:27:00','','UI','','trash','closed','closed','','ui__trashed','','','2026-01-04 14:59:58','2026-01-04 14:59:58','',0,'http://localhost:10004/?post_type=skill&#038;p=15',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2025-12-10 00:45:51','2025-12-10 00:45:51','','HTML','','trash','closed','closed','','html__trashed','','','2026-01-04 14:59:58','2026-01-04 14:59:58','',0,'http://localhost:10004/?post_type=skill&#038;p=16',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2025-12-10 00:47:17','2025-12-10 00:47:17','','Backend','','trash','closed','closed','','backend-2__trashed','','','2026-01-04 14:59:58','2026-01-04 14:59:58','',0,'http://localhost:10004/?post_type=skill&#038;p=17',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2025-12-10 05:59:32','2025-12-10 05:59:32','','Basta','','trash','closed','closed','','basta__trashed','','','2025-12-10 09:18:17','2025-12-10 09:18:17','',0,'http://localhost:10004/?post_type=skill&#038;p=18',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2025-12-10 06:00:06','2025-12-10 06:00:06','','Basta uy sig pangutana','','trash','closed','closed','','basta-uy-sig-pangutana__trashed','','','2026-01-04 14:59:58','2026-01-04 14:59:58','',0,'http://localhost:10004/?post_type=skill&#038;p=19',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2025-12-10 08:29:44','2025-12-10 08:29:44','<!-- wp:paragraph -->\n<p><strong>ang sarap naman</strong></p>\n<!-- /wp:paragraph -->','ASKJC','','trash','closed','closed','','askjc__trashed','','','2026-01-04 15:02:22','2026-01-04 15:02:22','',0,'http://localhost:10004/?post_type=project&#038;p=22',0,'project','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2025-12-11 00:18:31','2025-12-11 00:18:31','<!-- wp:paragraph -->\n<p>A mobile app hodfbouebfudbfuasb asdhofbu0asdbf0uadsbf0udabsf sadfu0adshfu0bsa0dufbasf 0ausdbf0uasdbfu80asdbf adsufba0usdbf0adsbfu0asb sdafbsadu0fb0usdabf0ausdbf</p>\n<!-- /wp:paragraph -->','Micomi','','trash','closed','closed','','micomi__trashed','','','2026-01-04 15:02:22','2026-01-04 15:02:22','',0,'http://localhost:10004/?post_type=project&#038;p=33',0,'project','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2025-12-11 09:09:48','2025-12-11 09:09:48','','Mastery Skill','','trash','closed','closed','','mastery-skill__trashed','','','2026-01-04 14:59:58','2026-01-04 14:59:58','',0,'http://localhost:10004/?post_type=skill&#038;p=40',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2025-12-12 00:30:02','2025-12-12 00:30:02','','HTML','','trash','closed','closed','','html-2__trashed','','','2026-01-04 14:59:58','2026-01-04 14:59:58','',0,'http://localhost:10004/?post_type=skill&#038;p=51',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2026-01-04 14:59:58','2026-01-04 14:59:58','','Php','','trash','closed','closed','','__trashed','','','2026-01-04 14:59:58','2026-01-04 14:59:58','',0,'http://localhost:10004/?post_type=skill&#038;p=56',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2025-12-12 00:52:10','2025-12-12 00:52:10','','Php','','trash','closed','closed','','php__trashed','','','2026-01-04 14:59:58','2026-01-04 14:59:58','',0,'http://localhost:10004/?post_type=skill&#038;p=57',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2025-12-12 01:19:02','2025-12-12 01:19:02','','CSS','','trash','closed','closed','','css__trashed','','','2026-01-04 14:59:58','2026-01-04 14:59:58','',0,'http://localhost:10004/?post_type=skill&#038;p=65',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2025-12-12 01:20:10','2025-12-12 01:20:10','','MySql','','trash','closed','closed','','mysql__trashed','','','2026-01-04 14:59:58','2026-01-04 14:59:58','',0,'http://localhost:10004/?post_type=skill&#038;p=66',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2025-12-12 01:21:54','2025-12-12 01:21:54','','Github','','trash','closed','closed','','github__trashed','','','2026-01-04 14:59:58','2026-01-04 14:59:58','',0,'http://localhost:10004/?post_type=skill&#038;p=68',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2025-12-12 01:32:40','2025-12-12 01:32:40','','wala lang','','trash','closed','closed','','wala-lang__trashed','','','2026-01-04 14:59:58','2026-01-04 14:59:58','',0,'http://localhost:10004/?post_type=skill&#038;p=69',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2026-01-03 13:03:27','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2026-01-03 13:03:27','0000-00-00 00:00:00','',0,'http://localhost:10004/?p=71',0,'post','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2026-01-03 13:05:13','2026-01-03 13:05:13','<!-- wp:paragraph -->\n<p>example</p>\n<!-- /wp:paragraph -->','Example','','trash','closed','closed','','example__trashed','','','2026-01-03 13:10:03','2026-01-03 13:10:03','',0,'http://localhost:10004/?post_type=project&#038;p=72',0,'project','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2026-01-03 13:10:42','2026-01-03 13:10:42','<!-- wp:paragraph -->\n<p>sdfgsdfgsdf</p>\n<!-- /wp:paragraph -->','sdfgsdfgsdf','','trash','closed','closed','','sdfgsdfgsdf__trashed','','','2026-01-04 15:02:22','2026-01-04 15:02:22','',0,'http://localhost:10004/?post_type=project&#038;p=73',0,'project','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2026-01-03 15:41:14','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2026-01-03 15:41:14','0000-00-00 00:00:00','',0,'http://localhost:10004/?post_type=skill&p=74',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2026-01-03 15:41:21','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2026-01-03 15:41:21','0000-00-00 00:00:00','',0,'http://localhost:10004/?post_type=project&p=75',0,'project','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2026-01-03 15:42:17','2026-01-03 15:42:17','<!-- wp:paragraph -->\n<p>dgsdfgsdfg</p>\n<!-- /wp:paragraph -->','sdfgsdfgsdfg','','trash','closed','closed','','sdfgsdfgsdfg__trashed','','','2026-01-04 16:03:09','2026-01-04 16:03:09','',0,'http://localhost:10004/?post_type=achievement&#038;p=76',0,'achievement','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2026-01-03 15:48:52','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2026-01-03 15:48:52','0000-00-00 00:00:00','',0,'http://localhost:10004/?post_type=achievement&p=77',0,'achievement','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2026-01-03 15:48:56','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2026-01-03 15:48:56','0000-00-00 00:00:00','',0,'http://localhost:10004/?post_type=achievement&p=78',0,'achievement','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2026-01-03 15:49:19','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2026-01-03 15:49:19','0000-00-00 00:00:00','',0,'http://localhost:10004/?post_type=project&p=79',0,'project','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2026-01-03 15:52:21','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2026-01-03 15:52:21','0000-00-00 00:00:00','',0,'http://localhost:10004/?post_type=project&p=80',0,'project','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2026-01-04 01:52:44','2026-01-04 01:52:44','','FSDAFASD','','trash','closed','closed','','dgsdfgdfsgasdasd__trashed','','','2026-01-04 16:03:09','2026-01-04 16:03:09','',0,'http://localhost:10004/?post_type=achievement&#038;p=81',0,'achievement','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2026-01-04 01:53:23','2026-01-04 01:53:23','','fsdfasdf','','trash','closed','closed','','fsdfasdf__trashed','','','2026-01-04 16:03:09','2026-01-04 16:03:09','',0,'http://localhost:10004/?post_type=achievement&#038;p=82',0,'achievement','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2026-01-04 03:54:19','2026-01-04 03:54:19','<!-- wp:paragraph -->\n<p>sdfasdfasd</p>\n<!-- /wp:paragraph -->','sdafasdfsda','','trash','closed','closed','','sdafasdfsda__trashed','','','2026-01-04 15:02:22','2026-01-04 15:02:22','',0,'http://localhost:10004/?post_type=project&#038;p=83',0,'project','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2026-01-04 04:09:14','2026-01-04 04:09:14','','sadfasdf','','trash','closed','closed','','sadfasdf__trashed','','','2026-01-04 15:02:22','2026-01-04 15:02:22','',0,'http://localhost:10004/?post_type=project&#038;p=84',0,'project','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2026-01-04 04:09:47','2026-01-04 04:09:47','<!-- wp:paragraph -->\n<p>sdafasdf</p>\n<!-- /wp:paragraph -->','asdfasdf','','trash','closed','closed','','asdfasdf__trashed','','','2026-01-04 15:02:22','2026-01-04 15:02:22','',0,'http://localhost:10004/?post_type=project&#038;p=85',0,'project','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2026-01-04 04:10:23','2026-01-04 04:10:23','<!-- wp:paragraph -->\n<p>sdfasdfsd</p>\n<!-- /wp:paragraph -->','sdafasdf','','trash','closed','closed','','sdafasdf__trashed','','','2026-01-04 15:02:22','2026-01-04 15:02:22','',0,'http://localhost:10004/?post_type=project&#038;p=86',0,'project','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2026-01-04 04:41:03','2026-01-04 04:41:03','','rhyshsdf','','trash','closed','closed','','rhyshsdf__trashed','','','2026-01-04 16:03:09','2026-01-04 16:03:09','',0,'http://localhost:10004/?post_type=achievement&#038;p=87',0,'achievement','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2026-01-04 05:02:50','2026-01-04 05:02:50','','hshsdfg','','trash','closed','closed','','hshsdfg__trashed','','','2026-01-04 16:03:09','2026-01-04 16:03:09','',0,'http://localhost:10004/?post_type=achievement&#038;p=88',0,'achievement','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2026-01-04 05:03:04','2026-01-04 05:03:04','','sfsdfasdf','','trash','closed','closed','','sfsdfasdf__trashed','','','2026-01-04 16:03:09','2026-01-04 16:03:09','',0,'http://localhost:10004/?post_type=achievement&#038;p=89',0,'achievement','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2026-01-04 05:03:23','2026-01-04 05:03:23','','dfgsdfgsdf','','trash','closed','closed','','dfgsdfgsdf__trashed','','','2026-01-04 16:03:09','2026-01-04 16:03:09','',0,'http://localhost:10004/?post_type=achievement&#038;p=90',0,'achievement','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2026-01-04 14:29:15','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2026-01-04 14:29:15','0000-00-00 00:00:00','',0,'http://localhost:10004/?post_type=skill&p=91',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2026-01-04 14:35:00','2026-01-04 14:35:00','','TypeScript','','publish','closed','closed','','typescript','','','2026-01-04 14:35:00','2026-01-04 14:35:00','',0,'http://localhost:10004/?post_type=skill&#038;p=92',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2026-01-04 14:35:34','2026-01-04 14:35:34','','Java','','publish','closed','closed','','java','','','2026-01-04 14:35:40','2026-01-04 14:35:40','',0,'http://localhost:10004/?post_type=skill&#038;p=93',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2026-01-04 14:36:41','2026-01-04 14:36:41','','PHP','','publish','closed','closed','','php-2','','','2026-01-04 14:37:25','2026-01-04 14:37:25','',0,'http://localhost:10004/?post_type=skill&#038;p=94',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2026-01-04 14:37:52','2026-01-04 14:37:52','','C++','','publish','closed','closed','','c','','','2026-01-04 14:37:52','2026-01-04 14:37:52','',0,'http://localhost:10004/?post_type=skill&#038;p=95',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2026-01-04 14:38:52','2026-01-04 14:38:52','','SQL','','publish','closed','closed','','sql','','','2026-01-04 14:38:52','2026-01-04 14:38:52','',0,'http://localhost:10004/?post_type=skill&#038;p=96',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2026-01-04 14:39:38','2026-01-04 14:39:38','','React','','publish','closed','closed','','html-3','','','2026-01-04 14:41:36','2026-01-04 14:41:36','',0,'http://localhost:10004/?post_type=skill&#038;p=97',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2026-01-04 14:42:41','2026-01-04 14:42:41','','HTML','','publish','closed','closed','','html-4','','','2026-01-04 14:42:41','2026-01-04 14:42:41','',0,'http://localhost:10004/?post_type=skill&#038;p=98',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2026-01-04 14:43:00','2026-01-04 14:43:00','','CSS','','publish','closed','closed','','css-2','','','2026-01-04 14:43:00','2026-01-04 14:43:00','',0,'http://localhost:10004/?post_type=skill&#038;p=99',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2026-01-04 14:43:48','2026-01-04 14:43:48','','Bootstrap','','publish','closed','closed','','bootstrap','','','2026-01-04 14:43:48','2026-01-04 14:43:48','',0,'http://localhost:10004/?post_type=skill&#038;p=100',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2026-01-04 14:44:46','2026-01-04 14:44:46','','Material UI','','publish','closed','closed','','material-ui','','','2026-01-04 14:44:46','2026-01-04 14:44:46','',0,'http://localhost:10004/?post_type=skill&#038;p=101',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2026-01-04 14:45:13','2026-01-04 14:45:13','','React','','publish','closed','closed','','react','','','2026-01-04 14:45:13','2026-01-04 14:45:13','',0,'http://localhost:10004/?post_type=skill&#038;p=102',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2026-01-04 14:45:54','2026-01-04 14:45:54','','React Native','','publish','closed','closed','','react-native','','','2026-01-04 14:45:54','2026-01-04 14:45:54','',0,'http://localhost:10004/?post_type=skill&#038;p=103',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2026-01-04 14:46:34','2026-01-04 14:46:34','','Expo GO','','publish','closed','closed','','expo-go','','','2026-01-04 14:46:34','2026-01-04 14:46:34','',0,'http://localhost:10004/?post_type=skill&#038;p=104',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2026-01-04 14:48:06','2026-01-04 14:48:06','','PostgreSQL','','publish','closed','closed','','postgresql','','','2026-01-04 14:48:06','2026-01-04 14:48:06','',0,'http://localhost:10004/?post_type=skill&#038;p=105',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2026-01-04 14:48:59','2026-01-04 14:48:59','','GitHub','','publish','closed','closed','','github-2','','','2026-01-04 14:48:59','2026-01-04 14:48:59','',0,'http://localhost:10004/?post_type=skill&#038;p=106',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2026-01-04 14:49:34','2026-01-04 14:49:34','','Git','','publish','closed','closed','','git','','','2026-01-04 14:49:34','2026-01-04 14:49:34','',0,'http://localhost:10004/?post_type=skill&#038;p=107',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2026-01-04 14:50:17','2026-01-04 14:50:17','','VS Code','','publish','closed','closed','','vs-code','','','2026-01-04 14:50:17','2026-01-04 14:50:17','',0,'http://localhost:10004/?post_type=skill&#038;p=108',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2026-01-04 14:50:48','2026-01-04 14:50:48','','Postman','','publish','closed','closed','','postman','','','2026-01-04 14:50:48','2026-01-04 14:50:48','',0,'http://localhost:10004/?post_type=skill&#038;p=109',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2026-01-04 14:51:20','2026-01-04 14:51:20','','ChatGPT','','publish','closed','closed','','chatgpt','','','2026-01-04 14:51:20','2026-01-04 14:51:20','',0,'http://localhost:10004/?post_type=skill&#038;p=110',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2026-01-04 14:52:02','2026-01-04 14:52:02','','Copilot','','publish','closed','closed','','copilot','','','2026-01-04 14:52:02','2026-01-04 14:52:02','',0,'http://localhost:10004/?post_type=skill&#038;p=111',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2026-01-04 14:52:39','2026-01-04 14:52:39','','Node.js','','publish','closed','closed','','node-js','','','2026-01-04 14:52:39','2026-01-04 14:52:39','',0,'http://localhost:10004/?post_type=skill&#038;p=112',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2026-01-04 14:53:29','2026-01-04 14:53:29','','ExpressJs','','publish','closed','closed','','expressjs','','','2026-01-04 14:53:29','2026-01-04 14:53:29','',0,'http://localhost:10004/?post_type=skill&#038;p=113',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2026-01-04 14:54:07','2026-01-04 14:54:07','','GraphQL','','publish','closed','closed','','graphql','','','2026-01-04 14:54:07','2026-01-04 14:54:07','',0,'http://localhost:10004/?post_type=skill&#038;p=114',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2026-01-04 15:10:53','2026-01-04 15:10:53','<!-- wp:paragraph -->\n<p>A gamified adventure e-learning app for learning tech skills through fun, interactive<br>experiences</p>\n<!-- /wp:paragraph -->','Micomi','','publish','closed','closed','','micomi','','','2026-01-04 15:15:52','2026-01-04 15:15:52','',0,'http://localhost:10004/?post_type=project&#038;p=115',0,'project','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2026-01-04 15:29:47','2026-01-04 15:29:47','<!-- wp:paragraph -->\n<p>A flexible chatbot app to assist SJC students with queries</p>\n<!-- /wp:paragraph -->','AskJC','','publish','closed','closed','','askjc','','','2026-01-04 15:35:03','2026-01-04 15:35:03','',0,'http://localhost:10004/?post_type=project&#038;p=117',0,'project','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2026-01-04 15:30:08','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2026-01-04 15:30:08','0000-00-00 00:00:00','',0,'http://localhost:10004/?post_type=project&p=118',0,'project','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2026-01-04 15:32:57','2026-01-04 15:32:57','','JavaScript','','publish','closed','closed','','javascript','','','2026-01-04 15:32:57','2026-01-04 15:32:57','',0,'http://localhost:10004/?post_type=skill&#038;p=119',0,'skill','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2026-01-04 15:47:15','2026-01-04 15:47:15','<!-- wp:paragraph -->\n<p>A shopping app that allows users to purchase a variety of international music vinyl albums</p>\n<!-- /wp:paragraph -->','Shoptify','','publish','closed','closed','','shoptify','','','2026-01-04 15:50:52','2026-01-04 15:50:52','',0,'http://localhost:10004/?post_type=project&#038;p=120',0,'project','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2026-01-04 15:51:23','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2026-01-04 15:51:23','0000-00-00 00:00:00','',0,'http://localhost:10004/?post_type=project&p=121',0,'project','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2026-01-04 15:51:33','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2026-01-04 15:51:33','0000-00-00 00:00:00','',0,'http://localhost:10004/?post_type=project&p=122',0,'project','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2026-01-04 15:59:08','2026-01-04 15:59:08','<!-- wp:paragraph -->\n<p>A modern, user-friendly student enrollment web application</p>\n<!-- /wp:paragraph -->','Student Management Dashboard','','publish','closed','closed','','student-management-dashboard','','','2026-01-04 15:59:09','2026-01-04 15:59:09','',0,'http://localhost:10004/?post_type=project&#038;p=123',0,'project','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2026-01-04 16:06:27','2026-01-04 16:06:27','','Peer Tutor — Java Programming','','publish','closed','closed','','peer-tutor-java-programming','','','2026-01-04 16:06:27','2026-01-04 16:06:27','',0,'http://localhost:10004/?post_type=achievement&#038;p=124',0,'achievement','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2026-01-04 16:13:37','2026-01-04 16:13:37','','2nd Place - Web Design Contest','','publish','closed','closed','','2nd-place-web-design-contest','','','2026-01-04 16:13:37','2026-01-04 16:13:37','',0,'http://localhost:10004/?post_type=achievement&#038;p=125',0,'achievement','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2026-01-04 16:29:49','2026-01-04 16:29:49','','Champion — Podium PH CSS Battle','','publish','closed','closed','','champion-podium-ph-css-battle','','','2026-01-04 16:29:49','2026-01-04 16:29:49','',0,'http://localhost:10004/?post_type=achievement&#038;p=126',0,'achievement','',0);
INSERT INTO `wp_posts` VALUES (127,1,'2026-01-04 16:32:43','2026-01-04 16:32:43','','Judge — Java Programming Contest','','publish','closed','closed','','judge-java-programming-contest','','','2026-01-04 16:32:43','2026-01-04 16:32:43','',0,'http://localhost:10004/?post_type=achievement&#038;p=127',0,'achievement','',0);
INSERT INTO `wp_posts` VALUES (128,1,'2026-01-04 16:35:46','2026-01-04 16:35:46','','8th Place — Java Team Category, EVCO 2024','','publish','closed','closed','','8th-place-java-team-category-evco-2024','','','2026-01-04 16:35:46','2026-01-04 16:35:46','',0,'http://localhost:10004/?post_type=achievement&#038;p=128',0,'achievement','',0);
INSERT INTO `wp_posts` VALUES (129,1,'2026-01-04 16:41:49','2026-01-04 16:41:49','','PhilNITS IT Passport (IP) Passer','','publish','closed','closed','','philnits-it-passport-ip-passer','','','2026-01-04 16:41:49','2026-01-04 16:41:49','',0,'http://localhost:10004/?post_type=achievement&#038;p=129',0,'achievement','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (33,7,0);
INSERT INTO `wp_term_relationships` VALUES (83,7,0);
INSERT INTO `wp_term_relationships` VALUES (92,8,0);
INSERT INTO `wp_term_relationships` VALUES (93,8,0);
INSERT INTO `wp_term_relationships` VALUES (94,8,0);
INSERT INTO `wp_term_relationships` VALUES (95,8,0);
INSERT INTO `wp_term_relationships` VALUES (96,8,0);
INSERT INTO `wp_term_relationships` VALUES (97,9,0);
INSERT INTO `wp_term_relationships` VALUES (98,9,0);
INSERT INTO `wp_term_relationships` VALUES (99,9,0);
INSERT INTO `wp_term_relationships` VALUES (100,9,0);
INSERT INTO `wp_term_relationships` VALUES (101,9,0);
INSERT INTO `wp_term_relationships` VALUES (102,9,0);
INSERT INTO `wp_term_relationships` VALUES (103,9,0);
INSERT INTO `wp_term_relationships` VALUES (104,9,0);
INSERT INTO `wp_term_relationships` VALUES (105,10,0);
INSERT INTO `wp_term_relationships` VALUES (106,11,0);
INSERT INTO `wp_term_relationships` VALUES (107,11,0);
INSERT INTO `wp_term_relationships` VALUES (108,12,0);
INSERT INTO `wp_term_relationships` VALUES (109,12,0);
INSERT INTO `wp_term_relationships` VALUES (110,12,0);
INSERT INTO `wp_term_relationships` VALUES (111,12,0);
INSERT INTO `wp_term_relationships` VALUES (112,13,0);
INSERT INTO `wp_term_relationships` VALUES (113,13,0);
INSERT INTO `wp_term_relationships` VALUES (114,13,0);
INSERT INTO `wp_term_relationships` VALUES (115,7,0);
INSERT INTO `wp_term_relationships` VALUES (117,14,0);
INSERT INTO `wp_term_relationships` VALUES (119,9,0);
INSERT INTO `wp_term_relationships` VALUES (120,14,0);
INSERT INTO `wp_term_relationships` VALUES (123,15,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'project_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'skill_category','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'skill_category','',0,9);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'skill_category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'skill_category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'skill_category','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'skill_category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'project_type','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'project_type','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (7,'Mobile App','mobile-app',0);
INSERT INTO `wp_terms` VALUES (8,'languages','languages',0);
INSERT INTO `wp_terms` VALUES (9,'Frontend','frontend',0);
INSERT INTO `wp_terms` VALUES (10,'Databases','databases',0);
INSERT INTO `wp_terms` VALUES (11,'Collab','version-control',0);
INSERT INTO `wp_terms` VALUES (12,'Dev Tools','dev-tools',0);
INSERT INTO `wp_terms` VALUES (13,'Backend','backend',0);
INSERT INTO `wp_terms` VALUES (14,'Cross Platform','cross-platform',0);
INSERT INTO `wp_terms` VALUES (15,'Website','website',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','noeldevs');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','71');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:3:{s:4:\"core\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:27:\"taxonomy-panel-project_type\";}}s:14:\"core/edit-post\";a:3:{s:12:\"welcomeGuide\";b:0;s:19:\"metaBoxesMainIsOpen\";b:1;s:23:\"metaBoxesMainOpenHeight\";i:364;}s:9:\"_modified\";s:24:\"2026-01-04T15:02:43.947Z\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'closedpostboxes_skill','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_skill','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'meta-box-order_skill','a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:44:\"skill_details_meta,skill_categorydiv,slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'screen_layout_skill','2');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_achievement','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_achievement','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'meta-box-order_project','a:3:{s:6:\"normal\";s:20:\"project_details_meta\";s:8:\"advanced\";s:0:\"\";s:4:\"side\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'closedpostboxes_project','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (28,1,'metaboxhidden_project','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (29,1,'session_tokens','a:1:{s:64:\"d1e9f7b3ab8b8a07ee7a2c610153037f981d69bb2d0acd4875f143fe10f43593\";a:4:{s:10:\"expiration\";i:1767709741;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\";s:5:\"login\";i:1767536941;}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'noeldevs','$wp$2y$10$I4u9wTK3SzwFGfnSkycjwudd0rPdFWN.h/xD1niCeYhtLz0iJyb7u','noeldevs','dev-email@wpengine.local','http://localhost:10004','2025-12-08 05:34:16','',0,'noeldevs');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-06  8:24:08
