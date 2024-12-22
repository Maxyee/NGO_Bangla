-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 28, 2024 at 02:17 AM
-- Server version: 8.0.36-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elitedesignbd_ngo2`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint UNSIGNED NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int DEFAULT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `link`, `designation`, `ads`, `type`, `facebook`, `twitter`, `linkedin`, `instagram`, `created_at`, `updated_at`) VALUES
(118, 'Md Nazrul Islam', 'CEO', 'public/ads/657e7471f1e0f.jpg', 1, 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://instagram.com', NULL, NULL),
(119, 'Md Rakibul Islam', 'Executive Member', 'public/ads/657ee235cc57d.jpeg', 1, 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://instagram.com', NULL, NULL),
(120, 'Ms. Jannatul Ferdaus', 'Manageing Drirector', 'public/ads/657ee2c7b105a.png', 1, 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://instagram.com', NULL, NULL),
(121, 'Abdur Rahman', 'Vice-Chairman', 'public/ads/657ee308af652.png', 1, 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://instagram.com', NULL, NULL),
(122, 'Abdur Rahman', 'Vice-Chairman', 'public/ads/657ee5a6393b6.png', 1, 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/profile.php?id=61550511971497&ref=embed_page', 'https://instagram.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_bn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `soft_delete` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_bn`, `category_en`, `soft_delete`, `created_at`, `updated_at`) VALUES
(20, 'Project', 'Project', '0', NULL, NULL),
(21, 'Service', 'Service', '0', NULL, NULL),
(22, 'News', 'News', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint UNSIGNED NOT NULL,
  `district_bn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `district_bn`, `district_en`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 'ঢাকা', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `livetv`
--

CREATE TABLE `livetv` (
  `id` bigint UNSIGNED NOT NULL,
  `embed_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livetv`
--

INSERT INTO `livetv` (`id`, `embed_code`, `status`, `created_at`, `updated_at`) VALUES
(1, '<iframe width=\"300\" height=\"220\" src=\"https://www.youtube.com/embed/oqGO941aZAc\" title=\"রাতের আঁধারে সক্রিয় অবরোধকারীরা | BNP Oborodh | Fire in Bus | Somoy TV\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_16_115107_create_categories_table', 1),
(5, '2020_04_16_115141_create_subcategories_table', 1),
(6, '2020_04_29_153713_create_districts_table', 1),
(7, '2020_04_29_153726_create_subdistricts_table', 1),
(8, '2020_04_30_102439_create_posts_table', 1),
(9, '2020_05_31_131832_create_socials_table', 1),
(10, '2020_05_31_131923_create_seos_table', 1),
(11, '2020_05_31_134432_create_namaz_table', 1),
(12, '2020_05_31_135413_create_livetv_table', 1),
(13, '2020_06_01_150304_create_notices_table', 1),
(14, '2020_06_01_151613_create_websites_table', 1),
(15, '2020_06_10_224008_create_photos_table', 1),
(16, '2020_06_10_225639_create_videos_table', 1),
(17, '2020_07_03_125924_create_ads_table', 1),
(18, '2020_07_05_082330_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `namaz`
--

CREATE TABLE `namaz` (
  `id` bigint UNSIGNED NOT NULL,
  `fajr` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `johr` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asor` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `magrib` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `esha` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jummah` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `namaz`
--

INSERT INTO `namaz` (`id`, `fajr`, `johr`, `asor`, `magrib`, `esha`, `jummah`, `created_at`, `updated_at`) VALUES
(1, '৫.৩০ মিনিট', '১.৩০ মিনিট', '৪ টা', '৬ টা', '৭.৩০ মিনিট', '১.৪০ মিনিট', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint UNSIGNED NOT NULL,
  `notice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice`, `status`, `created_at`, `updated_at`) VALUES
(1, 'আমাদের ওয়েবসাইটে সার্বিক উন্নয়নের কাজ চলছে আমাদের সাথে থাকার জন্য আপনাকে  ধন্যবাদ!', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `title`, `type`, `created_at`, `updated_at`) VALUES
(42, 'public/photos_gallery/656821496f4d1.jpg', 'Bangabandhu with his family', '0', NULL, NULL),
(43, 'public/photos_gallery/6568216ca0f97.png', 'Bangla Literary Conference (February, 1974)', '0', NULL, NULL),
(44, 'public/photos_gallery/65682187ea5e2.jpeg', '1971-4april', '0', NULL, NULL),
(45, 'public/photos_gallery/656821aeefd82.png', 'Visiting Egyptian trade mission', '0', NULL, NULL),
(46, 'public/photos_gallery/656821cd335f1.jpeg', '7march', '0', NULL, NULL),
(47, 'public/photos_gallery/656821ea54d6b.jpg', 'Bangabandhu’s birthday', '0', NULL, NULL),
(48, 'public/photos_gallery/656cd7192d328.jpg', 'আলোকিত বন্ধু টেকনিক্যাল ট্রেনিং প্রোগ্রাম এর ২২ তম ব্যাচ', '1', NULL, NULL),
(50, 'public/photos_gallery/656cd76a1f78c.jpg', 'আলোকিত বন্ধু টেকনিক্যাল ট্রেনিং প্রোগ্রাম', '1', NULL, NULL),
(51, 'public/photos_gallery/656cd7964291f.jpg', 'পরিচালকের উপহার গ্রহন', '1', NULL, NULL),
(53, 'public/photos_gallery/656cd7e1dd9dc.jpg', 'আলোকিত বন্ধু টেকনিক্যাল ট্রেনিং প্রোগ্রাম এর ১৮ তম ব্যাচ', '1', NULL, NULL),
(54, 'public/photos_gallery/656cd842c4936.jpg', 'আলোকিত বন্ধু টেকনিক্যাল ট্রেনিং প্রোগ্রাম এর ট্রেইনার এর উপহার গ্রহন', '1', NULL, NULL),
(55, 'public/photos_gallery/656cd87af2fe0.jpg', 'আলোকিত বন্ধু টেকনিক্যাল ট্রেনিং প্রোগ্রাম এর ১৯ তম ব্যাচ', '1', NULL, NULL),
(56, 'public/photos_gallery/657ee673daa74.jpeg', 'Bangladeshi Beautiful Images', '1', NULL, NULL),
(57, 'public/photos_gallery/657ee69596ff3.jpg', 'Microcredite Loan', '1', NULL, NULL),
(58, 'public/photos_gallery/657ee6b5b7b3d.jpeg', 'Quick Loan', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `cat_id` int NOT NULL,
  `subcat_id` int DEFAULT NULL,
  `dist_id` int DEFAULT NULL,
  `subdist_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `title_bn` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_bn` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tags_bn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tags_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `headline` int DEFAULT NULL,
  `first_section` int DEFAULT NULL,
  `first_section_thumbnail` int DEFAULT NULL,
  `bigthumbnail` int DEFAULT NULL,
  `post_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_month` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `short_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `categoryhomepage` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `subcat_id`, `dist_id`, `subdist_id`, `user_id`, `title_bn`, `title_en`, `image`, `details_en`, `details_bn`, `tags_bn`, `tags_en`, `headline`, `first_section`, `first_section_thumbnail`, `bigthumbnail`, `post_date`, `post_month`, `created_at`, `updated_at`, `short_details`, `categoryhomepage`) VALUES
