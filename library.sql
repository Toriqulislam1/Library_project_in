-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2023 at 05:00 AM
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
-- Database: `library`
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
(1, 'admin', 'admin@gmail.com', '2022-06-07 01:00:33', '$2a$04$APlKzbHsn/66eu1U6lvHEeeqQr43cYQILSc5coCJWqJOms5KTNIka', '202311041412download (11).jpg', 0, '2022-06-07 01:00:34', '2023-11-04 08:12:16'),
(2, 'Admin', 'ward.cecil@example.net', '2022-06-07 01:00:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 0, '2022-06-07 01:00:34', '2022-06-07 01:00:34');

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
  `endDate` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `location`, `product_id`, `user_id`, `status`, `order_num`, `endDate`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Alice Mckay', 'hylyhadov@mailinator.com', 1, 'Velit nihil ex numqu', 1, 6, 'delevary', '#68734', '1980-12-16', '2020-11-07T15:46', NULL, '2023-11-04 08:51:01'),
(2, 'Sierra Joseph', 'ruwegiruzu@mailinator.com', 1, 'Qui tenetur excepteu', 1, 14, 'panding', '#141650', '1987-11-23', '1970-02-05T21:04', NULL, NULL),
(3, 'Hannah Wolfe', 'cyqariq@mailinator.com', 1, 'Distinctio Eius exc', 1, 19, 'panding', '#1916', '1990-05-07', '2010-01-09T16:58', NULL, NULL),
(4, 'Ishmael Middleton', 'bana@mailinator.com', 1, 'Ex aut soluta culpa', 8, 20, 'panding', '#202847', '2006-06-13', '2018-11-13T23:11', NULL, NULL),
(5, 'Ishmael Middleton', 'bana@mailinator.com', 1, 'Ex aut soluta culpa', 8, 20, 'panding', '#206559', '2006-06-13', '2018-11-13T23:11', NULL, NULL),
(6, 'Ishmael Middleton', 'bana@mailinator.com', 1, 'Ex aut soluta culpa', 8, 20, 'panding', '#206912', '2006-06-13', '2018-11-13T23:11', NULL, NULL),
(7, 'Ishmael Middleton', 'bana@mailinator.com', 1, 'Ex aut soluta culpa', 8, 20, 'panding', '#203732', '2006-06-13', '2018-11-13T23:11', NULL, NULL);

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
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `childcategory_id` int(11) DEFAULT NULL,
  `content_slide_title` varchar(255) NOT NULL,
  `quentiry` varchar(255) NOT NULL,
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

INSERT INTO `services` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `content_slide_title`, `quentiry`, `content_title`, `content_descrip`, `long_descrip`, `thamble`, `status`, `created_at`, `updated_at`, `views`) VALUES
(1, NULL, NULL, 0, 'উঠোন পেরিয়ে দুই পা', 'upload/services/1782150844736510.png', 'হুমায়ূন আহমেদ (Author)', 'হোটেল গ্রেভার ইন\r\nমে ফ্লাওয়ার\r\nযশোহা বৃক্ষের দেশে\r\nদেখা না-দেখা\r\nরাবনের দেশে আমি ও আমরা', '<p><span style=\"font-family:Siyam Rupali; font-size:9pt\">ইংরেজীতে Travelogue বলে একটি শব্দ আছে যার অর্থ অবশ্যই ভ্রমণ কাহিণী না। ভ্রমণ-গল্প হতে পারে। আমি এই ধারায় বেশ কিছু লেখালেখি করেছি। লেখাগুলিকে একত্র করার নিজে তেমন প্রয়োজন অনুভব করিনি। অনন্যা&rsquo;র মুনীর কি জন্যে করলেন তিনিই জানেন।</span><br />\r\n<span style=\"font-family:Siyam Rupali; font-size:9pt\">আমার ব্যক্তিগত জীবনে স্পষ্ট দুই বিভাজন আছে। জীবনের শুরুর অংশে যে আমার সঙ্গিনী ছিল শেষের অংশে সে ছিল না। অন্য একজন এসেছে। আমি পরিবার-কেন্দ্রিক মানুষ বলেই দু&rsquo;জনের কথাই আনন্দ নিয়ে অবপটে লিখেছি। পাঠকরা পড়তে গিয়ে ধাক্কার মত খান কি-না কে জানে।</span><br />\r\n<span style=\"font-family:Siyam Rupali; font-size:9pt\">যাপিত জীবন আমার কাছে ট্রেভেলগের মত। ভ্রমণের সঙ্গী বদল হয়। দৃশ্যপট-যিনি ভ্রমন করেছেন তিনিও বদলান। </span></p>', 'upload/services/1782150857213968.png', 1, '2023-11-09 22:44:48', '2023-11-09 22:45:00', 0),
(2, NULL, NULL, 0, 'হিমুর নীল জোছনা', 'upload/services/1782150745699824.png', 'হুমায়ূন আহমেদ (Author)', 'মেসের ঘরে হিমু শুয়ে আছে। শহর জুড়ে লোডশেডিং। আকাশে থালার মতো চাঁদ ওঠায় শহর অন্ধকারে ডুবে যায়নি। জানালা দিয়ে হিমুর ঘর জোছনা ঢুকছে। জোছনার কোনো রং থাকে না। শুধু সিনেমার জোছনা হয় নীল। হিমুর কাছে আজ রাতের জোছনা সিনেমার জোছনার মতো নীল লাগছে। নীল জোছনা গায়ে মাখতে ভালো লাগছে। মনে হচ্ছে নীল রঙ চামড়া ভেদ করে ভেরতে ঢুকে যাচ্ছে। জোছনারাতে বনে যাওয়ার নিয়ম। তার কাছে শহরটাকে মাঝে মাঝে গহীন অরণ্য মনে হয়। শহরের অলিতে গলিতে হাঁটা মানে গহীন বনের ভেতরের গায়ে চলা পথে হাঁটা।', '<p><strong>ভূমিকা</strong><br />\r\n<span style=\"font-family:Siyam Rupali; font-size:9pt\">প্রফেশনাল হ্যাজার্ড বলে একটা কথা ইংরেজিতে প্রচলিত আছে। বাংলায় হবে-পেশাগত বিপদ। যে দরজি ছাতা সেলাই করে তার বিপদ হলো, আঙুরে সুঁই ঢুকে যাওয়া। লেদ মেশিন যে চালায় তার বিপদ মেশিনে হাত কাটা পড়া। লেখকদের বিপদ অনেক মেশি। লেখালেখির জন্যে মৃত্যুদণ্ডের ঘটনা আছে। দেশান্তরি হওয়ার ঘটনা তো বাংলাদেশেই আছে।</span><br />\r\n<span style=\"font-family:Siyam Rupali; font-size:9pt\">হিমু নিয়ে যখন লেখি এক ধরনের শঙ্কা কাজ করে-না জানি কোন ঝামেলায় পড়ি! বাংলাদেশের মানুষ যথেষ্টই সহনশীল। শুধু ক্ষমতাধর মানুষরা না। তারা আমজনতাকে নিয়ে ঠাট্টা-তামাশা উপভোগ করেন, তাদের নিয়ে রঙ্গ-রসিকতা সহ্য করেন না। ক্ষমতাবানরা নিজেদের সবকিছুর উর্ধ্বে ভাবেন।</span><br />\r\n<span style=\"font-family:Siyam Rupali; font-size:9pt\">আমি এই বইতে কিছু কঠিন রসিকতা করেছি। সরি, আমি না, হিমু করেছে। সমস্যা হলে হিমুর হবে। একটা ভরসা আছে, হিমু চাঁদের আলো ছাড়া কোনো কিছুই গায়ে মাখে না।</span><br />\r\n<span style=\"font-family:Siyam Rupali; font-size:9pt\">হুমায়ূন আহমেদ</span><br />\r\n<span style=\"font-family:Siyam Rupali; font-size:9pt\">নুহাশ পল্লী</span></p>', 'upload/services/1782150686529389.png', 1, '2023-11-09 22:43:14', '2023-11-09 22:43:14', 0),
(3, NULL, NULL, 0, 'হিমুর নীল জোছনা', 'upload/services/1782150504403275.png', 'হুমায়ূন আহমেদ (Author)', 'ফ্ল্যাপের কিছু কথাঃ\r\nমেসের ঘরে হিমু শুয়ে আছে। শহর জুড়ে লোডশেডিং। আকাশে থালার মতো চাঁদ ওঠায় শহর অন্ধকারে ডুবে যায়নি। জানালা দিয়ে হিমুর ঘর জোছনা ঢুকছে। জোছনার কোনো রং থাকে না। শুধু সিনেমার জোছনা হয় নীল। হিমুর কাছে আজ রাতের জোছনা সিনেমার জোছনার মতো নীল লাগছে। নীল জোছনা গায়ে মাখতে ভালো লাগছে। মনে হচ্ছে নীল রঙ চামড়া ভেদ করে ভেরতে ঢুকে যাচ্ছে। জোছনারাতে বনে যাওয়ার নিয়ম। তার কাছে শহরটাকে মাঝে মাঝে গহীন অরণ্য মনে হয়। শহরের অলিতে গলিতে হাঁটা মানে গহীন বনের ভেতরের গায়ে চলা পথে হাঁটা।', '<p><strong>ভূমিকা</strong><br />\r\n<span style=\"font-family:Siyam Rupali; font-size:9pt\">প্রফেশনাল হ্যাজার্ড বলে একটা কথা ইংরেজিতে প্রচলিত আছে। বাংলায় হবে-পেশাগত বিপদ। যে দরজি ছাতা সেলাই করে তার বিপদ হলো, আঙুরে সুঁই ঢুকে যাওয়া। লেদ মেশিন যে চালায় তার বিপদ মেশিনে হাত কাটা পড়া। লেখকদের বিপদ অনেক মেশি। লেখালেখির জন্যে মৃত্যুদণ্ডের ঘটনা আছে। দেশান্তরি হওয়ার ঘটনা তো বাংলাদেশেই আছে।</span><br />\r\n<span style=\"font-family:Siyam Rupali; font-size:9pt\">হিমু নিয়ে যখন লেখি এক ধরনের শঙ্কা কাজ করে-না জানি কোন ঝামেলায় পড়ি! বাংলাদেশের মানুষ যথেষ্টই সহনশীল। শুধু ক্ষমতাধর মানুষরা না। তারা আমজনতাকে নিয়ে ঠাট্টা-তামাশা উপভোগ করেন, তাদের নিয়ে রঙ্গ-রসিকতা সহ্য করেন না। ক্ষমতাবানরা নিজেদের সবকিছুর উর্ধ্বে ভাবেন।</span><br />\r\n<span style=\"font-family:Siyam Rupali; font-size:9pt\">আমি এই বইতে কিছু কঠিন রসিকতা করেছি। সরি, আমি না, হিমু করেছে। সমস্যা হলে হিমুর হবে। একটা ভরসা আছে, হিমু চাঁদের আলো ছাড়া কোনো কিছুই গায়ে মাখে না।</span><br />\r\n<span style=\"font-family:Siyam Rupali; font-size:9pt\">হুমায়ূন আহমেদ</span><br />\r\n<span style=\"font-family:Siyam Rupali; font-size:9pt\">নুহাশ পল্লী</span></p>', 'upload/services/1782150523021650.png', 1, '2023-11-09 22:39:24', '2023-11-09 22:39:42', 0),
(7, NULL, NULL, NULL, 'হিমুর নীল জোছনা', 'upload/services/1782150366090470.png', 'হুমায়ূন আহমেদ (Author)', 'ফ্ল্যাপের কিছু কথাঃ\r\nমেসের ঘরে হিমু শুয়ে আছে। শহর জুড়ে লোডশেডিং। আকাশে থালার মতো চাঁদ ওঠায় শহর অন্ধকারে ডুবে যায়নি। জানালা দিয়ে হিমুর ঘর জোছনা ঢুকছে। জোছনার কোনো রং থাকে না। শুধু সিনেমার জোছনা হয় নীল। হিমুর কাছে আজ রাতের জোছনা সিনেমার জোছনার মতো নীল লাগছে। নীল জোছনা গায়ে মাখতে ভালো লাগছে। মনে হচ্ছে নীল রঙ চামড়া ভেদ করে ভেরতে ঢুকে যাচ্ছে। জোছনারাতে বনে যাওয়ার নিয়ম। তার কাছে শহরটাকে মাঝে মাঝে গহীন অরণ্য মনে হয়। শহরের অলিতে গলিতে হাঁটা মানে গহীন বনের ভেতরের গায়ে চলা পথে হাঁটা।', '<p><span style=\"font-family:Siyam Rupali; font-size:9pt\">প্রফেশনাল হ্যাজার্ড বলে একটা কথা ইংরেজিতে প্রচলিত আছে। বাংলায় হবে-পেশাগত বিপদ। যে দরজি ছাতা সেলাই করে তার বিপদ হলো, আঙুরে সুঁই ঢুকে যাওয়া। লেদ মেশিন যে চালায় তার বিপদ মেশিনে হাত কাটা পড়া। লেখকদের বিপদ অনেক মেশি। লেখালেখির জন্যে মৃত্যুদণ্ডের ঘটনা আছে। দেশান্তরি হওয়ার ঘটনা তো বাংলাদেশেই আছে।</span><br />\r\n<span style=\"font-family:Siyam Rupali; font-size:9pt\">হিমু নিয়ে যখন লেখি এক ধরনের শঙ্কা কাজ করে-না জানি কোন ঝামেলায় পড়ি! বাংলাদেশের মানুষ যথেষ্টই সহনশীল। শুধু ক্ষমতাধর মানুষরা না। তারা আমজনতাকে নিয়ে ঠাট্টা-তামাশা উপভোগ করেন, তাদের নিয়ে রঙ্গ-রসিকতা সহ্য করেন না। ক্ষমতাবানরা নিজেদের সবকিছুর উর্ধ্বে ভাবেন।</span><br />\r\n<span style=\"font-family:Siyam Rupali; font-size:9pt\">আমি এই বইতে কিছু কঠিন রসিকতা করেছি। সরি, আমি না, হিমু করেছে। সমস্যা হলে হিমুর হবে। একটা ভরসা আছে, হিমু চাঁদের আলো ছাড়া কোনো কিছুই গায়ে মাখে না।</span><br />\r\n<span style=\"font-family:Siyam Rupali; font-size:9pt\">হুমায়ূন আহমেদ</span><br />\r\n<span style=\"font-family:Siyam Rupali; font-size:9pt\">নুহাশ পল্লী</span></p>', 'upload/services/1782150330858082.png', 1, '2023-11-09 22:37:12', '2023-11-09 22:37:12', 0),
(8, NULL, NULL, NULL, 'Eu porro veritatis e', '0', 'Eum consequatur volu', 'Et dolor ex labore v', '<p>Long Description</p>', 'upload/services/1699811036_4299.png', 1, '2023-11-12 11:43:56', '2023-11-12 12:05:12', 0);

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
(17, 'Leilani Howe', '+1 (985) 203-2509', 'vusu@mailinator.com', NULL, '$2y$10$XJgYAMxcI0TatihR8GusQuZoVTwO77yhoWIYsJ94UKyszpRKHSTTq', NULL, NULL, NULL, NULL),
(18, 'Kasper Hickman', '+1 (846) 475-8101', 'zycyp@mailinator.com', NULL, '$2y$10$TJM3/VkJksLJNaAO38w9V.OHk8Z0TQWGBNF4DAlh.rpFPIjM/f43e', NULL, NULL, NULL, NULL),
(19, 'Dieter Charles', '+1 (206) 108-3192', 'kukim@mailinator.com', NULL, '$2y$10$teZdL.KEzi4nCFquScVqreVEYCsUZJ8yRMaJVCqdWCK.bPNZAx4p.', NULL, NULL, NULL, NULL),
(20, 'Raven Church', '+1 (972) 732-2175', 'bihu@mailinator.com', NULL, '$2y$10$EWCKu/LKWb7PeADOmOwDNuECAjvuiZ25FnaYXwx4hc.pDkfj/JahC', NULL, NULL, NULL, NULL);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
