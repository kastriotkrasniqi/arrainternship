-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2022 at 04:18 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internship`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Adidas', 'Available', 'Dorris Bogisich', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(2, 'Nike', 'Available', 'Mrs. Libby Powlowski', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(3, 'Puma', 'Available', 'Mrs. Annetta Collier', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(4, 'Reebook', 'Not Available', 'Sylvester Murray', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_14_143558_create_categories_table', 1),
(6, '2022_02_14_144737_create_products_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `status`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Dr. Arlo Bernhard IV', 69, 'not available', 'Brayan Toy PhD', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(2, 1, 'Mr. Conner Kautzer IV', 98, 'not available', 'Andrew Raynor V', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(3, 1, 'Earnest Bashirian', 163, 'available', 'Trisha Reinger', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(4, 1, 'Boyd Mills', 162, 'available', 'Jess Larson DVM', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(5, 1, 'Ms. Georgianna Douglas', 11, 'available', 'Delpha Armstrong', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(6, 1, 'Miss Susana Muller', 173, 'available', 'Jamey Hagenes', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(7, 1, 'Amaya Rowe', 278, 'not available', 'Ivory Ernser V', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(8, 1, 'Jamey Price', 46, 'not available', 'Mrs. Lois Kessler III', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(9, 1, 'Prof. Cleo Beer', 14, 'not available', 'Rasheed Balistreri', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(10, 1, 'Dr. Delphia Rowe IV', 178, 'not available', 'Estel Walker', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(11, 2, 'Dora O\'Reilly Jr.', 222, 'available', 'Diamond Steuber', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(12, 2, 'Lela Grimes', 182, 'not available', 'Naomi O\'Kon DVM', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(13, 2, 'Luis Stark', 92, 'available', 'Herbert Walsh', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(14, 2, 'Prof. Tyree Deckow PhD', 94, 'available', 'Dr. Mona Boyle', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(15, 2, 'Sydnie O\'Conner', 247, 'not available', 'Kailyn Kling', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(16, 2, 'Dr. Layne Hagenes I', 285, 'not available', 'Cruz Kuphal', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(17, 2, 'General Kuhic', 92, 'available', 'Mr. Isac Lesch I', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(18, 2, 'Miss Janelle Ledner Jr.', 196, 'not available', 'Prof. Lilian Rau', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(19, 2, 'Theodora Hilpert', 116, 'available', 'Eldred Friesen', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(20, 2, 'Duncan Boehm', 124, 'available', 'Gustave Hackett', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(21, 3, 'Opal Ritchie', 56, 'available', 'Ambrose Kemmer', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(22, 3, 'Soledad Stoltenberg', 43, 'available', 'Mrs. Ariane Lockman', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(23, 3, 'Nicholas Muller', 183, 'not available', 'Gerald Mayer', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(24, 3, 'Dovie Bergnaum', 36, 'available', 'Myrl Farrell', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(25, 3, 'Ms. Joanie Davis', 247, 'available', 'Deanna Bernier', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(26, 3, 'Eryn Osinski', 175, 'not available', 'Janick Heaney', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(27, 3, 'Prof. Branson Prohaska DVM', 254, 'not available', 'Mr. Davin Reinger', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(28, 3, 'Prof. Brannon Fritsch', 293, 'not available', 'Dr. Jeanie Roberts', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(29, 3, 'Neil Wolf', 224, 'not available', 'Rosemarie Towne', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(30, 3, 'Prof. Justina Durgan', 272, 'not available', 'Dr. Alize Thiel DDS', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(31, 4, 'Prof. Trace Walker', 190, 'available', 'Maeve Jakubowski', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(32, 4, 'Prof. Krista Champlin Sr.', 62, 'available', 'Vincenzo Luettgen IV', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(33, 4, 'Jeff Sporer', 87, 'available', 'Deshawn Rohan I', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(34, 4, 'Miss Piper Jacobs IV', 39, 'not available', 'Wade Johnson', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(35, 4, 'Hosea Ullrich', 246, 'not available', 'Mr. Kaden Spencer', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(36, 4, 'Robb Becker', 125, 'not available', 'Maxime Hoeger', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(37, 4, 'Pinkie Tromp V', 92, 'available', 'Yolanda Wunsch', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(38, 4, 'Jakayla Nader', 294, 'available', 'Cora Larson II', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(39, 4, 'Serena Bins DDS', 229, 'not available', 'Ms. Lavina Okuneva', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(40, 4, 'Damon Grant', 107, 'not available', 'Dr. Brenden Price III', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(41, 2, 'Winter Hoodie', 120, 'Available', NULL, '2022-02-16 13:33:16', '2022-02-16 13:33:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `username`, `password`, `age`, `address`, `city`, `country`, `created_by`, `email`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Libbie', 'Jacobi', 'lelia83', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '91', '12587 Elmer Lock Suite 014\nCristbury, LA 89839', 'Juanitaville', 'Comoros', 'Dedrick Adams', 'marisa.jacobi@example.net', '2022-02-16 13:31:33', 'z8ZDcE5KgO', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(2, 'Bradley', 'Morissette', 'reilly.adriel', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '98', '142 Alexandra Mission\nLamarfort, NE 56738', 'New Vilma', 'United States of America', 'Prof. Cortney Stokes Jr.', 'haley.nichole@example.com', '2022-02-16 13:31:33', 'r8szRG2Pgs', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(3, 'Margarette', 'O\'Conner', 'ifriesen', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '19', '308 Waelchi Greens\nMelyssaview, KS 09394', 'North Katelyn', 'Christmas Island', 'Mr. Zachary Harvey', 'destiny05@example.net', '2022-02-16 13:31:33', 'Hoj7ZswgBW', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(4, 'Lucious', 'Jacobs', 'alexander64', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '23', '8306 Kellie Club Suite 391\nNorth Tobymouth, KY 56516-2891', 'West Tessie', 'Belarus', 'Francis Miller', 'beaulah.wolff@example.com', '2022-02-16 13:31:33', '78RmndItlU', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(5, 'Elvis', 'Moen', 'wkemmer', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '17', '37602 Wiegand Manors\nEast Kattieshire, IL 14392-4797', 'New Dewaynefurt', 'Mayotte', 'Mrs. Darby Feest II', 'kovacek.assunta@example.net', '2022-02-16 13:31:33', 'MBauq94Oxf', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(6, 'Bernhard', 'Ankunding', 'ed36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '91', '43727 Cathryn Cliffs Apt. 175\nLake Regan, DE 58137', 'Torpside', 'Northern Mariana Islands', 'Dr. Scotty Hill III', 'vbayer@example.org', '2022-02-16 13:31:33', 'ikAv7vc2fE', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(7, 'Arlene', 'Murazik', 'abe82', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '11', '4197 Name Ways\nAbdielchester, KS 52030', 'South Austyn', 'Czech Republic', 'Mariana Glover', 'queenie30@example.org', '2022-02-16 13:31:33', 'UtlfThjLqj', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(8, 'Anastasia', 'O\'Keefe', 'mayra.gutmann', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '40', '92764 Lowe Hollow\nSwaniawskiberg, WA 69602', 'Sonialand', 'Poland', 'Conner Mohr', 'hackett.kathryn@example.org', '2022-02-16 13:31:33', '3537o7Wxk8', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(9, 'Vickie', 'Jakubowski', 'flavie33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '37', '485 Schimmel Ranch Apt. 451\nUptonbury, ID 47643-2761', 'Ernserberg', 'Reunion', 'Granville Wehner I', 'lueilwitz.margot@example.net', '2022-02-16 13:31:33', '8HA6QZmp5J', '2022-02-16 13:31:33', '2022-02-16 13:31:33', NULL),
(11, 'Kelly Frost', 'Wells', 'lyvazazac', '$2y$10$qkO1QONuxv0lonokHcZEV.Yvu10j9Qu6XOvWhOh4ZkUnQ1Jn3Rl9.', '3', 'Quam natus porro pla', 'Laudantium culpa d', 'Neque aliqua Aut fu', NULL, 'krasniqikastriot01@gmail.com', NULL, NULL, '2022-02-16 13:31:49', '2022-02-16 13:31:49', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
