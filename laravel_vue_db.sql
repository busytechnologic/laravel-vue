/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : laravel_vue_db

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-11-29 10:55:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'Electrical Vehicle/e-Power', '50', null, null);
INSERT INTO `categories` VALUES ('2', 'Compact Car', '50', null, null);
INSERT INTO `categories` VALUES ('3', 'Light Car', '50', null, null);
INSERT INTO `categories` VALUES ('4', 'Minivan', '50', null, null);
INSERT INTO `categories` VALUES ('5', 'Sports & Specialty', '50', null, null);
INSERT INTO `categories` VALUES ('6', 'Sedan', '50', null, null);

-- ----------------------------
-- Table structure for `failed_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_06_01_000001_create_oauth_auth_codes_table', '1');
INSERT INTO `migrations` VALUES ('4', '2016_06_01_000002_create_oauth_access_tokens_table', '1');
INSERT INTO `migrations` VALUES ('5', '2016_06_01_000003_create_oauth_refresh_tokens_table', '1');
INSERT INTO `migrations` VALUES ('6', '2016_06_01_000004_create_oauth_clients_table', '1');
INSERT INTO `migrations` VALUES ('7', '2016_06_01_000005_create_oauth_personal_access_clients_table', '1');
INSERT INTO `migrations` VALUES ('8', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('9', '2019_12_09_044534_create_roles_table', '1');
INSERT INTO `migrations` VALUES ('10', '2019_12_09_082630_create_role_user_table', '1');
INSERT INTO `migrations` VALUES ('11', '2019_12_09_094511_create_social_accounts_table', '1');
INSERT INTO `migrations` VALUES ('12', '2019_12_27_065818_create_products_table', '1');
INSERT INTO `migrations` VALUES ('13', '2019_12_27_070549_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('14', '2019_12_27_070603_create_tags_table', '1');
INSERT INTO `migrations` VALUES ('15', '2020_01_08_113508_create_product_tag_pivot_table', '1');

-- ----------------------------
-- Table structure for `oauth_access_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for `oauth_auth_codes`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for `oauth_clients`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES ('1', null, 'Laravel Vue Starter Personal Access Client', 'EPTBvcqvcqUXKJ3tislHIOMk3i1g4v3e9X7QFju1', null, 'http://localhost', '1', '0', '0', '2022-11-28 17:52:10', '2022-11-28 17:52:10');
INSERT INTO `oauth_clients` VALUES ('2', null, 'Laravel Vue Starter Password Grant Client', 'hvWUgKhV09Mt0ocAT8k9s8siIcY2P9Co2Qdpgm60', 'users', 'http://localhost', '0', '1', '0', '2022-11-28 17:52:10', '2022-11-28 17:52:10');

-- ----------------------------
-- Table structure for `oauth_personal_access_clients`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES ('1', '1', '2022-11-28 17:52:10', '2022-11-28 17:52:10');

