-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 20, 2024 at 08:25 AM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u742099740_pos`
--

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
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(31, 'Tech', '2024-07-15 18:39:35', '2024-07-15 18:39:35'),
(32, 'Garments', '2024-07-15 21:32:32', '2024-07-15 21:32:32'),
(33, 'Fruit', '2024-07-15 22:17:02', '2024-07-15 22:17:02'),
(34, 'Instance of \'Category\'', '2024-07-15 22:24:11', '2024-07-15 22:24:11'),
(35, 'Cosmetics', '2024-07-17 18:18:53', '2024-07-17 18:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `coupens`
--

CREATE TABLE `coupens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rule` varchar(255) DEFAULT NULL,
  `client_type` varchar(255) DEFAULT NULL,
  `pricestatus` varchar(255) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `cprice` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'iphone12', '2024-07-15 21:30:02', '2024-07-15 21:30:02'),
(3, 'iphone11', '2024-07-15 21:30:39', '2024-07-15 21:30:39'),
(4, 'iphone6', '2024-07-15 22:15:24', '2024-07-15 22:15:24'),
(5, NULL, '2024-07-16 20:07:18', '2024-07-16 20:07:18'),
(6, NULL, '2024-07-17 09:33:00', '2024-07-17 09:33:00'),
(7, NULL, '2024-07-17 09:34:11', '2024-07-17 09:34:11'),
(8, NULL, '2024-07-17 09:35:50', '2024-07-17 09:35:50');

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
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prodtype` varchar(255) DEFAULT NULL,
  `brandname` varchar(255) DEFAULT NULL,
  `prodname` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `carrier` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `storage` varchar(255) DEFAULT NULL,
  `phycond` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `rprice` bigint(20) DEFAULT NULL,
  `mrprice` bigint(20) DEFAULT NULL,
  `wprice` bigint(20) DEFAULT NULL,
  `mwprice` bigint(20) DEFAULT NULL,
  `imei` varchar(255) DEFAULT NULL,
  `prodesc` varchar(255) DEFAULT NULL,
  `aiproddesc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `prodtype`, `brandname`, `prodname`, `model`, `carrier`, `category`, `supplier`, `color`, `storage`, `phycond`, `sku`, `rprice`, `mrprice`, `wprice`, `mwprice`, `imei`, `prodesc`, `aiproddesc`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'Samsung', 'Galaxy S21', 'SM-G998B', 'Unlocked', 'Smartphone', 'Samsung', 'Phantom Black', '128GB', 'New', 'GALAXY-S21-BLK', 799, 999, 750, 800, '356938035643809', 'Latest Samsung Galaxy S21 with advanced features', 'AI-generated product description', '2024-07-17 07:51:01', '2024-07-17 07:51:01'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-17 11:26:28', '2024-07-17 11:26:28'),
(3, NULL, 'Iphone', 'se', 'iphone6', 'acz', 'Tech', 'iphone', 'black', '64', 'new', 'SDFGG', 10000, 90000, 50000, 4000, NULL, NULL, NULL, '2024-07-17 14:32:15', '2024-07-17 14:32:15'),
(4, NULL, 'Iphone', 'se', 'iphone12', 'axxx', 'Tech', 'iphone', 'blck', '64', 'new', 'DDDDKN', 10000, 2990, 223, 223, NULL, NULL, NULL, '2024-07-17 14:41:09', '2024-07-17 14:41:09'),
(5, NULL, 'Iphone', 'se', 'iphone12', 'acx', 'Tech', 'iphone', 'blk', '64', 'new', 'DFFFF', 1002, 1000, 900, 800, NULL, NULL, NULL, '2024-07-17 15:01:41', '2024-07-17 15:01:41'),
(6, NULL, 'Iphone', 'se', 'iphone12', 'as', 'Tech', 'ipone', 'blk', '45', 'new', 'SDF', 12, 1, 1, 1, 'ddff', 'eee', 'rere', '2024-07-17 15:10:02', '2024-07-17 15:10:02'),
(7, NULL, 'Iphone', 'see', 'iphone12', 'as', 'Tech', 'iphoine', 'bllk', '54', 'new', 'SMDDJNJ', 1, 1, 1, 1, 'ass', 'sss', 'sdf', '2024-07-17 15:15:51', '2024-07-17 15:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturars`
--

