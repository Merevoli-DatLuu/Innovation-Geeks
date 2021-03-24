-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 02:45 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `innovation-geeks`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add country', 7, 'add_country'),
(26, 'Can change country', 7, 'change_country'),
(27, 'Can delete country', 7, 'delete_country'),
(28, 'Can view country', 7, 'view_country'),
(29, 'Can add item brand', 8, 'add_itembrand'),
(30, 'Can change item brand', 8, 'change_itembrand'),
(31, 'Can delete item brand', 8, 'delete_itembrand'),
(32, 'Can view item brand', 8, 'view_itembrand'),
(33, 'Can add item category', 9, 'add_itemcategory'),
(34, 'Can change item category', 9, 'change_itemcategory'),
(35, 'Can delete item category', 9, 'delete_itemcategory'),
(36, 'Can view item category', 9, 'view_itemcategory'),
(37, 'Can add item status', 10, 'add_itemstatus'),
(38, 'Can change item status', 10, 'change_itemstatus'),
(39, 'Can delete item status', 10, 'delete_itemstatus'),
(40, 'Can view item status', 10, 'view_itemstatus'),
(41, 'Can add item', 11, 'add_item'),
(42, 'Can change item', 11, 'change_item'),
(43, 'Can delete item', 11, 'delete_item'),
(44, 'Can view item', 11, 'view_item'),
(45, 'Can add image', 12, 'add_image'),
(46, 'Can change image', 12, 'change_image'),
(47, 'Can delete image', 12, 'delete_image'),
(48, 'Can view image', 12, 'view_image'),
(49, 'Can add itemrate', 13, 'add_itemrate'),
(50, 'Can change itemrate', 13, 'change_itemrate'),
(51, 'Can delete itemrate', 13, 'delete_itemrate'),
(52, 'Can view itemrate', 13, 'view_itemrate'),
(53, 'Can add user', 14, 'add_user'),
(54, 'Can change user', 14, 'change_user'),
(55, 'Can delete user', 14, 'delete_user'),
(56, 'Can view user', 14, 'view_user'),
(57, 'Can add itemrateimage', 15, 'add_itemrateimage'),
(58, 'Can change itemrateimage', 15, 'change_itemrateimage'),
(59, 'Can delete itemrateimage', 15, 'delete_itemrateimage'),
(60, 'Can view itemrateimage', 15, 'view_itemrateimage');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$YQlW0IBFiZLB$KqG9VSGvjIucYlx+mMFBtM+75N4GTuY1y9A1OhekGz4=', '2021-03-16 07:53:14.000565', 1, 'admin', '', '', '', 1, 1, '2021-03-16 07:53:07.279181'),
(2, 'pbkdf2_sha256$216000$134yPFV3Klxz$D9YM28ZndLYKCZmwyUsl1l3qpHq9IvibZ65RSxIUxQs=', NULL, 0, 'admin_02', '', '', '', 0, 1, '2021-03-16 08:06:25.103814');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` varchar(255) NOT NULL,
  `country_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