-- ----------------------------
-- Table structure for `oauth_refresh_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'Cima', 'The charm of this car. Choose CIMA. It is the pride and pleasure of choosing one vertex.', '7746624', '5', 'images/cars/cima_1912_top_01.jpg.ximg.l_full_m.smart.jpg', null, null, null);
INSERT INTO `products` VALUES ('2', 'Fuga', 'The Infiniti brand is highly regarded for its advanced design and powerful performance in each of its markets, including the U.S., Canada, Europe, Russia, the Middle East, China and Korea. With its highly refined style and responsiveness, Infiniti promises a driving experience with unparalleled appeal.', '70679043', '2', 'images/cars/fuga_1912_top_02 . jpg . ximg . l_full_m . smart . jpg', null, null, null);
INSERT INTO `products` VALUES ('3', 'Skyline', 'Datsun will provide an appealing and sustainable motoring experience to optimistic up-and-coming customers in high-growth markets. Datsun combines Nissan Motor\'s 80 years of Japanese car-making expertise with the nearly century-old Datsun Brand DNA. Datsun vehicles will be Local Products ensured by a Global Brand, and starts sales in India, Indonesia, Russia and South Africa from 2014.', '63473802', '2', 'images/cars/sylphy_1803_top_002.jpg.ximg.l_full_m.smart.jpg', null, null, null);
INSERT INTO `products` VALUES ('4', 'Sylphy', 'Comfort to enjoy driving while relaxing.\r\n                The interior space on a class that has become even wider, and ample rear seats.\r\n                Here is a state-of-the-art environment where all occupants are comfortably wrapped.', '62847077', '1', 'images/cars/sylphy_1803_top_002.jpg.ximg.l_full_m.smart.jpg', null, null, null);
INSERT INTO `products` VALUES ('5', 'Teana', 'Comfort of \"modern living\". Consideration of \"hospitality\". Tiana has found a value that has never been in a sedan before. Refining its modern living and hospitality, Tiana offers a cruise-like, elegant travel experience. Lets go to Tiana Cruz.', '70970518', '2', 'images/cars/teana_1803_top_002.jpg.ximg.l_full_m.smart.jpg', null, null, null);
INSERT INTO `products` VALUES ('6', 'Leaf', 'NISSAN CROSSING. The Nissan Gallery in Ginza will now be born again as NISSAN CROSSING, a base to dispatch the Nissan brand globally.', '31181383', '2', 'images/cars/panel01_img01.jpg', null, null, null);
INSERT INTO `products` VALUES ('7', 'Skyline 2 ', 'Details Datsun will provide an appealing and sustainable motoring experience to optimistic up-and-coming customers in high-growth markets. Datsun combines Nissan Motor\'s 80 years of Japanese car-making expertise with the nearly century-old Datsun Brand DNA. Datsun vehicles will be Local Products ensured by a Global Brand, and starts sales in India, Indonesia, Russia and South Africa from 2014.', '15401342', '3', 'images/cars/sylphy_1803_top_002.jpg.ximg.l_full_m.smart.jpg', null, null, null);
INSERT INTO `products` VALUES ('8', 'Cima', 'The charm of this car. Choose CIMA. It is the pride and pleasure of choosing one vertex.', '4534288', '5', 'images/cars/cima_1912_top_01.jpg.ximg.l_full_m.smart.jpg', null, null, null);
INSERT INTO `products` VALUES ('9', 'Fuga', 'The Infiniti brand is highly regarded for its advanced design and powerful performance in each of its markets, including the U.S., Canada, Europe, Russia, the Middle East, China and Korea. With its highly refined style and responsiveness, Infiniti promises a driving experience with unparalleled appeal.', '34838136', '2', 'images/cars/fuga_1912_top_02 . jpg . ximg . l_full_m . smart . jpg', null, null, null);
INSERT INTO `products` VALUES ('10', 'Skyline', 'Datsun will provide an appealing and sustainable motoring experience to optimistic up-and-coming customers in high-growth markets. Datsun combines Nissan Motor\'s 80 years of Japanese car-making expertise with the nearly century-old Datsun Brand DNA. Datsun vehicles will be Local Products ensured by a Global Brand, and starts sales in India, Indonesia, Russia and South Africa from 2014.', '91414872', '2', 'images/cars/sylphy_1803_top_002.jpg.ximg.l_full_m.smart.jpg', null, null, null);
INSERT INTO `products` VALUES ('11', 'Sylphy', 'Comfort to enjoy driving while relaxing.\r\n                The interior space on a class that has become even wider, and ample rear seats.\r\n                Here is a state-of-the-art environment where all occupants are comfortably wrapped.', '45954275', '1', 'images/cars/sylphy_1803_top_002.jpg.ximg.l_full_m.smart.jpg', null, null, null);
INSERT INTO `products` VALUES ('12', 'Teana', 'Comfort of \"modern living\". Consideration of \"hospitality\". Tiana has found a value that has never been in a sedan before. Refining its modern living and hospitality, Tiana offers a cruise-like, elegant travel experience. Lets go to Tiana Cruz.', '58581179', '2', 'images/cars/teana_1803_top_002.jpg.ximg.l_full_m.smart.jpg', null, null, null);
INSERT INTO `products` VALUES ('13', 'Leaf', 'NISSAN CROSSING. The Nissan Gallery in Ginza will now be born again as NISSAN CROSSING, a base to dispatch the Nissan brand globally.', '12869954', '2', 'images/cars/panel01_img01.jpg', null, null, null);
INSERT INTO `products` VALUES ('14', 'Skyline 2 ', 'Details Datsun will provide an appealing and sustainable motoring experience to optimistic up-and-coming customers in high-growth markets. Datsun combines Nissan Motor\'s 80 years of Japanese car-making expertise with the nearly century-old Datsun Brand DNA. Datsun vehicles will be Local Products ensured by a Global Brand, and starts sales in India, Indonesia, Russia and South Africa from 2014.', '97217632', '3', 'images/cars/sylphy_1803_top_002.jpg.ximg.l_full_m.smart.jpg', null, null, null);

-- ----------------------------
-- Table structure for `product_tag`
-- ----------------------------
DROP TABLE IF EXISTS `product_tag`;
CREATE TABLE `product_tag` (
  `product_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------

-- ----------------------------
-- Table structure for `role_user`
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_user
-- ----------------------------

-- ----------------------------
-- Table structure for `social_accounts`
-- ----------------------------
DROP TABLE IF EXISTS `social_accounts`;
CREATE TABLE `social_accounts` (
  `user_id` int(11) NOT NULL,
  `provider_user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of social_accounts
-- ----------------------------

-- ----------------------------
-- Table structure for `tags`
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', 'Tag 1', null, null);
INSERT INTO `tags` VALUES ('2', 'Tag 2', null, null);

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'John Doe', 'admin', 'admin@gmail.com', null, '$2y$10$7ABcy7Drv16EMZMGYrqN3eagPWGdTO8iJ0O2bxPsT.5t1m4jj9xle', null, null, null);
