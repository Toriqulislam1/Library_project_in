-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2023 at 09:30 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_p`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `admin_photos` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin_photos`, `status`, `created_at`, `updated_at`) VALUES
(1, 'car decoration', 'admin@gmail.com', '2022-06-07 01:00:33', '$2y$10$JDrlzQW9LcPkV.tbW9QBmeBdY1RtPAkmFcqhUWU/loQgymCOrz45O', '202310181916demologo.jpg', 0, '2022-06-07 01:00:34', '2023-10-18 13:16:52'),
(2, 'Admin', 'ward.cecil@example.net', '2022-06-07 01:00:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 0, '2022-06-07 01:00:34', '2022-06-07 01:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_photo` varchar(255) NOT NULL,
  `blog_description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_title`, `blog_photo`, `blog_description`, `status`, `created_at`, `updated_at`, `views`) VALUES
(9, 'The point of using Lorem Ipsum is that it', 'upload/blog/1756535990078992.jpg', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>', 0, '2023-01-31 19:07:40', '2023-04-26 10:22:20', 40),
(13, 'An art studio is sometimes', 'upload/blog/1756536162917231.jpg', '<p>The studio of any artist, especially from the 15th to the 19th centuries, characterized all the assistants</p>', 1, '2023-01-31 19:10:24', '2023-04-16 07:39:37', 61),
(16, 'one', 'upload/blog/1756539187064627.jpg', '<p>one</p>', 1, '2023-01-31 19:58:29', '2023-04-20 19:51:58', 13),
(17, 'two', 'upload/blog/1756539278284492.jpg', '<p>two</p>', 1, '2023-01-31 19:59:55', '2023-04-19 11:50:45', 10);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`, `created_at`, `updated_at`) VALUES
(21, 'Hatchback', 'hatchback', NULL, '2023-10-20 03:36:27'),
(22, 'Sedan', 'sedan', NULL, '2023-10-20 03:35:54'),
(24, 'Coupe', 'coupe', NULL, '2023-10-20 03:36:51');

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `childcategory_name` varchar(255) NOT NULL,
  `childcategory_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `category_id`, `subcategory_id`, `childcategory_name`, `childcategory_slug`, `created_at`, `updated_at`) VALUES
(1, 22, 60, 'child cat 1', 'child-cat-1', NULL, NULL),
(2, 21, 61, 'child cat 3', 'child-cat-3', NULL, NULL),
(3, 24, 62, 'child cat 3', 'child-cat-3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_title` varchar(255) NOT NULL,
  `orginal_title` varchar(255) NOT NULL,
  `client_logo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `client_title`, `orginal_title`, `client_logo`, `created_at`, `updated_at`) VALUES
(42, 'https://intertradebd.com/frontend/category/12', 'STEEL MILL\'S WASTE', 'upload/client/1762942454178331.jpg', '2023-04-12 04:15:40', NULL),
(43, 'https://intertradebd.com/frontend/category/23', 'STEEL SCRAP', 'upload/client/1762942551342776.jpg', '2023-04-12 04:17:12', NULL),
(44, 'https://intertradebd.com/frontend/category/22', 'ABID AGRO', 'upload/client/1762942633782235.jpg', '2023-04-12 04:18:31', NULL),
(45, 'https://intertradebd.com/frontend/category/25', 'KAZI FASHION HOUSE', 'upload/client/1762942685699393.jpg', '2023-04-12 04:19:20', NULL),
(46, 'https://intertradebd.com/frontend/category/24', 'KAZI AUTO', 'upload/client/1762942739741607.jpg', '2023-04-12 04:20:12', NULL),
(47, 'https://intertradebd.com/frontend/category/21', 'INFINITE SHIPPING & LOGISTICS', 'upload/client/1762942772258651.png', '2023-04-12 04:20:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `full_name`, `email_address`, `mobile`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '356436', 'domain verify', 'rffj', NULL, NULL),
(2, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '46457', 'domain verify', 'dfcjfgj', NULL, NULL),
(3, 'Shahin Reza', 'mdshahinreza2041@gmail.com', '01834186970', 'Software', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL),
(4, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '458', 'er', 'ey', NULL, NULL),
(5, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '466', 'domain verify', 'ey', NULL, NULL),
(6, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '466', 'domain verify', 'ey', NULL, NULL),
(7, 'Shahin Reza', 'mdshahinreza2041@gmail.com', '46457', 'gy', 'fhtfgj', NULL, NULL),
(8, 'Shahin Reza', 'mdshahinreza2041@gmail.com', '46457', 'gy', 'fhtfgj', NULL, NULL),
(9, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '01778882006', 'a', 'sf', NULL, NULL),
(10, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '01778882006', 'a', 'sf', NULL, NULL),
(11, 'Shahin Reza', 'mdshahinreza2041@gmail.com', '46457', 'domain verify', 'fgt', NULL, NULL),
(12, 'Shahin Reza', 'mdshahinreza2041@gmail.com', '46457', 'domain verify', 'fgt', NULL, NULL),
(13, 'Abir Ahmed', 'shahinsumon2021@gmail.com', '4587569690090', 'domain verify', 'zdgdxg', NULL, NULL),
(14, 'Shahin Reza', 'mdshahinreza2041@gmail.com', '47458897', 'domain verify', 'xdfjg', NULL, NULL),
(15, 'Shahin Reza', 'mdshahinreza2041@gmail.com', '2366', 'Software', 'dfhfj', NULL, NULL),
(16, 'test', 'test1@gmail.com', '4586969', 'domain verify', 'dfhdfj', NULL, NULL),
(17, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '366', '37y45', 'dsgdd', NULL, NULL),
(18, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '366', '37y45', 'dsgdd', NULL, NULL),
(19, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '4758', 'dshfd', 'dfhfdj', NULL, NULL),
(20, 'Shahin Reza', 'mdshahinreza2041@gmail.com', '4367', 'dhh', 'sdxjfj', NULL, NULL),
(21, 'Shahin Reza', 'mdshahinreza2041@gmail.com', '4367', 'dhh', 'sdxjfj', NULL, NULL),
(22, 'Shahin Reza', 'mdshahinreza2041@gmail.com', '548569', 'ertr', 'dfjfgj', NULL, NULL),
(23, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '2353', 'saf', 'df', NULL, NULL),
(24, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '2353', 'saf', 'df', NULL, NULL),
(25, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '3543', 'domain verify', 'rgdf', NULL, NULL),
(26, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '3543', 'domain verify', 'rgdf', NULL, NULL),
(27, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '35346', 'sdgds', 'dsdfh', NULL, NULL),
(28, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '35346', 'sdgds', 'dsdfh', NULL, NULL),
(29, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '35346', 'sdgds', 'dsdfh', NULL, NULL),
(30, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '35346', 'sdgds', 'dsdfh', NULL, NULL),
(31, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '35346', 'sdgds', 'dsdfh', NULL, NULL),
(32, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '35346', 'sdgds', 'dsdfh', NULL, NULL),
(33, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '35346', 'sdgds', 'dsdfh', NULL, NULL),
(34, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '35346', 'sdgds', 'dsdfh', NULL, NULL),
(35, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '35346', 'sdgds', 'dsdfh', NULL, NULL),
(36, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '35346', 'sdgds', 'dsdfh', NULL, NULL),
(37, 'test2', 'matinagrofarm@gmail.com', '346457', 'gy', 'dfhfj', NULL, NULL),
(38, 'test2', 'matinagrofarm@gmail.com', '346457', 'gy', 'dfhfj', NULL, NULL),
(39, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '+8801834186970', 'Software', 'front', NULL, NULL),
(40, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '755', 'domain verify', 'ghj', NULL, NULL),
(41, 'Abir Ahmed', 'mdshahinreza2041@gmail.com', '+8801834186970', 'er', 'gfhvnvg  jiil', NULL, NULL),
(42, 'Mahbub', 'mahbub@gmail.com', '08789672', 'digital', 'need', NULL, NULL),
(43, 'Crytosic', 'daquanburt@yahoo.com', '89038419167', 'Wow! This is a fastest way for a financial independence.', 'Start making thousands of dollars every week just using this robot. Telegram - @Cryptaxbot', NULL, NULL),
(44, 'Crytosic', 'mariela_bedolla@yahoo.com', '89032337630', 'Making money is very easy if you use the financial Robot.', 'Financial robot keeps bringing you money while you sleep. Telegram - @Cryptaxbot', NULL, NULL),
(45, 'Crytosic', 'mylen25@msn.com', '89035632190', 'Find out about the fastest way for a financial independence.', 'Most successful people already use Robot. Do you? Telegram - @Cryptaxbot', NULL, NULL),
(46, 'Crytosic', 'kellymassman@hotmail.com', '89035227741', 'Launch the financial Robot and do your business.', 'One dollar is nothing, but it can grow into $100 here. Telegram - @Cryptaxbot', NULL, NULL),
(47, 'Crytosic', 'wolfgang.w@me.com', '89038981235', 'Find out about the fastest way for a financial independence.', 'The financial Robot is the most effective financial tool in the net! Telegram - @Cryptaxbot', NULL, NULL),
(48, 'Crytosic', 'jwgtwi@yahoo.com', '89037706320', 'Check out the automatic Bot, which works for you 24/7.', 'Financial robot keeps bringing you money while you sleep. Telegram - @Cryptaxbot', NULL, NULL),
(49, 'Md. Farhan Rabby', 'farhanrabby343@gmail.com', '01721413658', 'ECommerce Website', 'Demand-\r\n1. Domain & Hosting (Super Fast)\r\n2. Website (Multivendor) Look Like Arrogga or Foodpanda\r\n3. Mobile App & IOS\r\n4. SEO & Google Ads\r\n5. Marketing Strategy \r\n6. Content Writing\r\n7. Promotional Video\r\n8. FB Page/ Boost/ Promotion\r\n\r\nPlease Share this quotation\r\nAdvance Thank You\r\nContact: 01721413658 (Whatsapp)', NULL, NULL),
(50, 'toriqul', 'toriqulislam@gmail.com', '4641684', 'adf', 'asdfs', NULL, NULL),
(51, 'Kazi Kamrul Islam', 'kazikamrulislam@gmail.com', '+8801535880909', 'test', 'test', NULL, NULL),
(52, 'Kazi Kamrul Islam', 'kazikamrulislam@gmail.com', '+8801535880909', 'test', 'test', NULL, NULL),
(53, 'Kazi Kamrul Islam', 'kazikamrulislam@gmail.com', '+8801535880909', 'test', 'test', NULL, NULL),
(54, 'Brynn Dunlap', 'qorugime@mailinator.com', 'Non qui atque occaec', 'Quasi anim voluptas', 'Incididunt modi exce', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contactuses`
--

