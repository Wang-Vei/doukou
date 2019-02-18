/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80003
 Source Host           : localhost:3306
 Source Schema         : blogs

 Target Server Type    : MySQL
 Target Server Version : 80003
 File Encoding         : 65001

 Date: 18/02/2019 09:20:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add 分类', 7, 'add_category');
INSERT INTO `auth_permission` VALUES (26, 'Can change 分类', 7, 'change_category');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 分类', 7, 'delete_category');
INSERT INTO `auth_permission` VALUES (28, 'Can view 分类', 7, 'view_category');
INSERT INTO `auth_permission` VALUES (29, 'Can add keyword', 8, 'add_keyword');
INSERT INTO `auth_permission` VALUES (30, 'Can change keyword', 8, 'change_keyword');
INSERT INTO `auth_permission` VALUES (31, 'Can delete keyword', 8, 'delete_keyword');
INSERT INTO `auth_permission` VALUES (32, 'Can view keyword', 8, 'view_keyword');
INSERT INTO `auth_permission` VALUES (33, 'Can add 文章管理', 9, 'add_ptarticle');
INSERT INTO `auth_permission` VALUES (34, 'Can change 文章管理', 9, 'change_ptarticle');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 文章管理', 9, 'delete_ptarticle');
INSERT INTO `auth_permission` VALUES (36, 'Can view 文章管理', 9, 'view_ptarticle');
INSERT INTO `auth_permission` VALUES (37, 'Can add 博客审核', 10, 'add_userinfo');
INSERT INTO `auth_permission` VALUES (38, 'Can change 博客审核', 10, 'change_userinfo');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 博客审核', 10, 'delete_userinfo');
INSERT INTO `auth_permission` VALUES (40, 'Can view 博客审核', 10, 'view_userinfo');
INSERT INTO `auth_permission` VALUES (41, 'Can add user', 11, 'add_user');
INSERT INTO `auth_permission` VALUES (42, 'Can change user', 11, 'change_user');
INSERT INTO `auth_permission` VALUES (43, 'Can delete user', 11, 'delete_user');
INSERT INTO `auth_permission` VALUES (44, 'Can view user', 11, 'view_user');
INSERT INTO `auth_permission` VALUES (45, 'Can add captcha store', 12, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (46, 'Can change captcha store', 12, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (47, 'Can delete captcha store', 12, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (48, 'Can view captcha store', 12, 'view_captchastore');
INSERT INTO `auth_permission` VALUES (49, 'Can add article', 13, 'add_article');
INSERT INTO `auth_permission` VALUES (50, 'Can change article', 13, 'change_article');
INSERT INTO `auth_permission` VALUES (51, 'Can delete article', 13, 'delete_article');
INSERT INTO `auth_permission` VALUES (52, 'Can view article', 13, 'view_article');
INSERT INTO `auth_permission` VALUES (53, 'Can add pinglun', 14, 'add_pinglun');
INSERT INTO `auth_permission` VALUES (54, 'Can change pinglun', 14, 'change_pinglun');
INSERT INTO `auth_permission` VALUES (55, 'Can delete pinglun', 14, 'delete_pinglun');
INSERT INTO `auth_permission` VALUES (56, 'Can view pinglun', 14, 'view_pinglun');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$120000$11Uak3Vldkfi$4qIdzLpq51g3TKV/WrZE+F2P4qZP9hbHqmXm9sqSQwM=', '2018-12-26 06:37:41.333982', 1, 'wangwei', '', '', '840682945@qq.com', 1, 1, '2018-12-26 06:37:15.963613');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$120000$QSLzwyzSVl2m$WHgNwQabJet5eRnFSeOWpUplt7yXOXoMr9KpAeaPhaU=', '2019-01-25 03:15:16.583131', 1, '18503442419', '', '', '840682945@q.com', 1, 1, '2019-01-25 03:15:04.292096');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$120000$YUOrBvmegZSL$zMFpsAusp86OgAW1nJP1HVwALs1IuY1UgBFt4u/bpLU=', '2019-02-14 03:55:37.563295', 1, 'wangwei1', '', '', '840682945@qq.com', 1, 1, '2019-02-13 01:23:15.825090');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2018-12-26 06:38:29.142534', '1', '前端', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"keyword\", \"object\": \"html\"}}, {\"added\": {\"name\": \"keyword\", \"object\": \"css\"}}, {\"added\": {\"name\": \"keyword\", \"object\": \"js\"}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (2, '2018-12-26 06:38:43.929411', '2', '后台', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"keyword\", \"object\": \"python\"}}, {\"added\": {\"name\": \"keyword\", \"object\": \"Django\"}}, {\"added\": {\"name\": \"keyword\", \"object\": \"flask\"}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (3, '2018-12-26 06:39:14.569532', '3', 'PS', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"keyword\", \"object\": \"\\u94a2\\u7b14\\u5de5\\u5177\"}}, {\"added\": {\"name\": \"keyword\", \"object\": \"\\u77e2\\u91cf\\u56fe\"}}, {\"added\": {\"name\": \"keyword\", \"object\": \"\\u56fe\\u5c42\"}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (4, '2018-12-26 06:39:51.180972', '4', 'BigData', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"keyword\", \"object\": \"hoodop\"}}, {\"added\": {\"name\": \"keyword\", \"object\": \"Linux\"}}, {\"added\": {\"name\": \"keyword\", \"object\": \"Ubuntu\"}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (5, '2018-12-26 06:41:24.500472', '1', 'PTArticle object (1)', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (6, '2018-12-26 06:43:19.686508', '2', 'PTArticle object (2)', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (7, '2018-12-26 06:44:32.236395', '3', 'PTArticle object (3)', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (8, '2018-12-26 06:47:05.260099', '4', 'PTArticle object (4)', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (9, '2018-12-27 10:26:17.268733', '4', 'PTArticle object (4)', 2, '[]', 9, 1);
INSERT INTO `django_admin_log` VALUES (10, '2018-12-27 10:26:43.876332', '4', 'PTArticle object (4)', 2, '[]', 9, 1);
INSERT INTO `django_admin_log` VALUES (11, '2019-02-14 15:37:49.819206', '2', 'UserInfo object (2)', 2, '[{\"changed\": {\"fields\": [\"sh\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (12, '2019-02-14 15:39:24.274716', '1', 'UserInfo object (1)', 2, '[{\"changed\": {\"fields\": [\"sh\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (13, '2019-02-16 03:39:10.611304', '3', 'UserInfo object (3)', 2, '[{\"changed\": {\"fields\": [\"sh\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (14, '2019-02-16 03:40:19.758579', '3', 'UserInfo object (3)', 2, '[{\"changed\": {\"fields\": [\"sh\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (15, '2019-02-16 03:43:39.905516', '3', 'UserInfo object (3)', 2, '[{\"changed\": {\"fields\": [\"sh\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (16, '2019-02-16 03:52:03.095602', '3', 'UserInfo object (3)', 2, '[{\"changed\": {\"fields\": [\"sh\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (17, '2019-02-16 03:52:15.123177', '3', 'UserInfo object (3)', 2, '[{\"changed\": {\"fields\": [\"sh\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (18, '2019-02-16 03:53:32.417412', '3', 'UserInfo object (3)', 2, '[{\"changed\": {\"fields\": [\"sh\"]}}]', 10, 3);
INSERT INTO `django_admin_log` VALUES (19, '2019-02-16 03:56:26.132075', '3', 'UserInfo object (3)', 2, '[{\"changed\": {\"fields\": [\"sh\"]}}]', 10, 3);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (12, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'pingtai', 'category');
INSERT INTO `django_content_type` VALUES (8, 'pingtai', 'keyword');
INSERT INTO `django_content_type` VALUES (14, 'pingtai', 'pinglun');
INSERT INTO `django_content_type` VALUES (9, 'pingtai', 'ptarticle');
INSERT INTO `django_content_type` VALUES (10, 'pingtai', 'userinfo');
INSERT INTO `django_content_type` VALUES (13, 'self', 'article');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (11, 'userauth', 'user');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2018-12-25 15:29:22.117376');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2018-12-25 15:29:23.149738');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2018-12-25 15:29:23.470542');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2018-12-25 15:29:23.495528');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2018-12-25 15:29:23.516514');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2018-12-25 15:29:23.698402');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2018-12-25 15:29:23.798341');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2018-12-25 15:29:23.904275');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2018-12-25 15:29:23.919266');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2018-12-25 15:29:24.006212');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2018-12-25 15:29:24.013207');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2018-12-25 15:29:24.029199');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2018-12-25 15:29:24.143127');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2018-12-25 15:29:24.247063');
INSERT INTO `django_migrations` VALUES (15, 'captcha', '0001_initial', '2018-12-25 15:29:24.351999');
INSERT INTO `django_migrations` VALUES (16, 'userauth', '0001_initial', '2018-12-25 15:29:24.403967');
INSERT INTO `django_migrations` VALUES (17, 'userauth', '0002_remove_user_img', '2018-12-25 15:29:24.472924');
INSERT INTO `django_migrations` VALUES (18, 'pingtai', '0001_initial', '2018-12-25 15:29:25.127520');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2018-12-25 15:29:25.242450');
INSERT INTO `django_migrations` VALUES (20, 'userauth', '0003_user_flower', '2018-12-26 02:45:25.695955');
INSERT INTO `django_migrations` VALUES (21, 'userauth', '0004_auto_20181226_1046', '2018-12-26 02:46:11.854513');
INSERT INTO `django_migrations` VALUES (22, 'pingtai', '0002_auto_20181226_1103', '2018-12-26 03:03:30.139323');
INSERT INTO `django_migrations` VALUES (23, 'self', '0001_initial', '2018-12-26 03:03:39.391621');
INSERT INTO `django_migrations` VALUES (24, 'userauth', '0005_user_img', '2018-12-27 09:00:55.081203');
INSERT INTO `django_migrations` VALUES (25, 'pingtai', '0003_auto_20190125_1106', '2019-01-25 03:06:23.278833');
INSERT INTO `django_migrations` VALUES (26, 'pingtai', '0004_auto_20190125_1118', '2019-01-25 03:18:21.113239');
INSERT INTO `django_migrations` VALUES (27, 'pingtai', '0005_pinglun', '2019-01-25 07:52:27.202222');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('8qhkiwb6fk9ag9r3aj9zsinxz5b53sio', 'YjJiODJhNjA2OWVjOGI2ZDViODYwNGI2N2UyMzNlYTk0ZjM0NjRlMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhY2Y0NzNjZDUwMzlmNzVmZjNlZjVhZmU3ZTNjZWUwMzg0ZmNmNDI0IiwidXNlcm5hbWUiOiJ3YW5nd2VpIn0=', '2019-02-08 03:19:45.485044');
INSERT INTO `django_session` VALUES ('acfu3m91ji9aaq3l5bgt9ipuo1x5fop3', 'ZjdmNDRlNWI0NjM5YWVlNGZkYzYwODA1OTRjZTI2YzE4Yjg5MThhZTp7InVzZXJuYW1lIjoid2FuZ3dlaSJ9', '2019-02-04 03:58:11.701534');
INSERT INTO `django_session` VALUES ('fapcuwev856crnqx1r0h3937h9j3065k', 'NTI1MWU3MzBlNGViNjRiOTI2Zjc4M2Y5MDMyMDM1N2RjZGNhM2IwZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZWQzOWQ5MGYyNGM2MDBjZTkwYjFmYzFiYTdhMjg5MTgwZmM5N2UwIiwidXNlcm5hbWUiOiJ3YW5nd2VpIn0=', '2019-01-29 09:17:48.595376');
INSERT INTO `django_session` VALUES ('g9iedelq2pw7ysrsj2th3a8ofu9srxsu', 'ZjdmNDRlNWI0NjM5YWVlNGZkYzYwODA1OTRjZTI2YzE4Yjg5MThhZTp7InVzZXJuYW1lIjoid2FuZ3dlaSJ9', '2019-03-02 08:48:41.717237');
INSERT INTO `django_session` VALUES ('h7haasr19lmq25qpjyzhcpalx8hh97lp', 'YjAyNzMzMzJiZjMzY2Q5Y2M4Yzk1NWYxODRhZDI2MmQzYWUwM2QzNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyN2JlMmFkOTQyNWYyNGIzY2RkNjY3N2Y0YjA0ZWY2M2YxMzZhNDFiIiwidXNlcm5hbWUiOiJcdTVmMjBcdTRlOWFcdTRlMWMifQ==', '2019-02-27 07:34:23.544069');
INSERT INTO `django_session` VALUES ('ljbtrfuu9wsyonhalipbqw1pkd2umsgt', 'ZjdmNDRlNWI0NjM5YWVlNGZkYzYwODA1OTRjZTI2YzE4Yjg5MThhZTp7InVzZXJuYW1lIjoid2FuZ3dlaSJ9', '2019-02-03 07:35:36.364320');
INSERT INTO `django_session` VALUES ('nwoahz8cvhad8e5r6l1fqyg58bmvoc8d', 'ZjdmNDRlNWI0NjM5YWVlNGZkYzYwODA1OTRjZTI2YzE4Yjg5MThhZTp7InVzZXJuYW1lIjoid2FuZ3dlaSJ9', '2019-01-31 10:30:20.835619');
INSERT INTO `django_session` VALUES ('uru39oruq4lpn3ygl0k2ze5blctk0u5r', 'MzFmZDRkYWYwMTAyODQ0MTFiM2YyYjAyMDk4ZTdjNjY4OTE4MjE5NTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyN2JlMmFkOTQyNWYyNGIzY2RkNjY3N2Y0YjA0ZWY2M2YxMzZhNDFiIiwidXNlcm5hbWUiOiJhc2RmIn0=', '2019-03-02 03:38:37.090017');

