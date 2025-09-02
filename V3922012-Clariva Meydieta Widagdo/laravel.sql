-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jul 2025 pada 13.44
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_authentication_logs`
--

CREATE TABLE `tbr_authentication_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `remember_me` varchar(191) DEFAULT NULL,
  `ip_address` varchar(191) DEFAULT NULL,
  `session_id` varchar(191) DEFAULT NULL,
  `guard` varchar(191) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `os` varchar(191) DEFAULT NULL,
  `duration` varchar(191) DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT NULL,
  `logout_at` timestamp NULL DEFAULT NULL,
  `login_status` enum('Logged In','Failed','Logged Out','Verification') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbr_authentication_logs`
--

INSERT INTO `tbr_authentication_logs` (`id`, `user_id`, `email`, `remember_me`, `ip_address`, `session_id`, `guard`, `user_agent`, `os`, `duration`, `login_at`, `logout_at`, `login_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'superadmin@gmail.com', '0', '127.0.0.1', 'IC1eqHJuO84uJZZRj5CbjBtyX7bgOZ3BvvEouzR5', 'web', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'Win64', NULL, '2025-07-08 23:18:34', NULL, 'Logged In', '2025-07-08 23:18:34', '2025-07-25 07:22:19'),
(2, 4, 'meyclariva@gmail.com', '0', '127.0.0.1', 'z1jwGwzvlFySO8cPQ75oGb8mEYfQIjxqqHDWkazu', 'web', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'Win64', NULL, '2025-07-09 08:00:08', NULL, 'Logged In', '2025-07-09 08:00:08', '2025-07-09 08:00:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_backlogs`
--

CREATE TABLE `tbr_backlogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `priority` varchar(191) DEFAULT NULL,
  `applicant` varchar(191) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `sprint_id` bigint(20) UNSIGNED DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbr_backlogs`
--

INSERT INTO `tbr_backlogs` (`id`, `name`, `description`, `priority`, `applicant`, `status`, `sprint_id`, `project_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'saya sebagai user ingin ada fitur login', 'login', 'high', 'Bpk abcd', 'inactive', NULL, 1, 3, '2025-07-08 23:39:25', '2025-07-08 23:39:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_banned_ips`
--

CREATE TABLE `tbr_banned_ips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_cache`
--

CREATE TABLE `tbr_cache` (
  `key` varchar(191) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbr_cache`
--

INSERT INTO `tbr_cache` (`key`, `value`, `expiration`) VALUES
('dashboard_data_1', 'a:11:{s:8:\"projects\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:2:{i:0;O:18:\"App\\Models\\Project\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"projects\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:15;s:4:\"icon\";s:21:\"ki-duotone ki-graph-3\";s:4:\"name\";s:13:\"TOKO BANGUNAN\";s:5:\"label\";s:8:\"external\";s:10:\"start_date\";s:19:\"2025-06-01 05:30:00\";s:8:\"end_date\";s:19:\"2025-07-09 08:05:00\";s:7:\"user_id\";i:3;s:6:\"status\";s:4:\"hold\";s:4:\"read\";i:0;s:15:\"trello_board_id\";N;s:10:\"created_at\";s:19:\"2025-07-09 08:06:03\";s:10:\"updated_at\";s:19:\"2025-07-09 15:11:10\";}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:15;s:4:\"icon\";s:21:\"ki-duotone ki-graph-3\";s:4:\"name\";s:13:\"TOKO BANGUNAN\";s:5:\"label\";s:8:\"external\";s:10:\"start_date\";s:19:\"2025-06-01 05:30:00\";s:8:\"end_date\";s:19:\"2025-07-09 08:05:00\";s:7:\"user_id\";i:3;s:6:\"status\";s:4:\"hold\";s:4:\"read\";i:0;s:15:\"trello_board_id\";N;s:10:\"created_at\";s:19:\"2025-07-09 08:06:03\";s:10:\"updated_at\";s:19:\"2025-07-09 15:11:10\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:10:\"start_date\";s:8:\"datetime\";s:8:\"end_date\";s:8:\"datetime\";s:4:\"read\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:3;s:4:\"name\";s:10:\"Clariva PO\";s:10:\"photo_path\";N;s:6:\"gender\";s:4:\"male\";s:5:\"email\";s:19:\"vaclariva@gmail.com\";s:4:\"role\";s:15:\"BusinessAnalyst\";s:8:\"password\";s:60:\"$2y$12$y5vkEgCp6nQBmcIYxziqZ.YzST3ooFCiuycrCA6w8UwbMB1FF5hc2\";s:16:\"is_weak_password\";i:1;s:11:\"enabled_2fa\";i:0;s:12:\"phone_number\";s:12:\"081234567893\";s:14:\"remember_token\";s:10:\"Tl7C6YUswo\";s:10:\"created_at\";s:19:\"2025-07-09 06:14:38\";s:10:\"updated_at\";s:19:\"2025-07-09 06:14:38\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:3;s:4:\"name\";s:10:\"Clariva PO\";s:10:\"photo_path\";N;s:6:\"gender\";s:4:\"male\";s:5:\"email\";s:19:\"vaclariva@gmail.com\";s:4:\"role\";s:15:\"BusinessAnalyst\";s:8:\"password\";s:60:\"$2y$12$y5vkEgCp6nQBmcIYxziqZ.YzST3ooFCiuycrCA6w8UwbMB1FF5hc2\";s:16:\"is_weak_password\";i:1;s:11:\"enabled_2fa\";i:0;s:12:\"phone_number\";s:12:\"081234567893\";s:14:\"remember_token\";s:10:\"Tl7C6YUswo\";s:10:\"created_at\";s:19:\"2025-07-09 06:14:38\";s:10:\"updated_at\";s:19:\"2025-07-09 06:14:38\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:8:\"password\";s:6:\"hashed\";s:11:\"enabled_2fa\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:8:\"password\";i:1;s:14:\"remember_token\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:11:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:12:\"phone_number\";i:3;s:8:\"password\";i:4;s:4:\"role\";i:5;s:10:\"photo_path\";i:6;s:6:\"gender\";i:7;s:10:\"blocked_at\";i:8;s:16:\"is_weak_password\";i:9;s:11:\"enabled_2fa\";i:10;s:12:\"phone_number\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:19:\"\0*\0authPasswordName\";s:8:\"password\";s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:4:\"icon\";i:1;s:4:\"name\";i:2;s:5:\"label\";i:3;s:10:\"start_date\";i:4;s:8:\"end_date\";i:5;s:7:\"user_id\";i:6;s:6:\"status\";i:7;s:15:\"trello_board_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:18:\"App\\Models\\Project\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"projects\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:1;s:4:\"icon\";s:18:\"ki-duotone ki-star\";s:4:\"name\";s:11:\"TOKO SEPEDA\";s:5:\"label\";s:8:\"external\";s:10:\"start_date\";s:19:\"2025-06-29 06:19:00\";s:8:\"end_date\";s:19:\"2025-08-09 06:19:00\";s:7:\"user_id\";i:3;s:6:\"status\";s:4:\"hold\";s:4:\"read\";i:0;s:15:\"trello_board_id\";N;s:10:\"created_at\";s:19:\"2025-07-09 06:20:13\";s:10:\"updated_at\";s:19:\"2025-07-09 15:11:10\";}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:1;s:4:\"icon\";s:18:\"ki-duotone ki-star\";s:4:\"name\";s:11:\"TOKO SEPEDA\";s:5:\"label\";s:8:\"external\";s:10:\"start_date\";s:19:\"2025-06-29 06:19:00\";s:8:\"end_date\";s:19:\"2025-08-09 06:19:00\";s:7:\"user_id\";i:3;s:6:\"status\";s:4:\"hold\";s:4:\"read\";i:0;s:15:\"trello_board_id\";N;s:10:\"created_at\";s:19:\"2025-07-09 06:20:13\";s:10:\"updated_at\";s:19:\"2025-07-09 15:11:10\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:10:\"start_date\";s:8:\"datetime\";s:8:\"end_date\";s:8:\"datetime\";s:4:\"read\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";r:55;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:4:\"icon\";i:1;s:4:\"name\";i:2;s:5:\"label\";i:3;s:10:\"start_date\";i:4;s:8:\"end_date\";i:5;s:7:\"user_id\";i:6;s:6:\"status\";i:7;s:15:\"trello_board_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:11:\"projectsAll\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:2:{i:0;O:18:\"App\\Models\\Project\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"projects\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:15;s:4:\"icon\";s:21:\"ki-duotone ki-graph-3\";s:4:\"name\";s:13:\"TOKO BANGUNAN\";s:5:\"label\";s:8:\"external\";s:10:\"start_date\";s:19:\"2025-06-01 05:30:00\";s:8:\"end_date\";s:19:\"2025-07-09 08:05:00\";s:7:\"user_id\";i:3;s:6:\"status\";s:4:\"hold\";s:4:\"read\";i:0;s:15:\"trello_board_id\";N;s:10:\"created_at\";s:19:\"2025-07-09 08:06:03\";s:10:\"updated_at\";s:19:\"2025-07-09 15:11:10\";}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:15;s:4:\"icon\";s:21:\"ki-duotone ki-graph-3\";s:4:\"name\";s:13:\"TOKO BANGUNAN\";s:5:\"label\";s:8:\"external\";s:10:\"start_date\";s:19:\"2025-06-01 05:30:00\";s:8:\"end_date\";s:19:\"2025-07-09 08:05:00\";s:7:\"user_id\";i:3;s:6:\"status\";s:4:\"hold\";s:4:\"read\";i:0;s:15:\"trello_board_id\";N;s:10:\"created_at\";s:19:\"2025-07-09 08:06:03\";s:10:\"updated_at\";s:19:\"2025-07-09 15:11:10\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:10:\"start_date\";s:8:\"datetime\";s:8:\"end_date\";s:8:\"datetime\";s:4:\"read\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:13:{s:2:\"id\";i:3;s:4:\"name\";s:10:\"Clariva PO\";s:10:\"photo_path\";N;s:6:\"gender\";s:4:\"male\";s:5:\"email\";s:19:\"vaclariva@gmail.com\";s:4:\"role\";s:15:\"BusinessAnalyst\";s:8:\"password\";s:60:\"$2y$12$y5vkEgCp6nQBmcIYxziqZ.YzST3ooFCiuycrCA6w8UwbMB1FF5hc2\";s:16:\"is_weak_password\";i:1;s:11:\"enabled_2fa\";i:0;s:12:\"phone_number\";s:12:\"081234567893\";s:14:\"remember_token\";s:10:\"Tl7C6YUswo\";s:10:\"created_at\";s:19:\"2025-07-09 06:14:38\";s:10:\"updated_at\";s:19:\"2025-07-09 06:14:38\";}s:11:\"\0*\0original\";a:13:{s:2:\"id\";i:3;s:4:\"name\";s:10:\"Clariva PO\";s:10:\"photo_path\";N;s:6:\"gender\";s:4:\"male\";s:5:\"email\";s:19:\"vaclariva@gmail.com\";s:4:\"role\";s:15:\"BusinessAnalyst\";s:8:\"password\";s:60:\"$2y$12$y5vkEgCp6nQBmcIYxziqZ.YzST3ooFCiuycrCA6w8UwbMB1FF5hc2\";s:16:\"is_weak_password\";i:1;s:11:\"enabled_2fa\";i:0;s:12:\"phone_number\";s:12:\"081234567893\";s:14:\"remember_token\";s:10:\"Tl7C6YUswo\";s:10:\"created_at\";s:19:\"2025-07-09 06:14:38\";s:10:\"updated_at\";s:19:\"2025-07-09 06:14:38\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:8:\"password\";s:6:\"hashed\";s:11:\"enabled_2fa\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:2:{i:0;s:8:\"password\";i:1;s:14:\"remember_token\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:11:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:12:\"phone_number\";i:3;s:8:\"password\";i:4;s:4:\"role\";i:5;s:10:\"photo_path\";i:6;s:6:\"gender\";i:7;s:10:\"blocked_at\";i:8;s:16:\"is_weak_password\";i:9;s:11:\"enabled_2fa\";i:10;s:12:\"phone_number\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:19:\"\0*\0authPasswordName\";s:8:\"password\";s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:4:\"icon\";i:1;s:4:\"name\";i:2;s:5:\"label\";i:3;s:10:\"start_date\";i:4;s:8:\"end_date\";i:5;s:7:\"user_id\";i:6;s:6:\"status\";i:7;s:15:\"trello_board_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:18:\"App\\Models\\Project\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"projects\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:1;s:4:\"icon\";s:18:\"ki-duotone ki-star\";s:4:\"name\";s:11:\"TOKO SEPEDA\";s:5:\"label\";s:8:\"external\";s:10:\"start_date\";s:19:\"2025-06-29 06:19:00\";s:8:\"end_date\";s:19:\"2025-08-09 06:19:00\";s:7:\"user_id\";i:3;s:6:\"status\";s:4:\"hold\";s:4:\"read\";i:0;s:15:\"trello_board_id\";N;s:10:\"created_at\";s:19:\"2025-07-09 06:20:13\";s:10:\"updated_at\";s:19:\"2025-07-09 15:11:10\";}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:1;s:4:\"icon\";s:18:\"ki-duotone ki-star\";s:4:\"name\";s:11:\"TOKO SEPEDA\";s:5:\"label\";s:8:\"external\";s:10:\"start_date\";s:19:\"2025-06-29 06:19:00\";s:8:\"end_date\";s:19:\"2025-08-09 06:19:00\";s:7:\"user_id\";i:3;s:6:\"status\";s:4:\"hold\";s:4:\"read\";i:0;s:15:\"trello_board_id\";N;s:10:\"created_at\";s:19:\"2025-07-09 06:20:13\";s:10:\"updated_at\";s:19:\"2025-07-09 15:11:10\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:10:\"start_date\";s:8:\"datetime\";s:8:\"end_date\";s:8:\"datetime\";s:4:\"read\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";r:268;}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:4:\"icon\";i:1;s:4:\"name\";i:2;s:5:\"label\";i:3;s:10:\"start_date\";i:4;s:8:\"end_date\";i:5;s:7:\"user_id\";i:6;s:6:\"status\";i:7;s:15:\"trello_board_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:13:\"totalProjects\";i:2;s:12:\"holdProjects\";i:2;s:12:\"lateProjects\";s:1:\"0\";s:12:\"doneProjects\";s:1:\"0\";s:18:\"inProgressProjects\";s:1:\"0\";s:4:\"hold\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:2:{i:0;O:18:\"App\\Models\\Project\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"projects\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:1;s:4:\"icon\";s:18:\"ki-duotone ki-star\";s:4:\"name\";s:11:\"TOKO SEPEDA\";s:5:\"label\";s:8:\"external\";s:10:\"start_date\";s:19:\"2025-06-29 06:19:00\";s:8:\"end_date\";s:19:\"2025-08-09 06:19:00\";s:7:\"user_id\";i:3;s:6:\"status\";s:4:\"hold\";s:4:\"read\";i:0;s:15:\"trello_board_id\";N;s:10:\"created_at\";s:19:\"2025-07-09 06:20:13\";s:10:\"updated_at\";s:19:\"2025-07-09 15:11:10\";}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:1;s:4:\"icon\";s:18:\"ki-duotone ki-star\";s:4:\"name\";s:11:\"TOKO SEPEDA\";s:5:\"label\";s:8:\"external\";s:10:\"start_date\";s:19:\"2025-06-29 06:19:00\";s:8:\"end_date\";s:19:\"2025-08-09 06:19:00\";s:7:\"user_id\";i:3;s:6:\"status\";s:4:\"hold\";s:4:\"read\";i:0;s:15:\"trello_board_id\";N;s:10:\"created_at\";s:19:\"2025-07-09 06:20:13\";s:10:\"updated_at\";s:19:\"2025-07-09 15:11:10\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:10:\"start_date\";s:8:\"datetime\";s:8:\"end_date\";s:8:\"datetime\";s:4:\"read\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:4:\"icon\";i:1;s:4:\"name\";i:2;s:5:\"label\";i:3;s:10:\"start_date\";i:4;s:8:\"end_date\";i:5;s:7:\"user_id\";i:6;s:6:\"status\";i:7;s:15:\"trello_board_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:18:\"App\\Models\\Project\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"projects\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:15;s:4:\"icon\";s:21:\"ki-duotone ki-graph-3\";s:4:\"name\";s:13:\"TOKO BANGUNAN\";s:5:\"label\";s:8:\"external\";s:10:\"start_date\";s:19:\"2025-06-01 05:30:00\";s:8:\"end_date\";s:19:\"2025-07-09 08:05:00\";s:7:\"user_id\";i:3;s:6:\"status\";s:4:\"hold\";s:4:\"read\";i:0;s:15:\"trello_board_id\";N;s:10:\"created_at\";s:19:\"2025-07-09 08:06:03\";s:10:\"updated_at\";s:19:\"2025-07-09 15:11:10\";}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:15;s:4:\"icon\";s:21:\"ki-duotone ki-graph-3\";s:4:\"name\";s:13:\"TOKO BANGUNAN\";s:5:\"label\";s:8:\"external\";s:10:\"start_date\";s:19:\"2025-06-01 05:30:00\";s:8:\"end_date\";s:19:\"2025-07-09 08:05:00\";s:7:\"user_id\";i:3;s:6:\"status\";s:4:\"hold\";s:4:\"read\";i:0;s:15:\"trello_board_id\";N;s:10:\"created_at\";s:19:\"2025-07-09 08:06:03\";s:10:\"updated_at\";s:19:\"2025-07-09 15:11:10\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:10:\"start_date\";s:8:\"datetime\";s:8:\"end_date\";s:8:\"datetime\";s:4:\"read\";s:7:\"boolean\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:8:{i:0;s:4:\"icon\";i:1;s:4:\"name\";i:2;s:5:\"label\";i:3;s:10:\"start_date\";i:4;s:8:\"end_date\";i:5;s:7:\"user_id\";i:6;s:6:\"status\";i:7;s:15:\"trello_board_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:4:\"late\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:4:\"done\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:10:\"inProgress\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}', 1753428443),
('dashboard_data_4', 'a:11:{s:8:\"projects\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:11:\"projectsAll\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:13:\"totalProjects\";i:0;s:12:\"holdProjects\";i:0;s:12:\"lateProjects\";i:0;s:12:\"doneProjects\";i:0;s:18:\"inProgressProjects\";i:0;s:4:\"hold\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:4:\"late\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:4:\"done\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:10:\"inProgress\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}', 1752048311);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_cache_locks`
--

CREATE TABLE `tbr_cache_locks` (
  `key` varchar(191) NOT NULL,
  `owner` varchar(191) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_check_backlogs`
--

CREATE TABLE `tbr_check_backlogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `backlog_id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbr_check_backlogs`
--

INSERT INTO `tbr_check_backlogs` (`id`, `backlog_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'qwertyuiop[', 'inactive', '2025-07-08 23:39:35', '2025-07-08 23:39:35'),
(2, 1, 'asdfghjkl;\'', 'inactive', '2025-07-08 23:39:40', '2025-07-08 23:39:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_check_dev`
--

CREATE TABLE `tbr_check_dev` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dev_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `category` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_developments`
--

CREATE TABLE `tbr_developments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `link` varchar(191) DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `status` enum('todo','in_progress','qa','done') NOT NULL DEFAULT 'todo',
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `trello_card_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_failed_jobs`
--

CREATE TABLE `tbr_failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_jobs`
--

CREATE TABLE `tbr_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_job_batches`
--

CREATE TABLE `tbr_job_batches` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
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
-- Struktur dari tabel `tbr_migrations`
--

CREATE TABLE `tbr_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbr_migrations`
--

INSERT INTO `tbr_migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_09_164209_create_banned_ips_table', 1),
(5, '2024_09_09_164831_create_two_factors_table', 1),
(6, '2024_09_09_222244_create_authentication_logs_table', 1),
(7, '2024_09_11_103627_create_settings_table', 1),
(8, '2025_04_19_220415_create_projects_table', 1),
(9, '2025_04_22_163011_create_vision_boards_table', 1),
(10, '2025_04_25_170219_create_sprints_table', 1),
(11, '2025_04_29_082216_create_backlogs_table', 1),
(12, '2025_04_29_082433_create_check_backlogs_table', 1),
(13, '2025_05_05_215129_create_developments_table', 1),
(14, '2025_05_08_191544_create_teams_table', 1),
(15, '2025_06_04_111629_create_check_dev_table', 1),
(16, '2025_06_16_145017_create_project_user_reads_table', 1),
(17, '2025_06_29_101631_add_performance_indexes', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_password_reset_tokens`
--

CREATE TABLE `tbr_password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_projects`
--

CREATE TABLE `tbr_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `label` varchar(191) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('done','in progress','late','hold') NOT NULL DEFAULT 'hold',
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `trello_board_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbr_projects`
--

INSERT INTO `tbr_projects` (`id`, `icon`, `name`, `label`, `start_date`, `end_date`, `user_id`, `status`, `read`, `trello_board_id`, `created_at`, `updated_at`) VALUES
(1, 'ki-duotone ki-star', 'TOKO SEPEDA', 'external', '2025-06-29 06:19:00', '2025-08-09 06:19:00', 3, 'hold', 0, NULL, '2025-07-08 23:20:13', '2025-07-25 07:25:33'),
(15, 'ki-duotone ki-graph-3', 'TOKO BANGUNAN', 'external', '2025-06-01 05:30:00', '2025-07-09 08:05:00', 3, 'hold', 0, NULL, '2025-07-09 01:06:03', '2025-07-25 07:25:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_project_user_reads`
--

CREATE TABLE `tbr_project_user_reads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_sessions`
--

CREATE TABLE `tbr_sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbr_sessions`
--

INSERT INTO `tbr_sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6yaCokoB29WlbNH8efl5cPNuGG0AYX1NlF5o2PQh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibnFsdTBFUnBnaWdIWW54bExmM1BrM2J2UXVPdzFMSkg0MWxPeWVWRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO319', 1753428077),
('BcF7SHbRrzwHyhfcFzdi3CacdwdIhnjzl2ggNFrk', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZ2RHOFJhTkNiVFhUVkFwN1JxNUt2VUo2S3dnZUxSckZibUdYaUs4WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90ZWFtcz9wcm9qZWN0X2lkPTE1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1753428335);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_settings`
--

CREATE TABLE `tbr_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail_from_address` varchar(191) DEFAULT NULL,
  `from_name` varchar(191) DEFAULT NULL,
  `smtp_host` varchar(191) DEFAULT NULL,
  `smtp_port` varchar(191) DEFAULT NULL,
  `type_of_encryption` varchar(191) DEFAULT NULL,
  `smtp_username` varchar(191) DEFAULT NULL,
  `smtp_password` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbr_settings`
--

INSERT INTO `tbr_settings` (`id`, `mail_from_address`, `from_name`, `smtp_host`, `smtp_port`, `type_of_encryption`, `smtp_username`, `smtp_password`, `created_at`, `updated_at`) VALUES
(1, 'cmsproject001@gmail.com', 'ScrumApps', 'smtp.gmail.com', '465', 'ssl', 'cmsproject001@gmail.com', 'osuvjljuxgpmmtni', '2025-07-08 23:14:39', '2025-07-09 01:01:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_sprints`
--

CREATE TABLE `tbr_sprints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `result_review` text DEFAULT NULL,
  `result_retrospective` text DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_teams`
--

CREATE TABLE `tbr_teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_two_factors`
--

CREATE TABLE `tbr_two_factors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `two_factor_ip` varchar(191) DEFAULT NULL,
  `two_factor_code` varchar(191) DEFAULT NULL,
  `two_factor_expires_at` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_users`
--

CREATE TABLE `tbr_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `photo_path` varchar(191) DEFAULT NULL,
  `gender` enum('male','female') NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `role` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `is_weak_password` tinyint(1) DEFAULT NULL,
  `enabled_2fa` tinyint(1) DEFAULT NULL,
  `phone_number` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbr_users`
--

INSERT INTO `tbr_users` (`id`, `name`, `photo_path`, `gender`, `email`, `role`, `password`, `is_weak_password`, `enabled_2fa`, `phone_number`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin ScrumApps', NULL, 'male', 'superadmin@gmail.com', 'Superadmin', '$2y$12$yES2/Y.M5Kd5fcqcP5eMUO63WhjgcbQF0.j9/n3xIqUuVoiFqQgVW', 1, 0, '081234567891', 'BnLkJJgl43', '2025-07-08 23:14:37', '2025-07-08 23:14:37'),
(2, 'Support', NULL, 'male', 'support@gmail.com', 'BusinessAnalyst', '$2y$12$obLhwHs5AmugXl/6lHpYj.1iZJcgUawEiyl3nQmVsRDCjGcElobg.', 1, 0, '081234567892', 'oliol9LOc3', '2025-07-08 23:14:38', '2025-07-08 23:14:38'),
(3, 'Clariva PO', NULL, 'male', 'vaclariva@gmail.com', 'BusinessAnalyst', '$2y$12$y5vkEgCp6nQBmcIYxziqZ.YzST3ooFCiuycrCA6w8UwbMB1FF5hc2', 1, 0, '081234567893', 'Tl7C6YUswo', '2025-07-08 23:14:38', '2025-07-08 23:14:38'),
(4, 'Meydieta DT', NULL, 'male', 'meyclariva@gmail.com', 'TeamDeveloper', '$2y$12$u/G.PwyFcDzkelffB7tBguIH/Vf6lczYq.xBSCueQKWXJ/HNJ.C/a', 1, 0, '081234567894', 'xjWawPXCLe', '2025-07-08 23:14:39', '2025-07-08 23:14:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbr_vision_boards`
--

CREATE TABLE `tbr_vision_boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `vision` text DEFAULT NULL,
  `target_group` text DEFAULT NULL,
  `needs` text DEFAULT NULL,
  `products` text DEFAULT NULL,
  `business_goals` text DEFAULT NULL,
  `competitors` text DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbr_vision_boards`
--

INSERT INTO `tbr_vision_boards` (`id`, `name`, `vision`, `target_group`, `needs`, `products`, `business_goals`, `competitors`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 'versi 1', '<p>visi</p>', '<p>target</p>', '<p>kebutuhan</p>', '<p>produk</p>', '<p>tujuan</p>', '<p>pesaing</p>', 1, '2025-07-08 23:36:34', '2025-07-08 23:36:34');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbr_authentication_logs`
--
ALTER TABLE `tbr_authentication_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbr_backlogs`
--
ALTER TABLE `tbr_backlogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbr_backlogs_sprint_id_foreign` (`sprint_id`),
  ADD KEY `tbr_backlogs_project_id_foreign` (`project_id`),
  ADD KEY `tbr_backlogs_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `tbr_banned_ips`
--
ALTER TABLE `tbr_banned_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbr_cache`
--
ALTER TABLE `tbr_cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `tbr_cache_locks`
--
ALTER TABLE `tbr_cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `tbr_check_backlogs`
--
ALTER TABLE `tbr_check_backlogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbr_check_backlogs_backlog_id_foreign` (`backlog_id`);

--
-- Indeks untuk tabel `tbr_check_dev`
--
ALTER TABLE `tbr_check_dev`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbr_check_dev_dev_id_foreign` (`dev_id`);

--
-- Indeks untuk tabel `tbr_developments`
--
ALTER TABLE `tbr_developments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbr_developments_project_id_index` (`project_id`),
  ADD KEY `tbr_developments_status_index` (`status`);

--
-- Indeks untuk tabel `tbr_failed_jobs`
--
ALTER TABLE `tbr_failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbr_failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `tbr_jobs`
--
ALTER TABLE `tbr_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbr_jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `tbr_job_batches`
--
ALTER TABLE `tbr_job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbr_migrations`
--
ALTER TABLE `tbr_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbr_password_reset_tokens`
--
ALTER TABLE `tbr_password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `tbr_projects`
--
ALTER TABLE `tbr_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbr_projects_user_id_status_index` (`user_id`,`status`),
  ADD KEY `tbr_projects_status_index` (`status`),
  ADD KEY `tbr_projects_created_at_index` (`created_at`);

--
-- Indeks untuk tabel `tbr_project_user_reads`
--
ALTER TABLE `tbr_project_user_reads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbr_project_user_reads_project_id_foreign` (`project_id`),
  ADD KEY `tbr_project_user_reads_user_id_project_id_index` (`user_id`,`project_id`),
  ADD KEY `tbr_project_user_reads_read_index` (`read`);

--
-- Indeks untuk tabel `tbr_sessions`
--
ALTER TABLE `tbr_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbr_sessions_user_id_index` (`user_id`),
  ADD KEY `tbr_sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `tbr_settings`
--
ALTER TABLE `tbr_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbr_sprints`
--
ALTER TABLE `tbr_sprints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbr_sprints_project_id_index` (`project_id`),
  ADD KEY `tbr_sprints_status_index` (`status`),
  ADD KEY `tbr_sprints_end_date_index` (`end_date`);

--
-- Indeks untuk tabel `tbr_teams`
--
ALTER TABLE `tbr_teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbr_teams_user_id_index` (`user_id`),
  ADD KEY `tbr_teams_project_id_index` (`project_id`),
  ADD KEY `tbr_teams_user_id_project_id_index` (`user_id`,`project_id`);

--
-- Indeks untuk tabel `tbr_two_factors`
--
ALTER TABLE `tbr_two_factors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbr_users`
--
ALTER TABLE `tbr_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbr_users_role_index` (`role`),
  ADD KEY `tbr_users_email_index` (`email`);

--
-- Indeks untuk tabel `tbr_vision_boards`
--
ALTER TABLE `tbr_vision_boards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbr_vision_boards_project_id_foreign` (`project_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbr_authentication_logs`
--
ALTER TABLE `tbr_authentication_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbr_backlogs`
--
ALTER TABLE `tbr_backlogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbr_banned_ips`
--
ALTER TABLE `tbr_banned_ips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbr_check_backlogs`
--
ALTER TABLE `tbr_check_backlogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbr_check_dev`
--
ALTER TABLE `tbr_check_dev`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbr_developments`
--
ALTER TABLE `tbr_developments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbr_failed_jobs`
--
ALTER TABLE `tbr_failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbr_jobs`
--
ALTER TABLE `tbr_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbr_migrations`
--
ALTER TABLE `tbr_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbr_projects`
--
ALTER TABLE `tbr_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbr_project_user_reads`
--
ALTER TABLE `tbr_project_user_reads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbr_settings`
--
ALTER TABLE `tbr_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbr_sprints`
--
ALTER TABLE `tbr_sprints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbr_teams`
--
ALTER TABLE `tbr_teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbr_two_factors`
--
ALTER TABLE `tbr_two_factors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbr_users`
--
ALTER TABLE `tbr_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbr_vision_boards`
--
ALTER TABLE `tbr_vision_boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbr_backlogs`
--
ALTER TABLE `tbr_backlogs`
  ADD CONSTRAINT `tbr_backlogs_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `tbr_projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbr_backlogs_sprint_id_foreign` FOREIGN KEY (`sprint_id`) REFERENCES `tbr_sprints` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbr_backlogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `tbr_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbr_check_backlogs`
--
ALTER TABLE `tbr_check_backlogs`
  ADD CONSTRAINT `tbr_check_backlogs_backlog_id_foreign` FOREIGN KEY (`backlog_id`) REFERENCES `tbr_backlogs` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbr_check_dev`
--
ALTER TABLE `tbr_check_dev`
  ADD CONSTRAINT `tbr_check_dev_dev_id_foreign` FOREIGN KEY (`dev_id`) REFERENCES `tbr_developments` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbr_developments`
--
ALTER TABLE `tbr_developments`
  ADD CONSTRAINT `tbr_developments_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `tbr_projects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbr_projects`
--
ALTER TABLE `tbr_projects`
  ADD CONSTRAINT `tbr_projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `tbr_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbr_project_user_reads`
--
ALTER TABLE `tbr_project_user_reads`
  ADD CONSTRAINT `tbr_project_user_reads_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `tbr_projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbr_project_user_reads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `tbr_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbr_teams`
--
ALTER TABLE `tbr_teams`
  ADD CONSTRAINT `tbr_teams_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `tbr_projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbr_teams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `tbr_users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbr_vision_boards`
--
ALTER TABLE `tbr_vision_boards`
  ADD CONSTRAINT `tbr_vision_boards_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `tbr_projects` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
