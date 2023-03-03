-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2023 at 11:46 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demoradi_salmanioverseas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$163vkGFvNIHRMofvqOAzSupCREHiI2qBH6LuJS0zbgOXhwC1v2SCi', NULL, '2020-09-16 03:15:20', '2020-09-16 03:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text DEFAULT NULL,
  `page_status` enum('1','0') NOT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `number` varchar(50) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `temporary_address` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `job_id` varchar(50) DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL,
  `file` varchar(500) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `number`, `permanent_address`, `temporary_address`, `email`, `job_id`, `message`, `file`, `photo`, `passport`, `created_at`, `updated_at`, `last_name`) VALUES
(56, 'Devraj', '9829936530', NULL, NULL, 'devraj.sah310@gmail.com', NULL, 'HELLO TESTING SALMANI OVERSEAS CONTACT PAGE.', NULL, NULL, NULL, '2023-02-13 05:54:16', '2023-02-13 05:54:16', NULL),
(57, 'Devraj', '9829936530', NULL, NULL, 'devraj.sah310@gmail.com', NULL, 'HELLO TESTING SALMANI OVERSEAS CONTACT PAGE.', NULL, NULL, NULL, '2023-02-13 05:55:05', '2023-02-13 05:55:05', NULL),
(58, 'devraj', '9829936530', NULL, NULL, 'dev@gmail.com', NULL, 'hlo tes', NULL, NULL, NULL, '2023-02-13 05:57:42', '2023-02-13 05:57:42', NULL),
(59, 'devraj', '9829936530', 'jkpu', 'ktm', 'devraj.sah13@gmail.com', NULL, 'hlo', '/file/1676446337_demand-letter.jpg', '/photo/1676446337_testimonial-1.jpg', '/passport/1676446337_about.jpg', '2023-02-15 07:32:17', '2023-02-15 07:32:17', NULL),
(60, 'contact1', '982993666', NULL, NULL, 'dev@gmail.com', NULL, 'devraj', NULL, NULL, NULL, '2023-02-15 08:13:15', '2023-02-15 08:13:15', NULL),
(61, 'devraj ho', '9829936530', 'jkpu', 'ktm', 'dev@gmail.com', '53', 'asdf', NULL, NULL, NULL, '2023-02-15 08:31:02', '2023-02-15 08:31:02', NULL),
(62, 'test', '9829936530', 'sdf', 'ktm', 'devraj.sah13@gmail.com', '56', 'Okay', '/file/1676454159_senior.pdf', '/photo/1676454160_devraj_passport.jpg', '/passport/1676454160_Birth Certificate .jpg', '2023-02-15 09:42:40', '2023-02-15 09:42:40', NULL),
(63, 'devraj', '9829936530', 'sdf', 'ktm', 'dev@gmail.com', '53', 'fdsfsdgfdg', '/file/1676462368_WhatsApp Image 2022-04-18 at 4.02.55 PM.jpeg', '/photo/1676462368_WhatsApp Image 2022-04-18 at 4.02.55 PM-min.jpeg', '/passport/1676462368_CamScanner 08-10-2022 12.14_3.jpg', '2023-02-15 11:59:28', '2023-02-15 11:59:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `site_nepali_name` varchar(255) DEFAULT NULL,
  `site_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `phone_ne` varchar(255) DEFAULT NULL,
  `website_full_address` varchar(255) DEFAULT NULL,
  `address_ne` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_keyword` varchar(255) DEFAULT NULL,
  `page_description` text DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `site_logo` varchar(255) NOT NULL,
  `site_logo_nepali` varchar(255) DEFAULT NULL,
  `site_status` enum('1','0') NOT NULL,
  `extra_one` varchar(255) DEFAULT NULL,
  `extra_two` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`id`, `site_name`, `site_nepali_name`, `site_email`, `phone`, `phone_ne`, `website_full_address`, `address_ne`, `facebook`, `twitter`, `linkedin`, `other`, `page_title`, `page_keyword`, `page_description`, `favicon`, `site_logo`, `site_logo_nepali`, `site_status`, `extra_one`, `extra_two`, `created_at`, `updated_at`) VALUES