CREATE TABLE `contactuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `gallery`, `status`, `created_at`, `updated_at`) VALUES
(16, 'upload/portfolio/1756269501956492.jpg', 1, '2022-09-14 04:20:46', '2023-01-28 20:31:57'),
(19, 'upload/portfolio/1756269471981807.jpg', 1, '2022-09-14 04:22:23', '2023-01-28 20:31:28'),
(20, 'upload/portfolio/1756269437907467.jpg', 1, '2022-09-14 04:22:39', '2023-01-28 20:30:56'),
(28, 'upload/portfolio/1756441392948980.jpg', 1, '2022-10-06 05:40:04', '2023-01-30 18:04:05'),
(29, 'upload/portfolio/1756441420572193.jpg', 1, '2022-10-06 05:40:11', '2023-01-30 18:04:31'),
(30, 'upload/portfolio/1756441444393293.jpg', 1, '2022-10-06 05:40:22', '2023-01-30 18:04:54'),
(31, 'upload/portfolio/1756441469865806.jpg', 1, '2022-10-06 05:40:33', '2023-01-30 18:05:18'),
(32, 'upload/portfolio/1756441509937280.jpg', 1, '2022-10-06 05:40:41', '2023-01-30 18:05:56'),
(33, 'upload/portfolio/1756441542573556.jpg', 1, '2022-10-06 05:40:48', '2023-01-30 18:06:28'),
(34, 'upload/portfolio/1756441576125497.jpg', 1, '2022-10-06 05:40:55', '2023-01-30 18:07:00'),
(35, 'upload/portfolio/1756269143828055.jpg', 1, '2022-10-06 05:41:04', '2023-01-28 20:26:15'),
(36, 'upload/portfolio/1756441647528367.jpg', 1, '2022-10-06 05:44:50', '2023-01-30 18:08:08'),
(37, 'upload/portfolio/1756441731514582.jpg', 1, '2022-10-06 05:45:09', '2023-01-30 18:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ind_title` varchar(255) NOT NULL,
  `ind_photo` varchar(255) NOT NULL,
  `ind_description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id`, `ind_title`, `ind_photo`, `ind_description`, `created_at`, `updated_at`) VALUES
