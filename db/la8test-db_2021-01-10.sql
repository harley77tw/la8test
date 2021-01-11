-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2021-01-10 13:27:47
-- 伺服器版本： 8.0.18
-- PHP 版本： 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `la8test`
--

-- --------------------------------------------------------

--
-- 資料表結構 `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` enum('draft','published') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `state`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'title3', 'content3', 'draft', '2021-01-02 06:11:37', NULL, '2021-01-02 06:11:37'),
(5, 'sfsfsdf', 'safsadfsafdsd', 'draft', '2021-01-02 02:29:35', NULL, '2021-01-02 02:29:35'),
(7, '123', '456', 'draft', NULL, '2021-01-02 02:42:10', '2021-01-02 05:42:58'),
(8, 'testswte', 'sdfsaff', 'draft', '2021-01-02 06:19:02', '2021-01-02 02:44:35', '2021-01-02 06:19:02'),
(9, 'ddddddddd', 'ddddddddddddd', 'draft', '2021-01-02 06:19:19', '2021-01-02 02:45:34', '2021-01-02 06:19:19'),
(10, 'aaaaaaaaaaa', 'aaaaaaaaaaaaa', 'draft', NULL, '2021-01-02 02:45:39', '2021-01-02 02:45:39'),
(11, 'bbbbbb', 'bbbbbbbbbbbbbbbbb', 'draft', NULL, '2021-01-02 02:45:44', '2021-01-02 02:45:44'),
(12, 'testtitle', 'testcontent', 'draft', NULL, '2021-01-02 05:46:46', '2021-01-02 05:46:46'),
(13, 'Retha Schultz', 'Rowan Carroll', 'draft', NULL, '2021-01-02 06:45:46', '2021-01-02 06:45:46'),
(14, 'Harmon Little', 'Selina Kshlerin', 'draft', NULL, '2021-01-02 06:46:00', '2021-01-02 06:46:00'),
(15, 'Darrion Lehner', 'Prof. Pinkie Franecki DVM', 'draft', NULL, '2021-01-02 06:47:28', '2021-01-02 06:47:28'),
(16, 'Dr. Annabelle Dickinson Sr.', 'Dr. Tillman Zemlak', 'draft', NULL, '2021-01-02 06:47:29', '2021-01-02 06:47:29'),
(17, 'Ryleigh VonRueden', 'Taryn Lubowitz DVM', 'draft', NULL, '2021-01-02 06:47:30', '2021-01-02 06:47:30'),
(18, 'Mr. Oswaldo Orn', 'Beaulah Murray', 'draft', NULL, '2021-01-02 06:47:31', '2021-01-02 06:47:31'),
(19, 'Maxime Mann', 'Ms. Alta Baumbach', 'draft', NULL, '2021-01-02 06:47:32', '2021-01-02 06:47:32'),
(20, 'Sally Bashirian', 'Marianne O\'Reilly', 'draft', NULL, '2021-01-02 06:47:33', '2021-01-02 06:47:33'),
(21, 'Wayne Durgan V', 'Daniela Gaylord', 'draft', NULL, '2021-01-02 06:47:33', '2021-01-02 06:47:33'),
(22, 'Sage Cummerata', 'Mrs. Virgie Kuvalis IV', 'draft', NULL, '2021-01-02 06:47:34', '2021-01-02 06:47:34'),
(23, 'Adaline Champlin', 'Malcolm Hilpert', 'draft', NULL, '2021-01-02 06:47:35', '2021-01-02 06:47:35'),
(24, 'Helene Roberts IV', 'Hannah Grimes', 'draft', NULL, '2021-01-02 06:47:36', '2021-01-02 06:47:36');

-- --------------------------------------------------------

--
-- 資料表結構 `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `authors`
--

INSERT INTO `authors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '瓊瑤', '2021-01-09 20:34:15', '2021-01-09 20:35:44'),
(2, '金庸', '2021-01-09 20:38:51', '2021-01-09 20:39:08'),
(3, '倪匡', '2021-01-09 21:01:01', '2021-01-09 21:01:01');

-- --------------------------------------------------------

--
-- 資料表結構 `author_book`
--

CREATE TABLE `author_book` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `author_book`
--

INSERT INTO `author_book` (`id`, `book_id`, `author_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `books`
--

INSERT INTO `books` (`id`, `store_id`, `title`, `description`, `price`, `available`, `created_at`, `updated_at`) VALUES
(1, 1, '天龍八部', '很多作者', '100.00', 0, '2021-01-09 01:48:41', '2021-01-09 08:09:12'),
(2, 1, '失火的天堂', '其中一本書', '300.00', 0, '2021-01-09 07:48:32', '2021-01-09 08:29:30'),
(3, NULL, '還珠格格', '其中一本書', '300.00', 0, '2021-01-09 21:08:45', '2021-01-09 21:08:45');

-- --------------------------------------------------------

--
-- 資料表結構 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2020_12_29_020143_create_articles_table', 2),
(8, '2020_12_29_024832_fixart', 3),
(9, '2020_12_29_025146_fixart2', 4),
(12, '2020_12_29_025424_fixart3', 5),
(13, '2020_12_29_030527_fixart4', 6),
(14, '2020_12_29_030631_fixart5', 7),
(15, '2021_01_09_090214_create_books_table', 8),
(16, '2021_01_09_113433_create_stores_table', 9),
(17, '2021_01_09_155013_add_store_id_to_books', 10),
(18, '2021_01_10_040128_create_authors_table', 11),
(19, '2021_01_10_041702_create_table_author_book', 11),
(20, '2021_01_10_042621_create_author_book', 12);

-- --------------------------------------------------------

--
-- 資料表結構 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `stores`
--

INSERT INTO `stores` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, '測試商店', '2021-01-09 07:42:40', '2021-01-09 07:42:40'),
(2, '綠色商店', '2021-01-09 07:43:56', '2021-01-09 07:43:56');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'harley', 'harley77tw@gmail.com', NULL, '$2y$10$O8PCqGXbUthgEhV/ufgyMe9YKOJjiI7c1mhqrXO7qC2bhjdoqg70q', 'QIhDlkbpZmmU9HanHO1h9TlRWt4NInjbZImINS5FURR4fCMcJxAvtXiIHAGv', '2020-12-24 18:06:46', '2020-12-24 18:48:38');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `author_book`
--
ALTER TABLE `author_book`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- 資料表索引 `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `author_book`
--
ALTER TABLE `author_book`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
