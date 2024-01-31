-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ytcrudlv10
CREATE DATABASE IF NOT EXISTS `ytcrudlv10` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ytcrudlv10`;

-- Dumping structure for table ytcrudlv10.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jeniskelamin` enum('cowo','cewe') COLLATE utf8mb4_unicode_ci NOT NULL,
  `notelpon` bigint NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_religion` int DEFAULT NULL,
  `tanggallahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ytcrudlv10.employees: ~0 rows (approximately)
INSERT INTO `employees` (`id`, `nama`, `jeniskelamin`, `notelpon`, `foto`, `created_at`, `updated_at`, `id_religion`, `tanggallahir`) VALUES
	(1, 'dwadsadwadsadw22', 'cowo', 82132502915, 'pp.PNG', '2024-01-20 00:07:08', '2024-01-20 00:10:16', 1, '2024-01-04'),
	(2, 'Mohammad Rio Ferdinand', 'cowo', 82132502915, 'DCPIC.png', '2024-01-20 00:11:27', '2024-01-20 00:11:27', 1, '2024-01-04'),
	(3, 'dwadsadwadsadw', 'cowo', 321321321321, 'DCPIC.png', '2024-01-20 00:11:28', '2024-01-20 00:11:28', 1, '2024-01-04'),
	(4, '321321213', 'cowo', 321321313131, 'banner.png', '2024-01-20 00:11:28', '2024-01-20 00:11:28', 1, '2024-01-04'),
	(5, '321321321321321321wqdwadw', 'cewe', 321421324121521, 'DCPIC.png', '2024-01-20 00:11:28', '2024-01-20 00:11:28', 1, '2024-01-04'),
	(6, '321513531531', 'cewe', 21515326264, 'NonzGTPSPic.png', '2024-01-20 00:11:28', '2024-01-20 00:11:28', 1, '2024-01-04'),
	(7, 'Mohammad Rio Ferdinand', 'cowo', 82132502915, 'DCPIC.png', '2024-01-20 00:11:41', '2024-01-20 00:11:41', 1, '2024-01-04'),
	(8, 'dwadsadwadsadw', 'cowo', 321321321321, 'DCPIC.png', '2024-01-20 00:11:41', '2024-01-20 00:11:41', 1, '2024-01-04'),
	(11, 'Mohammad', 'cewe', 21515326264, 'NonzGTPSPic.png', '2024-01-20 00:11:41', '2024-01-20 00:18:04', 1, '2024-01-04'),
	(12, 'dwaidoahdwa', 'cowo', 12345678901, 'pp.PNG', '2024-01-20 01:17:12', '2024-01-20 01:17:12', 1, '2024-01-04'),
	(13, '321321321da', 'cowo', 312313456789, 'pp.PNG', '2024-01-20 01:21:51', '2024-01-20 01:21:51', 2, '2024-01-01');

-- Dumping structure for table ytcrudlv10.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ytcrudlv10.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table ytcrudlv10.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ytcrudlv10.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2024_01_09_115105_create_employees_table', 1),
	(6, '2024_01_20_072426_create_religions_table', 2),
	(7, '2024_01_20_073407_add_idagama_and_tanggallahir_to_employees_table', 3),
	(8, '2024_01_20_084328_add_role_to_users_table', 4);

-- Dumping structure for table ytcrudlv10.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ytcrudlv10.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table ytcrudlv10.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ytcrudlv10.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table ytcrudlv10.religions
CREATE TABLE IF NOT EXISTS `religions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ytcrudlv10.religions: ~0 rows (approximately)
INSERT INTO `religions` (`id`, `nama`, `created_at`, `updated_at`) VALUES
	(1, 'Islam', '2024-01-20 01:03:21', '2024-01-20 01:03:21'),
	(2, 'Kristen', '2024-01-20 01:07:29', '2024-01-20 01:07:29'),
	(3, 'Katolik', '2024-01-20 01:07:58', '2024-01-20 01:07:58'),
	(4, 'Hindu', '2024-01-20 01:08:07', '2024-01-20 01:08:07');

-- Dumping structure for table ytcrudlv10.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'users',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ytcrudlv10.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
	(1, 'Admin', 'admin@admin.com', NULL, '$2y$12$4QjHvC2qLFImU43dj64YvuqQGDd6KDhDsbb8JJ4.Tzqg3aRlo9T.u', NULL, '2024-01-19 23:31:09', '2024-01-19 23:31:09', 'admin'),
	(2, 'Rio', 'rioss@gmail.com', NULL, '$2y$12$9ICdFScicynZXlrWDDLVPeT8ubB5axiFwlGauMk3G3nApLYsXb846', NULL, '2024-01-19 23:36:20', '2024-01-19 23:36:20', 'users');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