-- ----------------------------
-- Table structure for pingtai_category
-- ----------------------------
DROP TABLE IF EXISTS `pingtai_category`;
CREATE TABLE `pingtai_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pingtai_category
-- ----------------------------
INSERT INTO `pingtai_category` VALUES (1, '前端');
INSERT INTO `pingtai_category` VALUES (2, '后台');
INSERT INTO `pingtai_category` VALUES (3, 'PS');
INSERT INTO `pingtai_category` VALUES (4, 'BigData');

-- ----------------------------
-- Table structure for pingtai_keyword
-- ----------------------------
DROP TABLE IF EXISTS `pingtai_keyword`;
CREATE TABLE `pingtai_keyword`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pingtai_keyword_c_id_4d0b748c_fk_pingtai_category_id`(`c_id`) USING BTREE,
  CONSTRAINT `pingtai_keyword_c_id_4d0b748c_fk_pingtai_category_id` FOREIGN KEY (`c_id`) REFERENCES `pingtai_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pingtai_keyword
-- ----------------------------
INSERT INTO `pingtai_keyword` VALUES (1, 'html', 1);
INSERT INTO `pingtai_keyword` VALUES (2, 'css', 1);
INSERT INTO `pingtai_keyword` VALUES (3, 'js', 1);
INSERT INTO `pingtai_keyword` VALUES (4, 'python', 2);
INSERT INTO `pingtai_keyword` VALUES (5, 'Django', 2);
INSERT INTO `pingtai_keyword` VALUES (6, 'flask', 2);
INSERT INTO `pingtai_keyword` VALUES (7, '钢笔工具', 3);
INSERT INTO `pingtai_keyword` VALUES (8, '矢量图', 3);
INSERT INTO `pingtai_keyword` VALUES (9, '图层', 3);
INSERT INTO `pingtai_keyword` VALUES (10, 'hoodop', 4);
INSERT INTO `pingtai_keyword` VALUES (11, 'Linux', 4);
INSERT INTO `pingtai_keyword` VALUES (12, 'Ubuntu', 4);

-- ----------------------------
-- Table structure for pingtai_pinglun
-- ----------------------------
DROP TABLE IF EXISTS `pingtai_pinglun`;
CREATE TABLE `pingtai_pinglun`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `con` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_time` datetime(6) NOT NULL,
  `p_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pingtai_pinglun_p_id_d71e3bbb_fk_pingtai_ptarticle_id`(`p_id`) USING BTREE,
  INDEX `pingtai_pinglun_u_id_c4a1283a_fk_userauth_user_id`(`u_id`) USING BTREE,
  CONSTRAINT `pingtai_pinglun_p_id_d71e3bbb_fk_pingtai_ptarticle_id` FOREIGN KEY (`p_id`) REFERENCES `pingtai_ptarticle` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pingtai_pinglun_u_id_c4a1283a_fk_userauth_user_id` FOREIGN KEY (`u_id`) REFERENCES `userauth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pingtai_pinglun