(2, 'Travels', 'upload/industries/1747196012221211.png', 'This is travels .', '2022-10-20 02:52:42', '2022-10-20 02:52:42'),
(3, 'Technologies', 'upload/industries/1747195463874482.png', 'This is technologies', '2022-10-20 02:43:59', NULL);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_05_193812_create_admins_table', 2),
(6, '2022_08_08_050401_create_categories_table', 3),
(7, '2022_08_09_064341_create_sub_categories_table', 4),
(8, '2022_08_09_092147_create_subcategories_table', 5),
(9, '2022_08_10_052744_create_contents_table', 6),
(10, '2022_09_06_061522_create_services_table', 7),
(11, '2022_09_13_130326_create_galleries_table', 8),
(12, '2022_09_14_075608_create_portfolios_table', 9),
(13, '2022_09_14_081818_create_clients_table', 10),
(14, '2022_09_19_162005_create_childcategories_table', 11),
(15, '2022_10_02_073816_create_contacts_table', 12),
(16, '2022_10_04_052157_create_contactuses_table', 13),
(17, '2022_10_04_065644_create_policies_table', 13),
(18, '2022_10_05_171040_create_blogs_table', 13),
(19, '2022_10_06_040643_create_privacies_table', 14),
(20, '2022_10_06_050440_create_terms_table', 15),
(21, '2022_10_20_071552_create_industries_table', 16),
(22, '2022_10_20_072714_create_industries_table', 17),
(23, '2022_10_20_073626_create_industries_table', 18),
(24, '2022_10_23_054943_add_votes_to_services', 19),
(25, '2022_10_23_062145_add_votes_to_blogs', 20),
(26, '2023_01_26_012447_create_settings_table', 21),
(27, '2023_01_31_114201_create_slides_table', 22),
(28, '2023_04_08_192915_create_cache_table', 23),
(29, '2023_10_22_143850_create_orders_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'panding',
  `order_num` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `location`, `product_id`, `user_id`, `status`, `order_num`, `created_at`, `updated_at`) VALUES
