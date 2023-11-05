-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2023 at 04:32 PM
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
(1, 'car decoration', 'toriqulislam2720@gmail.com', '2022-06-07 01:00:33', '$2y$10$JDrlzQW9LcPkV.tbW9QBmeBdY1RtPAkmFcqhUWU/loQgymCOrz45O', '202311041412download (11).jpg', 0, '2022-06-07 01:00:34', '2023-11-04 08:12:16'),
(2, 'Admin', 'ward.cecil@example.net', '2022-06-07 01:00:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 0, '2022-06-07 01:00:34', '2022-06-07 01:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `person_name` varchar(255) NOT NULL,
  `person_img` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `rating_num` int(11) NOT NULL,
  `company_logo` varchar(255) NOT NULL,
  `blog_description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `person_name`, `person_img`, `designation`, `company_name`, `rating_num`, `company_logo`, `blog_description`, `status`, `created_at`, `updated_at`, `views`) VALUES
(2, 'Tallulah Hines', 'upload/blog/1781530839056338.jpg', 'COO', 'Appllys', 4, 'upload/blog/1781530839068394.png', '<p><span style=\"background-color:#ffffff; color:#5f6368; font-family:Roboto,Arial,sans-serif; font-size:14px\">Spoken by more than 100 million people, Urdu is the official language of Pakistan. It&rsquo;s also widely spoken in India and places that have large </span></p>', 1, '2023-11-03 02:30:05', '2023-11-03 02:30:05', 0),
(3, 'Cathleen Mercer', 'upload/blog/1781530389561760.jpg', 'Ceo', 'Upwork', 5, 'upload/blog/1781530389565706.png', '<p><span style=\"background-color:#ffffff; color:#5f6368; font-family:Roboto,Arial,sans-serif; font-size:14px\">Preparing for the International English Language Testing System (IELTS) can be a daunting task, especially when it comes to the reading section.</span></p>', 1, '2023-11-03 02:22:56', '2023-11-03 02:22:56', 0);

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
(22, 'Sedan dfg', 'sedan-dfg', NULL, '2023-11-04 08:32:05'),
(26, 'zxfg', 'zxfg', NULL, NULL);

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
  `client_title` varchar(255) DEFAULT NULL,
  `orginal_title` varchar(255) DEFAULT NULL,
  `client_logo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `client_title`, `orginal_title`, `client_logo`, `created_at`, `updated_at`) VALUES
(46, NULL, NULL, 'upload/client/1781529553232111.png', '2023-04-12 04:20:12', '2023-11-03 02:09:39'),
(47, NULL, NULL, 'upload/client/1781529543384175.png', '2023-04-12 04:20:43', '2023-11-03 02:09:29'),
(50, NULL, NULL, 'upload/client/1781529534445802.png', '2023-10-30 08:32:07', '2023-11-03 02:09:21'),
(51, NULL, NULL, 'upload/client/1781529523058809.png', '2023-10-30 08:36:12', '2023-11-03 02:09:10'),
(52, NULL, NULL, 'upload/client/1781529616225223.png', '2023-11-03 02:10:39', NULL);

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
(1, 'toriqul', 'taxifalado@mailinator.com', '14787972196', 'video', 'asdf', NULL, NULL),
(2, 'Rhea Mclaughlin', 'lymera@mailinator.com', 'Culpa delectus cul', 'BMW 2-Series', 'Iusto ut excepteur n', NULL, NULL),
(3, 'Kane Mcdowell', 'xozig@mailinator.com', 'Sunt non nisi volupt', 'Modi ullam amet est', 'Fuga Enim autem dol', NULL, NULL);

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
  `ind_title` varchar(255) DEFAULT NULL,
  `ind_photo` varchar(255) NOT NULL,
  `ind_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id`, `ind_title`, `ind_photo`, `ind_description`, `created_at`, `updated_at`) VALUES
