-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 24, 2023 at 06:37 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cartpenjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_category` bigint(20) UNSIGNED NOT NULL,
  `id_carts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `product_name`, `product_description`, `photo`, `price`, `created_at`, `updated_at`, `id_category`, `id_carts`) VALUES
(3, 'Kaos The Unforgiven', 'Kaos Heavy Metal', '1.jpg', 80000, '2023-03-23 12:11:13', '2023-03-23 12:28:10', 1, 0),
(4, 'Kaos Trip to Mountain', 'Kaos Trip', '2.jpg', 80000, '2023-03-23 12:11:41', '2023-03-23 12:28:33', 1, 0),
(5, 'Kaos Vacation', 'Kaos Trip', '3.jpg', 80000, '2023-03-23 12:11:59', '2023-03-23 12:28:47', 1, 0),
(6, 'Kaos I Paused my Game', 'Kaos Vidio Game', '4.jpg', 80000, '2023-03-23 12:12:18', '2023-03-23 12:29:08', 1, 0),
(7, 'Kaos Slipknot', 'Kaos Nu Metal', '5.jpg', 80000, '2023-03-23 12:12:38', '2023-03-23 12:30:52', 1, 0),
(8, 'Kaos Metallica', 'Kaos Heavy Metal', '6.jpg', 80000, '2023-03-23 12:13:07', '2023-03-23 12:30:44', 1, 0),
(9, 'Kaos Bon Jovi', 'Kaos Heavy Metal', '7.jpg', 80000, '2023-03-23 12:14:42', '2023-03-23 12:29:31', 1, 0),
(10, 'Kaos Gun n Roses', 'Kaos Heavy Metal', '8.jpg', 80000, '2023-03-23 12:15:04', '2023-03-23 12:29:45', 1, 0),
(11, 'Kaos Queen', 'Kaos Rock', '9.jpg', 80000, '2023-03-23 12:34:07', '2023-03-23 12:34:07', 1, 0),
(12, 'Kaos Led Zeppelin', 'Kaos Heavy Metal', '10.jpg', 80000, '2023-03-23 12:35:04', '2023-03-23 12:35:04', 1, 0),
(13, 'Kaos Black Sabbath', 'Kaos Heavy Metal', '11.jpg', 80000, NULL, NULL, 1, 0),
(14, 'Kaos Jigsaw', 'Kaos Film Horror', '12.jpg', 80000, NULL, NULL, 1, 0),
(15, 'Kaos Chainswa Man', 'Kaos Film Horror', '13.jpg', 80000, NULL, NULL, 1, 0),
(16, 'Kaos Scream', 'Kaos Film Horror', '14.jpg', 80000, NULL, NULL, 1, 0),
(17, 'Kaos Freddy Krueger', 'Kaos Film Horror', '15.jpg', 80000, NULL, NULL, 1, 0),
(18, 'Kaos Jason Friday 13th', 'Kaos Film Horror', '16.jpg', 80000, NULL, NULL, 1, 0),
(19, 'Kaos Michael Myers', 'Kaos Film Horror', '17.jpg', 80000, NULL, NULL, 1, 0),
(20, 'Kaos Chucky', 'Kaos Film Horror', '18.jpg', 80000, NULL, NULL, 1, 0),
(21, 'Kaos Brother Stay Halal', 'Kaos Religi', '19.jpg', 80000, NULL, NULL, 1, 0),
(22, 'Kaos The Witch', 'Kaos Film Horror', '20.jpg', 80000, NULL, NULL, 1, 0),
(23, 'Kaos Mid Sommar', 'Kaos Film Horror', '21.jpg', 80000, NULL, NULL, 1, 0),
(24, 'Kaos Green Knight', 'Kaos Film Horror', '22.jpg', 80000, NULL, NULL, 1, 0),
(25, 'Kaos Green Knight 2', 'Kaos Film Horror', '23.jpg', 80000, NULL, NULL, 1, 0),
(26, 'Kaos Green Room', 'Kaos Film Horror', '24.jpg', 80000, NULL, NULL, 1, 0),
(27, 'Kaos Psychosocial', 'Kaos Slipknot', '25.jpg', 80000, NULL, NULL, 1, 0),
(28, 'Kaos Devil in I', 'Kaos Slipknot', '26.jpg', 80000, NULL, NULL, 1, 0),
(29, 'Kaos Unsainted', 'Kaos Slipknot', '27.jpg', 80000, NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Kaos Cotton Combed', NULL, NULL),
(2, 'Makanan', '2023-03-23 11:46:25', '2023-03-23 11:59:54'),
(3, 'Minuman', '2023-03-23 11:46:31', '2023-03-23 11:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `id` bigint(20) UNSIGNED DEFAULT '20',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `qty`, `subtotal`, `id`, `created_at`, `updated_at`) VALUES
(1, 2, 160000, 4, NULL, NULL);

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, 'create_barang_table', 1),
(3, 'create_kategori_table', 1),
(4, 'create_keranjang_table', 1);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barang_id_category_foreign` (`id_category`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `kategori` (`id`);

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`id`) REFERENCES `barang` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
