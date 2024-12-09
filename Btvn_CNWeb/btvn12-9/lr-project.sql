-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 09, 2024 lúc 05:05 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lr-project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_12_09_150946_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Title 1', 'This is the content for post 1', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(2, 'Title 2', 'This is the content for post 2', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(3, 'Title 3', 'This is the content for post 3', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(4, 'Title 4', 'This is the content for post 4', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(5, 'Title 5', 'This is the content for post 5', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(6, 'Title 6', 'This is the content for post 6', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(7, 'Title 7', 'This is the content for post 7', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(8, 'Title 8', 'This is the content for post 8', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(9, 'Title 9', 'This is the content for post 9', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(10, 'Title 10', 'This is the content for post 10', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(11, 'Title 11', 'This is the content for post 11', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(12, 'Title 12', 'This is the content for post 12', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(13, 'Title 13', 'This is the content for post 13', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(14, 'Title 14', 'This is the content for post 14', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(15, 'Title 15', 'This is the content for post 15', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(16, 'Title 16', 'This is the content for post 16', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(17, 'Title 17', 'This is the content for post 17', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(18, 'Title 18', 'This is the content for post 18', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(19, 'Title 19', 'This is the content for post 19', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(20, 'Title 20', 'This is the content for post 20', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(21, 'Title 21', 'This is the content for post 21', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(22, 'Title 22', 'This is the content for post 22', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(23, 'Title 23', 'This is the content for post 23', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(24, 'Title 24', 'This is the content for post 24', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(25, 'Title 25', 'This is the content for post 25', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(26, 'Title 26', 'This is the content for post 26', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(27, 'Title 27', 'This is the content for post 27', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(28, 'Title 28', 'This is the content for post 28', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(29, 'Title 29', 'This is the content for post 29', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(30, 'Title 30', 'This is the content for post 30', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(31, 'Title 31', 'This is the content for post 31', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(32, 'Title 32', 'This is the content for post 32', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(33, 'Title 33', 'This is the content for post 33', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(34, 'Title 34', 'This is the content for post 34', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(35, 'Title 35', 'This is the content for post 35', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(36, 'Title 36', 'This is the content for post 36', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(37, 'Title 37', 'This is the content for post 37', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(38, 'Title 38', 'This is the content for post 38', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(39, 'Title 39', 'This is the content for post 39', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(40, 'Title 40', 'This is the content for post 40', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(41, 'Title 41', 'This is the content for post 41', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(42, 'Title 42', 'This is the content for post 42', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(43, 'Title 43', 'This is the content for post 43', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(44, 'Title 44', 'This is the content for post 44', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(45, 'Title 45', 'This is the content for post 45', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(46, 'Title 46', 'This is the content for post 46', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(47, 'Title 47', 'This is the content for post 47', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(48, 'Title 48', 'This is the content for post 48', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(49, 'Title 49', 'This is the content for post 49', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(50, 'Title 50', 'This is the content for post 50', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(51, 'Title 51', 'This is the content for post 51', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(52, 'Title 52', 'This is the content for post 52', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(53, 'Title 53', 'This is the content for post 53', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(54, 'Title 54', 'This is the content for post 54', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(55, 'Title 55', 'This is the content for post 55', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(56, 'Title 56', 'This is the content for post 56', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(57, 'Title 57', 'This is the content for post 57', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(58, 'Title 58', 'This is the content for post 58', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(59, 'Title 59', 'This is the content for post 59', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(60, 'Title 60', 'This is the content for post 60', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(61, 'Title 61', 'This is the content for post 61', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(62, 'Title 62', 'This is the content for post 62', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(63, 'Title 63', 'This is the content for post 63', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(64, 'Title 64', 'This is the content for post 64', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(65, 'Title 65', 'This is the content for post 65', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(66, 'Title 66', 'This is the content for post 66', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(67, 'Title 67', 'This is the content for post 67', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(68, 'Title 68', 'This is the content for post 68', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(69, 'Title 69', 'This is the content for post 69', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(70, 'Title 70', 'This is the content for post 70', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(71, 'Title 71', 'This is the content for post 71', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(72, 'Title 72', 'This is the content for post 72', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(73, 'Title 73', 'This is the content for post 73', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(74, 'Title 74', 'This is the content for post 74', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(75, 'Title 75', 'This is the content for post 75', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(76, 'Title 76', 'This is the content for post 76', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(77, 'Title 77', 'This is the content for post 77', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(78, 'Title 78', 'This is the content for post 78', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(79, 'Title 79', 'This is the content for post 79', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(80, 'Title 80', 'This is the content for post 80', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(81, 'Title 81', 'This is the content for post 81', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(82, 'Title 82', 'This is the content for post 82', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(83, 'Title 83', 'This is the content for post 83', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(84, 'Title 84', 'This is the content for post 84', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(85, 'Title 85', 'This is the content for post 85', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(86, 'Title 86', 'This is the content for post 86', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(87, 'Title 87', 'This is the content for post 87', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(88, 'Title 88', 'This is the content for post 88', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(89, 'Title 89', 'This is the content for post 89', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(90, 'Title 90', 'This is the content for post 90', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(91, 'Title 91', 'This is the content for post 91', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(92, 'Title 92', 'This is the content for post 92', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(93, 'Title 93', 'This is the content for post 93', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(94, 'Title 94', 'This is the content for post 94', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(95, 'Title 95', 'This is the content for post 95', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(96, 'Title 96', 'This is the content for post 96', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(97, 'Title 97', 'This is the content for post 97', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(98, 'Title 98', 'This is the content for post 98', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(99, 'Title 99', 'This is the content for post 99', '2024-12-09 08:58:43', '2024-12-09 08:58:43'),
(100, 'Title 100', 'This is the content for post 100', '2024-12-09 08:58:43', '2024-12-09 08:58:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