-- ----------------------------
INSERT INTO `pingtai_pinglun` VALUES (1, '阿斯蒂芬', '2019-01-25 08:01:55.829589', 1, 1);
INSERT INTO `pingtai_pinglun` VALUES (2, '阿斯蒂芬', '2019-01-25 08:07:14.077723', 1, 1);
INSERT INTO `pingtai_pinglun` VALUES (13, '234我认识的发生多次', '2019-02-13 07:37:27.784544', 1, 2);
INSERT INTO `pingtai_pinglun` VALUES (14, '234我认识的发生多次', '2019-02-13 07:37:32.780466', 1, 2);
INSERT INTO `pingtai_pinglun` VALUES (15, 'sdf ', '2019-02-16 03:59:30.985067', 1, 4);

-- ----------------------------
-- Table structure for pingtai_ptarticle
-- ----------------------------
DROP TABLE IF EXISTS `pingtai_ptarticle`;
CREATE TABLE `pingtai_ptarticle`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `con` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_time` datetime(6) NOT NULL,
  `u_time` datetime(6) NOT NULL,
  `a_id` int(11) NULL DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `k_id` int(11) NOT NULL,
  `look` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pingtai_ptarticle_a_id_9992a408_fk_auth_user_id`(`a_id`) USING BTREE,
  INDEX `pingtai_ptarticle_c_id_ff1ad128_fk_pingtai_category_id`(`c_id`) USING BTREE,
  INDEX `pingtai_ptarticle_k_id_6c63d6d8_fk_pingtai_keyword_id`(`k_id`) USING BTREE,
  CONSTRAINT `pingtai_ptarticle_a_id_9992a408_fk_auth_user_id` FOREIGN KEY (`a_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pingtai_ptarticle_c_id_ff1ad128_fk_pingtai_category_id` FOREIGN KEY (`c_id`) REFERENCES `pingtai_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pingtai_ptarticle_k_id_6c63d6d8_fk_pingtai_keyword_id` FOREIGN KEY (`k_id`) REFERENCES `pingtai_keyword` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pingtai_ptarticle
-- ----------------------------
INSERT INTO `pingtai_ptarticle` VALUES (1, 'HTML head 头标签', '<p>HTML head 头部分的标签、元素有很多，涉及到浏览器对网页的渲染，SEO 等等，而各个浏览器内核以及各个国内浏览器厂商都有些自己的标签元素,这就造成了很多差异性。移动互联网时代，head 头部结构，移动端的 meta 元素，显得更为重要。了解每个标签的意义，写出满足自己需求的 head 头标签，是本文的目的。本篇以<a href=\"https://github.com/yisibl/blog/issues/1\" target=\"_blank\">一丝的文章</a>为基础，进行扩展总结介绍常用的 head 中各个标签、元素的意义以及使用场景。</p>\r\n\r\n<h3>DOCTYPE</h3>\r\n\r\n<p>DOCTYPE(Document Type)，该声明位于文档中最前面的位置，处于&nbsp;<code>html</code>&nbsp;标签之前，此标签告知浏览器文档使用哪种 HTML 或者 XHTML 规范。</p>\r\n\r\n<p>DTD(Document Type Definition) 声明以&nbsp;<code>&lt;!DOCTYPE&gt;</code>&nbsp;开始，不区分大小写，前面没有任何内容，如果有其他内容(空格除外)会使浏览器在 IE 下开启怪异模式(quirks mode)渲染网页。公共 DTD，名称格式为<code>注册//组织//类型 标签//语言</code>,<code>注册</code>指组织是否由国际标准化组织(ISO)注册，<code>+</code>表示是，<code>-</code>表示不是。<code>组织</code>即组织名称，如：W3C。<code>类型</code>一般是 DTD。<code>标签</code>是指定公开文本描述，即对所引用的公开文本的唯一描述性名称，后面可附带版本号。最后<code>语言</code>是 DTD 语言的 ISO 639 语言标识符，如：EN 表示英文，ZH 表示中文。XHTML 1.0 可声明三种 DTD 类型。分别表示严格版本，过渡版本，以及基于框架的 HTML 文档。</p>', '2018-12-26 06:41:24.496477', '2018-12-26 06:41:24.496477', 1, 1, 1, 0, 1);
INSERT INTO `pingtai_ptarticle` VALUES (2, 'Django如何发布文章', '<p>今天这个内容延续之前的项目，在之前项目上所做修改，假如我们要发布一个博客，那么我们肯定要先登录，登录后我们就会获取到登录的用户名和密码的session，我们在发布博客的时候将session传入过去，这样我们就知道是谁发布的博客了，首先我们得要创建一个发布博客的APP应用，获取到session后传入到发布博客里面去，这样就知道是谁发布的了</p>\r\n\r\n<p>1. &nbsp;&nbsp;先创建一个temp2的项目，命名都记得吧，先按快捷键Ctrl+alt+R，然后startapp temp2，就会出来我们的项目了<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2.&nbsp; &nbsp;然后在我们的Djangoproject容器中settings.py文件中加入我们的新建的这个temp2项目</p>\r\n\r\n<p>3. &nbsp; 然后我们就要在容器中urls.py里面写链接的路径，并且给它个命名空间，因为在后面的views.py中重定向的时候会用上</p>\r\n\r\n<p>在第31行里面我们要根据这个路由路径去访问我们temp2项目的urls.py，再来介绍下这个path里面的参数的各个含义，第一个箭头的意思是我们在通过浏览器访问时的路径，这个自己随意写，但不要和其它项目的路径重名，第二个箭头是通过include这个函数来访问到我们项目的urls.py文件，namespace的意思是我们给重定向的时候取的命名空间，取了命名空间后我们就可以在重定向时能够访问其它的网页，因为重定向时是用的redirect,不在是render,不能再直接写网页的路径</p>\r\n\r\n<p>4. &nbsp;创建好项目加了路径后我们就要要看temp2里面的内容了，要知道的是我们temp2项目里面是没有urls.py这个文件的，所以要自己创建，要通过这个urls.py来查找到views.py这个文件里面的函数<br />\r\n&nbsp;</p>', '2018-12-26 06:43:19.683499', '2018-12-26 06:43:19.683499', 1, 2, 5, 0, 0);
INSERT INTO `pingtai_ptarticle` VALUES (3, '钢笔工具怎么用', '<div><span style=\"color:#000000\"><span style=\"background-color:#f5f5f5\"><strong>内容提要：</strong>文章介绍ps钢笔工具怎么用相关的问题，包括绘制直线、曲线、转折曲线、以及删除某段或者整个路径的方法。ps钢笔工具怎么用不是一个特别难的问题，主要是多练习。</span></span></div>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">　　我们学习使用photoshop软件，钢笔工具的使用是必须要掌握的一个比较重要的知识点。</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">　　究竟ps钢笔工具怎么用呢，本文详细介绍一下ps钢笔工具怎么用。熟练掌握钢笔工具，不论是绘制图案还是使用钢笔工具抠图都是非常有帮助的。</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"background-color:#ffffff\"><strong>1.&nbsp; ps钢笔工具怎么用： 路径构成元素</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">　　PS钢笔工具绘制的路径，包括以下几个元素：路径由锚点、路径段、方向点、方向线构成。如下图所示：</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"background-color:#ffffff\"><strong>2. ps钢笔工具怎么用： 路径类型</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">　　路径可以由直线、曲线和折线单独或者组合而成。下面分别介绍三类路径的绘制方法。</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"background-color:#ffffff\"><strong>A．钢笔工具绘制直线</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">　　选择钢笔工具后，在画布上鼠标左键直接单击即可绘制直线。每次单击添加一个锚点，两个相邻的锚点之间就是一条直线段。</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">　　如果是画多条不连续的路径，画好一条路径后，按住ctrl键单击空白地方，然后接着绘制下一条。</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">　　绘制直线路径时，同时按住Shift键，可以使绘制的路径呈水平、垂直或45度角。</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"background-color:#ffffff\"><strong>B．钢笔工具绘制曲线</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">　　使用钢笔工具绘制曲线的方法是，使用鼠标拖动绘制。比如单击确定第一个锚点，然后在画布上按下鼠标左键并拖曳，就可以绘制出平滑曲线了。</span></span></p>', '2018-12-26 06:44:32.232389', '2018-12-26 06:44:32.232389', 1, 3, 7, 0, 0);
INSERT INTO `pingtai_ptarticle` VALUES (4, 'BigData 你想知道的都在这里', '<p><em><strong>1、 When to reconsider Hadoop</strong></em></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><em><strong>何时用考虑Hadoop？Hadoop生态系统正在快速增长。这意味着很多有困难或不支持的东西正在成为可能。</strong></em></p>\r\n	</li>\r\n	<li>\r\n	<p><em><strong>Hadoop真的对你的具体问题有意义吗？</strong></em></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em><strong>首先让我们来看看Hadoop的关键功能。</strong></em></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><em><strong>如果您看到数据量的大幅增长，可能使用Hadoop是有意义的。</strong></em></p>\r\n\r\n	<p><em><strong>当您想要快速访问旧的数据，否则将在磁带驱动器上进行归档存储时，Hadoop可能会提供一个很好的选择。</strong></em></p>\r\n	</li>\r\n	<li>\r\n	<p><em><strong>Hadoop友好功能包括在同一数据存储中使用多个应用程序时的场景。大容量或高品质也是Hadoop作为平台选择的重要指标。</strong></em></p>\r\n	</li>\r\n	<li>\r\n	<p><em><strong>Hadoop对数据并行有好处。如您所知，数据并行性是在数据集的元素上的多个节点上同时执行相同的功能。</strong></em></p>\r\n	</li>\r\n	<li>\r\n	<p><em><strong>任务并行性，是在相同或不同的数据集上的多个节点上同时执行许多不同的功能。如果您的问题具有任务级并行性，则必须对从Hadoop生态系统部署的工具进行进一步分析。</strong></em></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em><strong>这些工具提供的确切好处是什么？</strong></em></p>\r\n\r\n<p><em><strong>并不是所有的算法都可以在Hadoop中进行扩展，也可以简化为YARN支持的编程模型之一。因此，如果您正在寻求部署高度耦合的数据处理算法，请谨慎行事，在使用Hadoop之前进行彻底的分析。您是否考虑扔掉现有的数据库解决方案并用Hadoop替换它们？再想一想。</strong></em></p>\r\n\r\n<p><em><strong>Hadoop可能是一个很好的平台，您的各种数据集可以着陆并被处理成与数据库可消化的形式。Hadoop可能也不是您的业务案例的最佳数据存储解决方案。要评估和谨慎。</strong></em></p>\r\n\r\n<p><em><strong>HTFS以64兆字节或更大的数据块存储数据，因此您可能必须读取整个文件才能选择一个数据条目。这使得执行随机数据访问更难。Hadoop生态系统的发展速度比以往任何时候都快。Hadoop生态系统中的一些移动目标，以及必须通过Hadoop生态系统的新工具来解决的其他需求。主要是先进的分析查询，</strong></em></p>\r\n\r\n<p><em><strong>延迟敏感的任务和敏感数据的网络安全。在这里，希望先进一步了解这些需求工具所面临的挑战的工具。</strong></em></p>\r\n\r\n<p><em><strong>综上所述，虽然Hadoop具有许多算法的可扩展性，但它只是一个模型，并没有解决管理和处理大数据的所有问题。虽然可以找到反例，但我们通常可以说，Hadoop框架不是最适合使用小数据集，需要特定硬件类型的高级算法，任务级并行性，基础架构替换或随机数据访问。</strong></em></p>', '2018-12-26 06:47:05.257100', '2018-12-27 10:26:43.872335', 1, 4, 10, 0, 0);

-- ----------------------------
-- Table structure for pingtai_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `pingtai_userinfo`;
CREATE TABLE `pingtai_userinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hobby` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reason` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sh` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `u_id`(`u_id`) USING BTREE,
  CONSTRAINT `pingtai_userinfo_u_id_cd29f085_fk_userauth_user_id` FOREIGN KEY (`u_id`) REFERENCES `userauth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pingtai_userinfo
-- ----------------------------
INSERT INTO `pingtai_userinfo` VALUES (1, '优逸客', 'lkasjdfl', '吃', 'dw', 'a\'s\'d\'f', 2, 1);
INSERT INTO `pingtai_userinfo` VALUES (2, '优逸客', 'lkasjdfl', '吃', 'd', 'asdfasdf', 2, 2);
INSERT INTO `pingtai_userinfo` VALUES (3, 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', 2, 4);

-- ----------------------------
-- Table structure for self_article
-- ----------------------------
DROP TABLE IF EXISTS `self_article`;
CREATE TABLE `self_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `con` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_time` datetime(6) NOT NULL,
  `u_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `look` int(11) NOT NULL,
  `a_id` int(11) NULL DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `k_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `self_article_a_id_0dea7581_fk_userauth_user_id`(`a_id`) USING BTREE,
  INDEX `self_article_c_id_6c2fae92_fk_pingtai_category_id`(`c_id`) USING BTREE,
  INDEX `self_article_k_id_a7108329_fk_pingtai_keyword_id`(`k_id`) USING BTREE,
  CONSTRAINT `self_article_a_id_0dea7581_fk_userauth_user_id` FOREIGN KEY (`a_id`) REFERENCES `userauth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `self_article_c_id_6c2fae92_fk_pingtai_category_id` FOREIGN KEY (`c_id`) REFERENCES `pingtai_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `self_article_k_id_a7108329_fk_pingtai_keyword_id` FOREIGN KEY (`k_id`) REFERENCES `pingtai_keyword` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of self_article
-- ----------------------------
INSERT INTO `self_article` VALUES (4, 'HTML head 头标签', '<p>as</p>', '2019-01-25 06:20:32.954559', '2019-01-25 06:20:32.954559', 0, 0, 1, 1, 1);
INSERT INTO `self_article` VALUES (5, 'BigData 你想知道的都在这里', '<p>asdf</p>', '2019-01-25 06:35:14.991680', '2019-01-25 06:35:14.991680', 1, 0, 1, 3, 1);
INSERT INTO `self_article` VALUES (6, '就是顶峰', '<p>熟练就会了</p>', '2019-02-13 01:58:14.464036', '2019-02-13 01:58:14.464036', 1, 0, 1, 3, 8);
INSERT INTO `self_article` VALUES (7, 'HTML head 头标签', '<p>实验品</p>', '2019-02-16 01:45:57.760238', '2019-02-16 01:45:57.760238', 0, 0, 4, 2, 5);

-- ----------------------------
-- Table structure for userauth_user
-- ----------------------------
DROP TABLE IF EXISTS `userauth_user`;
CREATE TABLE `userauth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c` int(11) NOT NULL,
  `flower` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `star` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Salary` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userauth_user
-- ----------------------------
INSERT INTO `userauth_user` VALUES (1, 'wangwei', '123456', '840682945@qq.com', '13655555555', 0, '2', '', '/userimage/14073.jpg', 10000, 20, '男');
INSERT INTO `userauth_user` VALUES (2, '张亚东', '123456', '840682945@qq.com', '13655555555', 0, '', '', '', 15000, 25, '男');
INSERT INTO `userauth_user` VALUES (3, '张洳瑜', '123456', '840682945@qq.com', '13866666666', 0, '', '', '', 150000, 32, '女');
INSERT INTO `userauth_user` VALUES (4, 'asdf', 'asdf', '840682945@qq.com', '13855666666', 0, '', '', '', 150000, 25, '女');

SET FOREIGN_KEY_CHECKS = 1;
