-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2021 at 10:53 PM
-- Server version: 10.3.28-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nib`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `email_verified_at`, `phone`, `password`, `gender`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@bit.com', NULL, '5666565', '$2y$10$3/Ho7Mr5pHRlvC6Awip45ekE3NVq1BAj/Hi5P0saqq1BB80UTPVmu', '1', NULL, '2021-12-14 06:54:27', '2021-12-14 06:54:27');

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
(5, '2021_11_26_184251_create_profiles_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('fafo.moh@gmail.com', '$2y$10$dMlHhmtfjstm8uKBrFRui.YnjukdeSedrs6X06j9OIcM6.yXOMT/6', '2021-10-04 09:03:40');

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
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital_status` int(11) NOT NULL,
  `military_status` int(11) NOT NULL,
  `dob` date NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vacancy_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name_ar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name_ar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` int(11) NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `first_name`, `last_name`, `marital_status`, `military_status`, `dob`, `mobile`, `nationality`, `gender`, `email`, `national_number`, `address`, `vacancy_id`, `created_at`, `updated_at`, `photo`, `cv`, `first_name_ar`, `last_name_ar`, `experience`, `city`) VALUES
(2, 'fatima', 'mohamad', 2, 1, '1991-03-18', '993524415', '1', 2, 'fafo.moh@gmail.com', '963258741', 'damascus syria', 1, '2021-11-27 03:57:53', '2021-11-27 03:57:53', '16be6b7f98682bf7c7c2704d02c7a021.png', 'c0374ea808ceed7da19c8719e987eca9.pdf', '', '', 0, ''),
(3, 'fatima', 'fadi', 1, 1, '2006-01-17', '+10988728260', '1', 2, 'fadi.alfrejat@gmail.com', '651561615616', 'Syria , Damascus,Barzeh', 1, '2021-12-19 14:08:50', '2021-12-19 14:08:50', '5388bebb16882cc95c72bc47ac1e209b.png', 'c2d4d23667925822c2c56f7a0c9c7d05.pdf', '??????????', '??????????', 1, 'Damascus');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `regret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thank` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `regret`, `thank`, `created_at`, `updated_at`) VALUES
(1, 'We appreciate the time and energy that you have invested in applying to join us. I regret to inform you that your current qualifications do not match those needed for our current vacancy. We will keep your resume, just in case we have an opening that closely matches your skillset.\r\n\r\nThank you for your interest in joining us for this position. I wish you every personal and professional success in your future endeavors.\r\n\r\nKindest regards', 'hello there', NULL, '2021-12-19 13:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` set('male','female','','') CHARACTER SET utf8 DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `email_verified_at`, `phone`, `password`, `gender`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, 'fatima.mohammad.sy@gmail.com', NULL, NULL, '$2y$10$xCGOW1Pc6IYpKRor9t9r3uNjEgBiEbA3BpW9VUBe0qJnQf0y4KGnG', 'male', NULL, '2021-10-04 09:02:59', '2021-10-04 09:02:59'),
(5, NULL, NULL, 'fafo.moh@gmail.com', NULL, NULL, '$2y$10$Qi/pxwLOFuenuuSFAlxlV.dig88qJNgQ52EWHRHQKfbbNEStOnwna', NULL, NULL, '2021-10-04 10:52:01', '2021-10-04 10:52:01'),
(6, NULL, NULL, 'd.alloush@optidesign.net', NULL, NULL, '$2y$10$m/hhLqzf0ChZTckEnTRxOu06CFKcx8J3mY3qKe8DObC8KSnVC8F6a', NULL, NULL, '2021-10-09 07:07:55', '2021-10-09 07:07:55'),
(7, NULL, NULL, 'ali.moh@gmail.com', NULL, NULL, '$2y$10$EzrRxTZFxpKfHnm8Wcq6NuHRVuilnIG4QUSLGLF1ivBl2bjtYW3uG', NULL, NULL, '2021-11-30 20:50:46', '2021-11-30 20:50:46'),
(8, NULL, NULL, 'fadi.alfrejat@gmail.com', NULL, NULL, '$2y$10$z/tajcjL73kCcXjLIq.hTuGE1muzhESCZl3bqg.kIb.zkJFtvHyc2', NULL, NULL, '2021-12-18 10:44:18', '2021-12-18 10:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `vacancies`
--

CREATE TABLE `vacancies` (
  `ID` bigint(20) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Governorate` set('????????','?????? ????????','??????','??????','????????????????','????????','??????????') NOT NULL,
  `Code` varchar(7) NOT NULL,
  `Description` tinytext NOT NULL,
  `Qualifications` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vacancies`
--

INSERT INTO `vacancies` (`ID`, `Title`, `Department`, `Governorate`, `Code`, `Description`, `Qualifications`) VALUES
(1, 'Network datacom', 'IT Department', '????????', 'IT21-01', 'ITITITITITITITITIT', 'test testtest testtest testtest testtest testtest testtest test'),
(2, 'Secretary', 'Admin', '??????', 'SC21-01', 'simple text simple textsimple textsimple textsimple text', 'simple text simple textsimple textsimple text');

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
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vacancies`
--
ALTER TABLE `vacancies`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vacancies`
--
ALTER TABLE `vacancies`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