(1, 'Hamro Aatmanirvar Saving & Credit Co-operative Ltd.', 'Hamro Aatmanirvar Saving & Credit Co-operative', 'hamroaatmanirvar@gmail.com', '01-4010565/66', '4371664', 'Putalisadak-29, Kathmandu, Nepal', NULL, 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'Hamro Aatmanirvar Saving & Credit Co-operative Ltd.', 'G.P.O. Box: 8975, EPC-595', 'Lorem ipsum dolor sit amet elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulpu', '1677836877_logo.png', '1677836877_logo.png', '1677836877_logo.png', '1', '3154/066/067', '', '2020-09-16 03:15:20', '2023-03-03 10:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(100) NOT NULL,
  `company_name` varchar(55) NOT NULL,
  `salary` varchar(20) NOT NULL,
  `minimum_qualification` varchar(255) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `contract_time` varchar(30) DEFAULT NULL,
  `navigation_id` bigint(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deadline` varchar(255) DEFAULT NULL,
  `posted_on` varchar(50) DEFAULT NULL,
  `foodaccommondation` varchar(255) DEFAULT NULL,
  `total_demand` varchar(255) DEFAULT NULL,
  `working_day` varchar(255) DEFAULT NULL,
  `working_hour` varchar(255) DEFAULT NULL,
  `visa_ticket` varchar(255) DEFAULT NULL,
  `service_charge` varchar(255) DEFAULT NULL,
  `lt_number` varchar(255) DEFAULT NULL,
  `interview` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_08_06_040112_create_admins_table', 1),
(4, '2020_08_06_040148_create_navigations_table', 1),
(5, '2020_08_06_040229_create_navigation_items_table', 1),
(6, '2020_08_06_040251_create_page_types', 1),
(7, '2020_08_06_040325_create_subscribers_table', 1),
(8, '2020_08_06_040351_create_global_settings_table', 1),
(9, '2020_08_06_040430_create_navigation_video_items_table', 1),
(10, '2020_08_06_040522_create_comments_table', 1),
(11, '2022_07_12_231308_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nav_name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `caption_nepali` varchar(255) DEFAULT NULL,
  `nav_category` varchar(255) NOT NULL,
  `page_type` varchar(255) NOT NULL,
  `page_template` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `short_content` text DEFAULT NULL,
  `short_content_nepali` text DEFAULT NULL,
  `long_content` text DEFAULT NULL,
  `long_content_nepali` text DEFAULT NULL,
  `parent_page_id` int(11) NOT NULL,
  `icon_image` varchar(255) DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `icon_image_caption` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `main_attachment` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_keyword` varchar(255) DEFAULT NULL,
  `page_description` varchar(255) DEFAULT NULL,
  `page_status` enum('1','0') NOT NULL,
  `nav_status` enum('1','0') NOT NULL,
  `extra_one` varchar(255) DEFAULT NULL,
  `extra_two` varchar(255) DEFAULT NULL,
  `extra_three` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `span` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `nav_name`, `alias`, `caption`, `caption_nepali`, `nav_category`, `page_type`, `page_template`, `position`, `short_content`, `short_content_nepali`, `long_content`, `long_content_nepali`, `parent_page_id`, `icon_image`, `featured_image`, `icon_image_caption`, `banner_image`, `link`, `main_attachment`, `attachment`, `page_title`, `page_keyword`, `page_description`, `page_status`, `nav_status`, `extra_one`, `extra_two`, `extra_three`, `created_at`, `updated_at`, `span`) VALUES
(2254, 'about', 'about', 'about', NULL, 'Home', 'Group', NULL, 3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'about', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:11:46', '2023-02-15 05:01:21', NULL),
(2255, 'About Us', 'about-us', 'Hamro Aamanirvar Saving & credit Co-operative Ltd.', '.', 'Home', 'Normal', NULL, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem.', '&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem. Curabitur non nisl nec nisi scelerisque maximus. Aenean consectetur convallis porttitor. Aliquam interdum at lacus non blandit.', NULL, 2254, NULL, NULL, NULL, '/uploads/banner_image/1675587892_about.jpg', NULL, NULL, NULL, NULL, 'About Us', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:12:09', '2023-03-03 10:32:44', '(21)'),
(2265, 'gal1', 'gal1', 'picnic pic', '.', 'Main', 'Photo Gallery', NULL, 1, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326379_download (1).jfif', NULL, NULL, NULL, NULL, 'gal1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:58:42', '2022-07-21 00:57:59', NULL),
(2288, 'gallary1', 'gallary1', 'Gallary1', '.', 'Main', 'Photo Gallery', NULL, 2, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326408_download (5).jfif', NULL, NULL, NULL, NULL, 'gallary1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:41:18', '2022-07-21 00:58:28', NULL),
(2289, 'gallary2', 'gallary2', 'Gallary2', '.', 'Main', 'Photo Gallery', NULL, 3, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326422_download (6).jfif', NULL, NULL, NULL, NULL, 'gallary2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:42:28', '2022-07-21 00:58:42', NULL),
(2290, 'gallary4', 'gallary4', 'Gallary4', '.', 'Main', 'Photo Gallery', NULL, 4, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326448_images (2).jfif', NULL, NULL, NULL, NULL, 'gallary4', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:43:57', '2022-07-21 00:59:08', NULL),
(2291, 'gallary5', 'gallary5', 'Gallary5', '.', 'Main', 'Photo Gallery', NULL, 5, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326467_wallpapersden.com_north-america-usa-florida_1280x720.jpg', NULL, NULL, NULL, NULL, 'gallary5', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:44:19', '2022-07-21 00:59:27', NULL),
(2292, 'gallary6', 'gallary6', 'Gallary6', '.', 'Main', 'Photo Gallery', NULL, 6, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326491_wallpapersden.com_dubai-uae-top-view_1280x720.jpg', NULL, NULL, NULL, NULL, 'gallary6', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:45:32', '2022-07-21 00:59:51', NULL),
(2293, 'gallary7', 'gallary7', 'Gallary7', '.', 'Main', 'Photo Gallery', NULL, 7, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326514_images.jfif', NULL, NULL, NULL, NULL, 'gallary7', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:46:16', '2022-07-21 01:00:14', NULL),
(2294, 'gallary8', 'gallary8', 'Gallary7', '.', 'Main', 'Photo Gallery', NULL, 8, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326532_wallpapersden.com_australia_1280x720.jpg', NULL, NULL, NULL, NULL, 'gallary8', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:47:01', '2022-07-21 01:00:32', NULL),
(2295, 'slider', 'slider', 'slider', NULL, 'Home', 'Group', NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'slider', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:58:10', '2023-02-15 05:01:31', NULL),
(2332, 'notice1', 'notice1', 'Misson', NULL, 'Main', 'Notice', NULL, 1, 'Vision & Values', NULL, 'Our Vision is to lead in the creation and delivery of innovative workforce solutions and services that enable our clients to win in the changing world of work', NULL, 2317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notice1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 04:01:21', '2022-07-22 17:12:00', NULL),
(2340, 'People', 'people', 'People', NULL, 'Main', 'Notice', NULL, 2, 'People', NULL, 'We care about people and the role of work in their lives. We respect people as individuals, trusting them, supporting them, enabling them to achieve their aims in work and in life.\r\n\r\nWe help people develop their careers through planning, work, coaching and training.\r\n\r\nWe recognize everyone’s contribution to our success - our staff, our clients and our candidates. We encourage and reward achievement.', NULL, 2317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'People', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 15:39:15', '2022-07-22 15:39:15', NULL),
(2341, 'Knowledge', 'knowledge', 'Knowledge', NULL, 'Main', 'Notice', NULL, 3, 'Knowledge', NULL, 'We share our knowledge, our expertise and our resources, so that everyone understands what is important now and what’s happening next in the world of work - and knows how best to respond.\r\n\r\nWe actively listen and act upon this information to improve our relationships, solutions and services.', NULL, 2317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Knowledge', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 15:40:55', '2022-07-22 15:40:55', NULL),
(2342, 'Innovation', 'innovation', 'Innovation', NULL, 'Main', 'Notice', NULL, 4, 'Innovation', NULL, 'Based on our understanding of the world of work, we actively pursue the development and adoption of the best practices worldwide. We lead in the world of work. We dare to innovate, to pioneer and to evolve.\r\n\r\nWe never accept the status quo. We constantly challenge the norm to find new and better ways of doing things.\r\n\r\nWe thrive on our entrepreneurial spirit and speed of response; taking risks, knowing that we will not always succeed, but never exposing our clients to risk.', NULL, 2317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Innovation', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 15:41:41', '2022-07-22 15:41:41', NULL),
(2343, 'Certificates1', 'certificates1', 'Membership Certificates', NULL, 'Main', 'Photo Gallery', NULL, 1, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468241_16 (1).jpg', NULL, NULL, NULL, NULL, 'Certificates1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:00:13', '2022-07-22 16:22:21', NULL),
(2344, 'Certificates2', 'certificates2', 'Appreciation Letter', NULL, 'Main', 'Photo Gallery', NULL, 2, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468272_17.jpg', NULL, NULL, NULL, NULL, 'Certificates2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:02:27', '2022-07-22 16:22:52', NULL),
(2345, 'Certificates3', 'certificates3', 'Entry Card', NULL, 'Main', 'Photo Gallery', NULL, 3, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468287_18.jpg', NULL, NULL, NULL, NULL, 'Certificates3', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:03:45', '2022-07-22 16:23:07', NULL),
(2346, 'Certificates4', 'certificates4', 'Shram Tatha Rojgar Bibhag Letter', NULL, 'Main', 'Photo Gallery', NULL, 4, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468302_19.jpg', NULL, NULL, NULL, NULL, 'Certificates4', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:05:52', '2022-07-22 16:23:22', NULL),
(2347, 'Certificates5', 'certificates5', 'Company Registration Paper', NULL, 'Main', 'Photo Gallery', NULL, 5, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468325_20.jpg', NULL, NULL, NULL, NULL, 'Certificates5', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:07:19', '2022-07-22 16:23:45', NULL),
(2348, 'Certificates6', 'certificates6', 'PAN', NULL, 'Main', 'Photo Gallery', NULL, 6, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468367_21 (1).jpg', NULL, NULL, NULL, NULL, 'Certificates6', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:08:22', '2022-07-22 16:24:27', NULL),
(2349, 'Certificates7', 'certificates7', 'Baideshik Rojgar Sewa Sulka Ijazat Patra', NULL, 'Main', 'Photo Gallery', NULL, 7, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468393_22.jpg', NULL, NULL, NULL, NULL, 'Certificates7', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:11:17', '2022-07-22 16:24:53', NULL),
(2350, 'Certificates9', 'certificates9', 'Letter of Appreciation', NULL, 'Main', 'Photo Gallery', NULL, 8, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468410_fodefeen1.jpg', NULL, NULL, NULL, NULL, 'Certificates9', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:17:20', '2022-07-22 16:25:10', NULL),
(2351, 'Certificates10', 'certificates10', 'Certificate of Registration', NULL, 'Main', 'Photo Gallery', NULL, 9, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468002_iso-certificate.jpg', NULL, NULL, NULL, NULL, 'Certificates10', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:18:22', '2022-07-22 16:25:18', NULL),
(2352, 'Photo1', 'photo1', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 1, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468652_09.jpg', NULL, NULL, NULL, NULL, 'Photo1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:29:12', '2022-07-22 16:29:12', NULL),
(2353, 'Photo2', 'photo2', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 2, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468756_07.jpg', NULL, NULL, NULL, NULL, 'Photo2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:29:28', '2022-07-22 16:30:56', NULL),
(2354, 'Photo3', 'photo3', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 3, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468744_08.jpg', NULL, NULL, NULL, NULL, 'Photo3', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:30:02', '2022-07-24 15:50:31', NULL),
(2355, 'Photo4', 'photo4', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 4, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468855_05.jpg', NULL, NULL, NULL, NULL, 'Photo4', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:32:35', '2022-07-22 16:32:35', NULL),
(2356, 'Photo5', 'photo5', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 5, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468878_06.jpg', NULL, NULL, NULL, NULL, 'Photo5', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:32:58', '2022-07-22 16:32:58', NULL),
(2357, 'Photo6', 'photo6', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 6, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468910_04.jpg', NULL, NULL, NULL, NULL, 'Photo6', NULL, '0', '0', NULL, NULL, NULL, '2022-07-22 16:33:30', '2022-07-24 15:54:35', NULL),
(2358, 'Photo7', 'photo7', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 7, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468939_03.jpg', NULL, NULL, NULL, NULL, 'Photo7', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:33:59', '2022-07-24 15:52:13', NULL),
(2359, 'Photo8', 'photo8', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 8, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468966_02.jpg', NULL, NULL, NULL, NULL, 'Photo8', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:34:26', '2022-07-24 15:52:13', NULL),
(2361, 'gly', '-gly', 'gly1', NULL, 'Main', 'Photo Gallery', NULL, 9, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658480717_org.jpg', NULL, NULL, NULL, NULL, 'gly', NULL, '0', '0', NULL, NULL, NULL, '2022-07-22 19:50:17', '2022-07-22 20:05:44', NULL),
(2389, 'slider-one', 'sliderone', 'The Leading Exports in HR International Hiring', NULL, 'Home', 'Normal', NULL, 1, NULL, NULL, NULL, NULL, 2295, NULL, NULL, NULL, '/uploads/banner_image/1677839818_WhatsApp Image 2023-03-03 at 4.21.29 PM.jpeg', NULL, NULL, NULL, NULL, 'slider-one', NULL, '1', '0', NULL, NULL, NULL, '2022-09-03 13:24:29', '2023-03-03 10:36:58', NULL),
(2390, 'slider-two', 'slidertwo', 'The Leading Exports in HR International Hiring', NULL, 'Home', 'Normal', NULL, 2, NULL, NULL, NULL, NULL, 2295, NULL, NULL, NULL, '/uploads/banner_image/1677839827_WhatsApp Image 2023-03-03 at 4.21.28 PM.jpeg', NULL, NULL, NULL, NULL, 'slider-two', NULL, '1', '0', NULL, NULL, NULL, '2022-09-03 13:28:09', '2023-03-03 10:37:07', NULL),
(2391, 'slider-three', 'sliderthree', 'The Leading Exports in HR International Hiring', NULL, 'Home', 'Normal', NULL, 3, NULL, NULL, NULL, NULL, 2295, NULL, NULL, NULL, '/uploads/banner_image/1677839854_WhatsApp Image 2023-03-03 at 4.21.29 PM.jpeg', NULL, NULL, NULL, NULL, 'slider-three', NULL, '1', '0', NULL, NULL, NULL, '2022-09-03 13:29:24', '2023-03-03 10:37:34', NULL),
(2392, 'slider-four', 'sliderfour', 'The Leading Exports in HR International Hiring', NULL, 'Home', 'Normal', NULL, 4, NULL, NULL, NULL, NULL, 2295, NULL, NULL, NULL, '/uploads/banner_image/1677839865_WhatsApp Image 2023-03-03 at 4.21.28 PM.jpeg', NULL, NULL, NULL, NULL, 'slider-four', NULL, '1', '0', NULL, NULL, NULL, '2022-09-03 13:33:21', '2023-03-03 10:37:45', NULL),
(2393, 'partner', 'partner', 'partner', NULL, 'Home', 'Group', NULL, 7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'partner', NULL, '1', '0', NULL, NULL, NULL, '2022-09-03 13:53:26', '2023-02-15 05:16:49', NULL),
(2394, 'partners-one', 'partnersone', 'partner', NULL, 'Home', 'Normal', NULL, 1, NULL, NULL, NULL, NULL, 2393, NULL, NULL, NULL, '/uploads/banner_image/1675594173_algolia.svg', NULL, NULL, NULL, NULL, 'partners-one', NULL, '1', '0', NULL, NULL, NULL, '2022-09-03 13:54:19', '2023-02-05 10:49:33', NULL),
(2395, 'partners-two', 'partnerstwo', 'partner', NULL, 'Home', 'Normal', NULL, 2, NULL, NULL, NULL, NULL, 2393, NULL, NULL, NULL, '/uploads/banner_image/1675595163_yahoo.svg', NULL, NULL, NULL, NULL, 'partners-two', NULL, '1', '0', NULL, NULL, NULL, '2022-09-03 13:55:28', '2023-02-05 11:06:03', NULL),
(2396, 'partners-three', 'partnersthree', 'partner', NULL, 'Home', 'Normal', NULL, 3, NULL, NULL, NULL, NULL, 2393, NULL, NULL, NULL, '/uploads/banner_image/1675594191_todoist.svg', NULL, NULL, NULL, NULL, 'partners-three', NULL, '1', '0', NULL, NULL, NULL, '2022-09-03 14:01:17', '2023-02-05 10:49:51', NULL),
(2397, 'partners-four', 'partnersfour', 'partner', NULL, 'Home', 'Normal', NULL, 4, NULL, NULL, NULL, NULL, 2393, NULL, NULL, NULL, '/uploads/banner_image/1675595898_todoist.svg', NULL, NULL, NULL, NULL, 'partners-four', NULL, '1', '0', NULL, NULL, NULL, '2022-09-03 14:05:45', '2023-02-05 11:18:18', NULL),
(2398, 'partners-five', 'partnersfive', 'partner', NULL, 'Home', 'Normal', NULL, 5, NULL, NULL, NULL, NULL, 2393, NULL, NULL, NULL, '/uploads/banner_image/1675594213_vimeo.svg', NULL, NULL, NULL, NULL, 'partners-five', NULL, '1', '0', NULL, NULL, NULL, '2022-09-03 14:06:59', '2023-02-05 10:50:13', NULL),
(2399, 'partners-six', 'partnerssix', 'partner', NULL, 'Home', 'Normal', NULL, 6, NULL, NULL, NULL, NULL, 2393, NULL, NULL, NULL, '/uploads/banner_image/1675595664_todoist.svg', NULL, NULL, NULL, NULL, 'partners-six', NULL, '1', '0', NULL, NULL, NULL, '2022-09-03 14:07:33', '2023-02-05 11:14:24', NULL),
(2413, 'home', 'home', 'Home', NULL, 'Main', 'Group', NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'home', NULL, '1', '0', NULL, NULL, NULL, '2022-09-05 18:24:43', '2022-09-05 21:05:57', NULL),
(2414, 'aboutus', 'aboutus', 'About', NULL, 'Main', 'Group', NULL, 2, NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<ul>\r\n</ul>\r\n\r\n<ul>\r\n</ul>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aboutus', NULL, '1', '0', NULL, NULL, NULL, '2022-09-05 18:26:10', '2023-02-05 11:42:48', '(21)'),
(2415, 'job-sectors', 'jobsectors', 'Job Sectors', NULL, 'Main', 'Group', NULL, 5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'job-sectors', NULL, '0', '0', NULL, NULL, NULL, '2022-09-05 18:26:45', '2023-03-03 09:49:44', NULL),
(2443, 'photo-gallery', 'photogallery', 'Photo Gallery', NULL, 'Main', 'Group', NULL, 1, NULL, NULL, NULL, NULL, 2418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo-gallery', NULL, '1', '0', NULL, NULL, NULL, '2022-09-11 22:17:33', '2022-09-13 20:55:17', '(21)'),
(2444, 'video-gallery', 'videogallery', 'Video Gallery', NULL, 'Main', 'Video Gallery', NULL, 2, NULL, NULL, NULL, NULL, 2418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'video-gallery', NULL, '1', '0', NULL, NULL, NULL, '2022-09-11 22:18:45', '2022-12-16 19:30:30', '(21)'),
(2445, 'video-one', 'videoone', 'Video Gallery', NULL, 'Main', 'Video Gallery', NULL, 1, NULL, NULL, NULL, NULL, 2444, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'video-one', NULL, '1', '0', NULL, NULL, NULL, '2022-09-11 22:19:19', '2022-09-11 22:19:19', '(21)'),
(2446, 'photo', 'photo', 'Our Meeting', NULL, 'Main', 'Photo Gallery', NULL, 1, NULL, NULL, NULL, NULL, 2443, NULL, NULL, NULL, '/uploads/banner_image/1670945414_Economy-1.jpg', NULL, NULL, NULL, NULL, 'photo', NULL, '1', '0', NULL, NULL, NULL, '2022-09-11 22:20:26', '2022-12-13 15:30:14', '(21)'),
(2461, 'about-one', 'aboutone', 'About Us', NULL, 'Main', 'Normal', NULL, 0, '<span style=\"font-size:50px;\"><span style=\"color:#03155d;\">Hamro Aatmanirvar Saving &amp; Credit Co-Operative Ltd.</span></span>\r\n<p>&nbsp;</p>', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem. Curabitur non nisl nec nisi scelerisque maximus. Aenean consectetur convallis porttitor. Aliquam interdum at lacus non blandit.<br />\r\n&nbsp;</p>', NULL, 2414, NULL, NULL, NULL, '/uploads/banner_image/1675933366_about.jpg', NULL, NULL, NULL, NULL, 'about-one', NULL, '1', '0', NULL, NULL, NULL, '2022-09-14 22:13:18', '2023-03-03 10:27:23', NULL),
(2472, 'message', 'message', 'Testimonial', NULL, 'Home', 'Group', NULL, 5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '/uploads/banner_image/1670837002_chairperson.jpg', NULL, NULL, NULL, NULL, 'message', NULL, '1', '0', NULL, NULL, NULL, '2022-12-12 09:23:22', '2023-02-15 05:12:43', NULL),
(2473, 'message-1', 'message1', 'Message From Chairman', NULL, 'Home', 'Normal', NULL, 1, NULL, NULL, 'As the chairperson of SRS Overseas Services Pvt. Ltd. and being in this position. I realize it took so many years of hard work and dedicated leadership to steer my company into this position .It is a unique opportunity to meet the HR challenges of multi-diverse industries around this region, since the company\'s inception, we continued to be the leader and role model in providing quality manpower service to the UAE market...', NULL, 2472, NULL, NULL, NULL, '/uploads/banner_image/1675590013_testimonial-1.jpg', NULL, NULL, NULL, NULL, 'message-1', NULL, '1', '0', NULL, NULL, NULL, '2022-12-12 10:17:58', '2023-02-05 09:54:46', NULL),
(2483, 'food', 'food', 'Manufacturing', NULL, 'Main', 'Group Jobs', NULL, 1, NULL, NULL, NULL, NULL, 2415, NULL, NULL, NULL, '/uploads/banner_image/1676546291_Manufacturing.jpg', NULL, NULL, NULL, NULL, 'food', NULL, '1', '0', NULL, NULL, NULL, '2022-12-13 07:13:38', '2023-02-16 11:18:11', NULL),
(2498, 'security-guards', 'securityguards', 'Security Guards', NULL, 'Main', 'Group Jobs', NULL, 2, NULL, NULL, NULL, NULL, 2415, NULL, NULL, NULL, '/uploads/banner_image/1676546347_Security Guards.jpg', NULL, NULL, NULL, NULL, 'security-guards', NULL, '1', '0', NULL, NULL, NULL, '2022-12-17 16:51:35', '2023-02-16 11:19:07', NULL),
(2499, 'hospitability', 'hospitability', 'Hospitability', NULL, 'Main', 'Group Jobs', NULL, 3, NULL, NULL, NULL, NULL, 2415, NULL, NULL, NULL, '/uploads/banner_image/1676546384_Hospitability.jpg', NULL, NULL, NULL, NULL, 'hospitability', NULL, '1', '0', NULL, NULL, NULL, '2022-12-17 16:52:29', '2023-02-16 11:19:44', NULL),
(2500, 'mining', 'mining', 'Mining', NULL, 'Main', 'Group Jobs', NULL, 4, NULL, NULL, NULL, NULL, 2415, NULL, NULL, NULL, '/uploads/banner_image/1676546411_Mining.jpg', NULL, NULL, NULL, NULL, 'mining', NULL, '1', '0', NULL, NULL, NULL, '2022-12-17 16:55:53', '2023-02-16 11:20:11', NULL),
(2501, 'agriculture', 'agriculture', 'Agriculture', NULL, 'Main', 'Group Jobs', NULL, 5, NULL, NULL, NULL, NULL, 2415, NULL, NULL, NULL, '/uploads/banner_image/1676546445_Agricultlure.jpg', NULL, NULL, NULL, NULL, 'agriculture', NULL, '1', '0', NULL, NULL, NULL, '2022-12-17 16:57:18', '2023-02-16 11:20:45', NULL),
(2502, 'logistics', 'logistics', 'Logistics', NULL, 'Main', 'Group Jobs', NULL, 6, NULL, NULL, NULL, NULL, 2415, NULL, NULL, NULL, '/uploads/banner_image/1676546477_Logistics.jpg', NULL, NULL, NULL, NULL, 'logistics', NULL, '1', '0', NULL, NULL, NULL, '2022-12-17 16:59:12', '2023-02-16 11:21:17', NULL),
(2503, 'manufacture-company', 'manufacturecompany', 'Cunstruction', NULL, 'Main', 'Group Jobs', NULL, 7, NULL, NULL, NULL, NULL, 2415, NULL, NULL, NULL, '/uploads/banner_image/1676546508_carousel-3.jpg', NULL, NULL, NULL, NULL, 'manufacture-company', NULL, '1', '0', NULL, NULL, NULL, '2022-12-17 17:00:09', '2023-02-16 11:21:48', NULL),
(2508, 'about-nepal', 'aboutnepal', 'About Nepal', NULL, 'Main', 'Normal', NULL, 1, 'ABOUT NEPAL', NULL, '<br />\r\nNepal is situated at the foothills of the Himalayas, where the great Mountains like Mt. Everest, the highest mountain of the world lies. Our neighboring countries are China, India, Bhutan and Bangladesh. Nepal is the Land of the lord Buddha, where peace and tranquility is as natural as the ice in the Himalayas. The Nepalese people are well known for their bravery, loyalty, Peace keeping and well-disciplined and nature. Nepal is also rich in lush green vegetation, Thick rain forest flocks of tourists from all over the world. So never ever miss an opportunity to visit this beauty full Himalayan kingdom of the world fondly described as the Switzerland of Asia.<br />\r\n<br />\r\nSize: 885-km (553 mile) long, 145-241 km (91-151 mile wide, 147,181-sq. km in area.<br />\r\n<br />\r\nPosition: 26-300 north latitude, 80-880 east longitude: on the India subcontinent bounded on the north By Tibet autonomous region of the people\'s Republic of china, &amp; on the West, south and east by the republic of India.<br />\r\n<br />\r\nTerrain: Hilly and mountains, 77% Terai lowlands. 23% more than above 3000m.<br />\r\n<br />\r\nLatitude Ranga: from 70m above sea level (230ft) in the terai,- to 8848m )29,028ft) at sagarmatha (Mt. Everest), Kathmandu Valley: 853m (2,798).<br />\r\n<br />\r\nClimate: Kathmandu- Summer 15-30 c, winter 0-16 c, terai- summer 21- 39 c, winter 9-30 C, Raifall Kathmandu) - OCT- May 300 mm june sept. 1100mm. Time: 15 minutes ached of Indian standard<br />\r\n<br />\r\nTime, 5 hour 45 minutes ahead of gmt<br />\r\n<br />\r\nPopulation: 2,75,00000 Approx. Language: Nepali is the national language, Devanagari the script. Altogether 26 languages are spoken.<br />\r\n&nbsp;', NULL, 2414, NULL, NULL, NULL, '/uploads/banner_image/1675933630_about.jpg', NULL, NULL, NULL, NULL, 'about-nepal', NULL, '1', '0', NULL, NULL, NULL, '2022-12-18 17:35:32', '2023-02-09 09:07:10', NULL),
(2509, 'message-from-chairman', 'messagefromchairman', 'Message From Chairman', NULL, 'Main', 'Normal', NULL, 2, 'MESSAGE FROM CHAIRMAN', NULL, '<p>It is my pleasure to introduce Shalmani Overseas Pvt. Ltd. as one of the most reliable international recruitment and selection company, duly registered under the Ministry of Labour in Nepal.</p>\r\n\r\n<p>We have been catering to many international and multi-national companies all over the world and we do our level best to satisfy the need of our valued client and the job seekers. It gives us immense satisfaction to state that we have exceeded the expectation of our clients during this time span of 10 years. We pledge to constantly improve our services so as to respond to the ever-changing needs of our clients. Shalmani Overseas is a team of professionals and which is ready to assist you to the best of our abilities.</p>\r\n\r\n<p>We have a highly detailed and systematic data bank, which is the utmost assistance to job seekers as well as employers. We will continue to provide outstanding service in providing professionals and skilled, semi-skilled and unskilled worker to all our clients. I am thankful to all the esteemed clients for providing us with the opportunity to render our services of fulfilling their Human Resources need and we are continually providing to quality recruitment solutions to our existing as well as prospective clients. Looking forward to serve you better in days to come.<br />\r\nThanks and Best Regards</p>', NULL, 2414, NULL, NULL, NULL, '/uploads/banner_image/1675933561_chairman.jpg', NULL, NULL, NULL, NULL, 'message-from-chairman', NULL, '1', '0', NULL, NULL, NULL, '2022-12-18 17:39:12', '2023-02-09 09:06:01', NULL),
(2510, 'organizational-chart', 'organizationalchart', 'Organization Chart', NULL, 'Main', 'Chart', NULL, 3, NULL, NULL, NULL, NULL, 2414, NULL, NULL, NULL, '/uploads/banner_image/1675933752_org-chart.jpg', NULL, NULL, NULL, NULL, 'organizational-chart', NULL, '1', '0', NULL, NULL, NULL, '2022-12-18 17:40:37', '2023-02-12 10:52:29', NULL),
(2519, 'Executive Commitee', 'executive-commitee', 'What We Provide', NULL, 'Main', 'Group Services', NULL, 4, '<strong><span style=\"color:#ff9900;font-size:18px;\">Our Services</span></strong><br />\r\n<span style=\"font-size:30px;\"><span style=\"color:#03155d;\">Hamro Aatmanirvar Saving &amp; Credit Co-Operative Ltd.</span></span>\r\n<p>&nbsp;</p>', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem. Curabitur non nisl nec nisi scelerisque maximus. Aenean consectetur convallis porttitor. Aliquam interdum at lacus non blandit.</p>', NULL, 0, NULL, NULL, NULL, '/uploads/banner_image/1676189023_about.jpg', NULL, NULL, NULL, NULL, 'Executive Commitee', NULL, '1', '0', NULL, NULL, NULL, '2023-01-27 17:14:09', '2023-03-03 10:36:14', NULL),
(2528, 'Customer Name', 'customer-name', 'Profession', NULL, 'Home', '----None----', NULL, 2, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id&nbsp;gravida condimentum, viverra quis sem. Curabitur non nisl nec nisi scelerisque&nbsp;maximus.', NULL, 2472, NULL, NULL, NULL, '/uploads/banner_image/1675590138_testimonial-2.jpg', NULL, NULL, NULL, NULL, 'Customer Name', NULL, '1', '0', NULL, NULL, NULL, '2023-02-05 09:42:18', '2023-02-05 09:42:18', NULL),
(2529, 'Customer Name 1', 'customer-name-1', 'Profession', NULL, 'Home', '----None----', NULL, 3, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id&nbsp;gravida condimentum, viverra quis sem. Curabitur non nisl nec nisi scelerisque&nbsp;maximus.', NULL, 2472, NULL, NULL, NULL, '/uploads/banner_image/1675592665_user.jpg', NULL, NULL, NULL, NULL, 'Customer Name 1', NULL, '1', '0', NULL, NULL, NULL, '2023-02-05 10:10:14', '2023-02-05 10:24:25', NULL),
(2530, 'Customer Name 2', 'customer-name-2', 'Profession', NULL, 'Home', '----None----', NULL, 4, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id&nbsp;gravida condimentum, viverra quis sem. Curabitur non nisl nec nisi scelerisque&nbsp;maximus.', NULL, 2472, NULL, NULL, NULL, '/uploads/banner_image/1675592517_testimonial-4.jpg', NULL, NULL, NULL, NULL, 'Customer Name 2', NULL, '1', '0', NULL, NULL, NULL, '2023-02-05 10:21:57', '2023-02-05 10:21:57', NULL),
(2531, 'Customer Name 4', 'customer-name-4', 'Profession', NULL, 'Home', '----None----', NULL, 5, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id&nbsp;gravida condimentum, viverra quis sem. Curabitur non nisl nec nisi scelerisque&nbsp;maximus.', NULL, 2472, NULL, NULL, NULL, '/uploads/banner_image/1675592535_user.jpg', NULL, NULL, NULL, NULL, 'Customer Name 4', NULL, '1', '0', NULL, NULL, NULL, '2023-02-05 10:22:15', '2023-02-05 10:22:15', NULL),
(2532, 'recruitment-process', 'recruitmentprocess', 'Loan', NULL, 'Main', 'Process Detail', NULL, 7, '<h3><span style=\"color:#03155d;\">Developing Foolproof Loan Process</span></h3>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Accusantium, vero voluptates. Animi ex maxime totam molestias repellendus recusandae enim sit nisi veniam harum! Explicabo natus expedita, quas amet praesentium laborum maiores dolorem porro hic alias labore nemo aspernatur magni optio.</p>\r\n\r\n<ol>\r\n	<li>Identify the hiring needs (Employer Requirements)</li>\r\n	<li>Prepare job descriptions (By Employer or Agency)</li>\r\n	<li>Devise recruitment strategy</li>\r\n	<li>Screen and shortlist candidates</li>\r\n	<li>Conduct interviews</li>\r\n	<li>Evaluate and make the offer</li>\r\n</ol>', NULL, '<h3 style=\"text-align: center;\"><span style=\"color:#03155d;\">Terms and Condition</span></h3>\r\n\r\n<ol>\r\n	<li>The First Party shall issue a demand Letter to the Second Party mentioning the number of workers requirement, rate of their salary and other benefits.</li>\r\n	<li>Both parties herein shall obtain the approval of the respective government to import, recruit and supply the workers as per rules of both countries. In case of any conflict between government rules and the conditions of this contract, this deed of agreement shall be deemed as null and void.</li>\r\n	<li>The first party shall provide with Visa/ NOC work permits of the workers from the government authority, together with other necessary relevant documents. In case of not issuance of visa due to any changes in Government policies, the first party shall be responsible for the recruitment expenses.</li>\r\n	<li>The earnings of the workers per month shall be as per the attached Demand Letter shown against each category.</li>\r\n	<li>The Second Party shall make sure that all worker recommended for the first party are examined by an Employer of the G.C.C. Nepalese doctor appointed by Employer of the concerned government. The candidates must possess a validity of Visa of the concerned country.</li>\r\n	<li>The First Party agrees to bear the compensation in case of death or injury of the workers and also agrees to bear the cost of transport of dead body to Nepal as per the labours law of country concerned.</li>\r\n</ol>', NULL, 0, NULL, NULL, NULL, '/uploads/banner_image/1676194337_recu.jpg', NULL, NULL, NULL, NULL, 'recruitment-process', NULL, '1', '0', NULL, NULL, NULL, '2023-02-09 08:55:28', '2023-03-03 09:50:22', NULL),
(2533, 'gallary', 'gallary', 'Gallary', NULL, 'Main', 'Photo Gallery', NULL, 11, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gallary', NULL, '1', '0', NULL, NULL, NULL, '2023-02-09 08:56:03', '2023-02-09 08:56:03', NULL),
(2534, 'contact', 'contact', 'contact', NULL, 'Main', 'contact', NULL, 12, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'contact', NULL, '1', '0', NULL, NULL, NULL, '2023-02-09 09:00:20', '2023-02-12 10:54:35', NULL),
(2540, 'overseas-recruitment', 'overseasrecruitment', 'Overseas Recruitment', NULL, 'Main', 'Process Detail', NULL, 1, '<h3><span style=\"color:#03155d;\">Developing Foolproof Recruitment Process</span></h3>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Accusantium, vero voluptates. Animi ex maxime totam molestias repellendus recusandae enim sit nisi veniam harum! Explicabo natus expedita, quas amet praesentium laborum maiores dolorem porro hic alias labore nemo aspernatur magni optio.</p>\r\n\r\n<ol>\r\n	<li>Identify the hiring needs (Employer Requirements)</li>\r\n	<li>Prepare job descriptions (By Employer or Agency)</li>\r\n	<li>Devise recruitment strategy</li>\r\n	<li>Screen and shortlist candidates</li>\r\n	<li>Conduct interviews</li>\r\n	<li>Evaluate and make the offer</li>\r\n</ol>', NULL, '<h3 style=\"text-align: center;\"><span style=\"color:#03155d;\">Terms and Condition</span></h3>\r\n\r\n<ol>\r\n	<li>The First Party shall issue a demand Letter to the Second Party mentioning the number of workers requirement, rate of their salary and other benefits.</li>\r\n	<li>Both parties herein shall obtain the approval of the respective government to import, recruit and supply the workers as per rules of both countries. In case of any conflict between government rules and the conditions of this contract, this deed of agreement shall be deemed as null and void.</li>\r\n	<li>The first party shall provide with Visa/ NOC work permits of the workers from the government authority, together with other necessary relevant documents. In case of not issuance of visa due to any changes in Government policies, the first party shall be responsible for the recruitment expenses.</li>\r\n	<li>The earnings of the workers per month shall be as per the attached Demand Letter shown against each category.</li>\r\n	<li>The Second Party shall make sure that all worker recommended for the first party are examined by an Employer of the G.C.C. Nepalese doctor appointed by Employer of the concerned government. The candidates must possess a validity of Visa of the concerned country.</li>\r\n	<li>The First Party agrees to bear the compensation in case of death or injury of the workers and also agrees to bear the cost of transport of dead body to Nepal as per the labours law of country concerned.</li>\r\n</ol>', NULL, 2519, NULL, NULL, NULL, '/uploads/banner_image/1676190400_recu.jpg', NULL, NULL, NULL, NULL, 'overseas-recruitment', 'Requirement of documents vary from country to country. Documents requirements also depend on whether the', '1', '0', NULL, NULL, NULL, '2023-02-12 08:16:32', '2023-02-12 10:49:00', NULL),
(2541, 'documentation', 'documentation', 'Documentation', NULL, 'Main', 'Process Detail', NULL, 2, '<h3><span style=\"color:#03155d;\">Developing Foolproof Recruitment Process</span></h3>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Accusantium, vero voluptates. Animi ex maxime totam molestias repellendus recusandae enim sit nisi veniam harum! Explicabo natus expedita, quas amet praesentium laborum maiores dolorem porro hic alias labore nemo aspernatur magni optio.</p>\r\n\r\n<ol>\r\n	<li>Identify the hiring needs (Employer Requirements)</li>\r\n	<li>Prepare job descriptions (By Employer or Agency)</li>\r\n	<li>Devise recruitment strategy</li>\r\n	<li>Screen and shortlist candidates</li>\r\n	<li>Conduct interviews</li>\r\n	<li>Evaluate and make the offer</li>\r\n</ol>', NULL, '<h3 style=\"text-align: center;\"><span style=\"color:#03155d;\">Terms and Condition</span></h3>\r\n\r\n<ol>\r\n	<li>The First Party shall issue a demand Letter to the Second Party mentioning the number of workers requirement, rate of their salary and other benefits.</li>\r\n	<li>Both parties herein shall obtain the approval of the respective government to import, recruit and supply the workers as per rules of both countries. In case of any conflict between government rules and the conditions of this contract, this deed of agreement shall be deemed as null and void.</li>\r\n	<li>The first party shall provide with Visa/ NOC work permits of the workers from the government authority, together with other necessary relevant documents. In case of not issuance of visa due to any changes in Government policies, the first party shall be responsible for the recruitment expenses.</li>\r\n	<li>The earnings of the workers per month shall be as per the attached Demand Letter shown against each category.</li>\r\n	<li>The Second Party shall make sure that all worker recommended for the first party are examined by an Employer of the G.C.C. Nepalese doctor appointed by Employer of the concerned government. The candidates must possess a validity of Visa of the concerned country.</li>\r\n	<li>The First Party agrees to bear the compensation in case of death or injury of the workers and also agrees to bear the cost of transport of dead body to Nepal as per the labours law of country concerned.</li>\r\n</ol>', NULL, 2519, NULL, NULL, NULL, '/uploads/banner_image/1676190384_demand-letter.jpg', NULL, NULL, NULL, NULL, 'documentation', 'Requirement of documents vary from country to country. Documents requirements also depend on whether the', '1', '0', NULL, NULL, NULL, '2023-02-12 08:26:24', '2023-02-12 10:49:17', NULL),
(2542, 'feature', 'feature', 'Feature', NULL, 'Home', 'Group', NULL, 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'feature', NULL, '1', '0', NULL, NULL, NULL, '2023-02-15 04:47:07', '2023-02-15 04:47:07', NULL),
(2543, 'organizational-charts', 'organizationalcharts', 'Organization Chart', NULL, 'Home', 'Chart', NULL, 1, NULL, NULL, NULL, NULL, 2542, NULL, NULL, NULL, '/uploads/banner_image/1676440577_org-chart.jpg', NULL, NULL, NULL, NULL, 'organizational-charts', NULL, '1', '0', NULL, NULL, NULL, '2023-02-15 04:53:46', '2023-02-15 05:56:17', NULL),
(2544, 'legal-documents', 'legaldocuments', 'Legal Documents', NULL, 'Home', 'Photo Gallery', NULL, 2, NULL, NULL, NULL, NULL, 2542, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'legal-documents', NULL, '1', '0', NULL, NULL, NULL, '2023-02-15 04:56:19', '2023-02-15 04:56:57', NULL),
(2545, 'demand-letter', 'demandletter', 'Demand Letter', NULL, 'Home', 'Chart', NULL, 3, NULL, NULL, NULL, NULL, 2542, NULL, NULL, NULL, '/uploads/banner_image/1676437209_legaldocu2.jpg', NULL, NULL, NULL, NULL, 'demand-letter', NULL, '1', '0', NULL, NULL, NULL, '2023-02-15 05:00:09', '2023-02-15 05:00:09', NULL),
(2546, 'mission', 'mission', 'Mission Vision Value', NULL, 'Home', 'Group', NULL, 4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mission', NULL, '1', '0', NULL, NULL, NULL, '2023-02-15 05:07:09', '2023-02-15 05:07:09', NULL),
(2547, 'missions', 'missions', 'Mission', NULL, 'Home', 'Normal', NULL, 1, '<span style=\"font-size:50px;\"><span style=\"color:#03155d;\">Missions of Shalmani Overseas</span></span>\r\n<p>&nbsp;</p>', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem. Curabitur non nisl nec nisi scelerisque maximus. Aenean consectetur convallis porttitor. Aliquam interdum at lacus non blandit.</p>', NULL, 2546, NULL, NULL, NULL, '/uploads/banner_image/1676437767_service-5.jpg', NULL, NULL, NULL, NULL, 'missions', NULL, '1', '0', NULL, NULL, NULL, '2023-02-15 05:09:27', '2023-02-16 08:09:18', NULL),
(2548, 'vision', 'vision', 'vision', NULL, 'Home', 'Normal', NULL, 2, '<span style=\"font-size:50px;\"><span style=\"color:#03155d;\">Vision of Shalmani Overseas</span></span>\r\n<p>&nbsp;</p>', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem. Curabitur non nisl nec nisi scelerisque maximus. Aenean consectetur convallis porttitor. Aliquam interdum at lacus non blandit.</p>', NULL, 2546, NULL, NULL, NULL, '/uploads/banner_image/1676437858_blog-1.jpg', NULL, NULL, NULL, NULL, 'vision', NULL, '1', '0', NULL, NULL, NULL, '2023-02-15 05:10:58', '2023-02-15 06:24:26', NULL),
(2549, 'value', 'value', 'Value', NULL, 'Home', 'Normal', NULL, 3, '<span style=\"font-size:50px;\"><span style=\"color:#03155d;\">Value of Shalmani Overseas</span></span>\r\n<p>&nbsp;</p>', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor, auctor id gravida condimentum, viverra quis sem. Curabitur non nisl nec nisi scelerisque maximus. Aenean consectetur convallis porttitor. Aliquam interdum at lacus non blandit.</p>', NULL, 2546, NULL, NULL, NULL, '/uploads/banner_image/1676437929_blog-2.jpg', NULL, NULL, NULL, NULL, 'value', NULL, '1', '0', NULL, NULL, NULL, '2023-02-15 05:12:09', '2023-02-15 06:24:34', NULL),
(2550, 'happy-clients', 'happyclients', 'Happy Clients', NULL, 'Home', 'Group', NULL, 6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'happy-clients', NULL, '1', '0', NULL, NULL, NULL, '2023-02-15 05:13:15', '2023-02-15 05:13:25', NULL),
(2551, 'expert-workers', 'expertworkers', 'Expert Workers', NULL, 'Home', 'Normal', NULL, 1, '109', NULL, NULL, NULL, 2550, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'expert-workers', NULL, '1', '0', NULL, NULL, NULL, '2023-02-15 05:13:55', '2023-02-15 05:15:00', NULL),
(2552, 'happy-client', 'happyclient', 'Happy Clients', NULL, 'Home', 'Normal', NULL, 2, '485', NULL, NULL, NULL, 2550, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'happy-client', NULL, '1', '0', NULL, NULL, NULL, '2023-02-15 05:14:53', '2023-02-15 05:15:08', NULL),
(2553, 'completed-projects', 'completedprojects', 'Completed Projects', NULL, 'Home', 'Normal', NULL, 3, '789', NULL, NULL, NULL, 2550, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed-projects', NULL, '1', '0', NULL, NULL, NULL, '2023-02-15 05:15:44', '2023-02-15 05:15:44', NULL),
(2554, 'running-projects', 'runningprojects', 'Running Projects', NULL, 'Home', 'Normal', NULL, 4, '890', NULL, NULL, NULL, 2550, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'running-projects', NULL, '1', '0', NULL, NULL, NULL, '2023-02-15 05:16:18', '2023-02-15 05:16:18', NULL),
(2557, 'deposite', 'deposite', 'Deposits', NULL, 'Main', 'Process Detail', NULL, 6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deposite', NULL, '1', '0', NULL, NULL, NULL, '2023-03-03 09:50:07', '2023-03-03 09:50:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `navigation_items`
--

CREATE TABLE `navigation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sort` int(11) NOT NULL,
  `navigation_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_nepali` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `content_nepali` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `extra_one` varchar(255) DEFAULT NULL,
  `extra_two` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigation_items`
--

INSERT INTO `navigation_items` (`id`, `sort`, `navigation_id`, `name`, `name_nepali`, `file`, `content`, `content_nepali`, `link`, `extra_one`, `extra_two`, `created_at`, `updated_at`) VALUES
(19, 1, 2322, NULL, NULL, '1658466642_thumb_fodefeen1.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:55:42', '2022-07-22 15:58:47'),
(20, 1, 2322, NULL, NULL, '1658466658_thumb_22.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:55:58', '2022-07-22 15:58:47'),
(21, 1, 2322, NULL, NULL, '1658466669_thumb_20.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:09', '2022-07-22 15:58:47'),
(22, 1, 2322, NULL, NULL, '1658466678_thumb_19.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:18', '2022-07-22 15:58:47'),
(23, 1, 2322, NULL, NULL, '1658466688_thumb_17.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:28', '2022-07-22 15:58:47'),
(24, 1, 2322, NULL, NULL, '1658466697_thumb_16.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:37', '2022-07-22 15:58:47'),
(25, 1, 2445, NULL, NULL, NULL, NULL, NULL, 'https://youtu.be/syKIp6HXf2Y', NULL, NULL, '2022-09-11 22:19:26', '2022-09-11 22:19:26'),
(26, 1, 2445, NULL, NULL, NULL, NULL, NULL, 'https://youtu.be/syKIp6HXf2Y', NULL, NULL, '2022-09-11 22:19:26', '2022-09-11 22:19:26'),
(45, 1, 2457, NULL, NULL, '1663921747_gallery-pic.png', NULL, NULL, NULL, NULL, NULL, '2022-09-13 21:00:14', '2022-09-23 19:14:07'),
(59, 1, 2464, NULL, NULL, '1663998841_2-1.png', NULL, NULL, NULL, NULL, NULL, '2022-09-14 22:23:28', '2022-09-24 16:39:01'),
(60, 2, 2464, NULL, NULL, '1663998858_Ijajat-Patra1-copy-Copy.jpg', NULL, NULL, NULL, NULL, NULL, '2022-09-14 22:23:28', '2022-09-24 16:39:18'),
(61, 3, 2464, NULL, NULL, '1663998876_renewed-License.jpeg', NULL, NULL, NULL, NULL, NULL, '2022-09-14 22:23:28', '2022-09-24 16:39:36'),
(62, 1, 2465, NULL, NULL, '1663999042_organization-chart-employment-link.png', NULL, NULL, NULL, NULL, NULL, '2022-09-14 22:25:18', '2022-10-28 17:22:33'),
(63, 1, 2457, NULL, NULL, '1663921783_gallery-pic-1.png', NULL, NULL, NULL, NULL, NULL, '2022-09-23 19:14:43', '2022-09-23 19:14:43'),
(64, 2, 2457, NULL, NULL, '1663921783_gallery-pic-3.png', NULL, NULL, NULL, NULL, NULL, '2022-09-23 19:14:43', '2022-09-23 19:14:43'),
(65, 3, 2457, NULL, NULL, '1663921783_gallery-pic-4.png', NULL, NULL, NULL, NULL, NULL, '2022-09-23 19:14:43', '2022-09-23 19:14:43'),
(66, 1, 2446, NULL, NULL, '1670945328_Economy-1.jpg', NULL, NULL, NULL, NULL, NULL, '2022-09-23 19:15:46', '2022-12-13 15:30:15'),
(74, 1, 2462, NULL, NULL, '1670944478_legal-document-1.jpg', NULL, NULL, NULL, NULL, NULL, '2022-09-24 16:34:32', '2022-12-16 20:07:30'),
(75, 2, 2462, NULL, NULL, '1670944487_legal-document-3.jpg', NULL, NULL, NULL, NULL, NULL, '2022-09-24 16:34:32', '2022-12-16 20:07:30'),
(76, 3, 2462, NULL, NULL, '1670944510_legal-document-2.jpg', NULL, NULL, NULL, NULL, NULL, '2022-09-24 16:34:32', '2022-12-16 20:07:30'),
(78, 1, 2463, NULL, NULL, '1663998773_AL-Sary-National-Indoor-Cleaner.png', NULL, NULL, NULL, NULL, NULL, '2022-09-24 16:37:53', '2022-09-24 16:37:53'),
(79, 2, 2463, NULL, NULL, '1663998773_Al-Waha-Farm-Kuwait.png', NULL, NULL, NULL, NULL, NULL, '2022-09-24 16:37:53', '2022-09-24 16:37:53'),
(80, 3, 2463, NULL, NULL, '1663998773_BYSM-Electromechinical-Demand-Qatar.png', NULL, NULL, NULL, NULL, NULL, '2022-09-24 16:37:53', '2022-09-24 16:37:53'),
(81, 4, 2463, NULL, NULL, '1663998773_Kuwait-Waste-Collection-Cleaner.png', NULL, NULL, NULL, NULL, NULL, '2022-09-24 16:37:53', '2022-09-24 16:37:53'),
(82, 5, 2463, NULL, NULL, '1663998773_kuwat-costacoffee.png', NULL, NULL, NULL, NULL, NULL, '2022-09-24 16:37:53', '2022-09-24 16:37:53'),
(83, 6, 2463, NULL, NULL, '1663998773_SP-SP-International-Electro-Mechanical-Works-Demand.png', NULL, NULL, NULL, NULL, NULL, '2022-09-24 16:37:53', '2022-09-24 16:37:53'),
(85, 2, 2446, NULL, NULL, '1670945349_legal-document-3.jpg', NULL, NULL, NULL, NULL, NULL, '2022-12-13 15:29:09', '2022-12-13 15:30:15'),
(86, 3, 2446, NULL, NULL, '1670945349_legal-document-2.jpg', NULL, NULL, NULL, NULL, NULL, '2022-12-13 15:29:09', '2022-12-13 15:30:15'),
(87, 1, 2517, NULL, NULL, '1671354038_legal-document-2.jpg', NULL, NULL, NULL, NULL, NULL, '2022-12-18 20:45:38', '2022-12-18 20:45:38'),
(88, 2, 2517, NULL, NULL, '1671354038_legal-document-1.jpg', NULL, NULL, NULL, NULL, NULL, '2022-12-18 20:45:38', '2022-12-18 20:45:38'),
(89, 3, 2517, NULL, NULL, '1671354038_legal-document-3.jpg', NULL, NULL, NULL, NULL, NULL, '2022-12-18 20:45:38', '2022-12-18 20:45:38'),
(90, 1, 2517, NULL, NULL, '1671432110_license up to 2080.jpeg', NULL, NULL, NULL, NULL, NULL, '2022-12-19 18:26:50', '2022-12-19 18:26:50'),
(91, 1, 2526, NULL, NULL, '1674798581_1671354038_legal-document-2.jpg', NULL, NULL, NULL, NULL, NULL, '2023-01-27 17:34:41', '2023-01-27 17:34:41'),
(92, 2, 2526, NULL, NULL, '1674798581_1671432110_license up to 2080.jpeg', NULL, NULL, NULL, NULL, NULL, '2023-01-27 17:34:41', '2023-01-27 17:34:41'),
(93, 3, 2526, NULL, NULL, '1674798581_1671354038_legal-document-1q.jpg', NULL, NULL, NULL, NULL, NULL, '2023-01-27 17:34:41', '2023-01-27 17:34:41'),
(94, 4, 2526, NULL, NULL, '1674798581_1671354038_legal-document-3.jpg', NULL, NULL, NULL, NULL, NULL, '2023-01-27 17:34:41', '2023-01-27 17:34:41'),
(96, 1, 2533, '1', NULL, '1676184288_gallery-1.jpg', 'Okay', NULL, NULL, NULL, NULL, '2023-02-12 06:44:48', '2023-02-12 06:44:48'),
(97, 2, 2533, '2', NULL, '1676184288_gallery-2 (1).jpg', 'no', NULL, NULL, NULL, NULL, '2023-02-12 06:44:48', '2023-02-12 06:52:44'),
(98, 3, 2533, '3', NULL, '1676184288_gallery-3 (1).jpg', NULL, NULL, NULL, NULL, NULL, '2023-02-12 06:44:48', '2023-02-12 06:44:48'),
(99, 4, 2533, '4', NULL, '1676184288_gallery-4.jpg', NULL, NULL, NULL, NULL, NULL, '2023-02-12 06:44:48', '2023-02-12 06:44:48'),
(100, 5, 2533, '5', NULL, '1676184288_gallery-5 (1).jpg', NULL, NULL, NULL, NULL, NULL, '2023-02-12 06:44:48', '2023-02-12 06:44:48'),
(101, 6, 2533, '6', NULL, '1676184288_gallery-6.jpg', NULL, NULL, NULL, NULL, NULL, '2023-02-12 06:44:48', '2023-02-12 06:44:48'),
(102, 7, 2533, '7', NULL, '1676184288_gallery-7.jpg', NULL, NULL, NULL, NULL, NULL, '2023-02-12 06:44:48', '2023-02-12 06:44:48'),
(103, 8, 2533, '8', NULL, '1676184288_gallery-8.jpg', NULL, NULL, NULL, NULL, NULL, '2023-02-12 06:44:48', '2023-02-12 06:44:48'),
(104, 1, 2544, '1', NULL, '1676437144_legaldocu1.jpg', 'Contract', NULL, NULL, NULL, NULL, '2023-02-15 04:59:04', '2023-02-15 04:59:04'),
(105, 2, 2544, '2', NULL, '1676437144_legaldocu2.jpg', 'demand', NULL, NULL, NULL, NULL, '2023-02-15 04:59:04', '2023-02-15 04:59:04'),
(106, 3, 2544, '3', NULL, '1676437144_legaldocu3.jpg', 'Power of Attorney', NULL, NULL, NULL, NULL, '2023-02-15 04:59:04', '2023-02-15 04:59:04'),
(107, 4, 2544, '4', NULL, '1676437144_legaldocu4.jpg', 'guarantee', NULL, NULL, NULL, NULL, '2023-02-15 04:59:04', '2023-02-15 04:59:04'),
(108, 5, 2544, '5', NULL, '1676437144_legaldocu5.jpg', 'contract', NULL, NULL, NULL, NULL, '2023-02-15 04:59:04', '2023-02-15 04:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `navigation_video_items`
--

CREATE TABLE `navigation_video_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sort` int(11) NOT NULL,
  `nav_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_nepali` varchar(255) DEFAULT NULL,
  `vlink` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `content_nepali` varchar(255) DEFAULT NULL,
  `extra_one` varchar(255) DEFAULT NULL,
  `extra_two` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_types`
--

CREATE TABLE `page_types` (
  `sort` int(10) UNSIGNED NOT NULL,
  `page_type_title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_types`
--

INSERT INTO `page_types` (`sort`, `page_type_title`, `created_at`, `updated_at`) VALUES
(1, 'Job', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(2, 'Group', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(3, 'Photo Gallery', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(11, 'Normal', NULL, NULL),
(12, 'Group Jobcategory', NULL, NULL),
(13, 'Group Jobs', NULL, NULL),
(14, 'Video Gallery\r\n', NULL, NULL),
(15, 'Chart', NULL, NULL),
(16, 'Group Services', NULL, NULL),
(17, 'Process Detail', NULL, NULL),
(18, 'contact', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_items`
--
ALTER TABLE `navigation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_video_items`
--
ALTER TABLE `navigation_video_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_types`
--
ALTER TABLE `page_types`
  ADD PRIMARY KEY (`sort`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2558;

--
-- AUTO_INCREMENT for table `navigation_items`
--
ALTER TABLE `navigation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `navigation_video_items`
--
ALTER TABLE `navigation_video_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_types`
--
ALTER TABLE `page_types`
  MODIFY `sort` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
