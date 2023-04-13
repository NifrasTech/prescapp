-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2023 at 08:50 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2023_04_11_082433_add_type_to_users_table', 1),
(13, '2023_04_11_084708_add_columns_to_users_table', 2),
(14, '2023_04_11_151209_create_prescriptions_table', 3),
(15, '2023_04_11_153001_create_prescription_images_table', 4),
(16, '2023_04_11_192029_create_quotations_table', 5),
(18, '2023_04_11_193045_create_quotation_items_table', 6),
(19, '2023_04_12_175439_create_notifications_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('6f126956-acce-4adb-b079-2e7126aa70a1', 'App\\Notifications\\NotifyQuotationStatus', 'App\\Models\\User', 4, '{\"quotation_id\":5,\"quotation_status\":\"created\",\"user\":{\"id\":4,\"name\":\"Ajmal\",\"email\":\"ajmal@email.com\",\"email_verified_at\":null,\"created_at\":\"2023-04-11T03:38:34.000000Z\",\"updated_at\":\"2023-04-11T03:38:34.000000Z\",\"type\":\"user\",\"address\":\"Batticaloa\",\"dob\":\"2023-04-13\",\"contact_number\":\"231232\"}}', '2023-04-13 06:49:29', '2023-04-13 06:09:54', '2023-04-13 06:49:29'),
('f81230d5-6828-4819-acd0-25b502f86b76', 'App\\Notifications\\NotifyQuotationStatus', 'App\\Models\\User', 1, '{\"quotation_id\":3,\"quotation_status\":\"accepted\",\"user\":{\"id\":4,\"name\":\"Ajmal\",\"email\":\"ajmal@email.com\",\"email_verified_at\":null,\"created_at\":\"2023-04-11T03:38:34.000000Z\",\"updated_at\":\"2023-04-11T03:38:34.000000Z\",\"type\":\"user\",\"address\":\"Batticaloa\",\"dob\":\"2023-04-13\",\"contact_number\":\"231232\"}}', NULL, '2023-04-13 06:05:43', '2023-04-13 06:05:43'),
('fb2c1263-040c-41e9-9cbd-ef7b8aa2560c', 'App\\Notifications\\NotifyQuotationStatus', 'App\\Models\\User', 4, '{\"quotation_id\":4,\"quotation_status\":null,\"user\":{\"id\":4,\"name\":\"Ajmal\",\"email\":\"ajmal@email.com\",\"email_verified_at\":null,\"created_at\":\"2023-04-11T03:38:34.000000Z\",\"updated_at\":\"2023-04-11T03:38:34.000000Z\",\"type\":\"user\",\"address\":\"Batticaloa\",\"dob\":\"2023-04-13\",\"contact_number\":\"231232\"}}', '2023-04-13 06:10:57', '2023-04-13 06:08:11', '2023-04-13 06:10:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `user_id`, `note`, `address`, `delivery_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Urgent', 'Oddamavadi, batticaloa', '12:42', 'pending', '2023-04-13 05:10:13', '2023-04-13 05:10:13'),
(2, 4, NULL, 'Oddamavadi, batticaloa', '13:26', 'pending', '2023-04-13 05:54:54', '2023-04-13 05:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `prescription_images`
--

CREATE TABLE `prescription_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prescription_id` bigint(20) UNSIGNED NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prescription_images`
--

INSERT INTO `prescription_images` (`id`, `prescription_id`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 1, '/storage/prescriptions/1681362613_0.webp', '2023-04-13 05:10:13', '2023-04-13 05:10:13'),
(2, 1, '/storage/prescriptions/1681362613_1.webp', '2023-04-13 05:10:13', '2023-04-13 05:10:13'),
(3, 1, '/storage/prescriptions/1681362613_2.jpeg', '2023-04-13 05:10:13', '2023-04-13 05:10:13'),
(4, 2, '/storage/prescriptions/1681365294_0.webp', '2023-04-13 05:54:55', '2023-04-13 05:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `prescription_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `user_id`, `prescription_id`, `status`, `total`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'delivered', '8500.00', '2023-04-13 05:13:03', '2023-04-13 05:30:52'),
(2, 3, 1, 'pending', '331410.00', '2023-04-13 05:30:16', '2023-04-13 05:30:16'),
(3, 4, 2, 'accepted', '4352.00', '2023-04-13 05:56:08', '2023-04-13 06:05:43'),
(4, 4, 2, 'pending', '2000.00', '2023-04-13 06:08:11', '2023-04-13 06:08:11'),
(5, 4, 2, 'pending', '1500.00', '2023-04-13 06:09:54', '2023-04-13 06:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_items`
--

CREATE TABLE `quotation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `drug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotation_items`
--

INSERT INTO `quotation_items` (`id`, `drug`, `quantity`, `amount`, `quotation_id`, `created_at`, `updated_at`) VALUES
(1, 'Paracetamol', '20.00', '200.00', 1, '2023-04-13 05:13:03', '2023-04-13 05:13:03'),
(2, 'Ibuprofen', '10.00', '150.00', 1, '2023-04-13 05:13:03', '2023-04-13 05:13:03'),
(3, 'Calpol', '1.00', '3000.00', 1, '2023-04-13 05:13:03', '2023-04-13 05:13:03'),
(4, 'Levolin', '3.00', '4000.00', 2, '2023-04-13 05:30:16', '2023-04-13 05:30:16'),
(5, 'Meftal', '45.00', '7098.00', 2, '2023-04-13 05:30:16', '2023-04-13 05:30:16'),
(6, 'Ibuprofen', '8.00', '40.00', 3, '2023-04-13 05:56:08', '2023-04-13 05:56:08'),
(7, 'Pracetamol', '56.00', '72.00', 3, '2023-04-13 05:56:08', '2023-04-13 05:56:08'),
(8, 'Paracetamol', '100.00', '20.00', 4, '2023-04-13 06:08:11', '2023-04-13 06:08:11'),
(9, 'Paracetamol', '30.00', '50.00', 5, '2023-04-13 06:09:54', '2023-04-13 06:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `type`, `address`, `dob`, `contact_number`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$2D5HnbcD8xEhk7NXHB1QeeR1mrFvtg7h2Mzwhuaw/gwd2ge423YCe', NULL, '2023-04-11 03:11:08', '2023-04-11 03:11:08', 'pharmacy', '', NULL, NULL),
(3, 'Nifras', 'nifras@gmail.com', NULL, '$2y$10$YexmLXvo5Pnw83LpGXAmqOh/c467Sj7bwX//9JW3pLcvbvOmsf4J.', NULL, '2023-04-11 03:32:04', '2023-04-11 03:32:04', 'user', 'Batticaloa', NULL, '0772794984'),
(4, 'Ajmal', 'ajmal@email.com', NULL, '$2y$10$BPM.BQPWBmg9v4UlhoB9QOFzD5tc6OG7uIY5TRIC1UIDxrURJm94K', NULL, '2023-04-11 03:38:34', '2023-04-11 03:38:34', 'user', 'Batticaloa', '2023-04-13', '231232');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prescriptions_user_id_foreign` (`user_id`);

--
-- Indexes for table `prescription_images`
--
ALTER TABLE `prescription_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prescription_images_prescription_id_foreign` (`prescription_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotations_user_id_foreign` (`user_id`),
  ADD KEY `quotations_prescription_id_foreign` (`prescription_id`);

--
-- Indexes for table `quotation_items`
--
ALTER TABLE `quotation_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_items_quotation_id_foreign` (`quotation_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prescription_images`
--
ALTER TABLE `prescription_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quotation_items`
--
ALTER TABLE `quotation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD CONSTRAINT `prescriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `prescription_images`
--
ALTER TABLE `prescription_images`
  ADD CONSTRAINT `prescription_images_prescription_id_foreign` FOREIGN KEY (`prescription_id`) REFERENCES `prescriptions` (`id`);

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `quotations_prescription_id_foreign` FOREIGN KEY (`prescription_id`) REFERENCES `prescriptions` (`id`),
  ADD CONSTRAINT `quotations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `quotation_items`
--
ALTER TABLE `quotation_items`
  ADD CONSTRAINT `quotation_items_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