('CT000001', 'Việt Nam');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-03-16 07:53:37.980937', '1', 'Country object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-03-16 08:05:04.794220', 'CT000001', 'Country object (CT000001)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2021-03-16 08:06:25.652845', '2', 'admin_02', 1, '[{\"added\": {}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'items', 'country'),
(12, 'items', 'image'),
(11, 'items', 'item'),
(8, 'items', 'itembrand'),
(9, 'items', 'itemcategory'),
(13, 'items', 'itemrate'),
(15, 'items', 'itemrateimage'),
(10, 'items', 'itemstatus'),
(14, 'items', 'user'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-03-16 07:48:22.759907'),
(2, 'auth', '0001_initial', '2021-03-16 07:48:25.743078'),
(3, 'admin', '0001_initial', '2021-03-16 07:48:40.432918'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-03-16 07:48:43.110071'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-03-16 07:48:43.230078'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-03-16 07:48:44.291139'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-03-16 07:48:45.522209'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-03-16 07:48:46.440261'),
(9, 'auth', '0004_alter_user_username_opts', '2021-03-16 07:48:46.555268'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-03-16 07:48:48.449376'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-03-16 07:48:48.534381'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-03-16 07:48:48.602385'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-03-16 07:48:48.756394'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-03-16 07:48:48.908403'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-03-16 07:48:49.057411'),
(16, 'auth', '0011_update_proxy_permissions', '2021-03-16 07:48:49.111414'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-03-16 07:48:49.290424'),
(18, 'items', '0001_initial', '2021-03-16 07:48:51.778567'),
(19, 'sessions', '0001_initial', '2021-03-16 07:48:56.875858'),
(20, 'items', '0002_auto_20210316_1504', '2021-03-16 08:04:30.692270');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('padbejlawa3c7a4x78hpevunpd9d4nea', '.eJxVjEEOwiAQRe_C2hDaKSAu3XsGMgwzUjU0Ke3KeHfbpAvdvvf-f6uI61Li2niOY1YX1anTL0tIT667yA-s90nTVJd5THpP9GGbvk2ZX9ej_Tso2Mq2Fhjy2SGLG0zuJRhLQIbZQm82QIGCyOCBUiYD3nCfvCCKA2exA68-X_bAOFU:1lM4Vu:Fmfo6G_cwcpeL15LHAkIeJtCaff6aeEjqGQswCs8oU0', '2021-03-30 07:53:14.042567');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` varchar(255) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_description` varchar(255) DEFAULT NULL,
  `item_brand` varchar(255) DEFAULT NULL,
  `item_country` varchar(255) DEFAULT NULL,
  `item_category` varchar(255) DEFAULT NULL,
  `item_price` int(11) DEFAULT NULL,
  `item_weight` int(11) DEFAULT NULL,
  `item_size_height` int(11) DEFAULT NULL,
  `item_size_width` int(11) DEFAULT NULL,
  `item_size_depth` int(11) DEFAULT NULL,
  `days_to_ship` int(11) DEFAULT NULL,
  `item_stock` int(11) DEFAULT NULL,
  `item_sold` int(11) DEFAULT NULL,
  `item_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `itembrand`
--

CREATE TABLE `itembrand` (
  `item_brand_id` varchar(255) NOT NULL,
  `item_brand_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `itemcategory`
--

CREATE TABLE `itemcategory` (
  `item_category_id` varchar(255) NOT NULL,
  `item_category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `itemimage`
--

CREATE TABLE `itemimage` (
  `image_id` varchar(255) NOT NULL,
  `item_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `itemrate`
--

CREATE TABLE `itemrate` (
  `item_rate_id` varchar(255) NOT NULL,
  `item_rate_star` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `item_rate_comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `itemrateimage`
--

CREATE TABLE `itemrateimage` (
  `image_id` varchar(255) NOT NULL,
  `item_rate_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `itemstatus`
--

CREATE TABLE `itemstatus` (
  `item_status_id` varchar(255) NOT NULL,
  `item_status_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items_country`
--

CREATE TABLE `items_country` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items_country`
--

INSERT INTO `items_country` (`id`, `name`) VALUES
(1, 'Viet Nam');

-- --------------------------------------------------------

--
-- Table structure for table `items_item`
--

CREATE TABLE `items_item` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `description` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `size_height` int(11) NOT NULL,
  `size_width` int(11) NOT NULL,
  `size_depth` int(11) NOT NULL,
  `day_to_ship` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `sold` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items_itembrand`
--

CREATE TABLE `items_itembrand` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items_itemcategory`
--

CREATE TABLE `items_itemcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items_itemstatus`
--

CREATE TABLE `items_itemstatus` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_username` varchar(255) DEFAULT NULL,
  `user_bio` varchar(255) DEFAULT NULL,
  `user_gender` varchar(255) DEFAULT NULL,
  `user_birthday` date DEFAULT NULL,
  `user_phone_number` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_brand` (`item_brand`),
  ADD KEY `item_country` (`item_country`),
  ADD KEY `item_category` (`item_category`),
  ADD KEY `item_status` (`item_status`);

--
-- Indexes for table `itembrand`
--
ALTER TABLE `itembrand`
  ADD PRIMARY KEY (`item_brand_id`);

--
-- Indexes for table `itemcategory`
--
ALTER TABLE `itemcategory`
  ADD PRIMARY KEY (`item_category_id`);

--
-- Indexes for table `itemimage`
--
ALTER TABLE `itemimage`
  ADD PRIMARY KEY (`image_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `itemrate`
--
ALTER TABLE `itemrate`
  ADD PRIMARY KEY (`item_rate_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `itemrateimage`
--
ALTER TABLE `itemrateimage`
  ADD PRIMARY KEY (`image_id`,`item_rate_id`),
  ADD KEY `item_rate_id` (`item_rate_id`);

--
-- Indexes for table `itemstatus`
--
ALTER TABLE `itemstatus`
  ADD PRIMARY KEY (`item_status_id`);

--
-- Indexes for table `items_country`
--
ALTER TABLE `items_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items_item`
--
ALTER TABLE `items_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_item_brand_id_9feff3db_fk_items_itembrand_id` (`brand_id`),
  ADD KEY `items_item_category_id_98ac533d_fk_items_itemcategory_id` (`category_id`),
  ADD KEY `items_item_country_id_f47b75c2_fk_items_country_id` (`country_id`),
  ADD KEY `items_item_status_id_084ea32e_fk_items_itemstatus_id` (`status_id`);

--
-- Indexes for table `items_itembrand`
--
ALTER TABLE `items_itembrand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items_itemcategory`
--
ALTER TABLE `items_itemcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items_itemstatus`
--
ALTER TABLE `items_itemstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `items_country`
--
ALTER TABLE `items_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items_item`
--
ALTER TABLE `items_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items_itembrand`
--
ALTER TABLE `items_itembrand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items_itemcategory`
--
ALTER TABLE `items_itemcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items_itemstatus`
--
ALTER TABLE `items_itemstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`item_brand`) REFERENCES `itembrand` (`item_brand_id`),
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`item_country`) REFERENCES `country` (`country_id`),
  ADD CONSTRAINT `item_ibfk_3` FOREIGN KEY (`item_category`) REFERENCES `itemcategory` (`item_category_id`),
  ADD CONSTRAINT `item_ibfk_4` FOREIGN KEY (`item_status`) REFERENCES `itemstatus` (`item_status_id`);

--
-- Constraints for table `itemimage`
--
ALTER TABLE `itemimage`
  ADD CONSTRAINT `itemimage_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`),
  ADD CONSTRAINT `itemimage_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`);

--
-- Constraints for table `itemrate`
--
ALTER TABLE `itemrate`
  ADD CONSTRAINT `itemrate_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
  ADD CONSTRAINT `itemrate_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `itemrateimage`
--
ALTER TABLE `itemrateimage`
  ADD CONSTRAINT `itemrateimage_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`),
  ADD CONSTRAINT `itemrateimage_ibfk_2` FOREIGN KEY (`item_rate_id`) REFERENCES `itemrate` (`item_rate_id`);

--
-- Constraints for table `items_item`
--
ALTER TABLE `items_item`
  ADD CONSTRAINT `items_item_brand_id_9feff3db_fk_items_itembrand_id` FOREIGN KEY (`brand_id`) REFERENCES `items_itembrand` (`id`),
  ADD CONSTRAINT `items_item_category_id_98ac533d_fk_items_itemcategory_id` FOREIGN KEY (`category_id`) REFERENCES `items_itemcategory` (`id`),
  ADD CONSTRAINT `items_item_country_id_f47b75c2_fk_items_country_id` FOREIGN KEY (`country_id`) REFERENCES `items_country` (`id`),
  ADD CONSTRAINT `items_item_status_id_084ea32e_fk_items_itemstatus_id` FOREIGN KEY (`status_id`) REFERENCES `items_itemstatus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