(137, 21, 56, NULL, NULL, 1, 'Govt School Managment Website', NULL, 'public/postimages/657db0e5cdb5d.jpeg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the</p><p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the</p><hr><p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the</p><hr><p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the</p><hr><p><br></p><hr><p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '16-12-2023', 'December', NULL, NULL, NULL, 1),
(138, 21, 56, NULL, NULL, 1, 'Govt School Managment Website', NULL, 'public/postimages/657db21056872.jpg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '16-12-2023', 'December', NULL, NULL, NULL, 1),
(139, 21, 56, NULL, NULL, 1, 'Govt School Managment Website', NULL, 'public/postimages/657db7ec13e18.jpeg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '16-12-2023', 'December', NULL, NULL, NULL, 1),
(140, 21, 56, NULL, NULL, 1, 'Songabd 71  Professional News Paper', NULL, 'public/postimages/657dbcff0feb8.jpg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including thev<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '16-12-2023', 'December', NULL, NULL, NULL, 1),
(141, 21, 56, NULL, NULL, 1, 'Govt School Managment Website', NULL, 'public/postimages/657dbd2d0349e.jpeg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the</p><p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '16-12-2023', 'December', NULL, NULL, NULL, 1),
(142, 21, 56, NULL, NULL, 1, 'Lorem Ispum', NULL, 'public/postimages/657dbd6a90333.jpg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '16-12-2023', 'December', NULL, NULL, NULL, 1),
(145, 20, 55, NULL, NULL, 1, 'Govt School Managment Website bd', NULL, 'public/postimages/657dcf1e20cb4.jpg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '16-12-2023', 'December', NULL, NULL, NULL, 1),
(146, 20, 55, NULL, NULL, 1, 'প্রথম পাতা', NULL, 'public/postimages/657dcf3e09165.jpg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '16-12-2023', 'December', NULL, NULL, NULL, 1),
(147, 20, 55, NULL, NULL, 1, 'Govt School Managment Website', NULL, 'public/postimages/657dcf5b608ea.jpg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '16-12-2023', 'December', NULL, NULL, NULL, 1),
(148, 20, 55, NULL, NULL, 1, 'Govt School Managment Website', NULL, 'public/postimages/657dcf7f11da5.jpg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '16-12-2023', 'December', NULL, NULL, NULL, 1),
(149, 20, 55, NULL, NULL, 1, 'Lorem Ispum', NULL, 'public/postimages/657dcfa3b4a24.jpeg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '16-12-2023', 'December', NULL, NULL, NULL, 1),
(150, 20, 55, NULL, NULL, 1, 'প্রথম পাতা', NULL, 'public/postimages/657dcfbd54e90.jpg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '16-12-2023', 'December', NULL, NULL, NULL, 1),
(151, 22, 57, NULL, NULL, 1, 'Govt School Managment Website', NULL, 'public/postimages/657e976b91004.jpg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '17-12-2023', 'December', NULL, NULL, NULL, 1),
(152, 22, 57, NULL, NULL, 1, 'Lorem Ispum', NULL, 'public/postimages/657e980d48633.jpg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '17-12-2023', 'December', NULL, NULL, NULL, 1),
(153, 22, 57, NULL, NULL, 1, 'Govt School Managment Website', NULL, 'public/postimages/657e982a8fa07.jpeg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '17-12-2023', 'December', NULL, NULL, NULL, 1),
(154, 22, 57, NULL, NULL, 1, 'Songabd 71  Professional News', NULL, 'public/postimages/657e984fc6994.jpg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '17-12-2023', 'December', NULL, NULL, NULL, 1);
INSERT INTO `posts` (`id`, `cat_id`, `subcat_id`, `dist_id`, `subdist_id`, `user_id`, `title_bn`, `title_en`, `image`, `details_en`, `details_bn`, `tags_bn`, `tags_en`, `headline`, `first_section`, `first_section_thumbnail`, `bigthumbnail`, `post_date`, `post_month`, `created_at`, `updated_at`, `short_details`, `categoryhomepage`) VALUES
(155, 22, 57, NULL, NULL, 1, 'মাস্টার অফ টেইলারিং', NULL, 'public/postimages/657e98746a175.jpeg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '17-12-2023', 'December', NULL, NULL, NULL, 1),
(156, 22, 57, NULL, NULL, 1, 'প্রথম পাতা', NULL, 'public/postimages/657e989678d7b.jpg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including theConducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '17-12-2023', 'December', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_author` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_analytics` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_verification` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alexa_analytics` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `client1_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client2_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client3_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client4_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client5_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client6_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client1_testimonial` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `client2_testimonial` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `client3_testimonial` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `client4_testimonial` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `client5_testimonial` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `client6_testimonial` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_author`, `meta_title`, `meta_keyword`, `meta_description`, `google_analytics`, `google_verification`, `alexa_analytics`, `client1_name`, `client2_name`, `client3_name`, `client4_name`, `client5_name`, `client6_name`, `client1_testimonial`, `client2_testimonial`, `client3_testimonial`, `client4_testimonial`, `client5_testimonial`, `client6_testimonial`, `created_at`, `updated_at`) VALUES
(1, 'ময়না ওয়েলফেয়ার ফাউন্ডেশন', 'Moyna Welfare Foundation', 'ময়না ওয়েলফেয়ার ফাউন্ডেশন', 'ময়না ওয়েলফেয়ার ফাউন্ডেশন', NULL, NULL, NULL, 'Md Abdul khalek', 'Md Abu Sayed', 'Md Rakibul Islam', 'Md Khalek Mia', 'Md Kashem Mia', 'Md Kashem Mia', 'Lorem Ipsum &amp; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown', 'Lorem Ipsum &amp; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown', 'Lorem Ipsum &amp; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown', 'Lorem Ipsum &amp; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown', 'Lorem Ipsum &amp; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown', 'Lorem Ipsum &amp; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_bn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone_bn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `favicon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner3` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institute_info_short` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institute_info_long` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institute_history` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institutehistoryimages` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobilelogo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebookpage` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `privacy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `barch` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `complite_project` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `running_project` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upcomeing_project` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satisfied_qualification` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner1_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner2_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner3_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner1short_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner2short_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner3short_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand1_logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand2_logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand3_logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand4_logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `president_tittle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genarelsecretr_tittle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `president_short` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `president_long` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `genarelsecretr_short` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `genarelsecretr_long` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `president_images` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genarelsecretr_images` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `embition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `address_bn`, `address_en`, `phone_bn`, `phone_en`, `email`, `created_at`, `updated_at`, `favicon`, `baner1`, `baner2`, `baner3`, `institute_info_short`, `institute_info_long`, `institute_history`, `institutehistoryimages`, `mobilelogo`, `facebookpage`, `terms`, `privacy`, `barch`, `complite_project`, `running_project`, `upcomeing_project`, `satisfied_qualification`, `baner1_text`, `baner2_text`, `baner3_text`, `baner1short_text`, `baner2short_text`, `baner3short_text`, `brand1_logo`, `brand2_logo`, `brand3_logo`, `brand4_logo`, `president_tittle`, `genarelsecretr_tittle`, `president_short`, `president_long`, `genarelsecretr_short`, `genarelsecretr_long`, `president_images`, `genarelsecretr_images`, `embition`) VALUES
(1, 'public/ads/656d3cc72b5a0.png', 'Message &amp; Commercial Office: Adarsh ​​Para, Paur Kanthali, Ward No. 8, Bhola Sadar, Bhola.', 'Message &amp; Commercial Office: Adarsh ​​Para, Paur Kanthali, Ward No. 8, Bhola Sadar, Bhola.', '01775457008', 'www.elitedesign.com.bd', 'info@elitedesign.com.bd', NULL, NULL, 'public/ads/656e22eab5731.png', 'public/ads/657ec1ae1eaed.jpg', 'public/ads/657ec1c624093.jpg', 'public/ads/657ec1d30908e.jpg', 'শিক্ষাই জাতীর মেরুদন্ড, যে জাতী যত শিক্ষিত সে জাতী ততই উন্নত, তাই সাধারণ শিক্ষার পাশাপাশি কারিগরি শিক্ষার কোন বিকল্প নাই । আজ বাংলাদেশের প্রতিটি ঘরে ঘরে শিক্ষিত ছেলে-মেয়েরা * চাকুরীর জন্য বিভিন্ন প্রতিষ্ঠানের দ্বারে দ্বারে ঘুরছে, কিন্তু চাকুরী। কোথায়? তাই অনেক ছেলে-মেয়ে বেকারত্বের যন্ত্রনায় বখাটে হয়ে রাস্তায় যত অপকর্ম করে বেরাচ্ছে। আবার কেউ কেউ বেকারত্বের অভিষাপে আত্ম হত্যা করে নিজের জীবনের ইতি টানছে। তাই এই সমস্ত বেকার পুরুষ ও মহিলাদের জন্য আমাদের এই সেবামূলক প্রতিষ্ঠান। এই প্রতিষ্ঠানটি এ পর্যন্ত অনেক বেকার ছেলে-মেয়েদের কর্ম সংস্থান করে দিতে সক্ষম হয়েছে।', '<div><span style=\"color: rgb(51, 51, 63); font-family: roboto, sans-serif; font-size: 18px; white-space-collapse: preserve; background-color: rgb(248, 248, 248);\">শিক্ষাই জাতীর মেরুদন্ড, যে জাতী যত শিক্ষিত সে জাতী ততই উন্নত, তাই সাধারণ শিক্ষার পাশাপাশি কারিগরি শিক্ষার কোন বিকল্প নাই । আজ বাংলাদেশের প্রতিটি ঘরে ঘরে শিক্ষিত ছেলে-মেয়েরা * চাকুরীর জন্য বিভিন্ন প্রতিষ্ঠানের দ্বারে দ্বারে ঘুরছে, কিন্তু চাকুরী। কোথায়? তাই অনেক ছেলে-মেয়ে বেকারত্বের যন্ত্রনায় বখাটে হয়ে রাস্তায় যত অপকর্ম করে বেরাচ্ছে। আবার কেউ কেউ বেকারত্বের অভিষাপে আত্ম হত্যা করে নিজের জীবনের ইতি টানছে। তাই এই সমস্ত বেকার পুরুষ ও মহিলাদের জন্য আমাদের এই সেবামূলক প্রতিষ্ঠান। এই প্রতিষ্ঠানটি এ পর্যন্ত অনেক বেকার ছেলে-মেয়েদের কর্ম সংস্থান করে দিতে সক্ষম হয়েছে।\r\nএই কারিগরি প্রতিষ্ঠানটি সারা বাংলাদেশের বেকার যুব সমাজকে এগিয়ে নিয়ে যেতে সক্ষম হয়েছে।আমরা অভয় দিয়ে বলতে চাই আর বেকারত্ব নয়, আসুন হাতে কলমে কারিগরি শিক্ষা গ্রহণ করে নিজের বেকার জীবনকে নিজেই সাবলম্বী করি ।</span><div style=\"color: rgb(51, 51, 63); font-family: roboto, sans-serif; font-size: 18px; white-space-collapse: preserve;\">মহান সৃষ্টিকর্তা যেন আমাদের এই নেক নিয়ত কবুল করেন। আমিন ॥</div></div>', 'প্রতিষ্ঠানের ইতিহাস', 'public/ads/657ec3319c875.jpg', 'public/ads/656c2d51cbd54.png', 'elitedesignbd', '<p>These terms and conditions outline the rules and regulations for the use of Alokito Bondhu Technical Training Program\'s Website, located at www.alokitobtp.com.</p>\r\n\r\n<p>By accessing this website we assume you accept these terms and conditions. Do not continue to use Alokito Bondhu Technical Training Program if you do not agree to take all of the terms and conditions stated on this page.</p>\r\n\r\n<p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company\'s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client\'s needs in respect of provision of the Company\'s stated services, in accordance with and subject to, prevailing law of bd. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p>\r\n\r\n<h3><strong>Cookies</strong></h3>\r\n\r\n<p>We employ the use of cookies. By accessing Alokito Bondhu Technical Training Program, you agreed to use cookies in agreement with the Alokito Bondhu Technical Training Program\'s Privacy Policy. </p>\r\n\r\n<p>Most interactive websites use cookies to let us retrieve the user\'s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p>\r\n\r\n<h3><strong>License</strong></h3>\r\n\r\n<p>Unless otherwise stated, Alokito Bondhu Technical Training Program and/or its licensors own the intellectual property rights for all material on Alokito Bondhu Technical Training Program. All intellectual property rights are reserved. You may access this from Alokito Bondhu Technical Training Program for your own personal use subjected to restrictions set in these terms and conditions.</p>\r\n\r\n<p>You must not:</p>\r\n<ul>\r\n    <li>Republish material from Alokito Bondhu Technical Training Program</li>\r\n    <li>Sell, rent or sub-license material from Alokito Bondhu Technical Training Program</li>\r\n    <li>Reproduce, duplicate or copy material from Alokito Bondhu Technical Training Program</li>\r\n    <li>Redistribute content from Alokito Bondhu Technical Training Program</li></ul>\r\n\r\n<p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Alokito Bondhu Technical Training Program does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Alokito Bondhu Technical Training Program,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Alokito Bondhu Technical Training Program shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p>\r\n\r\n<p>Alokito Bondhu Technical Training Program reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p>\r\n\r\n<p>You warrant and represent that:</p>\r\n\r\n<ul>\r\n    <li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li>\r\n    <li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li>\r\n    <li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li>\r\n    <li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li>\r\n</ul>\r\n\r\n<p>You hereby grant Alokito Bondhu Technical Training Program a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p>\r\n\r\n<h3><strong>Hyperlinking to our Content</strong></h3>\r\n\r\n<p>The following organizations may link to our Website without prior written approval:</p>\r\n\r\n<ul>\r\n    <li>Government agencies;</li>\r\n    <li>Search engines;</li>\r\n    <li>News organizations;</li>\r\n    <li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li>\r\n    <li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li>\r\n</ul>\r\n\r\n<p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party\'s site.</p>\r\n\r\n<p>We may consider and approve other link requests from the following types of organizations:</p>\r\n\r\n<ul>\r\n    <li>commonly-known consumer and/or business information sources;</li>\r\n    <li>dot.com community sites;</li>\r\n    <li>associations or other groups representing charities;</li>\r\n    <li>online directory distributors;</li>\r\n    <li>internet portals;</li>\r\n    <li>accounting, law and consulting firms; and</li>\r\n    <li>educational institutions and trade associations.</li>\r\n</ul>\r\n\r\n<p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Alokito Bondhu Technical Training Program; and (d) the link is in the context of general resource information.</p>\r\n\r\n<p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party\'s site.</p>\r\n\r\n<p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Alokito Bondhu Technical Training Program. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p>\r\n\r\n<p>Approved organizations may hyperlink to our Website as follows:</p>\r\n\r\n<ul>\r\n    <li>By use of our corporate name; or</li>\r\n    <li>By use of the uniform resource locator being linked to; or</li>\r\n    <li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party\'s site.</li>\r\n</ul>\r\n\r\n<p>No use of Alokito Bondhu Technical Training Program\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p>\r\n\r\n<h3><strong>iFrames</strong></h3>\r\n\r\n<p>Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p>\r\n\r\n<h3><strong>Content Liability</strong></h3>\r\n\r\n<p>We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p>\r\n\r\n<h3><strong>Reservation of Rights</strong></h3>\r\n\r\n<p>We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it\'s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p>\r\n\r\n<h3><strong>Removal of links from our website</strong></h3>\r\n\r\n<p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p>\r\n\r\n<p>We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p>\r\n\r\n<h3><strong>Disclaimer</strong></h3>\r\n\r\n<p>To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p>\r\n\r\n<ul>\r\n    <li>limit or exclude our or your liability for death or personal injury;</li>\r\n    <li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\r\n    <li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\r\n    <li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\r\n</ul>\r\n\r\n<p>The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p>\r\n\r\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>', '<h1><span style=\"font-size: 16px;\">At Alokito Bondhu Technical Training Program, accessible from www.alokitobtp.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by Alokito Bondhu Technical Training Program and how we use it.</span></h1><h1><span style=\"font-size: 16px;\">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Alokito Bondhu Technical Training Program. This policy is not applicable to any information collected offline or via channels other than this website.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Consent</span></h1><h1><span style=\"font-size: 16px;\">By using our website, you hereby consent to our Privacy Policy and agree to its terms.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Information we collect</span></h1><h1><span style=\"font-size: 16px;\">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">How we use your information</span></h1><h1><span style=\"font-size: 16px;\">We use the information we collect in various ways, including to:</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Provide, operate, and maintain our website</span></h1><h1><span style=\"font-size: 16px;\">Improve, personalize, and expand our website</span></h1><h1><span style=\"font-size: 16px;\">Understand and analyze how you use our website</span></h1><h1><span style=\"font-size: 16px;\">Develop new products, services, features, and functionality</span></h1><h1><span style=\"font-size: 16px;\">Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</span></h1><h1><span style=\"font-size: 16px;\">Send you emails</span></h1><h1><span style=\"font-size: 16px;\">Find and prevent fraud</span></h1><h1><span style=\"font-size: 16px;\">Log Files</span></h1><h1><span style=\"font-size: 16px;\">Alokito Bondhu Technical Training Program follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Cookies and Web Beacons</span></h1><h1><span style=\"font-size: 16px;\">Like any other website, Alokito Bondhu Technical Training Program uses \"cookies\". These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Our Advertising Partners</span></h1><h1><span style=\"font-size: 16px;\">Some of advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Google</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">https://policies.google.com/technologies/ads</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Advertising Partners Privacy Policies</span></h1><h1><span style=\"font-size: 16px;\">You may consult this list to find the Privacy Policy for each of the advertising partners of Alokito Bondhu Technical Training Program.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on Alokito Bondhu Technical Training Program, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Note that Alokito Bondhu Technical Training Program has no access to or control over these cookies that are used by third-party advertisers.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Third Party Privacy Policies</span></h1><h1><span style=\"font-size: 16px;\">Alokito Bondhu Technical Training Program\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">CCPA Privacy Rights (Do Not Sell My Personal Information)</span></h1><h1><span style=\"font-size: 16px;\">Under the CCPA, among other rights, California consumers have the right to:</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Request that a business delete any personal data about the consumer that a business has collected.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">GDPR Data Protection Rights</span></h1><h1><span style=\"font-size: 16px;\">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Children\'s Information</span></h1><h1><span style=\"font-size: 16px;\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Alokito Bondhu Technical Training Program does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Changes to This Privacy Policy</span></h1><h1><span style=\"font-size: 16px;\">We may update our Privacy Policy from time to time. Thus, we advise you to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately, after they are posted on this page.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Contact Us</span></h1><h1><span style=\"font-size: 16px;\">If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.</span></h1>', '<div>Head Office -01</div><div>Address : Dhubaria Te-Rasta Bazar, Dhubaria, Nagarpur, Tangail, Bangladesh</div><div>Mobile : +88 01734327110;&nbsp; &nbsp;E-mail: maynawellfarefoundation@gmail.com</div><div>www.moyna.xyz</div><div><br></div><div><br></div><div>Shantir Hat Branch-02</div><div>Address : Haji Shopping Center, Main Road, Shantir Hat Bazar, Bhujpur, Fatikchhari, manikgonj, Bangladesh</div><div>Mobile : +88 0xxxxxxxxxxx, E-mail:&nbsp; shantirhat@sebafoundation.org</div><div><br></div><div><br></div><div>Heako Bazar Branch-03</div><div>Address : Tohid Member’s Building, (2nd Floor), Heako Maddhya Bazar, Fatikchhari, Chittagong, Bangladesh</div><div>Mobile : +88 0xxxxxxxxxxx, E-mail: heakobazar@sebafoundation.org</div><div><br></div><div>Vaidderhat Branch-04</div><div>Address : Mahbub Plaza (2nd Floor), Fatikchhari, Chittagong, Bangladesh</div><div>Mobile: +88 0xxxxxxxxxxx, E-mail: vaidderhat@sebafoundation.org</div><div><br></div><div><br></div><div>Chowdhury Hat Branch-05</div><div>Address : Arafat Tower (3rd Floor), Chowdhuryhat, Dataram Road, Hathajari, Tangail, Bangladesh</div><div>Mobile : +88 0xxxxxxxxxxx, E-mail: chowdhury@maynafoundation.org</div><div><br></div><div>Branch-06_ Opening Soon</div><div>Address : ................................................Chittagong, Bangladesh</div><div>Mobile : +88 0xxxxxxxxxxx, E-mail: xxxxxx@sebafoundation.org</div><div><br></div>', '12544', '5400', '89774', '98', 'Go Green Today', 'Save The Children', 'Save Poor People', 'The medical eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet', 'The medical eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet', 'The medical eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet', 'public/ads/657ea3c613398.png', 'public/ads/657ea46d72b4b.png', 'public/ads/657ea690bee80.png', 'public/ads/657eaaed07e2a.png', 'PRESIDENT’S SPEECH', 'GENERAL SECRETARY’S SPEECH', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique magnam voluptate placeat quod. Rem vero voluptas cum, minus ad, cupiditate saepe, quia accusamus tenetur, aut assumenda dolores recusandae repellendus. Provident optio, quibusdam quia doloremque libero! Molestias atque modi quam, labore quos cumque repellat asperiores provident eius, nulla praesentium consectetur mollitia', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique magnam voluptate placeat quod. Rem vero voluptas cum, minus ad, cupiditate saepe, quia accusamus tenetur, aut assumenda dolores recusandae repellendus. Provident optio, quibusdam quia doloremque libero! Molestias atque modi quam, labore quos cumque repellat asperiores provident eius, nulla praesentium consectetur mollitia. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique magnam voluptate placeat quod. Rem vero voluptas cum, minus ad, cupiditate saepe, quia accusamus tenetur, aut assumenda dolores recusandae repellendus. Provident optio, quibusdam quia doloremque libero! Molestias atque modi quam, labore quos cumque repellat asperiores provident eius, nulla praesentium consectetur mollitia. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique magnam voluptate placeat quod. Rem vero voluptas cum, minus ad, cupiditate saepe, quia accusamus tenetur, aut assumenda dolores recusandae repellendus. Provident optio, quibusdam quia doloremque libero! Molestias atque modi quam, labore quos cumque repellat asperiores provident eius, nulla praesentium consectetur mollitia.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique magnam voluptate placeat quod. Rem vero voluptas cum, minus ad, cupiditate saepe, quia accusamus tenetur, aut assumenda dolores recusandae repellendus. Provident optio, quibusdam quia doloremque libero! Molestias atque modi quam, labore quos cumque repellat asperiores provident eius, nulla praesentium consectetur mollitia.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique magnam voluptate placeat quod. Rem vero voluptas cum, minus ad, cupiditate saepe, quia accusamus tenetur, aut assumenda dolores recusandae repellendus. Provident optio, quibusdam quia doloremque libero! Molestias atque modi quam, labore quos cumque repellat asperiores provident eius, nulla praesentium consectetur mollitia. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique magnam voluptate placeat quod. Rem vero voluptas cum, minus ad, cupiditate saepe, quia accusamus tenetur, aut assumenda dolores recusandae repellendus. Provident optio, quibusdam quia doloremque libero! Molestias atque modi quam, labore quos cumque repellat asperiores provident eius, nulla praesentium consectetur mollitia. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique magnam voluptate placeat quod. Rem vero voluptas cum, minus ad, cupiditate saepe, quia accusamus tenetur, aut assumenda dolores recusandae repellendus. Provident optio, quibusdam quia doloremque libero! Molestias atque modi quam, labore quos cumque repellat asperiores provident eius, nulla praesentium consectetur mollitia.', 'public/ads/657ecab4a814f.jpg', 'public/ads/657ed8da0ab3e.jpeg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint UNSIGNED NOT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `twitter`, `youtube`, `instagram`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/profile.php?id=61550511971497&ref=embed_page', 'https://www.facebook.com/profile.php?id=61550511971497&ref=embed_page', 'https://www.youtube.com/@alokitobtp6335', 'https://www.facebook.com/profile.php?id=61550511971497&ref=embed_page', 'https://www.facebook.com/profile.php?id=61550511971497&ref=embed_page', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_bn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_bn`, `subcategory_en`, `created_at`, `updated_at`) VALUES
(55, '20', 'All Project', 'All Project', NULL, NULL),
(56, '21', 'All Service', 'All Service', NULL, NULL),
(57, '22', 'All News', 'All News', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subdistricts`
--

CREATE TABLE `subdistricts` (
  `id` bigint UNSIGNED NOT NULL,
  `district_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdistrict_bn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdistrict_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subdistricts`
--

INSERT INTO `subdistricts` (`id`, `district_id`, `subdistrict_bn`, `subdistrict_en`, `created_at`, `updated_at`) VALUES
(1, '1', 'Mirpur', 'মিরপুর', NULL, NULL),
(2, '1', 'bvbvbvcv', 'bvvbbvbv', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  `district` int DEFAULT NULL,
  `post` int DEFAULT NULL,
  `setting` int DEFAULT NULL,
  `gallery` int DEFAULT NULL,
  `ads` int DEFAULT NULL,
  `role` int DEFAULT NULL,
  `facebookid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profilepic` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allpost` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `type`, `category`, `district`, `post`, `setting`, `gallery`, `ads`, `role`, `facebookid`, `profilepic`, `allpost`) VALUES
(1, 'Phakal Police Lines', 'info@phakal.edu.bd', '2023-11-04 18:40:46', '$2y$10$GUI4DwNqBMs956xDS2DfGeeleWVkXOZYDGjRYMzKjcoFgogsmEIDu', 'aHCxtAk0oFyuM8oBfpTjTCQC905F1FsmfytMf2ejoOg60OW9yb0i0IO9G0PD', '2023-11-04 18:40:46', '2023-11-29 07:34:23', 1, 1, 1, 1, 1, 1, 1, 1, 'https://facebook.com/elitedesignbd', NULL, 1),
(2, 'মোঃ নাঈম হোসেন', 'nayeem@elitedesign.com.bd', NULL, '$2y$10$A4k4Wpgm9a4WM5svlJuR2eeECnXYjsHaWF5E9axWzqPAfG.4ec32K', '1TszKSdPXO6INgOU29dcBxKaviO07ntRaDZCNrBfsNoWIkCv6rhtNPqsnsnQ', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'https://elitedesign.com.bd', NULL, NULL),
(3, 'Abdullah Al Mamun', 'dearsabdullah@gmail.comgmail.com', NULL, '$2y$10$siGhUcIpLuTNtcjGMvzZ5uKixLGM/N6GtemWoEdcdj9cYo5iQTNvW', NULL, '2023-11-16 15:58:18', '2023-11-16 15:58:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `embed_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `embed_code`, `type`, `created_at`, `updated_at`) VALUES
(36, 'Bringing Hope_ A Documentary Film on CSS', '1m3T_j5_Atk', '1', NULL, NULL),
(37, 'What Is NGO', 'KfWEdB1djrA', '1', NULL, NULL),
(38, 'How to start your own ngo in bangla', 'CWztt_UODsE', '1', NULL, NULL),
(39, 'NGO Showreel', 'Sqqj_14wBxU', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` bigint UNSIGNED NOT NULL,
  `website_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `website_name`, `website_link`, `created_at`, `updated_at`) VALUES
(9, 'প্রধানমন্ত্রীর কার্যালয়', 'https://pmo.gov.bd/', NULL, NULL),
(10, 'বাংলাদেশ জাতীয় সংসদ', 'http://www.parliament.gov.bd/', NULL, NULL),
(17, 'বাংলাদেশ সেনাবাহিনী', 'https://www.army.mil.bd/', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livetv`
--
ALTER TABLE `livetv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `namaz`
--
ALTER TABLE `namaz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subdistricts`
--
ALTER TABLE `subdistricts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `livetv`
--
ALTER TABLE `livetv`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `namaz`
--
ALTER TABLE `namaz`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `subdistricts`
--
ALTER TABLE `subdistricts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