(1, 'Yvonne Conway', 'kali@mailinator.com', 1, 'Ex esse sit et incid', 2, 58, 'panding', '#58199', NULL, NULL),
(2, 'Leilani Harmon', 'qywulibyn@mailinator.com', 1, 'Voluptatem consequat', 2, 58, 'panding', '#582588', NULL, NULL),
(3, 'Leilani Harmon', 'qywulibyn@mailinator.com', 1, 'Voluptatem consequat', 2, 58, 'panding', '#587259', NULL, NULL),
(4, 'Leilani Harmon', 'qywulibyn@mailinator.com', 1, 'Voluptatem consequat', 2, 58, 'panding', '#582623', NULL, NULL),
(5, 'Vance Bennett', 'gimixek@mailinator.com', 1, 'Vel enim aut ipsam c', 3, 58, 'panding', '#58658', NULL, NULL),
(6, 'Toriqul islam', 'toriqulislam2720@gmail.com', 1727204284, 'Dhaka', 2, 58, 'panding', '#587557', NULL, NULL),
(7, 'Dorothy Mcintyre', 'toriqulislam2720@gmail.com', 2147483647, 'asdf', 1, 58, 'panding', '#582161', NULL, NULL),
(8, 'tazkul islam', 'tazkulislam164478@gmail.com', 1, 'islampur', 3, 58, 'panding', '#588900', NULL, NULL),
(9, 'Honorato Fleming', 'tazkulislam164478@gmail.com', 1, 'Dolor dolor quas nul', 3, 58, 'panding', '#587134', NULL, NULL),
(10, 'Honorato Fleming', 'tazkulislam164478@gmail.com', 1, 'Dolor dolor quas nul', 3, 58, 'panding', '#585867', NULL, NULL),
(11, 'Medge Flores', 'toriqulislam2720@gmail.com', 1, 'Cumque eos earum mol', 1, 58, 'panding', '#583602', NULL, NULL),
(12, 'Medge Flores', 'toriqulislam2720@gmail.com', 1, 'Cumque eos earum mol', 1, 58, 'panding', '#58548', NULL, NULL),
(13, 'asdf', 'toriqulislam2720@gmail.com', 0, 'Nostrud molestiae es', 2, 58, 'panding', '#583840', NULL, NULL),
(14, 'Toriqul islam', 'toriqulislam2720@gmail.com', 2147483647, 'dhaka', 2, 58, 'panding', '#587474', NULL, NULL),
(15, 'Lance Hester', 'cazote@mailinator.com', 1, 'Ad voluptas maiores', 1, 59, 'panding', '#592061', NULL, NULL),
(16, 'Hamish Robinson', 'zesotel@mailinator.com', 1, 'Quibusdam non alias', 1, 59, 'panding', '#593715', NULL, NULL),
(17, 'Reese Hurst', 'cehotux@mailinator.com', 1, 'Anim eius fuga Qui', 1, 59, 'panding', '#596842', NULL, NULL),
(18, 'Noble Underwood', 'toriqulislam2720@gmail.com', 1, 'Aut id est sed dese', 1, 59, 'panding', '#591663', NULL, NULL),
(19, 'Noble Underwood', 'toriqulislam2720@gmail.com', 1, 'Aut id est sed dese', 1, 59, 'panding', '#599348', NULL, NULL),
(20, 'Noble Underwood', 'toriqulislam2720@gmail.com', 1, 'Aut id est sed dese', 1, 59, 'panding', '#598887', NULL, NULL),
(21, 'Noble Underwood', 'toriqulislam2720@gmail.com', 1, 'Aut id est sed dese', 1, 59, 'panding', '#592553', NULL, NULL),
(22, 'Noble Underwood', 'toriqulislam2720@gmail.com', 1, 'Aut id est sed dese', 1, 59, 'panding', '#59309', NULL, NULL),
(23, 'Noble Underwood', 'toriqulislam2720@gmail.com', 1, 'Aut id est sed dese', 1, 59, 'panding', '#593856', NULL, NULL),
(24, 'Dorothy Mcintyre', 'toriqulislam2720@gmail.com', 2147483647, 'Aut id est sed dese', 2, 59, 'panding', '#599873', NULL, NULL);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `port_title` varchar(255) NOT NULL,
  `port_subtitle` varchar(255) NOT NULL,
  `port_image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `port_title`, `port_subtitle`, `port_image`, `status`, `created_at`, `updated_at`) VALUES
(17, 'E-commerce', 'PHP, Laravel,VueJS', 'upload/portfolio/1748740191870692.png', 1, '2022-11-06 09:56:47', '2022-11-06 09:56:47'),
(18, 'School Automation', 'PHP, Laravel,VueJS', 'upload/portfolio/1748740385255987.png', 1, '2022-11-06 09:59:51', '2022-11-06 09:59:51'),
(19, 'Shop Management', 'PHP, Laravel,', 'upload/portfolio/1748740403237389.png', 1, '2022-11-06 10:00:09', '2022-11-06 10:00:09'),
(20, 'Hospital Management', 'PHP, Laravel,', 'upload/portfolio/1748740363844862.png', 1, '2022-11-06 09:59:31', '2022-11-06 09:59:31'),
(21, 'Accounting Software', 'PHP, Laravel,', 'upload/portfolio/1747737782148932.png', 1, '2022-10-26 12:23:55', NULL),
(22, 'Point of Sales', 'PHP, Laravel,', 'upload/portfolio/1748740221435660.png', 1, '2022-11-06 09:57:15', '2022-11-06 09:57:15'),
(23, 'HR-admin Management', 'PHP, Laravel,', 'upload/portfolio/1748740169948759.png', 1, '2022-11-06 09:56:26', '2022-11-06 09:56:26'),
(24, 'Dealership Management', 'PHP, Laravel, VueJS', 'upload/portfolio/1748740203764789.png', 1, '2022-11-06 09:56:58', '2022-11-06 09:56:58');

-- --------------------------------------------------------

--
-- Table structure for table `privacies`
--

CREATE TABLE `privacies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privacy_title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacies`
--

INSERT INTO `privacies` (`id`, `privacy_title`, `description`, `created_at`, `updated_at`) VALUES
(4, 'policy car admin panel', '<p>policy car&nbsp;admin panel</p>', '2023-10-20 04:11:23', '2023-10-20 04:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `childcategory_id` int(11) DEFAULT NULL,
  `content_slide_title` varchar(255) NOT NULL,
  `breadcrumb` varchar(255) NOT NULL,
  `content_title` varchar(255) NOT NULL,
  `content_descrip` text NOT NULL,
  `long_descrip` text NOT NULL,
  `thamble` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `content_slide_title`, `breadcrumb`, `content_title`, `content_descrip`, `long_descrip`, `thamble`, `status`, `created_at`, `updated_at`, `views`) VALUES
(1, 21, 61, 0, 'Compact: Mazda 3', 'upload/services/1780266971334282.jpg', 'Compact: Mazda 3', 'Let’s face it, SUVs may lack the behind-the-wheel engagement of an equivalent car, but these tall and heavy vehicles’ rear liftgates sure make it a lot easier to simultaneously haul passengers and cargo. It’s the sensible choice, even if it’s not a particularly exciting one. But shouldn’t life offer a little excitement every now and again?', '<p>Although it&#39;s priced just like other compacts, the 2023 Mazda 3 aspires to compete with more premium cars&mdash;and&nbsp;<a href=\"https://www.caranddriver.com/reviews/comparison-test/a35123689/2021-mazda-3-vs-2021\">in many ways it does</a>. The 3 is available as either a sedan or a hatchback, and both are equally as handsome and agile. Two four-cylinder engines are offered, including a punchy turbo, and you can even have all-wheel drive if you want&mdash;though that means skipping the excellent six-speed manual. Other compact cars such as the&nbsp;<a href=\"https://www.caranddriver.com/honda/civic\">Honda Civic</a>,&nbsp;<a href=\"https://www.caranddriver.com/toyota/corolla\">Toyota Corolla</a>, and&nbsp;<a href=\"https://www.caranddriver.com/volkswagen/jetta\">Volkswagen Jetta</a>&nbsp;might seem more practical or have more name recognition, but the Mazda 3 is made for those buyers who value a gratifying driving experience and seek premium interior materials in their small car</p>', 'upload/services/1697794887_Hatchback.jpg', 1, '2023-10-20 03:41:27', NULL, 0),
(2, 22, 60, 0, 'BMW 2 Series Sedan Price range in bd', 'upload/services/1780267230967501.jpg', 'BMW 2 Series Sedan Price range in bd', 'Here in this webpage we have given below BMW 2 SERIES SEDAN’s specification, overview and review depending on Bangladesh market.', '<h5><strong>VALUE ADDED FEATURES REGARDING COMFORT, SAFETY AND SECURITY :</strong></h5>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>BMW Intelligent Personal assistant</li>\r\n	<li>Parking Assistant</li>\r\n	<li>Active cruise control</li>\r\n	<li>Driving Assistant</li>\r\n	<li>Amazon Alexa car integration</li>\r\n	<li>Farmless doors</li>\r\n	<li>Glass roof</li>\r\n	<li>LED headlights</li>\r\n	<li>LED fog lights</li>\r\n	<li>M Sport steering</li>\r\n	<li>M Leather steering wheel</li>\r\n	<li>Vehicle key with exclusive M designation</li>\r\n	<li>Storage compartment package</li>\r\n	<li>Cruise control with braking function</li>\r\n	<li>Height adjustment for front passenger seat</li>\r\n	<li>Etc</li>\r\n</ul>', 'upload/services/1697795134_Sedan.jpg', 1, '2023-10-20 03:45:34', NULL, 0),
(3, 24, 62, 0, 'BMW 2-Series', 'upload/services/1780267335102440.jpg', 'BMW 2-Series', 'The fun-size BMW 2-series is an entry-level luxury car with big thrust. Sold as a coupe only, the 230i and M240i have vastly different power levels, but are both offered with either rear- or all-wheel-drive. The 230i employs a turbocharged 255-hp inline-four that it shares with the Toyota Supra 2.0 and a host of other BMW products.', '<p>M240i comes with the far more entertaining turbocharged 382-hp inline-six engine. Sadly, no manual transmission is offered. Still, BMW&rsquo;s smallest car&rsquo;s recent redesign has wrought a deceptively quick ride, with solid braking and a chassis that loves the twisties. Although it&#39;s grown in size, its rear seat space is smaller than before. However, the most important aspect of the 2-series remains true in this generation: it rewards spirited driving at a reasonable price&mdash;particularly in four-cylinder, 230i form. There is a more rear-passenger-friendly four-door wearing a 2-series badge: it&rsquo;s known as the Gran Coupe but it&rsquo;s built on a completely different front-drive platform that has yet to win us over.&nbsp;<a href=\"https://www.caranddriver.com/bmw/2-series-gran-coupe\">We review that model separately.</a></p>', 'upload/services/1697795234_coupe.jpg', 1, '2023-10-20 03:47:14', NULL, 0),
(4, NULL, NULL, NULL, 'Molestiae et incidun', 'upload/services/1780667958310600.jpg', 'Odio do nisi illum', 'Cillum ullamco ipsum', '<p>Long Description</p>', 'upload/services/1698177298_slidecar2.jpg', 1, '2023-10-24 13:54:58', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `pinterest` varchar(255) DEFAULT NULL,
  `googleplus` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `phone`, `email`, `address`, `facebook`, `instagram`, `pinterest`, `googleplus`, `linkedin`, `twitter`, `created_at`, `updated_at`) VALUES
(1, 'upload/logo/1780122461831662.jpg', '+8802336526+94', 'info@gmail.com', 'Address', 'facebook', 'instagram', 'pinterest', 'google-plus', 'linkedin', 'twitter', NULL, '2023-10-18 13:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slide_title` varchar(255) NOT NULL,
  `slide_link` varchar(255) NOT NULL,
  `slide_photo` varchar(255) NOT NULL,
  `slide_description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `slide_title`, `slide_link`, `slide_photo`, `slide_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hatchback', 'Hatchback', 'upload/slide/1780269422094705.jpg', '<p><strong>Hatchback</strong></p>', 1, '2023-10-20 04:20:24', '2023-10-20 04:20:24'),