(2, 'Travels', 'upload/industries/1747196012221211.png', 'This is travels .', '2022-10-20 02:52:42', '2022-10-20 02:52:42'),
(3, 'Technologies', 'upload/industries/1747195463874482.png', 'This is technologies', '2022-10-20 02:43:59', NULL),
(5, 'Tempora quo dolorem', 'upload/industries/1781192421246955.jpg', 'Sit nihil error lab', '2023-10-30 08:51:04', NULL);

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
(29, '2023_10_22_143850_create_orders_table', 24),
(30, '2023_10_29_145640_create_payments_table', 25);

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
  `car_model` varchar(255) NOT NULL,
  `car_brand` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `service_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `location`, `product_id`, `user_id`, `status`, `order_num`, `car_model`, `car_brand`, `date`, `service_id`, `created_at`, `updated_at`) VALUES
(1, 'Alice Mckay', 'hylyhadov@mailinator.com', 1, 'Velit nihil ex numqu', 1, 6, 'delevary', '#68734', '1980-12-16', 'Sedan dfg', '2020-11-07T15:46', '[\"1\",\"4\"]', NULL, '2023-11-04 08:51:01'),
(2, 'Sierra Joseph', 'ruwegiruzu@mailinator.com', 1, 'Qui tenetur excepteu', 1, 14, 'panding', '#141650', '1987-11-23', 'Sedan dfg', '1970-02-05T21:04', '[\"1\",\"2\",\"3\",\"5\",\"7\"]', NULL, NULL);

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `servics_details` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `user_id`, `phone`, `price`, `discount`, `name`, `email`, `servics_details`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 111, 10, 'Sasha Morris', 'kefyjeto@mailinator.com', 'Compact: Mazda 3\r\n                                                                                BMW 2 Series Sedan Price range in bd\r\n                                                                                BMW 2-Series\r\n                         ', NULL, NULL),
(2, 1, 1, 1, 740, 100, 'Sasha Morris', 'kefyjeto@mailinator.com', 'Compact: Mazda 3\r\n                                                                                BMW 2 Series Sedan Price range in bd\r\n                                                                                BMW 2-Series\r\n                         ', NULL, NULL),
(3, 2, 2, 1, 10000, 100, 'Winter Sharp', 'butusalal@mailinator.com', 'Compact: Mazda 3\r\n                                                                                BMW 2-Series\r\n                                                                                Sequi accusamus temp', NULL, NULL);

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
(29, 'Consectetur at recu', 'Magna voluptatem vol', 'upload/portfolio/1781529172618594.jpg', 1, '2023-11-03 02:03:36', '2023-11-03 02:03:36'),
(30, 'Consequatur autem qu', 'Iste nulla mollit qu', 'upload/portfolio/1781529288427627.jpg', 1, '2023-11-03 02:05:26', '2023-11-03 02:05:26'),
(31, 'Qui quia autem ipsa', 'Mollitia cupidatat u', 'upload/portfolio/1781196759723557.jpg', 1, '2023-10-30 10:00:02', NULL),
(32, 'Quia ab nemo repudia', 'Mollitia ut consecte', 'upload/portfolio/1781529267907055.jpg', 1, '2023-11-03 02:05:07', '2023-11-03 02:05:07'),
(33, 'Distinctio Nisi rep', 'Irure aliqua Deleni', 'upload/portfolio/1781529358394989.jpg', 1, '2023-11-03 02:06:33', NULL),
(34, 'Quia earum officia d', 'Pariatur Et exercit', 'upload/portfolio/1781529367058146.jpg', 1, '2023-11-03 02:06:41', NULL),
(35, 'Corporis sapiente re', 'Et excepturi exercit', 'upload/portfolio/1781529380693715.jpg', 1, '2023-11-03 02:06:54', NULL),
(36, 'Magnam nihil in sit', 'Perferendis non corr', 'upload/portfolio/1781529389593288.jpg', 1, '2023-11-03 02:07:02', NULL),
(37, 'Quia aliqua Sed cil', 'Sunt sint laborum', 'upload/portfolio/1781529405333527.jpg', 1, '2023-11-03 02:07:17', NULL);

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
(4, NULL, NULL, NULL, 'Ea veniam consectet', 'upload/services/1780841861692363.jpg', 'Sequi accusamus temp', 'Eaque cillum ut volu', '<p>Long Description</p>', 'upload/services/1698177298_slidecar2.jpg', 1, '2023-10-26 11:59:05', '2023-10-26 11:59:05', 0),
(5, 22, 60, 0, 'BMW 2 Series Sedan Price range in bd', 'upload/services/1780267230967501.jpg', 'BMW 2 Series Sedan Price range in bd', 'Here in this webpage we have given below BMW 2 SERIES SEDAN’s specification, overview and review depending on Bangladesh market.', '<h5><strong>VALUE ADDED FEATURES REGARDING COMFORT, SAFETY AND SECURITY :</strong></h5>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>BMW Intelligent Personal assistant</li>\r\n	<li>Parking Assistant</li>\r\n	<li>Active cruise control</li>\r\n	<li>Driving Assistant</li>\r\n	<li>Amazon Alexa car integration</li>\r\n	<li>Farmless doors</li>\r\n	<li>Glass roof</li>\r\n	<li>LED headlights</li>\r\n	<li>LED fog lights</li>\r\n	<li>M Sport steering</li>\r\n	<li>M Leather steering wheel</li>\r\n	<li>Vehicle key with exclusive M designation</li>\r\n	<li>Storage compartment package</li>\r\n	<li>Cruise control with braking function</li>\r\n	<li>Height adjustment for front passenger seat</li>\r\n	<li>Etc</li>\r\n</ul>', 'upload/services/1697795134_Sedan.jpg', 1, '2023-10-20 03:45:34', NULL, 0),
(7, NULL, NULL, NULL, 'Ea veniam consectet', 'upload/services/1780841861692363.jpg', 'Sequi accusamus temp', 'Eaque cillum ut volu', '<p>Long Description</p>', 'upload/services/1698177298_slidecar2.jpg', 1, '2023-10-26 11:59:05', '2023-10-26 11:59:05', 0);

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
(1, 'upload/logo/1781197343044872.png', '+8802336526+94', 'info@gmail.com', 'Address', 'facebook', 'instagram', 'pinterest', 'google-plus', 'linkedin', 'twitter', NULL, '2023-10-30 10:09:18');

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
  `mobile` varchar(255) NOT NULL,
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
(1, 'Abigail Barrera', '1', 'qokohad@mailinator.com', NULL, '$2y$10$Rw8qOD4tvPae/B8shMFzOe4FNkDh0FBsSqDF52my1GtdwhAOPeZcq', NULL, NULL, NULL, NULL),
(2, 'Maxine James', '1727204284', 'dewybeko@mailinator.com', NULL, '$2y$10$rSqUNQ0GNJaUx5RvIWP8YOcsWKCyvbJc3R1wbdkW2oKBVLLGta6my', NULL, NULL, NULL, NULL),
(4, 'Isaac Holman', '+1 (221) 679-8149', 'pisac@mailinator.com', NULL, '$2y$10$PjOMC.qXwmswTX7RwInY4e7ihDBf/CrN2/UJZ1K4BO9hiD3rCsfXq', NULL, NULL, NULL, NULL),
(5, 'Chloe Camacho', '+11973324328', 'fysaqomow@mailinator.com', NULL, '$2y$10$8YT6kX110NY1XXU.2cQnuOynJCYSw4Eqia350FQD0WenobHURKyxe', NULL, NULL, NULL, '2023-11-03 02:36:14'),
(6, 'Carl Colon', '+1 (801) 796-6074', 'tazkulislam164478@gmail.com', NULL, '$2y$10$DE3wjSi.o8Q5VfdmMvegauHhPJ7g3ltf4iI6JeoKqkSIZA0psK8y6', NULL, NULL, NULL, NULL),
(7, 'Ryan Olson', '+1 (386) 153-9946', 'qutajo@mailinator.com', NULL, '$2y$10$7DwyP1ZtKaBj1ABxyK43y.79sy9D2gLwigb6fvjj/VTFsU4StzFq.', NULL, NULL, NULL, NULL),
(10, 'Martha Price', '+1 (588) 326-4008', 'cywypygyji@mailinator.com', NULL, '$2y$10$gpipFDlbwNFmprufFDd3suKEM0SBQ6vgFKsVKl2V6HUZ7vBbEapMC', NULL, NULL, NULL, NULL),
(12, 'Aileen Woods', '+1 (826) 319-1537', 'mitynilaho@mailinator.com', NULL, '$2y$10$51fd0EQD5aIlpILBbFS2Vu19bA4879984MmiT146K/OwTqerrCAEi', NULL, NULL, NULL, NULL),
(14, 'Caryn Donaldson', '+1 (493) 173-4481', 'filybagide@mailinator.com', NULL, '$2y$10$/gz6Rpzpdi5ctOPcAg60ueJlpg0MxvdkYgdDc2dhcMhNpIsDwtI4i', NULL, NULL, NULL, NULL),
(15, 'Erich Hester', '+1 (503) 867-4614', 'bixabymy@mailinator.com', NULL, '$2y$10$Yn2M1cUPzzzwsROv838gU.ZsCLIlmPw783mkiLaL3UMsoqIqR95rq', NULL, NULL, NULL, NULL),
(16, 'Vernon Paul', '+1 (123) 324-6736', 'xesy@mailinator.com', NULL, '$2y$10$OgREeQgm1ihkK/8rH8okl.Scb5OYkOl4dLKHjfnnpnuGW3b.eIRT.', NULL, NULL, NULL, NULL),
(17, 'Leilani Howe', '+1 (985) 203-2509', 'vusu@mailinator.com', NULL, '$2y$10$XJgYAMxcI0TatihR8GusQuZoVTwO77yhoWIYsJ94UKyszpRKHSTTq', NULL, NULL, NULL, NULL);

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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `privacies`
--
ALTER TABLE `privacies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