CREATE TABLE `manufacturars` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `logo` varchar(400) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturars`
--

INSERT INTO `manufacturars` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(5, 'Iphone', NULL, '2024-07-17 13:50:46', '2024-07-17 13:50:46'),
(6, 'Samsung', NULL, '2024-07-17 13:50:53', '2024-07-17 13:50:53');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_25_182609_create_personal_access_tokens_table', 2),
(5, '2024_05_26_084709_create_products_table', 2),
(6, '2024_05_29_183947_create_categories_table', 3),
(7, '2024_06_02_112852_create_coupens_table', 4),
(8, '2024_06_04_104307_create_tickets_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `pcat` varchar(255) DEFAULT NULL,
  `puuid` varchar(255) DEFAULT NULL,
  `pprice` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ptype` varchar(400) DEFAULT NULL,
  `psupplier` varchar(500) DEFAULT NULL,
  `sku` varchar(400) DEFAULT NULL,
  `rprice` varchar(400) DEFAULT NULL,
  `pmodel` varchar(400) DEFAULT NULL,
  `alert` varchar(600) DEFAULT NULL,
  `pdes` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pname`, `pcat`, `puuid`, `pprice`, `created_at`, `updated_at`, `ptype`, `psupplier`, `sku`, `rprice`, `pmodel`, `alert`, `pdes`) VALUES
(40, 'iphone11', 'Tech', NULL, 1150000, '2024-07-15 22:40:04', '2024-07-15 22:40:04', NULL, 'abc', 'DJNDJ', '10000', 'iphone11', 'no alertno des', 'no des'),
(41, 'iphone6', 'Tech', NULL, 12000, '2024-07-15 22:53:59', '2024-07-15 22:53:59', NULL, 'abc', 'KSMS', '10000', 'iphone6', 'no alert', 'no des'),
(42, '12', 'Tech', NULL, 50000, '2024-07-15 22:55:54', '2024-07-15 22:55:54', NULL, 'xyz', 'KSSKM', '200000', 'iphone12', 'no alertno des', 'no des'),
(43, '12', 'Tech', NULL, 12345, '2024-07-15 23:01:22', '2024-07-15 23:01:22', NULL, 'abc', 'SSKNK', '1000', 'iphone12', 'no aleert', 'no des'),
(44, '12', 'Tech', NULL, 12000, '2024-07-15 23:05:09', '2024-07-15 23:05:09', NULL, 'abc', 'NSSNS', '2330', 'iphone12', 'no alert', 'no des'),
(45, '11', 'Tech', NULL, 120000, '2024-07-15 23:08:52', '2024-07-15 23:08:52', NULL, 'abc', 'NDNDJ', '10000', 'iphone11', 'no alert', 'no des');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('iPz1YXhEwROyYzH2BYFKqhBUrSHKNZgkKB3ZIdHI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicXBrRHZ1c0VEa0tZTzc3OVNNcjQydFVhcUFjaXNVeHgxYnUxRDNTZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717520527),
('kjMxvSk1khi2dQJ3MqIIg45hF4odRGz6V5MwBmHd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS2J4WXFJRjFOdEdrVnE4YmI4RzB5allqd1dRQWlDUjZOaHBTNm1LRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717438766),
('LbmGbbbNpt6rsb3bWF9s0ENrXx6ZElhyRBsPZkwy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVU1RjRzUEFLYzQ3QUUzNjNhRnBESUVUY0pQZjdaVDJsWW01YmRybCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717008870),
('NtBrMkLFD8NpSQDRsSyuCNtOKdtu07LULN9K5AXI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGFGcWtwR1BuZHR1YWMwdE5Ma2RpUjhDUEdRSWlBRVcxdm1KRll5SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717438766),
('p0iqZXQ5QqI0dYa3kpTAEEUNKsVBySRXqbfkyGcR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDJYRnV6ZjZ6ZklWQWZEZkVJeFByTnJ2MFJuaUlobllEbk16bUZPRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fX0=', 1716661400),
('xc8HjXBQo5jAYeuw42U3qicbJw7GEtVO8Sc5WHcE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidWdmNkh0UzU0SmFwUnZPYjdvWVlRUHM4anpPUXMyN3FCb0FwUm5IRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716661096);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_type` varchar(255) DEFAULT NULL,
  `ticket_status` varchar(255) DEFAULT NULL,
  `desciption` varchar(255) DEFAULT NULL,
  `senderName` varchar(255) DEFAULT NULL,
  `email` varchar(400) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `cemail` varchar(255) DEFAULT NULL,
  `cphone` varchar(255) DEFAULT NULL,
  `clocation` varchar(255) DEFAULT NULL,
  `clogo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `state`, `country`, `zipcode`, `address1`, `address2`, `cname`, `cemail`, `cphone`, `clocation`, `clogo`, `phone`, `username`, `pin`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'zain', 'Robbinson', 'test@mail.com', 'California', 'USA', '12121', 'test address 1', 'testaddresss 2 dreamland', 'wallmart', 'walmart@mail.com', '1234213123123', 'test location wallmart', NULL, '034234234', 'testdocyser', '1212', NULL, NULL, NULL, '2024-05-25 13:28:56', '2024-06-26 12:31:06'),
(6, 'John', 'Shah', 'hammadbukhari4267@gmail.com', 'punhab', 'pakistan', '5400', 'dreamland123', 'tesetaddasf', 'Fuzz', 'testhub@mail.com', 'tet kiatuib', 'test location', '1719135714.jfif', '0343423423', 'dsafjaldsjfalkdsj', '2592', NULL, NULL, NULL, '2024-06-23 09:41:54', '2024-07-20 08:23:26'),
(7, 'harry', 'lim', 'harry@mail.com', 'punjb', 'paksitan', '5400', 'dreamland123', 'dreamland', 'Systems', 'cc2@example.com', '313123123', 'ewrwerew', '1719137785.PNG', '32223423', 'harrylim1212', '1212', NULL, NULL, NULL, '2024-06-23 10:16:25', '2024-06-23 10:16:25'),
(8, 'harry', 'lim', 'harry1@mail.com', 'punjb', 'paksitan', '5400', 'dreamland123', NULL, 'Systems', 'cc2@example.com', '313123123', 'ewrwerew', '1719138069.PNG', '32223423', 'harrylim121212', '1212', NULL, NULL, NULL, '2024-06-23 10:21:09', '2024-06-23 10:21:09'),
(9, 'zaini', 'zain1', 'zain@gmail.com', 'sgd', 'pk', '0000', 'sgd', NULL, 'abc', 'abc@gmail.com', '123345', 'sgd', '1719144953.png', '098765', 'zain12', '1234', NULL, NULL, NULL, '2024-06-23 12:15:53', '2024-06-26 12:51:14'),
(10, 'usman', 'u1', 'usman@gmail.com', 'sgd', 'pk', '0000', 'sgd', NULL, 'xyz', 'xyz@gmail.com', '1234567', 'sgd', '1719324029.png', '1234567', 'usman12', '1234', NULL, NULL, NULL, '2024-06-25 14:00:29', '2024-06-25 14:00:29'),
(11, 'demo', 'video', 'demo@gmail.com', 'pujab', 'pakistan', '001', 'argdohsn', NULL, 'abcd', 'abcd@gmail.com', '1234567', 'sgd', '1719775666.png', '12345678', 'demo', '1234', NULL, NULL, NULL, '2024-06-30 19:27:46', '2024-06-30 19:27:46'),
(12, 'umer', 'farooq', 'abc@gmail.com', 'abc', 'abcde', '5858585', 'abcd e f g h i j k l m n o p', NULL, 'xyz', 'AB@gmail.com', '5598579', 'jkm', '1720250266.png', '99889988', 'AB', '1234', NULL, NULL, NULL, '2024-07-06 07:17:46', '2024-07-06 07:17:46');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `coupens`
--
ALTER TABLE `coupens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturars`
--
ALTER TABLE `manufacturars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `coupens`
--
ALTER TABLE `coupens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufacturars`
--
ALTER TABLE `manufacturars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