(2, 'Toyota', 'link', 'upload/slide/1780269232562412.jpg', '<p>&nbsp;</p>\r\n\r\n<p>Toyota</p>', 1, '2023-10-20 04:17:23', '2023-10-20 04:17:23'),
(3, 'BMW M4', 'link', 'upload/slide/1780269136530428.jpg', '<p>BMW M4</p>\r\n\r\n<div class=\"simple-translate-system-theme\" id=\"simple-translate\">\r\n<div>\r\n<div class=\"isShow simple-translate-button\" style=\"background-image:url(&quot;chrome-extension://ibplnjkanclpjokhdolnendpplpjiace/icons/512.png&quot;); height:22px;', 1, '2023-10-20 04:15:52', '2023-10-20 04:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `subcategory_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcategory_slug`, `created_at`, `updated_at`) VALUES
(60, 22, 'Toyota Camry', 'toyota-camry', '2023-10-20 03:19:37', '2023-10-20 03:37:27'),
(61, 21, 'Volkswagen Golf', 'volkswagen-golf', '2023-10-20 03:19:52', '2023-10-20 03:37:49'),
(62, 24, 'BMW 4 Series', 'bmw-4-series', '2023-10-20 03:20:08', '2023-10-20 03:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms_title` varchar(255) NOT NULL,
  `t_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `terms_title`, `t_description`, `created_at`, `updated_at`) VALUES
(2, 'car Terms admin panel', '<p>car&nbsp; Terms tes admin panel</p>', '2023-10-20 04:10:23', '2023-10-20 04:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `email`, `email_verified_at`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'shahin reza', 0, 'user@gmail.com', NULL, '$2y$10$0AdQWVoh/hC8AzKf0ON2Xe7YRvCM.THnjEbJrfeOZLVpkDD0/.hTq', '', NULL, '2022-06-05 13:32:41', '2022-06-05 13:32:41'),
(15, 'Rebekah Maddox', 1, 'hifemi@mailinator.com', NULL, '$2y$10$TB1OyDqMpfwvb2g7poURLuc3.3uJaKTuRtYz8gatd4FlkHuIEn9Gi', '', NULL, NULL, NULL),
(16, 'Simone Bailey', 1, 'cyjexucyqy@mailinator.com', NULL, '$2y$10$RkCKiialM0wsYkk8J0fsZO6N8pkg2pH4LlRe0PEWrFuLmUecj.PJO', '', NULL, NULL, NULL),
(17, 'Marvin Lowery', 1, 'nofytoluva@mailinator.com', NULL, '$2y$10$/DsLlaVtW.LULhNkIA4P..nd7JdbZ./Qg/KaBSRJ7Anss9EFHPvzO', '', NULL, NULL, NULL),
(18, 'September Sutton', 1, 'pymiruxovy@mailinator.com', NULL, '$2y$10$qnB4HnnC6HAaMLSyGqiSgunuEc.ms8/ahw6UvVddYm4uPUO5y3oyS', '', NULL, NULL, NULL),
(19, 'Jorden Lester', 1, 'bubeb@mailinator.com', NULL, '$2y$10$RPMiqcyzdyb2VFMGXsuZTOfw6hxHYxENSbynYt.IAkGtad7CCOnSa', '', NULL, NULL, NULL),
(20, 'Tallulah Stuart', 1, 'delire@mailinator.com', NULL, '$2y$10$bsTA.r.jyG9mAJc6TENsIOQo8hNSnG83foa6g66FLdTFOr3oExdaC', '', NULL, NULL, NULL),
(22, 'Theodore Whitfield', 1, 'nidyrid@mailinator.com', NULL, '$2y$10$DCuiMaYb3hLReNgqonjTg.6SH/sxklQvkbES9KvBaHftFP.KSc2WW', '', NULL, NULL, NULL),
(24, 'Ivor Tillman', 1, 'bogit@mailinator.com', NULL, '$2y$10$o/3bHywx07RQLDRxGaugAuFOfam8482wwiUwUFUhqyd4zdkFpWV4q', '', NULL, NULL, NULL),
(26, 'Skyler Carrillo', 1, 'lykywypyp@mailinator.com', NULL, '$2y$10$Ra/p2Yz3Mr0d/YNYAO1U4udUdZpF3Z.VFtKeUuBKuF4hUbdbzEOLq', '', NULL, NULL, NULL),
(27, 'Clinton Luna', 1, 'zixeky@mailinator.com', NULL, '$2y$10$U3FFCuHmtCJ3J5BIkf.4yechazPpDCSLRbosFf59om6eykQVujoiy', '', NULL, NULL, NULL),
(28, 'Mara Green', 1, 'cucuruvuvo@mailinator.com', NULL, '$2y$10$yGkeBC4hyOirujHyHywLkeXuuLH3.VGg6Epx.utbYSMHBpdr3r9Pq', '', NULL, NULL, NULL),
(29, 'Phoebe Eaton', 1, 'sinetosix@mailinator.com', NULL, '$2y$10$ktW9fX/Ma5MF8IwAwcllru2kzYhR321ph8r5xKJF/n7lNBiqweHFG', '', NULL, NULL, NULL),
(30, 'Aspen Hammond', 1, 'nomux@mailinator.com', NULL, '$2y$10$ijLmCjy8RucBzm.xvI3Hw.LiJx6koN9qRr9XVBWNTflhANrpsEKZ.', '', NULL, NULL, NULL),
(32, 'Wallace Haney', 1, 'duro@mailinator.com', NULL, '$2y$10$r0rZwBOzqVAuT2shb50i.O5vTz5fv.sYd/IBuloKCIlMZLdHUnlnq', '', NULL, NULL, NULL),
(34, 'Lawrence Gallegos', 1, 'lujudih@mailinator.com', NULL, '$2y$10$LU85DZLGuTpzCAbDlCSK6u3tQhsW0qGHwMkmYUPzeVgKjiyiboV4K', '', NULL, NULL, NULL),
(36, 'Hu Rowe', 1, 'zivuju@mailinator.com', NULL, '$2y$10$Rz7RrvP9O4r7nwgQ55ADcO9Qk6jd/0k2KFh4m/rrRZsC7DM2lz68W', '', NULL, NULL, NULL),
(38, 'Carly Haley', 1, 'zyqyza@mailinator.com', NULL, '$2y$10$JG7L8AWqeuPWBLa0d5rmnu/ZGJ3tUW7mklFP5pZtHrB2/nEYmysxq', '', NULL, NULL, NULL),
(40, 'Gisela Gregory', 1, 'hebar@mailinator.com', NULL, '$2y$10$Oy/w6MWXryYUaN3cEeYQIOionE5FuSK6B5TMW2PMtBbR7xTW0uXgu', '', NULL, NULL, NULL),
(42, 'Zenaida Berry', 1, 'moforiri@mailinator.com', NULL, '$2y$10$3LOZSzwiPqk1kuCyklmqAuOqN4KKbUHaX4EvbmRLn28utTbbj.gLm', '', NULL, NULL, NULL),
(44, 'Ashely Craig', 1, 'tavyqypoze@mailinator.com', NULL, '$2y$10$HFov9EAnlU9MqDKNxrzDI.dHdZLeZFjxdptV61AeSwhXtfMiwxxlS', '', NULL, NULL, NULL),
(46, 'Xanthus Chang', 1, 'fyleqebuki@mailinator.com', NULL, '$2y$10$nUAEucChoNx.jxk/mg3lq.5KIvkBGoMwvjpgjIT2e3INNUkpgEnfe', '', NULL, NULL, NULL),
(47, 'Kelsey Stephens', 1, 'mesoxyj@mailinator.com', NULL, '$2y$10$QV0gFVpSnlv7axJUz16hI.Oj35iDCtNAHxbmFqKdCto.bdM/bx6B2', '', NULL, NULL, NULL),
(49, 'Doris Francis', 1, 'dybityhox@mailinator.com', NULL, '$2y$10$ekiBo2bk10.J.qgtKQ4KaeLTrfjw565o2tlHjGczEBwqjCmjtKQrO', '', NULL, NULL, NULL),
(51, 'Mark Mcdaniel', 1, 'jaquj@mailinator.com', NULL, '$2y$10$96EzlPMhjo0ZPN7xohLeuOk5qtvImKueEkLGEZzPaBa0xqAAmYrKS', '', NULL, NULL, NULL),
(53, 'Willa Lindsey', 1, 'tuguma@mailinator.com', NULL, '$2y$10$WpXyE8xRNqyYdZiosS05Q.FjM4uGmpGnOwywykbQKCUAERkG2TAfm', '', NULL, NULL, NULL),
(54, 'Barry Jordan', 1, 'guwedone@mailinator.com', NULL, '$2y$10$IUnZ/9NVYyZQbhwQxHb.neek8atQ4zNdKgrEwuI3IlNMAaqpAx/1S', '', NULL, NULL, NULL),
(55, 'Mallory Rosario', 1, 'lepove@mailinator.com', NULL, '$2y$10$TPZPssfBLLN58yzaMTCwv.eIEK7XI93ru7n4XAd.QBj./D/F4c0z2', '', NULL, NULL, NULL),
(56, 'Hasad Booker', 1, 'myji@mailinator.com', NULL, '$2y$10$DQYV6YCoTCQpHRM1iT675.xL76OW0xsKTqh3hvP0Y5jAtxx6r3ByS', '', NULL, NULL, NULL),
(57, 'Rhona Beach', 1, 'fexe@mailinator.com', NULL, '$2y$10$VV6D//q8geinXbDF1cvCbOEsKedr/72tH/./153BTRCCNCclmTFfu', '', NULL, NULL, NULL),
(58, 'Michael Bolton', 1, 'cyso@mailinator.com', NULL, '$2y$10$zRiCQehc723O/lrR4yFVXeqTqIwFeGXP9tJ0Ao4eypGsZ2N4.douu', '', NULL, NULL, NULL),
(59, 'Knox Cross', 1, 'zusiqy@mailinator.com', NULL, '$2y$10$Gp1UFsAqV3hQzK8uKn0qYOiQoOZ.P8lpDWXM55Ip96MawliPx2jVG', '', NULL, NULL, NULL),
(60, 'Brielle Hardin', 1, 'fanurip@mailinator.com', NULL, '$2y$10$MaoFXX8hlTjGWA/xywGnZeADpBHuF3juHLIJQEJZ.kqErvmlOgDN6', '', NULL, NULL, NULL),
(62, 'Devin Gutierrez', 1, 'zejuq@mailinator.com', NULL, '$2y$10$P4I4/GHnaPhADrPhTu1tOOuL4q2OSoTvgnPGZQb4VvjqjlWmmCFHu', '', NULL, NULL, NULL),
(63, 'Melinda Hahn', 1, 'sogaqud@mailinator.com', NULL, '$2y$10$reeT6.CVDida9JixFyqR6edsCF55A7YoRbcT2w4fX8hw8xHktgZVW', '', NULL, NULL, NULL),
(65, 'Ayanna Decker', 1, 'qufixyn@mailinator.com', NULL, '$2y$10$.qEz03ZeZt8j4C1fuN/j7uatbeOPIeFleCk6AsdJs/sgfwXAdNlk.', 'upload/user/profile/1780755635478208.jpg', NULL, NULL, '2023-10-25 13:08:33'),
(67, 'Risa Garrison', 1, 'zolosijogi@mailinator.com', NULL, '$2y$10$IjYrDMl9uCxniBwQEgkYAu1eBxMrLpyNl55QXtX17gm.5hVcL9Tx6', NULL, NULL, NULL, NULL),
(69, 'Harper Juarez', 1, 'tegogazina@mailinator.com', NULL, '$2y$10$AQM7X0PPbH8wSWyxM8.mJOaxfOetThndmGx.bURHRFrnAMV6LQU9S', 'upload/user/profile/1780756875073445.jpg', NULL, NULL, '2023-10-25 13:28:15'),
(70, 'Trevor Nolan', 1, 'naguzubiza@mailinator.com', NULL, '$2y$10$vvJb1NS/PW9QE./pcYcNwuFvhM0VWYh5fN5.j.atiq2PCuDUf1ccW', 'upload/user/profile/1780756940336892.jpg', NULL, NULL, '2023-10-25 13:29:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactuses`
--
ALTER TABLE `contactuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacies`
--
ALTER TABLE `privacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `contactuses`
--
ALTER TABLE `contactuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `privacies`
--
ALTER TABLE `privacies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
