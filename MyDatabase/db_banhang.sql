-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 31, 2022 lúc 01:18 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `total` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `status` tinyint(4) NOT NULL,
  `status_payment` tinyint(4) NOT NULL,
  `fee_ship` float NOT NULL,
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `payment`, `status`, `status_payment`, `fee_ship`, `note`, `created_at`, `updated_at`) VALUES
(49, 57, '2022-08-25', 1350000, 'COD', 2, 0, 100000, 'qqqqqqqqqqqq', '2022-08-26 07:33:11', '2022-08-26 07:33:11'),
(39, 46, '2022-08-19', 2700000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-19 09:03:30'),
(40, 47, '2022-08-19', 80000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-23 09:02:17'),
(42, 49, '2022-08-19', 1350000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-19 11:21:35'),
(43, 50, '2022-08-19', 1350000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-19 12:39:42'),
(47, 54, '2022-08-23', 4050000, 'COD', 1, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-23 10:29:25'),
(48, 55, '2022-08-23', 1350000, 'COD', 1, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-23 09:51:35'),
(50, 58, '2022-08-25', 1505000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-25 07:19:45'),
(51, 60, '2022-08-25', 2780000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-25 07:23:01'),
(52, 61, '2022-08-25', 2780000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-25 07:23:30'),
(53, 62, '2022-08-25', 2780000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-25 07:24:20'),
(54, 63, '2022-08-25', 2780000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-25 07:24:56'),
(55, 64, '2022-08-25', 2780000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-25 07:25:35'),
(56, 65, '2022-08-25', 2780000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-25 07:25:38'),
(57, 66, '2022-08-25', 2780000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-25 07:26:28'),
(58, 67, '2022-08-25', 2780000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-25 07:26:35'),
(59, 68, '2022-08-25', 2780000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-25 07:27:02'),
(60, 69, '2022-08-25', 2780000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-25 07:27:34'),
(61, 70, '2022-08-25', 2780000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-25 07:28:57'),
(62, 71, '2022-08-25', 3040000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-25 07:32:06'),
(63, 72, '2022-08-25', 3040000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-25 07:32:55'),
(64, 73, '2022-08-25', 1065000, 'COD', 0, 0, 100000, 'OK Bạn Nhá', '2022-08-25 08:20:44', '2022-08-25 07:36:04'),
(65, 74, '2022-08-25', 1065000, 'COD', 0, 0, 100000, 'OK Bạn Nhá', '2022-08-25 08:20:44', '2022-08-25 07:38:02'),
(66, 76, '2022-08-25', 2765000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-25 07:43:00'),
(67, 77, '2022-08-25', 1060000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-25 07:43:51'),
(68, 78, '2022-08-25', 2700000, 'COD', 0, 0, 100000, 'Trống', '2022-08-25 08:20:44', '2022-08-25 08:12:48'),
(69, 81, '2022-08-25', 1350000, 'COD', 0, 0, 30000, 'Trống', '2022-08-25 08:30:43', '2022-08-25 08:30:43'),
(70, 82, '2022-08-25', 1350000, 'COD', 1, 0, 30000, 'Trống', '2022-08-25 10:01:23', '2022-08-25 10:01:23'),
(71, 83, '2022-08-25', 910000, 'COD', 0, 0, 50000, 'Trống', '2022-08-25 08:38:27', '2022-08-25 08:38:27'),
(72, 84, '2022-08-25', 2700000, 'COD', 2, 0, 50000, 'Trống', '2022-08-25 09:30:13', '2022-08-25 09:30:13'),
(73, 85, '2022-08-25', 2310000, 'COD', 1, 0, 30000, 'Trống', '2022-08-25 09:25:56', '2022-08-25 09:25:56'),
(74, 87, '2022-08-26', 4050000, 'PAYPAL', 2, 1, 10000, 'aaaaaaaaaaaaaaaa', '2022-08-26 07:28:35', '2022-08-26 07:28:35'),
(75, 88, '2022-08-26', 2700000, 'COD', 2, 0, 10000, 'wwwwwwwwww', '2022-08-26 07:38:18', '2022-08-26 07:38:18'),
(76, 89, '2022-08-26', 155000, 'COD', 2, 0, 10000, 'Hủy', '2022-08-26 07:44:23', '2022-08-26 07:44:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(11) NOT NULL COMMENT 'số lượng',
  `unit_price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(48, 38, 7, 2, 75000, '2022-08-16 04:00:45', '2022-08-16 04:00:45'),
(49, 39, 4, 2, 1350000, '2022-08-19 09:03:30', '2022-08-19 09:03:30'),
(50, 40, 6, 1, 80000, '2022-08-19 09:13:32', '2022-08-19 09:13:32'),
(46, 37, 6, 2, 80000, '2022-08-16 02:54:39', '2022-08-16 02:54:39'),
(47, 38, 4, 101, 1350000, '2022-08-16 05:00:57', '2022-08-16 05:00:57'),
(45, 37, 4, 2, 1350000, '2022-08-16 02:54:39', '2022-08-16 02:54:39'),
(40, 33, 12, 1, 150000, '2022-08-15 18:10:26', '2022-08-15 18:10:26'),
(44, 36, 4, 2, 1350000, '2022-08-16 02:30:25', '2022-08-16 02:30:25'),
(43, 35, 4, 1, 2700000, '2022-08-16 02:12:11', '2022-08-16 02:12:11'),
(39, 33, 10, 1, 157000, '2022-08-15 18:10:26', '2022-08-15 18:10:26'),
(42, 34, 4, 1, 4050000, '2022-08-16 01:22:49', '2022-08-16 01:22:49'),
(41, 33, 6, 1, 80000, '2022-08-15 18:10:26', '2022-08-15 18:10:26'),
(65, 49, 4, 1, 1350000, '2022-08-25 01:53:35', '2022-08-25 01:53:35'),
(52, 42, 4, 1, 1350000, '2022-08-19 11:21:35', '2022-08-19 11:21:35'),
(53, 43, 4, 1, 1350000, '2022-08-19 12:39:42', '2022-08-19 12:39:42'),
(55, 44, 91, 3, 10000, '2022-08-19 13:11:54', '2022-08-19 13:11:54'),
(56, 44, 7, 1, 75000, '2022-08-19 13:11:54', '2022-08-19 13:11:54'),
(57, 45, 4, 3, 1350000, '2022-08-23 09:05:25', '2022-08-23 09:05:25'),
(58, 45, 7, 1, 75000, '2022-08-23 09:05:25', '2022-08-23 09:05:25'),
(59, 45, 8, 5, 910000, '2022-08-23 09:05:25', '2022-08-23 09:05:25'),
(60, 46, 10, 1, 157000, '2022-08-23 09:31:13', '2022-08-23 09:31:13'),
(61, 46, 8, 2, 910000, '2022-08-23 09:31:13', '2022-08-23 09:31:13'),
(62, 46, 12, 4, 150000, '2022-08-23 09:31:13', '2022-08-23 09:31:13'),
(63, 47, 4, 3, 1350000, '2022-08-23 09:44:49', '2022-08-23 09:44:49'),
(64, 48, 4, 1, 1350000, '2022-08-23 09:51:07', '2022-08-23 09:51:07'),
(67, 50, 6, 1, 80000, '2022-08-25 07:19:45', '2022-08-25 07:19:45'),
(68, 50, 7, 1, 75000, '2022-08-25 07:19:45', '2022-08-25 07:19:45'),
(69, 51, 4, 2, 1350000, '2022-08-25 07:23:01', '2022-08-25 07:23:01'),
(70, 51, 6, 1, 80000, '2022-08-25 07:23:01', '2022-08-25 07:23:01'),
(71, 52, 4, 2, 1350000, '2022-08-25 07:23:30', '2022-08-25 07:23:30'),
(72, 52, 6, 1, 80000, '2022-08-25 07:23:30', '2022-08-25 07:23:30'),
(73, 53, 4, 2, 1350000, '2022-08-25 07:24:20', '2022-08-25 07:24:20'),
(74, 53, 6, 1, 80000, '2022-08-25 07:24:20', '2022-08-25 07:24:20'),
(75, 54, 4, 2, 1350000, '2022-08-25 07:24:56', '2022-08-25 07:24:56'),
(76, 54, 6, 1, 80000, '2022-08-25 07:24:56', '2022-08-25 07:24:56'),
(77, 55, 4, 2, 1350000, '2022-08-25 07:25:35', '2022-08-25 07:25:35'),
(78, 55, 6, 1, 80000, '2022-08-25 07:25:35', '2022-08-25 07:25:35'),
(79, 56, 4, 2, 1350000, '2022-08-25 07:25:38', '2022-08-25 07:25:38'),
(80, 56, 6, 1, 80000, '2022-08-25 07:25:38', '2022-08-25 07:25:38'),
(81, 57, 4, 2, 1350000, '2022-08-25 07:26:28', '2022-08-25 07:26:28'),
(82, 57, 6, 1, 80000, '2022-08-25 07:26:28', '2022-08-25 07:26:28'),
(83, 58, 4, 2, 1350000, '2022-08-25 07:26:35', '2022-08-25 07:26:35'),
(84, 58, 6, 1, 80000, '2022-08-25 07:26:35', '2022-08-25 07:26:35'),
(85, 59, 4, 2, 1350000, '2022-08-25 07:27:02', '2022-08-25 07:27:02'),
(86, 59, 6, 1, 80000, '2022-08-25 07:27:02', '2022-08-25 07:27:02'),
(87, 60, 4, 2, 1350000, '2022-08-25 07:27:34', '2022-08-25 07:27:34'),
(88, 60, 6, 1, 80000, '2022-08-25 07:27:34', '2022-08-25 07:27:34'),
(89, 61, 4, 2, 1350000, '2022-08-25 07:28:57', '2022-08-25 07:28:57'),
(90, 61, 6, 1, 80000, '2022-08-25 07:28:57', '2022-08-25 07:28:57'),
(91, 62, 6, 2, 80000, '2022-08-25 07:32:06', '2022-08-25 07:32:06'),
(92, 62, 7, 2, 75000, '2022-08-25 07:32:06', '2022-08-25 07:32:06'),
(93, 62, 8, 3, 910000, '2022-08-25 07:32:06', '2022-08-25 07:32:06'),
(94, 63, 6, 2, 80000, '2022-08-25 07:32:55', '2022-08-25 07:32:55'),
(95, 63, 7, 2, 75000, '2022-08-25 07:32:55', '2022-08-25 07:32:55'),
(96, 63, 8, 3, 910000, '2022-08-25 07:32:55', '2022-08-25 07:32:55'),
(97, 64, 6, 1, 80000, '2022-08-25 07:36:04', '2022-08-25 07:36:04'),
(98, 64, 7, 1, 75000, '2022-08-25 07:36:04', '2022-08-25 07:36:04'),
(99, 64, 8, 1, 910000, '2022-08-25 07:36:04', '2022-08-25 07:36:04'),
(100, 65, 6, 1, 80000, '2022-08-25 07:38:02', '2022-08-25 07:38:02'),
(101, 65, 7, 1, 75000, '2022-08-25 07:38:02', '2022-08-25 07:38:02'),
(102, 65, 8, 1, 910000, '2022-08-25 07:38:02', '2022-08-25 07:38:02'),
(103, 66, 19, 3, 50000, '2022-08-25 07:43:00', '2022-08-25 07:43:00'),
(104, 66, 22, 1, 2540000, '2022-08-25 07:43:00', '2022-08-25 07:43:00'),
(105, 66, 7, 1, 75000, '2022-08-25 07:43:00', '2022-08-25 07:43:00'),
(106, 67, 8, 1, 910000, '2022-08-25 07:43:51', '2022-08-25 07:43:51'),
(107, 67, 7, 2, 75000, '2022-08-25 07:43:51', '2022-08-25 07:43:51'),
(108, 68, 4, 2, 1350000, '2022-08-25 08:12:48', '2022-08-25 08:12:48'),
(109, 69, 4, 1, 1350000, '2022-08-25 08:30:43', '2022-08-25 08:30:43'),
(110, 70, 4, 1, 1350000, '2022-08-25 08:35:47', '2022-08-25 08:35:47'),
(111, 71, 8, 1, 910000, '2022-08-25 08:38:27', '2022-08-25 08:38:27'),
(112, 72, 4, 2, 1350000, '2022-08-25 08:39:10', '2022-08-25 08:39:10'),
(113, 73, 6, 3, 80000, '2022-08-25 08:41:53', '2022-08-25 08:41:53'),
(114, 73, 8, 1, 910000, '2022-08-25 08:41:53', '2022-08-25 08:41:53'),
(115, 73, 15, 4, 180000, '2022-08-25 08:41:53', '2022-08-25 08:41:53'),
(116, 73, 20, 4, 110000, '2022-08-25 08:41:53', '2022-08-25 08:41:53'),
(117, 74, 4, 3, 1350000, '2022-08-26 02:36:54', '2022-08-26 02:36:54'),
(118, 75, 4, 2, 1350000, '2022-08-26 07:32:44', '2022-08-26 07:32:44'),
(119, 76, 6, 1, 80000, '2022-08-26 07:39:28', '2022-08-26 07:39:28'),
(120, 76, 7, 1, 75000, '2022-08-26 07:39:28', '2022-08-26 07:39:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_product` int(11) DEFAULT NULL,
  `comment_status` tinyint(4) NOT NULL,
  `comment_admin_rep` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `comment`, `comment_name`, `comment_date`, `id_product`, `comment_status`, `comment_admin_rep`) VALUES
(69, 'Test Do', 'Van Thu Test', '2022-08-27 09:10:27', 4, 0, 0),
(70, 'ok bạn', 'Admin VanShop', '2022-08-20 10:22:57', 4, 0, 68);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `user_id`, `note`, `created_at`, `updated_at`) VALUES
(42, 'Nguyễn Đức Vân', 'nam', 'admin@gmail.com', 'Thái Bình', '0396646090', 1, 'Trống', '2022-08-19 08:59:38', '2022-08-16 02:14:04'),
(27, 'ádasd', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-19 08:59:59', '2022-08-04 04:08:40'),
(28, 'ádasd', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-19 09:00:01', '2022-08-04 04:10:54'),
(31, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-19 09:00:07', '2022-08-04 04:25:54'),
(33, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-19 09:00:15', '2022-08-04 13:04:25'),
(36, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-19 09:00:16', '2022-08-09 14:53:42'),
(56, 'Nguyễn Đức Vân', 'nam', 'admin@gmail.com', 'Thái Bình', '0396646090', 1, 'Trống', '2022-08-23 11:20:08', '2022-08-23 11:20:08'),
(46, 'Nguyễn Đức Vân', 'nam', 'asdasdas@gmail.com', '9704151301019809', '0396646090', 0, 'Trống', '2022-08-19 09:03:30', '2022-08-19 09:03:30'),
(47, 'N T T', 'nam', 'haovanpltb@gmail.com', 'Street Address', '0123456789', 3, 'Trống', '2022-08-19 09:13:32', '2022-08-19 09:13:32'),
(49, 'Nguyễn Đức Vân', 'nam', 'phonglang012aa49@gmail.com', '9704151301019809', '0396646090', 0, 'Trống', '2022-08-19 11:21:35', '2022-08-19 11:21:35'),
(50, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-19 12:39:42', '2022-08-19 12:39:42'),
(54, 'Nguyễn Đức Vân', 'nam', 'admin@gmail.com', 'Thái Bình', '0396646090', 1, 'Trống', '2022-08-23 09:44:49', '2022-08-23 09:44:49'),
(55, 'Nguyễn Đức Vân', 'nam', 'admin@gmail.com', 'Thái Bình', '0396646090', 1, 'Trống', '2022-08-23 09:51:07', '2022-08-23 09:51:07'),
(57, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 0, 'Trốngádasdsa', '2022-08-25 01:53:35', '2022-08-25 01:53:35'),
(58, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 07:19:45', '2022-08-25 07:19:45'),
(59, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 07:20:34', '2022-08-25 07:20:34'),
(60, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 07:23:01', '2022-08-25 07:23:01'),
(61, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 07:23:30', '2022-08-25 07:23:30'),
(62, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 07:24:20', '2022-08-25 07:24:20'),
(63, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 07:24:56', '2022-08-25 07:24:56'),
(64, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 07:25:35', '2022-08-25 07:25:35'),
(65, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 07:25:38', '2022-08-25 07:25:38'),
(66, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 07:26:28', '2022-08-25 07:26:28'),
(67, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 07:26:35', '2022-08-25 07:26:35'),
(68, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 07:27:02', '2022-08-25 07:27:02'),
(69, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 07:27:34', '2022-08-25 07:27:34'),
(70, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 07:28:57', '2022-08-25 07:28:57'),
(71, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 07:32:06', '2022-08-25 07:32:06'),
(72, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 07:32:55', '2022-08-25 07:32:55'),
(73, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'OK Bạn Nhá', '2022-08-25 07:36:04', '2022-08-25 07:36:04'),
(74, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'OK Bạn Nhá', '2022-08-25 07:38:02', '2022-08-25 07:38:02'),
(75, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'OK Bạn Nhá', '2022-08-25 07:41:12', '2022-08-25 07:41:12'),
(76, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', 'Thái Bình', '0396646090', 2, 'Trống', '2022-08-25 07:43:00', '2022-08-25 07:43:00'),
(77, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 07:43:51', '2022-08-25 07:43:51'),
(78, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 08:12:48', '2022-08-25 08:12:48'),
(79, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 08:29:12', '2022-08-25 08:29:12'),
(80, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 08:30:14', '2022-08-25 08:30:14'),
(81, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 08:30:43', '2022-08-25 08:30:43'),
(82, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 08:35:47', '2022-08-25 08:35:47'),
(83, 'Nguyễn Đức Vân', 'nam', 'admin@gmail.com', 'Thái Bình', '0396646090', 1, 'Trống', '2022-08-25 08:38:27', '2022-08-25 08:38:27'),
(84, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 08:39:10', '2022-08-25 08:39:10'),
(85, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-25 08:41:53', '2022-08-25 08:41:53'),
(86, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-26 02:36:17', '2022-08-26 02:36:17'),
(87, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-26 02:36:54', '2022-08-26 02:36:54'),
(88, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-26 07:32:44', '2022-08-26 07:32:44'),
(89, 'Nguyễn Đức Vân', 'nam', 'phonglang01249@gmail.com', '9704151301019809', '0396646090', 2, 'Trống', '2022-08-26 07:39:28', '2022-08-26 07:39:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `devvn_quanhuyen`
--

CREATE TABLE `devvn_quanhuyen` (
  `maqh` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `matp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `devvn_quanhuyen`
--

INSERT INTO `devvn_quanhuyen` (`maqh`, `name`, `type`, `matp`) VALUES
('001', 'Quận Ba Đình', 'Quận', 1),
('002', 'Quận Hoàn Kiếm', 'Quận', 1),
('003', 'Quận Tây Hồ', 'Quận', 1),
('004', 'Quận Long Biên', 'Quận', 1),
('005', 'Quận Cầu Giấy', 'Quận', 1),
('006', 'Quận Đống Đa', 'Quận', 1),
('007', 'Quận Hai Bà Trưng', 'Quận', 1),
('008', 'Quận Hoàng Mai', 'Quận', 1),
('009', 'Quận Thanh Xuân', 'Quận', 1),
('016', 'Huyện Sóc Sơn', 'Huyện', 1),
('017', 'Huyện Đông Anh', 'Huyện', 1),
('018', 'Huyện Gia Lâm', 'Huyện', 1),
('019', 'Quận Nam Từ Liêm', 'Quận', 1),
('020', 'Huyện Thanh Trì', 'Huyện', 1),
('021', 'Quận Bắc Từ Liêm', 'Quận', 1),
('024', 'Thành phố Hà Giang', 'Thành phố', 2),
('026', 'Huyện Đồng Văn', 'Huyện', 2),
('027', 'Huyện Mèo Vạc', 'Huyện', 2),
('028', 'Huyện Yên Minh', 'Huyện', 2),
('029', 'Huyện Quản Bạ', 'Huyện', 2),
('030', 'Huyện Vị Xuyên', 'Huyện', 2),
('031', 'Huyện Bắc Mê', 'Huyện', 2),
('032', 'Huyện Hoàng Su Phì', 'Huyện', 2),
('033', 'Huyện Xín Mần', 'Huyện', 2),
('034', 'Huyện Bắc Quang', 'Huyện', 2),
('035', 'Huyện Quang Bình', 'Huyện', 2),
('040', 'Thành phố Cao Bằng', 'Thành phố', 4),
('042', 'Huyện Bảo Lâm', 'Huyện', 4),
('043', 'Huyện Bảo Lạc', 'Huyện', 4),
('044', 'Huyện Thông Nông', 'Huyện', 4),
('045', 'Huyện Hà Quảng', 'Huyện', 4),
('046', 'Huyện Trà Lĩnh', 'Huyện', 4),
('047', 'Huyện Trùng Khánh', 'Huyện', 4),
('048', 'Huyện Hạ Lang', 'Huyện', 4),
('049', 'Huyện Quảng Uyên', 'Huyện', 4),
('050', 'Huyện Phục Hoà', 'Huyện', 4),
('051', 'Huyện Hoà An', 'Huyện', 4),
('052', 'Huyện Nguyên Bình', 'Huyện', 4),
('053', 'Huyện Thạch An', 'Huyện', 4),
('058', 'Thành Phố Bắc Kạn', 'Thành phố', 6),
('060', 'Huyện Pác Nặm', 'Huyện', 6),
('061', 'Huyện Ba Bể', 'Huyện', 6),
('062', 'Huyện Ngân Sơn', 'Huyện', 6),
('063', 'Huyện Bạch Thông', 'Huyện', 6),
('064', 'Huyện Chợ Đồn', 'Huyện', 6),
('065', 'Huyện Chợ Mới', 'Huyện', 6),
('066', 'Huyện Na Rì', 'Huyện', 6),
('070', 'Thành phố Tuyên Quang', 'Thành phố', 8),
('071', 'Huyện Lâm Bình', 'Huyện', 8),
('072', 'Huyện Nà Hang', 'Huyện', 8),
('073', 'Huyện Chiêm Hóa', 'Huyện', 8),
('074', 'Huyện Hàm Yên', 'Huyện', 8),
('075', 'Huyện Yên Sơn', 'Huyện', 8),
('076', 'Huyện Sơn Dương', 'Huyện', 8),
('080', 'Thành phố Lào Cai', 'Thành phố', 10),
('082', 'Huyện Bát Xát', 'Huyện', 10),
('083', 'Huyện Mường Khương', 'Huyện', 10),
('084', 'Huyện Si Ma Cai', 'Huyện', 10),
('085', 'Huyện Bắc Hà', 'Huyện', 10),
('086', 'Huyện Bảo Thắng', 'Huyện', 10),
('087', 'Huyện Bảo Yên', 'Huyện', 10),
('088', 'Huyện Sa Pa', 'Huyện', 10),
('089', 'Huyện Văn Bàn', 'Huyện', 10),
('094', 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
('095', 'Thị Xã Mường Lay', 'Thị xã', 11),
('096', 'Huyện Mường Nhé', 'Huyện', 11),
('097', 'Huyện Mường Chà', 'Huyện', 11),
('098', 'Huyện Tủa Chùa', 'Huyện', 11),
('099', 'Huyện Tuần Giáo', 'Huyện', 11),
('100', 'Huyện Điện Biên', 'Huyện', 11),
('101', 'Huyện Điện Biên Đông', 'Huyện', 11),
('102', 'Huyện Mường Ảng', 'Huyện', 11),
('103', 'Huyện Nậm Pồ', 'Huyện', 11),
('105', 'Thành phố Lai Châu', 'Thành phố', 12),
('106', 'Huyện Tam Đường', 'Huyện', 12),
('107', 'Huyện Mường Tè', 'Huyện', 12),
('108', 'Huyện Sìn Hồ', 'Huyện', 12),
('109', 'Huyện Phong Thổ', 'Huyện', 12),
('110', 'Huyện Than Uyên', 'Huyện', 12),
('111', 'Huyện Tân Uyên', 'Huyện', 12),
('112', 'Huyện Nậm Nhùn', 'Huyện', 12),
('116', 'Thành phố Sơn La', 'Thành phố', 14),
('118', 'Huyện Quỳnh Nhai', 'Huyện', 14),
('119', 'Huyện Thuận Châu', 'Huyện', 14),
('120', 'Huyện Mường La', 'Huyện', 14),
('121', 'Huyện Bắc Yên', 'Huyện', 14),
('122', 'Huyện Phù Yên', 'Huyện', 14),
('123', 'Huyện Mộc Châu', 'Huyện', 14),
('124', 'Huyện Yên Châu', 'Huyện', 14),
('125', 'Huyện Mai Sơn', 'Huyện', 14),
('126', 'Huyện Sông Mã', 'Huyện', 14),
('127', 'Huyện Sốp Cộp', 'Huyện', 14),
('128', 'Huyện Vân Hồ', 'Huyện', 14),
('132', 'Thành phố Yên Bái', 'Thành phố', 15),
('133', 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
('135', 'Huyện Lục Yên', 'Huyện', 15),
('136', 'Huyện Văn Yên', 'Huyện', 15),
('137', 'Huyện Mù Căng Chải', 'Huyện', 15),
('138', 'Huyện Trấn Yên', 'Huyện', 15),
('139', 'Huyện Trạm Tấu', 'Huyện', 15),
('140', 'Huyện Văn Chấn', 'Huyện', 15),
('141', 'Huyện Yên Bình', 'Huyện', 15),
('148', 'Thành phố Hòa Bình', 'Thành phố', 17),
('150', 'Huyện Đà Bắc', 'Huyện', 17),
('151', 'Huyện Kỳ Sơn', 'Huyện', 17),
('152', 'Huyện Lương Sơn', 'Huyện', 17),
('153', 'Huyện Kim Bôi', 'Huyện', 17),
('154', 'Huyện Cao Phong', 'Huyện', 17),
('155', 'Huyện Tân Lạc', 'Huyện', 17),
('156', 'Huyện Mai Châu', 'Huyện', 17),
('157', 'Huyện Lạc Sơn', 'Huyện', 17),
('158', 'Huyện Yên Thủy', 'Huyện', 17),
('159', 'Huyện Lạc Thủy', 'Huyện', 17),
('164', 'Thành phố Thái Nguyên', 'Thành phố', 19),
('165', 'Thành phố Sông Công', 'Thành phố', 19),
('167', 'Huyện Định Hóa', 'Huyện', 19),
('168', 'Huyện Phú Lương', 'Huyện', 19),
('169', 'Huyện Đồng Hỷ', 'Huyện', 19),
('170', 'Huyện Võ Nhai', 'Huyện', 19),
('171', 'Huyện Đại Từ', 'Huyện', 19),
('172', 'Thị xã Phổ Yên', 'Thị xã', 19),
('173', 'Huyện Phú Bình', 'Huyện', 19),
('178', 'Thành phố Lạng Sơn', 'Thành phố', 20),
('180', 'Huyện Tràng Định', 'Huyện', 20),
('181', 'Huyện Bình Gia', 'Huyện', 20),
('182', 'Huyện Văn Lãng', 'Huyện', 20),
('183', 'Huyện Cao Lộc', 'Huyện', 20),
('184', 'Huyện Văn Quan', 'Huyện', 20),
('185', 'Huyện Bắc Sơn', 'Huyện', 20),
('186', 'Huyện Hữu Lũng', 'Huyện', 20),
('187', 'Huyện Chi Lăng', 'Huyện', 20),
('188', 'Huyện Lộc Bình', 'Huyện', 20),
('189', 'Huyện Đình Lập', 'Huyện', 20),
('193', 'Thành phố Hạ Long', 'Thành phố', 22),
('194', 'Thành phố Móng Cái', 'Thành phố', 22),
('195', 'Thành phố Cẩm Phả', 'Thành phố', 22),
('196', 'Thành phố Uông Bí', 'Thành phố', 22),
('198', 'Huyện Bình Liêu', 'Huyện', 22),
('199', 'Huyện Tiên Yên', 'Huyện', 22),
('200', 'Huyện Đầm Hà', 'Huyện', 22),
('201', 'Huyện Hải Hà', 'Huyện', 22),
('202', 'Huyện Ba Chẽ', 'Huyện', 22),
('203', 'Huyện Vân Đồn', 'Huyện', 22),
('204', 'Huyện Hoành Bồ', 'Huyện', 22),
('205', 'Thị xã Đông Triều', 'Thị xã', 22),
('206', 'Thị xã Quảng Yên', 'Thị xã', 22),
('207', 'Huyện Cô Tô', 'Huyện', 22),
('213', 'Thành phố Bắc Giang', 'Thành phố', 24),
('215', 'Huyện Yên Thế', 'Huyện', 24),
('216', 'Huyện Tân Yên', 'Huyện', 24),
('217', 'Huyện Lạng Giang', 'Huyện', 24),
('218', 'Huyện Lục Nam', 'Huyện', 24),
('219', 'Huyện Lục Ngạn', 'Huyện', 24),
('220', 'Huyện Sơn Động', 'Huyện', 24),
('221', 'Huyện Yên Dũng', 'Huyện', 24),
('222', 'Huyện Việt Yên', 'Huyện', 24),
('223', 'Huyện Hiệp Hòa', 'Huyện', 24),
('227', 'Thành phố Việt Trì', 'Thành phố', 25),
('228', 'Thị xã Phú Thọ', 'Thị xã', 25),
('230', 'Huyện Đoan Hùng', 'Huyện', 25),
('231', 'Huyện Hạ Hoà', 'Huyện', 25),
('232', 'Huyện Thanh Ba', 'Huyện', 25),
('233', 'Huyện Phù Ninh', 'Huyện', 25),
('234', 'Huyện Yên Lập', 'Huyện', 25),
('235', 'Huyện Cẩm Khê', 'Huyện', 25),
('236', 'Huyện Tam Nông', 'Huyện', 25),
('237', 'Huyện Lâm Thao', 'Huyện', 25),
('238', 'Huyện Thanh Sơn', 'Huyện', 25),
('239', 'Huyện Thanh Thuỷ', 'Huyện', 25),
('240', 'Huyện Tân Sơn', 'Huyện', 25),
('243', 'Thành phố Vĩnh Yên', 'Thành phố', 26),
('244', 'Thị xã Phúc Yên', 'Thị xã', 26),
('246', 'Huyện Lập Thạch', 'Huyện', 26),
('247', 'Huyện Tam Dương', 'Huyện', 26),
('248', 'Huyện Tam Đảo', 'Huyện', 26),
('249', 'Huyện Bình Xuyên', 'Huyện', 26),
('250', 'Huyện Mê Linh', 'Huyện', 1),
('251', 'Huyện Yên Lạc', 'Huyện', 26),
('252', 'Huyện Vĩnh Tường', 'Huyện', 26),
('253', 'Huyện Sông Lô', 'Huyện', 26),
('256', 'Thành phố Bắc Ninh', 'Thành phố', 27),
('258', 'Huyện Yên Phong', 'Huyện', 27),
('259', 'Huyện Quế Võ', 'Huyện', 27),
('260', 'Huyện Tiên Du', 'Huyện', 27),
('261', 'Thị xã Từ Sơn', 'Thị xã', 27),
('262', 'Huyện Thuận Thành', 'Huyện', 27),
('263', 'Huyện Gia Bình', 'Huyện', 27),
('264', 'Huyện Lương Tài', 'Huyện', 27),
('268', 'Quận Hà Đông', 'Quận', 1),
('269', 'Thị xã Sơn Tây', 'Thị xã', 1),
('271', 'Huyện Ba Vì', 'Huyện', 1),
('272', 'Huyện Phúc Thọ', 'Huyện', 1),
('273', 'Huyện Đan Phượng', 'Huyện', 1),
('274', 'Huyện Hoài Đức', 'Huyện', 1),
('275', 'Huyện Quốc Oai', 'Huyện', 1),
('276', 'Huyện Thạch Thất', 'Huyện', 1),
('277', 'Huyện Chương Mỹ', 'Huyện', 1),
('278', 'Huyện Thanh Oai', 'Huyện', 1),
('279', 'Huyện Thường Tín', 'Huyện', 1),
('280', 'Huyện Phú Xuyên', 'Huyện', 1),
('281', 'Huyện Ứng Hòa', 'Huyện', 1),
('282', 'Huyện Mỹ Đức', 'Huyện', 1),
('288', 'Thành phố Hải Dương', 'Thành phố', 30),
('290', 'Thị xã Chí Linh', 'Thị xã', 30),
('291', 'Huyện Nam Sách', 'Huyện', 30),
('292', 'Huyện Kinh Môn', 'Huyện', 30),
('293', 'Huyện Kim Thành', 'Huyện', 30),
('294', 'Huyện Thanh Hà', 'Huyện', 30),
('295', 'Huyện Cẩm Giàng', 'Huyện', 30),
('296', 'Huyện Bình Giang', 'Huyện', 30),
('297', 'Huyện Gia Lộc', 'Huyện', 30),
('298', 'Huyện Tứ Kỳ', 'Huyện', 30),
('299', 'Huyện Ninh Giang', 'Huyện', 30),
('300', 'Huyện Thanh Miện', 'Huyện', 30),
('303', 'Quận Hồng Bàng', 'Quận', 31),
('304', 'Quận Ngô Quyền', 'Quận', 31),
('305', 'Quận Lê Chân', 'Quận', 31),
('306', 'Quận Hải An', 'Quận', 31),
('307', 'Quận Kiến An', 'Quận', 31),
('308', 'Quận Đồ Sơn', 'Quận', 31),
('309', 'Quận Dương Kinh', 'Quận', 31),
('311', 'Huyện Thuỷ Nguyên', 'Huyện', 31),
('312', 'Huyện An Dương', 'Huyện', 31),
('313', 'Huyện An Lão', 'Huyện', 31),
('314', 'Huyện Kiến Thuỵ', 'Huyện', 31),
('315', 'Huyện Tiên Lãng', 'Huyện', 31),
('316', 'Huyện Vĩnh Bảo', 'Huyện', 31),
('317', 'Huyện Cát Hải', 'Huyện', 31),
('318', 'Huyện Bạch Long Vĩ', 'Huyện', 31),
('323', 'Thành phố Hưng Yên', 'Thành phố', 33),
('325', 'Huyện Văn Lâm', 'Huyện', 33),
('326', 'Huyện Văn Giang', 'Huyện', 33),
('327', 'Huyện Yên Mỹ', 'Huyện', 33),
('328', 'Huyện Mỹ Hào', 'Huyện', 33),
('329', 'Huyện Ân Thi', 'Huyện', 33),
('330', 'Huyện Khoái Châu', 'Huyện', 33),
('331', 'Huyện Kim Động', 'Huyện', 33),
('332', 'Huyện Tiên Lữ', 'Huyện', 33),
('333', 'Huyện Phù Cừ', 'Huyện', 33),
('336', 'Thành phố Thái Bình', 'Thành phố', 34),
('338', 'Huyện Quỳnh Phụ', 'Huyện', 34),
('339', 'Huyện Hưng Hà', 'Huyện', 34),
('340', 'Huyện Đông Hưng', 'Huyện', 34),
('341', 'Huyện Thái Thụy', 'Huyện', 34),
('342', 'Huyện Tiền Hải', 'Huyện', 34),
('343', 'Huyện Kiến Xương', 'Huyện', 34),
('344', 'Huyện Vũ Thư', 'Huyện', 34),
('347', 'Thành phố Phủ Lý', 'Thành phố', 35),
('349', 'Huyện Duy Tiên', 'Huyện', 35),
('350', 'Huyện Kim Bảng', 'Huyện', 35),
('351', 'Huyện Thanh Liêm', 'Huyện', 35),
('352', 'Huyện Bình Lục', 'Huyện', 35),
('353', 'Huyện Lý Nhân', 'Huyện', 35),
('356', 'Thành phố Nam Định', 'Thành phố', 36),
('358', 'Huyện Mỹ Lộc', 'Huyện', 36),
('359', 'Huyện Vụ Bản', 'Huyện', 36),
('360', 'Huyện Ý Yên', 'Huyện', 36),
('361', 'Huyện Nghĩa Hưng', 'Huyện', 36),
('362', 'Huyện Nam Trực', 'Huyện', 36),
('363', 'Huyện Trực Ninh', 'Huyện', 36),
('364', 'Huyện Xuân Trường', 'Huyện', 36),
('365', 'Huyện Giao Thủy', 'Huyện', 36),
('366', 'Huyện Hải Hậu', 'Huyện', 36),
('369', 'Thành phố Ninh Bình', 'Thành phố', 37),
('370', 'Thành phố Tam Điệp', 'Thành phố', 37),
('372', 'Huyện Nho Quan', 'Huyện', 37),
('373', 'Huyện Gia Viễn', 'Huyện', 37),
('374', 'Huyện Hoa Lư', 'Huyện', 37),
('375', 'Huyện Yên Khánh', 'Huyện', 37),
('376', 'Huyện Kim Sơn', 'Huyện', 37),
('377', 'Huyện Yên Mô', 'Huyện', 37),
('380', 'Thành phố Thanh Hóa', 'Thành phố', 38),
('381', 'Thị xã Bỉm Sơn', 'Thị xã', 38),
('382', 'Thị xã Sầm Sơn', 'Thị xã', 38),
('384', 'Huyện Mường Lát', 'Huyện', 38),
('385', 'Huyện Quan Hóa', 'Huyện', 38),
('386', 'Huyện Bá Thước', 'Huyện', 38),
('387', 'Huyện Quan Sơn', 'Huyện', 38),
('388', 'Huyện Lang Chánh', 'Huyện', 38),
('389', 'Huyện Ngọc Lặc', 'Huyện', 38),
('390', 'Huyện Cẩm Thủy', 'Huyện', 38),
('391', 'Huyện Thạch Thành', 'Huyện', 38),
('392', 'Huyện Hà Trung', 'Huyện', 38),
('393', 'Huyện Vĩnh Lộc', 'Huyện', 38),
('394', 'Huyện Yên Định', 'Huyện', 38),
('395', 'Huyện Thọ Xuân', 'Huyện', 38),
('396', 'Huyện Thường Xuân', 'Huyện', 38),
('397', 'Huyện Triệu Sơn', 'Huyện', 38),
('398', 'Huyện Thiệu Hóa', 'Huyện', 38),
('399', 'Huyện Hoằng Hóa', 'Huyện', 38),
('400', 'Huyện Hậu Lộc', 'Huyện', 38),
('401', 'Huyện Nga Sơn', 'Huyện', 38),
('402', 'Huyện Như Xuân', 'Huyện', 38),
('403', 'Huyện Như Thanh', 'Huyện', 38),
('404', 'Huyện Nông Cống', 'Huyện', 38),
('405', 'Huyện Đông Sơn', 'Huyện', 38),
('406', 'Huyện Quảng Xương', 'Huyện', 38),
('407', 'Huyện Tĩnh Gia', 'Huyện', 38),
('412', 'Thành phố Vinh', 'Thành phố', 40),
('413', 'Thị xã Cửa Lò', 'Thị xã', 40),
('414', 'Thị xã Thái Hoà', 'Thị xã', 40),
('415', 'Huyện Quế Phong', 'Huyện', 40),
('416', 'Huyện Quỳ Châu', 'Huyện', 40),
('417', 'Huyện Kỳ Sơn', 'Huyện', 40),
('418', 'Huyện Tương Dương', 'Huyện', 40),
('419', 'Huyện Nghĩa Đàn', 'Huyện', 40),
('420', 'Huyện Quỳ Hợp', 'Huyện', 40),
('421', 'Huyện Quỳnh Lưu', 'Huyện', 40),
('422', 'Huyện Con Cuông', 'Huyện', 40),
('423', 'Huyện Tân Kỳ', 'Huyện', 40),
('424', 'Huyện Anh Sơn', 'Huyện', 40),
('425', 'Huyện Diễn Châu', 'Huyện', 40),
('426', 'Huyện Yên Thành', 'Huyện', 40),
('427', 'Huyện Đô Lương', 'Huyện', 40),
('428', 'Huyện Thanh Chương', 'Huyện', 40),
('429', 'Huyện Nghi Lộc', 'Huyện', 40),
('430', 'Huyện Nam Đàn', 'Huyện', 40),
('431', 'Huyện Hưng Nguyên', 'Huyện', 40),
('432', 'Thị xã Hoàng Mai', 'Thị xã', 40),
('436', 'Thành phố Hà Tĩnh', 'Thành phố', 42),
('437', 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
('439', 'Huyện Hương Sơn', 'Huyện', 42),
('440', 'Huyện Đức Thọ', 'Huyện', 42),
('441', 'Huyện Vũ Quang', 'Huyện', 42),
('442', 'Huyện Nghi Xuân', 'Huyện', 42),
('443', 'Huyện Can Lộc', 'Huyện', 42),
('444', 'Huyện Hương Khê', 'Huyện', 42),
('445', 'Huyện Thạch Hà', 'Huyện', 42),
('446', 'Huyện Cẩm Xuyên', 'Huyện', 42),
('447', 'Huyện Kỳ Anh', 'Huyện', 42),
('448', 'Huyện Lộc Hà', 'Huyện', 42),
('449', 'Thị xã Kỳ Anh', 'Thị xã', 42),
('450', 'Thành Phố Đồng Hới', 'Thành phố', 44),
('452', 'Huyện Minh Hóa', 'Huyện', 44),
('453', 'Huyện Tuyên Hóa', 'Huyện', 44),
('454', 'Huyện Quảng Trạch', 'Thị xã', 44),
('455', 'Huyện Bố Trạch', 'Huyện', 44),
('456', 'Huyện Quảng Ninh', 'Huyện', 44),
('457', 'Huyện Lệ Thủy', 'Huyện', 44),
('458', 'Thị xã Ba Đồn', 'Huyện', 44),
('461', 'Thành phố Đông Hà', 'Thành phố', 45),
('462', 'Thị xã Quảng Trị', 'Thị xã', 45),
('464', 'Huyện Vĩnh Linh', 'Huyện', 45),
('465', 'Huyện Hướng Hóa', 'Huyện', 45),
('466', 'Huyện Gio Linh', 'Huyện', 45),
('467', 'Huyện Đa Krông', 'Huyện', 45),
('468', 'Huyện Cam Lộ', 'Huyện', 45),
('469', 'Huyện Triệu Phong', 'Huyện', 45),
('470', 'Huyện Hải Lăng', 'Huyện', 45),
('471', 'Huyện Cồn Cỏ', 'Huyện', 45),
('474', 'Thành phố Huế', 'Thành phố', 46),
('476', 'Huyện Phong Điền', 'Huyện', 46),
('477', 'Huyện Quảng Điền', 'Huyện', 46),
('478', 'Huyện Phú Vang', 'Huyện', 46),
('479', 'Thị xã Hương Thủy', 'Thị xã', 46),
('480', 'Thị xã Hương Trà', 'Thị xã', 46),
('481', 'Huyện A Lưới', 'Huyện', 46),
('482', 'Huyện Phú Lộc', 'Huyện', 46),
('483', 'Huyện Nam Đông', 'Huyện', 46),
('490', 'Quận Liên Chiểu', 'Quận', 48),
('491', 'Quận Thanh Khê', 'Quận', 48),
('492', 'Quận Hải Châu', 'Quận', 48),
('493', 'Quận Sơn Trà', 'Quận', 48),
('494', 'Quận Ngũ Hành Sơn', 'Quận', 48),
('495', 'Quận Cẩm Lệ', 'Quận', 48),
('497', 'Huyện Hòa Vang', 'Huyện', 48),
('498', 'Huyện Hoàng Sa', 'Huyện', 48),
('502', 'Thành phố Tam Kỳ', 'Thành phố', 49),
('503', 'Thành phố Hội An', 'Thành phố', 49),
('504', 'Huyện Tây Giang', 'Huyện', 49),
('505', 'Huyện Đông Giang', 'Huyện', 49),
('506', 'Huyện Đại Lộc', 'Huyện', 49),
('507', 'Thị xã Điện Bàn', 'Thị xã', 49),
('508', 'Huyện Duy Xuyên', 'Huyện', 49),
('509', 'Huyện Quế Sơn', 'Huyện', 49),
('510', 'Huyện Nam Giang', 'Huyện', 49),
('511', 'Huyện Phước Sơn', 'Huyện', 49),
('512', 'Huyện Hiệp Đức', 'Huyện', 49),
('513', 'Huyện Thăng Bình', 'Huyện', 49),
('514', 'Huyện Tiên Phước', 'Huyện', 49),
('515', 'Huyện Bắc Trà My', 'Huyện', 49),
('516', 'Huyện Nam Trà My', 'Huyện', 49),
('517', 'Huyện Núi Thành', 'Huyện', 49),
('518', 'Huyện Phú Ninh', 'Huyện', 49),
('519', 'Huyện Nông Sơn', 'Huyện', 49),
('522', 'Thành phố Quảng Ngãi', 'Thành phố', 51),
('524', 'Huyện Bình Sơn', 'Huyện', 51),
('525', 'Huyện Trà Bồng', 'Huyện', 51),
('526', 'Huyện Tây Trà', 'Huyện', 51),
('527', 'Huyện Sơn Tịnh', 'Huyện', 51),
('528', 'Huyện Tư Nghĩa', 'Huyện', 51),
('529', 'Huyện Sơn Hà', 'Huyện', 51),
('530', 'Huyện Sơn Tây', 'Huyện', 51),
('531', 'Huyện Minh Long', 'Huyện', 51),
('532', 'Huyện Nghĩa Hành', 'Huyện', 51),
('533', 'Huyện Mộ Đức', 'Huyện', 51),
('534', 'Huyện Đức Phổ', 'Huyện', 51),
('535', 'Huyện Ba Tơ', 'Huyện', 51),
('536', 'Huyện Lý Sơn', 'Huyện', 51),
('540', 'Thành phố Qui Nhơn', 'Thành phố', 52),
('542', 'Huyện An Lão', 'Huyện', 52),
('543', 'Huyện Hoài Nhơn', 'Huyện', 52),
('544', 'Huyện Hoài Ân', 'Huyện', 52),
('545', 'Huyện Phù Mỹ', 'Huyện', 52),
('546', 'Huyện Vĩnh Thạnh', 'Huyện', 52),
('547', 'Huyện Tây Sơn', 'Huyện', 52),
('548', 'Huyện Phù Cát', 'Huyện', 52),
('549', 'Thị xã An Nhơn', 'Thị xã', 52),
('550', 'Huyện Tuy Phước', 'Huyện', 52),
('551', 'Huyện Vân Canh', 'Huyện', 52),
('555', 'Thành phố Tuy Hoà', 'Thành phố', 54),
('557', 'Thị xã Sông Cầu', 'Thị xã', 54),
('558', 'Huyện Đồng Xuân', 'Huyện', 54),
('559', 'Huyện Tuy An', 'Huyện', 54),
('560', 'Huyện Sơn Hòa', 'Huyện', 54),
('561', 'Huyện Sông Hinh', 'Huyện', 54),
('562', 'Huyện Tây Hoà', 'Huyện', 54),
('563', 'Huyện Phú Hoà', 'Huyện', 54),
('564', 'Huyện Đông Hòa', 'Huyện', 54),
('568', 'Thành phố Nha Trang', 'Thành phố', 56),
('569', 'Thành phố Cam Ranh', 'Thành phố', 56),
('570', 'Huyện Cam Lâm', 'Huyện', 56),
('571', 'Huyện Vạn Ninh', 'Huyện', 56),
('572', 'Thị xã Ninh Hòa', 'Thị xã', 56),
('573', 'Huyện Khánh Vĩnh', 'Huyện', 56),
('574', 'Huyện Diên Khánh', 'Huyện', 56),
('575', 'Huyện Khánh Sơn', 'Huyện', 56),
('576', 'Huyện Trường Sa', 'Huyện', 56),
('582', 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
('584', 'Huyện Bác Ái', 'Huyện', 58),
('585', 'Huyện Ninh Sơn', 'Huyện', 58),
('586', 'Huyện Ninh Hải', 'Huyện', 58),
('587', 'Huyện Ninh Phước', 'Huyện', 58),
('588', 'Huyện Thuận Bắc', 'Huyện', 58),
('589', 'Huyện Thuận Nam', 'Huyện', 58),
('593', 'Thành phố Phan Thiết', 'Thành phố', 60),
('594', 'Thị xã La Gi', 'Thị xã', 60),
('595', 'Huyện Tuy Phong', 'Huyện', 60),
('596', 'Huyện Bắc Bình', 'Huyện', 60),
('597', 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
('598', 'Huyện Hàm Thuận Nam', 'Huyện', 60),
('599', 'Huyện Tánh Linh', 'Huyện', 60),
('600', 'Huyện Đức Linh', 'Huyện', 60),
('601', 'Huyện Hàm Tân', 'Huyện', 60),
('602', 'Huyện Phú Quí', 'Huyện', 60),
('608', 'Thành phố Kon Tum', 'Thành phố', 62),
('610', 'Huyện Đắk Glei', 'Huyện', 62),
('611', 'Huyện Ngọc Hồi', 'Huyện', 62),
('612', 'Huyện Đắk Tô', 'Huyện', 62),
('613', 'Huyện Kon Plông', 'Huyện', 62),
('614', 'Huyện Kon Rẫy', 'Huyện', 62),
('615', 'Huyện Đắk Hà', 'Huyện', 62),
('616', 'Huyện Sa Thầy', 'Huyện', 62),
('617', 'Huyện Tu Mơ Rông', 'Huyện', 62),
('618', 'Huyện Ia H\' Drai', 'Huyện', 62),
('622', 'Thành phố Pleiku', 'Thành phố', 64),
('623', 'Thị xã An Khê', 'Thị xã', 64),
('624', 'Thị xã Ayun Pa', 'Thị xã', 64),
('625', 'Huyện KBang', 'Huyện', 64),
('626', 'Huyện Đăk Đoa', 'Huyện', 64),
('627', 'Huyện Chư Păh', 'Huyện', 64),
('628', 'Huyện Ia Grai', 'Huyện', 64),
('629', 'Huyện Mang Yang', 'Huyện', 64),
('630', 'Huyện Kông Chro', 'Huyện', 64),
('631', 'Huyện Đức Cơ', 'Huyện', 64),
('632', 'Huyện Chư Prông', 'Huyện', 64),
('633', 'Huyện Chư Sê', 'Huyện', 64),
('634', 'Huyện Đăk Pơ', 'Huyện', 64),
('635', 'Huyện Ia Pa', 'Huyện', 64),
('637', 'Huyện Krông Pa', 'Huyện', 64),
('638', 'Huyện Phú Thiện', 'Huyện', 64),
('639', 'Huyện Chư Pưh', 'Huyện', 64),
('643', 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
('644', 'Thị Xã Buôn Hồ', 'Thị xã', 66),
('645', 'Huyện Ea H\'leo', 'Huyện', 66),
('646', 'Huyện Ea Súp', 'Huyện', 66),
('647', 'Huyện Buôn Đôn', 'Huyện', 66),
('648', 'Huyện Cư M\'gar', 'Huyện', 66),
('649', 'Huyện Krông Búk', 'Huyện', 66),
('650', 'Huyện Krông Năng', 'Huyện', 66),
('651', 'Huyện Ea Kar', 'Huyện', 66),
('652', 'Huyện M\'Đrắk', 'Huyện', 66),
('653', 'Huyện Krông Bông', 'Huyện', 66),
('654', 'Huyện Krông Pắc', 'Huyện', 66),
('655', 'Huyện Krông A Na', 'Huyện', 66),
('656', 'Huyện Lắk', 'Huyện', 66),
('657', 'Huyện Cư Kuin', 'Huyện', 66),
('660', 'Thị xã Gia Nghĩa', 'Thị xã', 67),
('661', 'Huyện Đăk Glong', 'Huyện', 67),
('662', 'Huyện Cư Jút', 'Huyện', 67),
('663', 'Huyện Đắk Mil', 'Huyện', 67),
('664', 'Huyện Krông Nô', 'Huyện', 67),
('665', 'Huyện Đắk Song', 'Huyện', 67),
('666', 'Huyện Đắk R\'Lấp', 'Huyện', 67),
('667', 'Huyện Tuy Đức', 'Huyện', 67),
('672', 'Thành phố Đà Lạt', 'Thành phố', 68),
('673', 'Thành phố Bảo Lộc', 'Thành phố', 68),
('674', 'Huyện Đam Rông', 'Huyện', 68),
('675', 'Huyện Lạc Dương', 'Huyện', 68),
('676', 'Huyện Lâm Hà', 'Huyện', 68),
('677', 'Huyện Đơn Dương', 'Huyện', 68),
('678', 'Huyện Đức Trọng', 'Huyện', 68),
('679', 'Huyện Di Linh', 'Huyện', 68),
('680', 'Huyện Bảo Lâm', 'Huyện', 68),
('681', 'Huyện Đạ Huoai', 'Huyện', 68),
('682', 'Huyện Đạ Tẻh', 'Huyện', 68),
('683', 'Huyện Cát Tiên', 'Huyện', 68),
('688', 'Thị xã Phước Long', 'Thị xã', 70),
('689', 'Thị xã Đồng Xoài', 'Thị xã', 70),
('690', 'Thị xã Bình Long', 'Thị xã', 70),
('691', 'Huyện Bù Gia Mập', 'Huyện', 70),
('692', 'Huyện Lộc Ninh', 'Huyện', 70),
('693', 'Huyện Bù Đốp', 'Huyện', 70),
('694', 'Huyện Hớn Quản', 'Huyện', 70),
('695', 'Huyện Đồng Phú', 'Huyện', 70),
('696', 'Huyện Bù Đăng', 'Huyện', 70),
('697', 'Huyện Chơn Thành', 'Huyện', 70),
('698', 'Huyện Phú Riềng', 'Huyện', 70),
('703', 'Thành phố Tây Ninh', 'Thành phố', 72),
('705', 'Huyện Tân Biên', 'Huyện', 72),
('706', 'Huyện Tân Châu', 'Huyện', 72),
('707', 'Huyện Dương Minh Châu', 'Huyện', 72),
('708', 'Huyện Châu Thành', 'Huyện', 72),
('709', 'Huyện Hòa Thành', 'Huyện', 72),
('710', 'Huyện Gò Dầu', 'Huyện', 72),
('711', 'Huyện Bến Cầu', 'Huyện', 72),
('712', 'Huyện Trảng Bàng', 'Huyện', 72),
('718', 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
('719', 'Huyện Bàu Bàng', 'Huyện', 74),
('720', 'Huyện Dầu Tiếng', 'Huyện', 74),
('721', 'Thị xã Bến Cát', 'Thị xã', 74),
('722', 'Huyện Phú Giáo', 'Huyện', 74),
('723', 'Thị xã Tân Uyên', 'Thị xã', 74),
('724', 'Thị xã Dĩ An', 'Thị xã', 74),
('725', 'Thị xã Thuận An', 'Thị xã', 74),
('726', 'Huyện Bắc Tân Uyên', 'Huyện', 74),
('731', 'Thành phố Biên Hòa', 'Thành phố', 75),
('732', 'Thị xã Long Khánh', 'Thị xã', 75),
('734', 'Huyện Tân Phú', 'Huyện', 75),
('735', 'Huyện Vĩnh Cửu', 'Huyện', 75),
('736', 'Huyện Định Quán', 'Huyện', 75),
('737', 'Huyện Trảng Bom', 'Huyện', 75),
('738', 'Huyện Thống Nhất', 'Huyện', 75),
('739', 'Huyện Cẩm Mỹ', 'Huyện', 75),
('740', 'Huyện Long Thành', 'Huyện', 75),
('741', 'Huyện Xuân Lộc', 'Huyện', 75),
('742', 'Huyện Nhơn Trạch', 'Huyện', 75),
('747', 'Thành phố Vũng Tàu', 'Thành phố', 77),
('748', 'Thành phố Bà Rịa', 'Thành phố', 77),
('750', 'Huyện Châu Đức', 'Huyện', 77),
('751', 'Huyện Xuyên Mộc', 'Huyện', 77),
('752', 'Huyện Long Điền', 'Huyện', 77),
('753', 'Huyện Đất Đỏ', 'Huyện', 77),
('754', 'Huyện Tân Thành', 'Huyện', 77),
('755', 'Huyện Côn Đảo', 'Huyện', 77),
('760', 'Quận 1', 'Quận', 79),
('761', 'Quận 12', 'Quận', 79),
('762', 'Quận Thủ Đức', 'Quận', 79),
('763', 'Quận 9', 'Quận', 79),
('764', 'Quận Gò Vấp', 'Quận', 79),
('765', 'Quận Bình Thạnh', 'Quận', 79),
('766', 'Quận Tân Bình', 'Quận', 79),
('767', 'Quận Tân Phú', 'Quận', 79),
('768', 'Quận Phú Nhuận', 'Quận', 79),
('769', 'Quận 2', 'Quận', 79),
('770', 'Quận 3', 'Quận', 79),
('771', 'Quận 10', 'Quận', 79),
('772', 'Quận 11', 'Quận', 79),
('773', 'Quận 4', 'Quận', 79),
('774', 'Quận 5', 'Quận', 79),
('775', 'Quận 6', 'Quận', 79),
('776', 'Quận 8', 'Quận', 79),
('777', 'Quận Bình Tân', 'Quận', 79),
('778', 'Quận 7', 'Quận', 79),
('783', 'Huyện Củ Chi', 'Huyện', 79),
('784', 'Huyện Hóc Môn', 'Huyện', 79),
('785', 'Huyện Bình Chánh', 'Huyện', 79),
('786', 'Huyện Nhà Bè', 'Huyện', 79),
('787', 'Huyện Cần Giờ', 'Huyện', 79),
('794', 'Thành phố Tân An', 'Thành phố', 80),
('795', 'Thị xã Kiến Tường', 'Thị xã', 80),
('796', 'Huyện Tân Hưng', 'Huyện', 80),
('797', 'Huyện Vĩnh Hưng', 'Huyện', 80),
('798', 'Huyện Mộc Hóa', 'Huyện', 80),
('799', 'Huyện Tân Thạnh', 'Huyện', 80),
('800', 'Huyện Thạnh Hóa', 'Huyện', 80),
('801', 'Huyện Đức Huệ', 'Huyện', 80),
('802', 'Huyện Đức Hòa', 'Huyện', 80),
('803', 'Huyện Bến Lức', 'Huyện', 80),
('804', 'Huyện Thủ Thừa', 'Huyện', 80),
('805', 'Huyện Tân Trụ', 'Huyện', 80),
('806', 'Huyện Cần Đước', 'Huyện', 80),
('807', 'Huyện Cần Giuộc', 'Huyện', 80),
('808', 'Huyện Châu Thành', 'Huyện', 80),
('815', 'Thành phố Mỹ Tho', 'Thành phố', 82),
('816', 'Thị xã Gò Công', 'Thị xã', 82),
('817', 'Thị xã Cai Lậy', 'Huyện', 82),
('818', 'Huyện Tân Phước', 'Huyện', 82),
('819', 'Huyện Cái Bè', 'Huyện', 82),
('820', 'Huyện Cai Lậy', 'Thị xã', 82),
('821', 'Huyện Châu Thành', 'Huyện', 82),
('822', 'Huyện Chợ Gạo', 'Huyện', 82),
('823', 'Huyện Gò Công Tây', 'Huyện', 82),
('824', 'Huyện Gò Công Đông', 'Huyện', 82),
('825', 'Huyện Tân Phú Đông', 'Huyện', 82),
('829', 'Thành phố Bến Tre', 'Thành phố', 83),
('831', 'Huyện Châu Thành', 'Huyện', 83),
('832', 'Huyện Chợ Lách', 'Huyện', 83),
('833', 'Huyện Mỏ Cày Nam', 'Huyện', 83),
('834', 'Huyện Giồng Trôm', 'Huyện', 83),
('835', 'Huyện Bình Đại', 'Huyện', 83),
('836', 'Huyện Ba Tri', 'Huyện', 83),
('837', 'Huyện Thạnh Phú', 'Huyện', 83),
('838', 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
('842', 'Thành phố Trà Vinh', 'Thành phố', 84),
('844', 'Huyện Càng Long', 'Huyện', 84),
('845', 'Huyện Cầu Kè', 'Huyện', 84),
('846', 'Huyện Tiểu Cần', 'Huyện', 84),
('847', 'Huyện Châu Thành', 'Huyện', 84),
('848', 'Huyện Cầu Ngang', 'Huyện', 84),
('849', 'Huyện Trà Cú', 'Huyện', 84),
('850', 'Huyện Duyên Hải', 'Huyện', 84),
('851', 'Thị xã Duyên Hải', 'Thị xã', 84),
('855', 'Thành phố Vĩnh Long', 'Thành phố', 86),
('857', 'Huyện Long Hồ', 'Huyện', 86),
('858', 'Huyện Mang Thít', 'Huyện', 86),
('859', 'Huyện  Vũng Liêm', 'Huyện', 86),
('860', 'Huyện Tam Bình', 'Huyện', 86),
('861', 'Thị xã Bình Minh', 'Thị xã', 86),
('862', 'Huyện Trà Ôn', 'Huyện', 86),
('863', 'Huyện Bình Tân', 'Huyện', 86),
('866', 'Thành phố Cao Lãnh', 'Thành phố', 87),
('867', 'Thành phố Sa Đéc', 'Thành phố', 87),
('868', 'Thị xã Hồng Ngự', 'Thị xã', 87),
('869', 'Huyện Tân Hồng', 'Huyện', 87),
('870', 'Huyện Hồng Ngự', 'Huyện', 87),
('871', 'Huyện Tam Nông', 'Huyện', 87),
('872', 'Huyện Tháp Mười', 'Huyện', 87),
('873', 'Huyện Cao Lãnh', 'Huyện', 87),
('874', 'Huyện Thanh Bình', 'Huyện', 87),
('875', 'Huyện Lấp Vò', 'Huyện', 87),
('876', 'Huyện Lai Vung', 'Huyện', 87),
('877', 'Huyện Châu Thành', 'Huyện', 87),
('883', 'Thành phố Long Xuyên', 'Thành phố', 89),
('884', 'Thành phố Châu Đốc', 'Thành phố', 89),
('886', 'Huyện An Phú', 'Huyện', 89),
('887', 'Thị xã Tân Châu', 'Thị xã', 89),
('888', 'Huyện Phú Tân', 'Huyện', 89),
('889', 'Huyện Châu Phú', 'Huyện', 89),
('890', 'Huyện Tịnh Biên', 'Huyện', 89),
('891', 'Huyện Tri Tôn', 'Huyện', 89),
('892', 'Huyện Châu Thành', 'Huyện', 89),
('893', 'Huyện Chợ Mới', 'Huyện', 89),
('894', 'Huyện Thoại Sơn', 'Huyện', 89),
('899', 'Thành phố Rạch Giá', 'Thành phố', 91),
('900', 'Thị xã Hà Tiên', 'Thị xã', 91),
('902', 'Huyện Kiên Lương', 'Huyện', 91),
('903', 'Huyện Hòn Đất', 'Huyện', 91),
('904', 'Huyện Tân Hiệp', 'Huyện', 91),
('905', 'Huyện Châu Thành', 'Huyện', 91),
('906', 'Huyện Giồng Riềng', 'Huyện', 91),
('907', 'Huyện Gò Quao', 'Huyện', 91),
('908', 'Huyện An Biên', 'Huyện', 91),
('909', 'Huyện An Minh', 'Huyện', 91),
('910', 'Huyện Vĩnh Thuận', 'Huyện', 91),
('911', 'Huyện Phú Quốc', 'Huyện', 91),
('912', 'Huyện Kiên Hải', 'Huyện', 91),
('913', 'Huyện U Minh Thượng', 'Huyện', 91),
('914', 'Huyện Giang Thành', 'Huyện', 91),
('916', 'Quận Ninh Kiều', 'Quận', 92),
('917', 'Quận Ô Môn', 'Quận', 92),
('918', 'Quận Bình Thuỷ', 'Quận', 92),
('919', 'Quận Cái Răng', 'Quận', 92),
('923', 'Quận Thốt Nốt', 'Quận', 92),
('924', 'Huyện Vĩnh Thạnh', 'Huyện', 92),
('925', 'Huyện Cờ Đỏ', 'Huyện', 92),
('926', 'Huyện Phong Điền', 'Huyện', 92),
('927', 'Huyện Thới Lai', 'Huyện', 92),
('930', 'Thành phố Vị Thanh', 'Thành phố', 93),
('931', 'Thị xã Ngã Bảy', 'Thị xã', 93),
('932', 'Huyện Châu Thành A', 'Huyện', 93),
('933', 'Huyện Châu Thành', 'Huyện', 93),
('934', 'Huyện Phụng Hiệp', 'Huyện', 93),
('935', 'Huyện Vị Thuỷ', 'Huyện', 93),
('936', 'Huyện Long Mỹ', 'Huyện', 93),
('937', 'Thị xã Long Mỹ', 'Thị xã', 93),
('941', 'Thành phố Sóc Trăng', 'Thành phố', 94),
('942', 'Huyện Châu Thành', 'Huyện', 94),
('943', 'Huyện Kế Sách', 'Huyện', 94),
('944', 'Huyện Mỹ Tú', 'Huyện', 94),
('945', 'Huyện Cù Lao Dung', 'Huyện', 94),
('946', 'Huyện Long Phú', 'Huyện', 94),
('947', 'Huyện Mỹ Xuyên', 'Huyện', 94),
('948', 'Thị xã Ngã Năm', 'Thị xã', 94),
('949', 'Huyện Thạnh Trị', 'Huyện', 94),
('950', 'Thị xã Vĩnh Châu', 'Thị xã', 94),
('951', 'Huyện Trần Đề', 'Huyện', 94),
('954', 'Thành phố Bạc Liêu', 'Thành phố', 95),
('956', 'Huyện Hồng Dân', 'Huyện', 95),
('957', 'Huyện Phước Long', 'Huyện', 95),
('958', 'Huyện Vĩnh Lợi', 'Huyện', 95),
('959', 'Thị xã Giá Rai', 'Thị xã', 95),
('960', 'Huyện Đông Hải', 'Huyện', 95),
('961', 'Huyện Hoà Bình', 'Huyện', 95),
('964', 'Thành phố Cà Mau', 'Thành phố', 96),
('966', 'Huyện U Minh', 'Huyện', 96),
('967', 'Huyện Thới Bình', 'Huyện', 96),
('968', 'Huyện Trần Văn Thời', 'Huyện', 96),
('969', 'Huyện Cái Nước', 'Huyện', 96),
('970', 'Huyện Đầm Dơi', 'Huyện', 96),
('971', 'Huyện Năm Căn', 'Huyện', 96),
('972', 'Huyện Phú Tân', 'Huyện', 96),
('973', 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `devvn_tinhthanhpho`
--

CREATE TABLE `devvn_tinhthanhpho` (
  `matp` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `devvn_tinhthanhpho`
--

INSERT INTO `devvn_tinhthanhpho` (`matp`, `name`, `type`) VALUES
('01', 'Thành phố Hà Nội', 'Thành phố Trung ương'),
('02', 'Tỉnh Hà Giang', 'Tỉnh'),
('04', 'Tỉnh Cao Bằng', 'Tỉnh'),
('06', 'Tỉnh Bắc Kạn', 'Tỉnh'),
('08', 'Tỉnh Tuyên Quang', 'Tỉnh'),
('10', 'Tỉnh Lào Cai', 'Tỉnh'),
('11', 'Tỉnh Điện Biên', 'Tỉnh'),
('12', 'Tỉnh Lai Châu', 'Tỉnh'),
('14', 'Tỉnh Sơn La', 'Tỉnh'),
('15', 'Tỉnh Yên Bái', 'Tỉnh'),
('17', 'Tỉnh Hoà Bình', 'Tỉnh'),
('19', 'Tỉnh Thái Nguyên', 'Tỉnh'),
('20', 'Tỉnh Lạng Sơn', 'Tỉnh'),
('22', 'Tỉnh Quảng Ninh', 'Tỉnh'),
('24', 'Tỉnh Bắc Giang', 'Tỉnh'),
('25', 'Tỉnh Phú Thọ', 'Tỉnh'),
('26', 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
('27', 'Tỉnh Bắc Ninh', 'Tỉnh'),
('30', 'Tỉnh Hải Dương', 'Tỉnh'),
('31', 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
('33', 'Tỉnh Hưng Yên', 'Tỉnh'),
('34', 'Tỉnh Thái Bình', 'Tỉnh'),
('35', 'Tỉnh Hà Nam', 'Tỉnh'),
('36', 'Tỉnh Nam Định', 'Tỉnh'),
('37', 'Tỉnh Ninh Bình', 'Tỉnh'),
('38', 'Tỉnh Thanh Hóa', 'Tỉnh'),
('40', 'Tỉnh Nghệ An', 'Tỉnh'),
('42', 'Tỉnh Hà Tĩnh', 'Tỉnh'),
('44', 'Tỉnh Quảng Bình', 'Tỉnh'),
('45', 'Tỉnh Quảng Trị', 'Tỉnh'),
('46', 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
('48', 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
('49', 'Tỉnh Quảng Nam', 'Tỉnh'),
('51', 'Tỉnh Quảng Ngãi', 'Tỉnh'),
('52', 'Tỉnh Bình Định', 'Tỉnh'),
('54', 'Tỉnh Phú Yên', 'Tỉnh'),
('56', 'Tỉnh Khánh Hòa', 'Tỉnh'),
('58', 'Tỉnh Ninh Thuận', 'Tỉnh'),
('60', 'Tỉnh Bình Thuận', 'Tỉnh'),
('62', 'Tỉnh Kon Tum', 'Tỉnh'),
('64', 'Tỉnh Gia Lai', 'Tỉnh'),
('66', 'Tỉnh Đắk Lắk', 'Tỉnh'),
('67', 'Tỉnh Đắk Nông', 'Tỉnh'),
('68', 'Tỉnh Lâm Đồng', 'Tỉnh'),
('70', 'Tỉnh Bình Phước', 'Tỉnh'),
('72', 'Tỉnh Tây Ninh', 'Tỉnh'),
('74', 'Tỉnh Bình Dương', 'Tỉnh'),
('75', 'Tỉnh Đồng Nai', 'Tỉnh'),
('77', 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
('79', 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
('80', 'Tỉnh Long An', 'Tỉnh'),
('82', 'Tỉnh Tiền Giang', 'Tỉnh'),
('83', 'Tỉnh Bến Tre', 'Tỉnh'),
('84', 'Tỉnh Trà Vinh', 'Tỉnh'),
('86', 'Tỉnh Vĩnh Long', 'Tỉnh'),
('87', 'Tỉnh Đồng Tháp', 'Tỉnh'),
('89', 'Tỉnh An Giang', 'Tỉnh'),
('91', 'Tỉnh Kiên Giang', 'Tỉnh'),
('92', 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
('93', 'Tỉnh Hậu Giang', 'Tỉnh'),
('94', 'Tỉnh Sóc Trăng', 'Tỉnh'),
('95', 'Tỉnh Bạc Liêu', 'Tỉnh'),
('96', 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `devvn_xaphuongthitran`
--

CREATE TABLE `devvn_xaphuongthitran` (
  `xaid` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `maqh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `devvn_xaphuongthitran`
--

INSERT INTO `devvn_xaphuongthitran` (`xaid`, `name`, `type`, `maqh`) VALUES
('00001', 'Phường Phúc Xá', 'Phường', 1),
('00004', 'Phường Trúc Bạch', 'Phường', 1),
('00006', 'Phường Vĩnh Phúc', 'Phường', 1),
('00007', 'Phường Cống Vị', 'Phường', 1),
('00008', 'Phường Liễu Giai', 'Phường', 1),
('00010', 'Phường Nguyễn Trung Trực', 'Phường', 1),
('00013', 'Phường Quán Thánh', 'Phường', 1),
('00016', 'Phường Ngọc Hà', 'Phường', 1),
('00019', 'Phường Điện Biên', 'Phường', 1),
('00022', 'Phường Đội Cấn', 'Phường', 1),
('00025', 'Phường Ngọc Khánh', 'Phường', 1),
('00028', 'Phường Kim Mã', 'Phường', 1),
('00031', 'Phường Giảng Võ', 'Phường', 1),
('00034', 'Phường Thành Công', 'Phường', 1),
('00037', 'Phường Phúc Tân', 'Phường', 2),
('00040', 'Phường Đồng Xuân', 'Phường', 2),
('00043', 'Phường Hàng Mã', 'Phường', 2),
('00046', 'Phường Hàng Buồm', 'Phường', 2),
('00049', 'Phường Hàng Đào', 'Phường', 2),
('00052', 'Phường Hàng Bồ', 'Phường', 2),
('00055', 'Phường Cửa Đông', 'Phường', 2),
('00058', 'Phường Lý Thái Tổ', 'Phường', 2),
('00061', 'Phường Hàng Bạc', 'Phường', 2),
('00064', 'Phường Hàng Gai', 'Phường', 2),
('00067', 'Phường Chương Dương Độ', 'Phường', 2),
('00070', 'Phường Hàng Trống', 'Phường', 2),
('00073', 'Phường Cửa Nam', 'Phường', 2),
('00076', 'Phường Hàng Bông', 'Phường', 2),
('00079', 'Phường Tràng Tiền', 'Phường', 2),
('00082', 'Phường Trần Hưng Đạo', 'Phường', 2),
('00085', 'Phường Phan Chu Trinh', 'Phường', 2),
('00088', 'Phường Hàng Bài', 'Phường', 2),
('00091', 'Phường Phú Thượng', 'Phường', 3),
('00094', 'Phường Nhật Tân', 'Phường', 3),
('00097', 'Phường Tứ Liên', 'Phường', 3),
('00100', 'Phường Quảng An', 'Phường', 3),
('00103', 'Phường Xuân La', 'Phường', 3),
('00106', 'Phường Yên Phụ', 'Phường', 3),
('00109', 'Phường Bưởi', 'Phường', 3),
('00112', 'Phường Thụy Khuê', 'Phường', 3),
('00115', 'Phường Thượng Thanh', 'Phường', 4),
('00118', 'Phường Ngọc Thụy', 'Phường', 4),
('00121', 'Phường Giang Biên', 'Phường', 4),
('00124', 'Phường Đức Giang', 'Phường', 4),
('00127', 'Phường Việt Hưng', 'Phường', 4),
('00130', 'Phường Gia Thụy', 'Phường', 4),
('00133', 'Phường Ngọc Lâm', 'Phường', 4),
('00136', 'Phường Phúc Lợi', 'Phường', 4),
('00139', 'Phường Bồ Đề', 'Phường', 4),
('00142', 'Phường Sài Đồng', 'Phường', 4),
('00145', 'Phường Long Biên', 'Phường', 4),
('00148', 'Phường Thạch Bàn', 'Phường', 4),
('00151', 'Phường Phúc Đồng', 'Phường', 4),
('00154', 'Phường Cự Khối', 'Phường', 4),
('00157', 'Phường Nghĩa Đô', 'Phường', 5),
('00160', 'Phường Nghĩa Tân', 'Phường', 5),
('00163', 'Phường Mai Dịch', 'Phường', 5),
('00166', 'Phường Dịch Vọng', 'Phường', 5),
('00167', 'Phường Dịch Vọng Hậu', 'Phường', 5),
('00169', 'Phường Quan Hoa', 'Phường', 5),
('00172', 'Phường Yên Hoà', 'Phường', 5),
('00175', 'Phường Trung Hoà', 'Phường', 5),
('00178', 'Phường Cát Linh', 'Phường', 6),
('00181', 'Phường Văn Miếu', 'Phường', 6),
('00184', 'Phường Quốc Tử Giám', 'Phường', 6),
('00187', 'Phường Láng Thượng', 'Phường', 6),
('00190', 'Phường Ô Chợ Dừa', 'Phường', 6),
('00193', 'Phường Văn Chương', 'Phường', 6),
('00196', 'Phường Hàng Bột', 'Phường', 6),
('00199', 'Phường Láng Hạ', 'Phường', 6),
('00202', 'Phường Khâm Thiên', 'Phường', 6),
('00205', 'Phường Thổ Quan', 'Phường', 6),
('00208', 'Phường Nam Đồng', 'Phường', 6),
('00211', 'Phường Trung Phụng', 'Phường', 6),
('00214', 'Phường Quang Trung', 'Phường', 6),
('00217', 'Phường Trung Liệt', 'Phường', 6),
('00220', 'Phường Phương Liên', 'Phường', 6),
('00223', 'Phường Thịnh Quang', 'Phường', 6),
('00226', 'Phường Trung Tự', 'Phường', 6),
('00229', 'Phường Kim Liên', 'Phường', 6),
('00232', 'Phường Phương Mai', 'Phường', 6),
('00235', 'Phường Ngã Tư Sở', 'Phường', 6),
('00238', 'Phường Khương Thượng', 'Phường', 6),
('00241', 'Phường Nguyễn Du', 'Phường', 7),
('00244', 'Phường Bạch Đằng', 'Phường', 7),
('00247', 'Phường Phạm Đình Hổ', 'Phường', 7),
('00250', 'Phường Bùi Thị Xuân', 'Phường', 7),
('00253', 'Phường Ngô Thì Nhậm', 'Phường', 7),
('00256', 'Phường Lê Đại Hành', 'Phường', 7),
('00259', 'Phường Đồng Nhân', 'Phường', 7),
('00262', 'Phường Phố Huế', 'Phường', 7),
('00265', 'Phường Đống Mác', 'Phường', 7),
('00268', 'Phường Thanh Lương', 'Phường', 7),
('00271', 'Phường Thanh Nhàn', 'Phường', 7),
('00274', 'Phường Cầu Dền', 'Phường', 7),
('00277', 'Phường Bách Khoa', 'Phường', 7),
('00280', 'Phường Đồng Tâm', 'Phường', 7),
('00283', 'Phường Vĩnh Tuy', 'Phường', 7),
('00286', 'Phường Bạch Mai', 'Phường', 7),
('00289', 'Phường Quỳnh Mai', 'Phường', 7),
('00292', 'Phường Quỳnh Lôi', 'Phường', 7),
('00295', 'Phường Minh Khai', 'Phường', 7),
('00298', 'Phường Trương Định', 'Phường', 7),
('00301', 'Phường Thanh Trì', 'Phường', 8),
('00304', 'Phường Vĩnh Hưng', 'Phường', 8),
('00307', 'Phường Định Công', 'Phường', 8),
('00310', 'Phường Mai Động', 'Phường', 8),
('00313', 'Phường Tương Mai', 'Phường', 8),
('00316', 'Phường Đại Kim', 'Phường', 8),
('00319', 'Phường Tân Mai', 'Phường', 8),
('00322', 'Phường Hoàng Văn Thụ', 'Phường', 8),
('00325', 'Phường Giáp Bát', 'Phường', 8),
('00328', 'Phường Lĩnh Nam', 'Phường', 8),
('00331', 'Phường Thịnh Liệt', 'Phường', 8),
('00334', 'Phường Trần Phú', 'Phường', 8),
('00337', 'Phường Hoàng Liệt', 'Phường', 8),
('00340', 'Phường Yên Sở', 'Phường', 8),
('00343', 'Phường Nhân Chính', 'Phường', 9),
('00346', 'Phường Thượng Đình', 'Phường', 9),
('00349', 'Phường Khương Trung', 'Phường', 9),
('00352', 'Phường Khương Mai', 'Phường', 9),
('00355', 'Phường Thanh Xuân Trung', 'Phường', 9),
('00358', 'Phường Phương Liệt', 'Phường', 9),
('00361', 'Phường Hạ Đình', 'Phường', 9),
('00364', 'Phường Khương Đình', 'Phường', 9),
('00367', 'Phường Thanh Xuân Bắc', 'Phường', 9),
('00370', 'Phường Thanh Xuân Nam', 'Phường', 9),
('00373', 'Phường Kim Giang', 'Phường', 9),
('00376', 'Thị trấn Sóc Sơn', 'Thị trấn', 16),
('00379', 'Xã Bắc Sơn', 'Xã', 16),
('00382', 'Xã Minh Trí', 'Xã', 16),
('00385', 'Xã Hồng Kỳ', 'Xã', 16),
('00388', 'Xã Nam Sơn', 'Xã', 16),
('00391', 'Xã Trung Giã', 'Xã', 16),
('00394', 'Xã Tân Hưng', 'Xã', 16),
('00397', 'Xã Minh Phú', 'Xã', 16),
('00400', 'Xã Phù Linh', 'Xã', 16),
('00403', 'Xã Bắc Phú', 'Xã', 16),
('00406', 'Xã Tân Minh', 'Xã', 16),
('00409', 'Xã Quang Tiến', 'Xã', 16),
('00412', 'Xã Hiền Ninh', 'Xã', 16),
('00415', 'Xã Tân Dân', 'Xã', 16),
('00418', 'Xã Tiên Dược', 'Xã', 16),
('00421', 'Xã Việt Long', 'Xã', 16),
('00424', 'Xã Xuân Giang', 'Xã', 16),
('00427', 'Xã Mai Đình', 'Xã', 16),
('00430', 'Xã Đức Hoà', 'Xã', 16),
('00433', 'Xã Thanh Xuân', 'Xã', 16),
('00436', 'Xã Đông Xuân', 'Xã', 16),
('00439', 'Xã Kim Lũ', 'Xã', 16),
('00442', 'Xã Phú Cường', 'Xã', 16),
('00445', 'Xã Phú Minh', 'Xã', 16),
('00448', 'Xã Phù Lỗ', 'Xã', 16),
('00451', 'Xã Xuân Thu', 'Xã', 16),
('00454', 'Thị trấn Đông Anh', 'Thị trấn', 17),
('00457', 'Xã Xuân Nộn', 'Xã', 17),
('00460', 'Xã Thuỵ Lâm', 'Xã', 17),
('00463', 'Xã Bắc Hồng', 'Xã', 17),
('00466', 'Xã Nguyên Khê', 'Xã', 17),
('00469', 'Xã Nam Hồng', 'Xã', 17),
('00472', 'Xã Tiên Dương', 'Xã', 17),
('00475', 'Xã Vân Hà', 'Xã', 17),
('00478', 'Xã Uy Nỗ', 'Xã', 17),
('00481', 'Xã Vân Nội', 'Xã', 17),
('00484', 'Xã Liên Hà', 'Xã', 17),
('00487', 'Xã Việt Hùng', 'Xã', 17),
('00490', 'Xã Kim Nỗ', 'Xã', 17),
('00493', 'Xã Kim Chung', 'Xã', 17),
('00496', 'Xã Dục Tú', 'Xã', 17),
('00499', 'Xã Đại Mạch', 'Xã', 17),
('00502', 'Xã Vĩnh Ngọc', 'Xã', 17),
('00505', 'Xã Cổ Loa', 'Xã', 17),
('00508', 'Xã Hải Bối', 'Xã', 17),
('00511', 'Xã Xuân Canh', 'Xã', 17),
('00514', 'Xã Võng La', 'Xã', 17),
('00517', 'Xã Tầm Xá', 'Xã', 17),
('00520', 'Xã Mai Lâm', 'Xã', 17),
('00523', 'Xã Đông Hội', 'Xã', 17),
('00526', 'Thị trấn Yên Viên', 'Thị trấn', 18),
('00529', 'Xã Yên Thường', 'Xã', 18),
('00532', 'Xã Yên Viên', 'Xã', 18),
('00535', 'Xã Ninh Hiệp', 'Xã', 18),
('00538', 'Xã Đình Xuyên', 'Xã', 18),
('00541', 'Xã Dương Hà', 'Xã', 18),
('00544', 'Xã Phù Đổng', 'Xã', 18),
('00547', 'Xã Trung Mầu', 'Xã', 18),
('00550', 'Xã Lệ Chi', 'Xã', 18),
('00553', 'Xã Cổ Bi', 'Xã', 18),
('00556', 'Xã Đặng Xá', 'Xã', 18),
('00559', 'Xã Phú Thị', 'Xã', 18),
('00562', 'Xã Kim Sơn', 'Xã', 18),
('00565', 'Thị trấn Trâu Quỳ', 'Thị trấn', 18),
('00568', 'Xã Dương Quang', 'Xã', 18),
('00571', 'Xã Dương Xá', 'Xã', 18),
('00574', 'Xã Đông Dư', 'Xã', 18),
('00577', 'Xã Đa Tốn', 'Xã', 18),
('00580', 'Xã Kiêu Kỵ', 'Xã', 18),
('00583', 'Xã Bát Tràng', 'Xã', 18),
('00586', 'Xã Kim Lan', 'Xã', 18),
('00589', 'Xã Văn Đức', 'Xã', 18),
('00592', 'Phường Cầu Diễn', 'Phường', 19),
('00595', 'Phường Thượng Cát', 'Phường', 21),
('00598', 'Phường Liên Mạc', 'Phường', 21),
('00601', 'Phường Đông Ngạc', 'Phường', 21),
('00602', 'Phường Đức Thắng', 'Phường', 21),
('00604', 'Phường Thụy Phương', 'Phường', 21),
('00607', 'Phường Tây Tựu', 'Phường', 21),
('00610', 'Phường Xuân Đỉnh', 'Phường', 21),
('00611', 'Phường Xuân Tảo', 'Phường', 21),
('00613', 'Phường Minh Khai', 'Phường', 21),
('00616', 'Phường Cổ Nhuế 1', 'Phường', 21),
('00617', 'Phường Cổ Nhuế 2', 'Phường', 21),
('00619', 'Phường Phú Diễn', 'Phường', 21),
('00620', 'Phường Phúc Diễn', 'Phường', 21),
('00622', 'Phường Xuân Phương', 'Phường', 19),
('00623', 'Phường Phương Canh', 'Phường', 19),
('00625', 'Phường Mỹ Đình 1', 'Phường', 19),
('00626', 'Phường Mỹ Đình 2', 'Phường', 19),
('00628', 'Phường Tây Mỗ', 'Phường', 19),
('00631', 'Phường Mễ Trì', 'Phường', 19),
('00632', 'Phường Phú Đô', 'Phường', 19),
('00634', 'Phường Đại Mỗ', 'Phường', 19),
('00637', 'Phường Trung Văn', 'Phường', 19),
('00640', 'Thị trấn Văn Điển', 'Thị trấn', 20),
('00643', 'Xã Tân Triều', 'Xã', 20),
('00646', 'Xã Thanh Liệt', 'Xã', 20),
('00649', 'Xã Tả Thanh Oai', 'Xã', 20),
('00652', 'Xã Hữu Hoà', 'Xã', 20),
('00655', 'Xã Tam Hiệp', 'Xã', 20),
('00658', 'Xã Tứ Hiệp', 'Xã', 20),
('00661', 'Xã Yên Mỹ', 'Xã', 20),
('00664', 'Xã Vĩnh Quỳnh', 'Xã', 20),
('00667', 'Xã Ngũ Hiệp', 'Xã', 20),
('00670', 'Xã Duyên Hà', 'Xã', 20),
('00673', 'Xã Ngọc Hồi', 'Xã', 20),
('00676', 'Xã Vạn Phúc', 'Xã', 20),
('00679', 'Xã Đại áng', 'Xã', 20),
('00682', 'Xã Liên Ninh', 'Xã', 20),
('00685', 'Xã Đông Mỹ', 'Xã', 20),
('00688', 'Phường Quang Trung', 'Phường', 24),
('00691', 'Phường Trần Phú', 'Phường', 24),
('00692', 'Phường Ngọc Hà', 'Phường', 24),
('00694', 'Phường Nguyễn Trãi', 'Phường', 24),
('00697', 'Phường Minh Khai', 'Phường', 24),
('00700', 'Xã Ngọc Đường', 'Xã', 24),
('00703', 'Xã Kim Thạch', 'Xã', 30),
('00706', 'Xã Phú Linh', 'Xã', 30),
('00709', 'Xã Kim Linh', 'Xã', 30),
('00712', 'Thị trấn Phó Bảng', 'Thị trấn', 26),
('00715', 'Xã Lũng Cú', 'Xã', 26),
('00718', 'Xã Má Lé', 'Xã', 26),
('00721', 'Thị trấn Đồng Văn', 'Thị trấn', 26),
('00724', 'Xã Lũng Táo', 'Xã', 26),
('00727', 'Xã Phố Là', 'Xã', 26),
('00730', 'Xã Thài Phìn Tủng', 'Xã', 26),
('00733', 'Xã Sủng Là', 'Xã', 26),
('00736', 'Xã Xà Phìn', 'Xã', 26),
('00739', 'Xã Tả Phìn', 'Xã', 26),
('00742', 'Xã Tả Lủng', 'Xã', 26),
('00745', 'Xã Phố Cáo', 'Xã', 26),
('00748', 'Xã Sính Lủng', 'Xã', 26),
('00751', 'Xã Sảng Tủng', 'Xã', 26),
('00754', 'Xã Lũng Thầu', 'Xã', 26),
('00757', 'Xã Hố Quáng Phìn', 'Xã', 26),
('00760', 'Xã Vần Chải', 'Xã', 26),
('00763', 'Xã Lũng Phìn', 'Xã', 26),
('00766', 'Xã Sủng Trái', 'Xã', 26),
('00769', 'Thị trấn Mèo Vạc', 'Thị trấn', 27),
('00772', 'Xã Thượng Phùng', 'Xã', 27),
('00775', 'Xã Pải Lủng', 'Xã', 27),
('00778', 'Xã Xín Cái', 'Xã', 27),
('00781', 'Xã Pả Vi', 'Xã', 27),
('00784', 'Xã Giàng Chu Phìn', 'Xã', 27),
('00787', 'Xã Sủng Trà', 'Xã', 27),
('00790', 'Xã Sủng Máng', 'Xã', 27),
('00793', 'Xã Sơn Vĩ', 'Xã', 27),
('00796', 'Xã Tả Lủng', 'Xã', 27),
('00799', 'Xã Cán Chu Phìn', 'Xã', 27),
('00802', 'Xã Lũng Pù', 'Xã', 27),
('00805', 'Xã Lũng Chinh', 'Xã', 27),
('00808', 'Xã Tát Ngà', 'Xã', 27),
('00811', 'Xã Nậm Ban', 'Xã', 27),
('00814', 'Xã Khâu Vai', 'Xã', 27),
('00815', 'Xã Niêm Tòng', 'Xã', 27),
('00817', 'Xã Niêm Sơn', 'Xã', 27),
('00820', 'Thị trấn Yên Minh', 'Thị trấn', 28),
('00823', 'Xã Thắng Mố', 'Xã', 28),
('00826', 'Xã Phú Lũng', 'Xã', 28),
('00829', 'Xã Sủng Tráng', 'Xã', 28),
('00832', 'Xã Bạch Đích', 'Xã', 28),
('00835', 'Xã Na Khê', 'Xã', 28),
('00838', 'Xã Sủng Thài', 'Xã', 28),
('00841', 'Xã Hữu Vinh', 'Xã', 28),
('00844', 'Xã Lao Và Chải', 'Xã', 28),
('00847', 'Xã Mậu Duệ', 'Xã', 28),
('00850', 'Xã Đông Minh', 'Xã', 28),
('00853', 'Xã Mậu Long', 'Xã', 28),
('00856', 'Xã Ngam La', 'Xã', 28),
('00859', 'Xã Ngọc Long', 'Xã', 28),
('00862', 'Xã Đường Thượng', 'Xã', 28),
('00865', 'Xã Lũng Hồ', 'Xã', 28),
('00868', 'Xã Du Tiến', 'Xã', 28),
('00871', 'Xã Du Già', 'Xã', 28),
('00874', 'Thị trấn Tam Sơn', 'Thị trấn', 29),
('00877', 'Xã Bát Đại Sơn', 'Xã', 29),
('00880', 'Xã Nghĩa Thuận', 'Xã', 29),
('00883', 'Xã Cán Tỷ', 'Xã', 29),
('00886', 'Xã Cao Mã Pờ', 'Xã', 29),
('00889', 'Xã Thanh Vân', 'Xã', 29),
('00892', 'Xã Tùng Vài', 'Xã', 29),
('00895', 'Xã Đông Hà', 'Xã', 29),
('00898', 'Xã Quản Bạ', 'Xã', 29),
('00901', 'Xã Lùng Tám', 'Xã', 29),
('00904', 'Xã Quyết Tiến', 'Xã', 29),
('00907', 'Xã Tả Ván', 'Xã', 29),
('00910', 'Xã Thái An', 'Xã', 29),
('00913', 'Thị trấn Vị Xuyên', 'Thị trấn', 30),
('00916', 'Thị trấn Nông Trường Việt Lâm', 'Thị trấn', 30),
('00919', 'Xã Minh Tân', 'Xã', 30),
('00922', 'Xã Thuận Hoà', 'Xã', 30),
('00925', 'Xã Tùng Bá', 'Xã', 30),
('00928', 'Xã Thanh Thủy', 'Xã', 30),
('00931', 'Xã Thanh Đức', 'Xã', 30),
('00934', 'Xã Phong Quang', 'Xã', 30),
('00937', 'Xã Xín Chải', 'Xã', 30),
('00940', 'Xã Phương Tiến', 'Xã', 30),
('00943', 'Xã Lao Chải', 'Xã', 30),
('00946', 'Xã Phương Độ', 'Xã', 24),
('00949', 'Xã Phương Thiện', 'Xã', 24),
('00952', 'Xã Cao Bồ', 'Xã', 30),
('00955', 'Xã Đạo Đức', 'Xã', 30),
('00958', 'Xã Thượng Sơn', 'Xã', 30),
('00961', 'Xã Linh Hồ', 'Xã', 30),
('00964', 'Xã Quảng Ngần', 'Xã', 30),
('00967', 'Xã Việt Lâm', 'Xã', 30),
('00970', 'Xã Ngọc Linh', 'Xã', 30),
('00973', 'Xã Ngọc Minh', 'Xã', 30),
('00976', 'Xã Bạch Ngọc', 'Xã', 30),
('00979', 'Xã Trung Thành', 'Xã', 30),
('00982', 'Xã Minh Sơn', 'Xã', 31),
('00985', 'Xã Giáp Trung', 'Xã', 31),
('00988', 'Xã Yên Định', 'Xã', 31),
('00991', 'Thị trấn Yên Phú', 'Thị trấn', 31),
('00994', 'Xã Minh Ngọc', 'Xã', 31),
('00997', 'Xã Yên Phong', 'Xã', 31),
('01000', 'Xã Lạc Nông', 'Xã', 31),
('01003', 'Xã Phú Nam', 'Xã', 31),
('01006', 'Xã Yên Cường', 'Xã', 31),
('01009', 'Xã Thượng Tân', 'Xã', 31),
('01012', 'Xã Đường Âm', 'Xã', 31),
('01015', 'Xã Đường Hồng', 'Xã', 31),
('01018', 'Xã Phiêng Luông', 'Xã', 31),
('01021', 'Thị trấn Vinh Quang', 'Thị trấn', 32),
('01024', 'Xã Bản Máy', 'Xã', 32),
('01027', 'Xã Thàng Tín', 'Xã', 32),
('01030', 'Xã Thèn Chu Phìn', 'Xã', 32),
('01033', 'Xã Pố Lồ', 'Xã', 32),
('01036', 'Xã Bản Phùng', 'Xã', 32),
('01039', 'Xã Túng Sán', 'Xã', 32),
('01042', 'Xã Chiến Phố', 'Xã', 32),
('01045', 'Xã Đản Ván', 'Xã', 32),
('01048', 'Xã Tụ Nhân', 'Xã', 32),
('01051', 'Xã Tân Tiến', 'Xã', 32),
('01054', 'Xã Nàng Đôn', 'Xã', 32),
('01057', 'Xã Pờ Ly Ngài', 'Xã', 32),
('01060', 'Xã Sán Xả Hồ', 'Xã', 32),
('01063', 'Xã Bản Luốc', 'Xã', 32),
('01066', 'Xã Ngàm Đăng Vài', 'Xã', 32),
('01069', 'Xã Bản Nhùng', 'Xã', 32),
('01072', 'Xã Tả Sử Choóng', 'Xã', 32),
('01075', 'Xã Nậm Dịch', 'Xã', 32),
('01078', 'Xã Bản Péo', 'Xã', 32),
('01081', 'Xã Hồ Thầu', 'Xã', 32),
('01084', 'Xã Nam Sơn', 'Xã', 32),
('01087', 'Xã Nậm Tỵ', 'Xã', 32),
('01090', 'Xã Thông Nguyên', 'Xã', 32),
('01093', 'Xã Nậm Khòa', 'Xã', 32),
('01096', 'Thị trấn Cốc Pài', 'Thị trấn', 33),
('01099', 'Xã Nàn Xỉn', 'Xã', 33),
('01102', 'Xã Bản Díu', 'Xã', 33),
('01105', 'Xã Chí Cà', 'Xã', 33),
('01108', 'Xã Xín Mần', 'Xã', 33),
('01111', 'Xã Trung Thịnh', 'Xã', 33),
('01114', 'Xã Thèn Phàng', 'Xã', 33),
('01117', 'Xã Ngán Chiên', 'Xã', 33),
('01120', 'Xã Pà Vầy Sủ', 'Xã', 33),
('01123', 'Xã Cốc Rế', 'Xã', 33),
('01126', 'Xã Thu Tà', 'Xã', 33),
('01129', 'Xã Nàn Ma', 'Xã', 33),
('01132', 'Xã Tả Nhìu', 'Xã', 33),
('01135', 'Xã Bản Ngò', 'Xã', 33),
('01138', 'Xã Chế Là', 'Xã', 33),
('01141', 'Xã Nấm Dẩn', 'Xã', 33),
('01144', 'Xã Quảng Nguyên', 'Xã', 33),
('01147', 'Xã Nà Chì', 'Xã', 33),
('01150', 'Xã Khuôn Lùng', 'Xã', 33),
('01153', 'Thị trấn Việt Quang', 'Thị trấn', 34),
('01156', 'Thị trấn Vĩnh Tuy', 'Thị trấn', 34),
('01159', 'Xã Tân Lập', 'Xã', 34),
('01162', 'Xã Tân Thành', 'Xã', 34),
('01165', 'Xã Đồng Tiến', 'Xã', 34),
('01168', 'Xã Đồng Tâm', 'Xã', 34),
('01171', 'Xã Tân Quang', 'Xã', 34),
('01174', 'Xã Thượng Bình', 'Xã', 34),
('01177', 'Xã Hữu Sản', 'Xã', 34),
('01180', 'Xã Kim Ngọc', 'Xã', 34),
('01183', 'Xã Việt Vinh', 'Xã', 34),
('01186', 'Xã Bằng Hành', 'Xã', 34),
('01189', 'Xã Quang Minh', 'Xã', 34),
('01192', 'Xã Liên Hiệp', 'Xã', 34),
('01195', 'Xã Vô Điếm', 'Xã', 34),
('01198', 'Xã Việt Hồng', 'Xã', 34),
('01201', 'Xã Hùng An', 'Xã', 34),
('01204', 'Xã Đức Xuân', 'Xã', 34),
('01207', 'Xã Tiên Kiều', 'Xã', 34),
('01210', 'Xã Vĩnh Hảo', 'Xã', 34),
('01213', 'Xã Vĩnh Phúc', 'Xã', 34),
('01216', 'Xã Đồng Yên', 'Xã', 34),
('01219', 'Xã Đông Thành', 'Xã', 34),
('01222', 'Xã Xuân Minh', 'Xã', 35),
('01225', 'Xã Tiên Nguyên', 'Xã', 35),
('01228', 'Xã Tân Nam', 'Xã', 35),
('01231', 'Xã Bản Rịa', 'Xã', 35),
('01234', 'Xã Yên Thành', 'Xã', 35),
('01237', 'Thị trấn Yên Bình', 'Thị trấn', 35),
('01240', 'Xã Tân Trịnh', 'Xã', 35),
('01243', 'Xã Tân Bắc', 'Xã', 35),
('01246', 'Xã Bằng Lang', 'Xã', 35),
('01249', 'Xã Yên Hà', 'Xã', 35),
('01252', 'Xã Hương Sơn', 'Xã', 35),
('01255', 'Xã Xuân Giang', 'Xã', 35),
('01258', 'Xã Nà Khương', 'Xã', 35),
('01261', 'Xã Tiên Yên', 'Xã', 35),
('01264', 'Xã Vĩ Thượng', 'Xã', 35),
('01267', 'Phường Sông Hiến', 'Phường', 40),
('01270', 'Phường Sông Bằng', 'Phường', 40),
('01273', 'Phường Hợp Giang', 'Phường', 40),
('01276', 'Phường Tân Giang', 'Phường', 40),
('01279', 'Phường Ngọc Xuân', 'Phường', 40),
('01282', 'Phường Đề Thám', 'Phường', 40),
('01285', 'Phường Hoà Chung', 'Phường', 40),
('01288', 'Phường Duyệt Trung', 'Phường', 40),
('01290', 'Thị trấn Pác Miầu', 'Thị trấn', 42),
('01291', 'Xã Đức Hạnh', 'Xã', 42),
('01294', 'Xã Lý Bôn', 'Xã', 42),
('01296', 'Xã Nam Cao', 'Xã', 42),
('01297', 'Xã Nam Quang', 'Xã', 42),
('01300', 'Xã Vĩnh Quang', 'Xã', 42),
('01303', 'Xã Quảng Lâm', 'Xã', 42),
('01304', 'Xã Thạch Lâm', 'Xã', 42),
('01306', 'Xã Tân Việt', 'Xã', 42),
('01309', 'Xã Vĩnh Phong', 'Xã', 42),
('01312', 'Xã Mông Ân', 'Xã', 42),
('01315', 'Xã Thái Học', 'Xã', 42),
('01316', 'Xã Thái Sơn', 'Xã', 42),
('01318', 'Xã Yên Thổ', 'Xã', 42),
('01321', 'Thị trấn Bảo Lạc', 'Thị trấn', 43),
('01324', 'Xã Cốc Pàng', 'Xã', 43),
('01327', 'Xã Thượng Hà', 'Xã', 43),
('01330', 'Xã Cô Ba', 'Xã', 43),
('01333', 'Xã Bảo Toàn', 'Xã', 43),
('01336', 'Xã Khánh Xuân', 'Xã', 43),
('01339', 'Xã Xuân Trường', 'Xã', 43),
('01342', 'Xã Hồng Trị', 'Xã', 43),
('01343', 'Xã Kim Cúc', 'Xã', 43),
('01345', 'Xã Phan Thanh', 'Xã', 43),
('01348', 'Xã Hồng An', 'Xã', 43),
('01351', 'Xã Hưng Đạo', 'Xã', 43),
('01352', 'Xã Hưng Thịnh', 'Xã', 43),
('01354', 'Xã Huy Giáp', 'Xã', 43),
('01357', 'Xã Đình Phùng', 'Xã', 43),
('01359', 'Xã Sơn Lập', 'Xã', 43),
('01360', 'Xã Sơn Lộ', 'Xã', 43),
('01363', 'Thị trấn Thông Nông', 'Thị trấn', 44),
('01366', 'Xã Cần Yên', 'Xã', 44),
('01367', 'Xã Cần Nông', 'Xã', 44),
('01369', 'Xã Vị Quang', 'Xã', 44),
('01372', 'Xã Lương Thông', 'Xã', 44),
('01375', 'Xã Đa Thông', 'Xã', 44),
('01378', 'Xã Ngọc Động', 'Xã', 44),
('01381', 'Xã Yên Sơn', 'Xã', 44),
('01384', 'Xã Lương Can', 'Xã', 44),
('01387', 'Xã Thanh Long', 'Xã', 44),
('01390', 'Xã Bình Lãng', 'Xã', 44),
('01392', 'Thị trấn Xuân Hòa', 'Thị trấn', 45),
('01393', 'Xã Lũng Nặm', 'Xã', 45),
('01396', 'Xã Kéo Yên', 'Xã', 45),
('01399', 'Xã Trường Hà', 'Xã', 45),
('01402', 'Xã Vân An', 'Xã', 45),
('01405', 'Xã Cải Viên', 'Xã', 45),
('01408', 'Xã Nà Sác', 'Xã', 45),
('01411', 'Xã Nội Thôn', 'Xã', 45),
('01414', 'Xã Tổng Cọt', 'Xã', 45),
('01417', 'Xã Sóc Hà', 'Xã', 45),
('01420', 'Xã Thượng Thôn', 'Xã', 45),
('01423', 'Xã Vần Dính', 'Xã', 45),
('01426', 'Xã Hồng Sĩ', 'Xã', 45),
('01429', 'Xã Sĩ Hai', 'Xã', 45),
('01432', 'Xã Quý Quân', 'Xã', 45),
('01435', 'Xã Mã Ba', 'Xã', 45),
('01438', 'Xã Phù Ngọc', 'Xã', 45),
('01441', 'Xã Đào Ngạn', 'Xã', 45),
('01444', 'Xã Hạ Thôn', 'Xã', 45),
('01447', 'Thị trấn Hùng Quốc', 'Thị trấn', 46),
('01450', 'Xã Cô Mười', 'Xã', 46),
('01453', 'Xã Tri Phương', 'Xã', 46),
('01456', 'Xã Quang Hán', 'Xã', 46),
('01459', 'Xã Quang Vinh', 'Xã', 46),
('01462', 'Xã Xuân Nội', 'Xã', 46),
('01465', 'Xã Quang Trung', 'Xã', 46),
('01468', 'Xã Lưu Ngọc', 'Xã', 46),
('01471', 'Xã Cao Chương', 'Xã', 46),
('01474', 'Xã Quốc Toản', 'Xã', 46),
('01477', 'Thị trấn Trùng Khánh', 'Thị trấn', 47),
('01480', 'Xã Ngọc Khê', 'Xã', 47),
('01481', 'Xã Ngọc Côn', 'Xã', 47),
('01483', 'Xã Phong Nậm', 'Xã', 47),
('01486', 'Xã Ngọc Chung', 'Xã', 47),
('01489', 'Xã Đình Phong', 'Xã', 47),
('01492', 'Xã Lăng Yên', 'Xã', 47),
('01495', 'Xã Đàm Thuỷ', 'Xã', 47),
('01498', 'Xã Khâm Thành', 'Xã', 47),
('01501', 'Xã Chí Viễn', 'Xã', 47),
('01504', 'Xã Lăng Hiếu', 'Xã', 47),
('01507', 'Xã Phong Châu', 'Xã', 47),
('01510', 'Xã Đình Minh', 'Xã', 47),
('01513', 'Xã Cảnh Tiên', 'Xã', 47),
('01516', 'Xã Trung Phúc', 'Xã', 47),
('01519', 'Xã Cao Thăng', 'Xã', 47),
('01522', 'Xã Đức Hồng', 'Xã', 47),
('01525', 'Xã Thông Hoè', 'Xã', 47),
('01528', 'Xã Thân Giáp', 'Xã', 47),
('01531', 'Xã Đoài Côn', 'Xã', 47),
('01534', 'Xã Minh Long', 'Xã', 48),
('01537', 'Xã Lý Quốc', 'Xã', 48),
('01540', 'Xã Thắng Lợi', 'Xã', 48),
('01543', 'Xã Đồng Loan', 'Xã', 48),
('01546', 'Xã Đức Quang', 'Xã', 48),
('01549', 'Xã Kim Loan', 'Xã', 48),
('01552', 'Xã Quang Long', 'Xã', 48),
('01555', 'Xã An Lạc', 'Xã', 48),
('01558', 'Thị trấn Thanh Nhật', 'Thị trấn', 48),
('01561', 'Xã Vinh Quý', 'Xã', 48),
('01564', 'Xã Việt Chu', 'Xã', 48),
('01567', 'Xã Cô Ngân', 'Xã', 48),
('01570', 'Xã Thái Đức', 'Xã', 48),
('01573', 'Xã Thị Hoa', 'Xã', 48),
('01576', 'Thị trấn Quảng Uyên', 'Thị trấn', 49),
('01579', 'Xã Phi Hải', 'Xã', 49),
('01582', 'Xã Quảng Hưng', 'Xã', 49),
('01585', 'Xã Bình Lăng', 'Xã', 49),
('01588', 'Xã Quốc Dân', 'Xã', 49),
('01591', 'Xã Quốc Phong', 'Xã', 49),
('01594', 'Xã Độc Lập', 'Xã', 49),
('01597', 'Xã Cai Bộ', 'Xã', 49),
('01600', 'Xã Đoài Khôn', 'Xã', 49),
('01603', 'Xã Phúc Sen', 'Xã', 49),
('01606', 'Xã Chí Thảo', 'Xã', 49),
('01609', 'Xã Tự Do', 'Xã', 49),
('01612', 'Xã Hồng Định', 'Xã', 49),
('01615', 'Xã Hồng Quang', 'Xã', 49),
('01618', 'Xã Ngọc Động', 'Xã', 49),
('01621', 'Xã Hoàng Hải', 'Xã', 49),
('01624', 'Xã Hạnh Phúc', 'Xã', 49),
('01627', 'Thị trấn Tà Lùng', 'Thị trấn', 50),
('01630', 'Xã Triệu ẩu', 'Xã', 50),
('01633', 'Xã Hồng Đại', 'Xã', 50),
('01636', 'Xã Cách Linh', 'Xã', 50),
('01639', 'Xã Đại Sơn', 'Xã', 50),
('01642', 'Xã Lương Thiện', 'Xã', 50),
('01645', 'Xã Tiên Thành', 'Xã', 50),
('01648', 'Thị trấn Hoà Thuận', 'Thị trấn', 50),
('01651', 'Xã Mỹ Hưng', 'Xã', 50),
('01654', 'Thị trấn Nước Hai', 'Thị trấn', 51),
('01657', 'Xã Dân Chủ', 'Xã', 51),
('01660', 'Xã Nam Tuấn', 'Xã', 51),
('01663', 'Xã Đức Xuân', 'Xã', 51),
('01666', 'Xã Đại Tiến', 'Xã', 51),
('01669', 'Xã Đức Long', 'Xã', 51),
('01672', 'Xã Ngũ Lão', 'Xã', 51),
('01675', 'Xã Trương Lương', 'Xã', 51),
('01678', 'Xã Bình Long', 'Xã', 51),
('01681', 'Xã Nguyễn Huệ', 'Xã', 51),
('01684', 'Xã Công Trừng', 'Xã', 51),
('01687', 'Xã Hồng Việt', 'Xã', 51),
('01690', 'Xã Bế Triều', 'Xã', 51),
('01693', 'Xã Vĩnh Quang', 'Xã', 40),
('01696', 'Xã Hoàng Tung', 'Xã', 51),
('01699', 'Xã Trương Vương', 'Xã', 51),
('01702', 'Xã Quang Trung', 'Xã', 51),
('01705', 'Xã Hưng Đạo', 'Xã', 40),
('01708', 'Xã Bạch Đằng', 'Xã', 51),
('01711', 'Xã Bình Dương', 'Xã', 51),
('01714', 'Xã Lê Chung', 'Xã', 51),
('01717', 'Xã Hà Trì', 'Xã', 51),
('01720', 'Xã Chu Trinh', 'Xã', 40),
('01723', 'Xã Hồng Nam', 'Xã', 51),
('01726', 'Thị trấn Nguyên Bình', 'Thị trấn', 52),
('01729', 'Thị trấn Tĩnh Túc', 'Thị trấn', 52),
('01732', 'Xã Yên Lạc', 'Xã', 52),
('01735', 'Xã Triệu Nguyên', 'Xã', 52),
('01738', 'Xã Ca Thành', 'Xã', 52),
('01741', 'Xã Thái Học', 'Xã', 52),
('01744', 'Xã Vũ Nông', 'Xã', 52),
('01747', 'Xã Minh Tâm', 'Xã', 52),
('01750', 'Xã Thể Dục', 'Xã', 52),
('01753', 'Xã Bắc Hợp', 'Xã', 52),
('01756', 'Xã Mai Long', 'Xã', 52),
('01759', 'Xã Lang Môn', 'Xã', 52),
('01762', 'Xã Minh Thanh', 'Xã', 52),
('01765', 'Xã Hoa Thám', 'Xã', 52),
('01768', 'Xã Phan Thanh', 'Xã', 52),
('01771', 'Xã Quang Thành', 'Xã', 52),
('01774', 'Xã Tam Kim', 'Xã', 52),
('01777', 'Xã Thành Công', 'Xã', 52),
('01780', 'Xã Thịnh Vượng', 'Xã', 52),
('01783', 'Xã Hưng Đạo', 'Xã', 52),
('01786', 'Thị trấn Đông Khê', 'Thị trấn', 53),
('01789', 'Xã Canh Tân', 'Xã', 53),
('01792', 'Xã Kim Đồng', 'Xã', 53),
('01795', 'Xã Minh Khai', 'Xã', 53),
('01798', 'Xã Thị Ngân', 'Xã', 53),
('01801', 'Xã Đức Thông', 'Xã', 53),
('01804', 'Xã Thái Cường', 'Xã', 53),
('01807', 'Xã Vân Trình', 'Xã', 53),
('01810', 'Xã Thụy Hùng', 'Xã', 53),
('01813', 'Xã Quang Trọng', 'Xã', 53),
('01816', 'Xã Trọng Con', 'Xã', 53),
('01819', 'Xã Lê Lai', 'Xã', 53),
('01822', 'Xã Đức Long', 'Xã', 53),
('01825', 'Xã Danh Sỹ', 'Xã', 53),
('01828', 'Xã Lê Lợi', 'Xã', 53),
('01831', 'Xã Đức Xuân', 'Xã', 53),
('01834', 'Phường Nguyễn Thị Minh Khai', 'Phường', 58),
('01837', 'Phường Sông Cầu', 'Phường', 58),
('01840', 'Phường Đức Xuân', 'Phường', 58),
('01843', 'Phường Phùng Chí Kiên', 'Phường', 58),
('01846', 'Phường Huyền Tụng', 'Phường', 58),
('01849', 'Xã Dương Quang', 'Xã', 58),
('01852', 'Xã Nông Thượng', 'Xã', 58),
('01855', 'Phường Xuất Hóa', 'Phường', 58),
('01858', 'Xã Bằng Thành', 'Xã', 60),
('01861', 'Xã Nhạn Môn', 'Xã', 60),
('01864', 'Xã Bộc Bố', 'Xã', 60),
('01867', 'Xã Công Bằng', 'Xã', 60),
('01870', 'Xã Giáo Hiệu', 'Xã', 60),
('01873', 'Xã Xuân La', 'Xã', 60),
('01876', 'Xã An Thắng', 'Xã', 60),
('01879', 'Xã Cổ Linh', 'Xã', 60),
('01882', 'Xã Nghiên Loan', 'Xã', 60),
('01885', 'Xã Cao Tân', 'Xã', 60),
('01888', 'Thị trấn Chợ Rã', 'Thị trấn', 61),
('01891', 'Xã Bành Trạch', 'Xã', 61),
('01894', 'Xã Phúc Lộc', 'Xã', 61),
('01897', 'Xã Hà Hiệu', 'Xã', 61),
('01900', 'Xã Cao Thượng', 'Xã', 61),
('01903', 'Xã Cao Trĩ', 'Xã', 61),
('01906', 'Xã Khang Ninh', 'Xã', 61),
('01909', 'Xã Nam Mẫu', 'Xã', 61),
('01912', 'Xã Thượng Giáo', 'Xã', 61),
('01915', 'Xã Địa Linh', 'Xã', 61),
('01918', 'Xã Yến Dương', 'Xã', 61),
('01921', 'Xã Chu Hương', 'Xã', 61),
('01924', 'Xã Quảng Khê', 'Xã', 61),
('01927', 'Xã Mỹ Phương', 'Xã', 61),
('01930', 'Xã Hoàng Trĩ', 'Xã', 61),
('01933', 'Xã Đồng Phúc', 'Xã', 61),
('01936', 'Thị trấn Nà Phặc', 'Thị trấn', 62),
('01939', 'Xã Thượng Ân', 'Xã', 62),
('01942', 'Xã Bằng Vân', 'Xã', 62),
('01945', 'Xã Cốc Đán', 'Xã', 62),
('01948', 'Xã Trung Hoà', 'Xã', 62),
('01951', 'Xã Đức Vân', 'Xã', 62),
('01954', 'Xã Vân Tùng', 'Xã', 62),
('01957', 'Xã Thượng Quan', 'Xã', 62),
('01960', 'Xã Lãng Ngâm', 'Xã', 62),
('01963', 'Xã Thuần Mang', 'Xã', 62),
('01966', 'Xã Hương Nê', 'Xã', 62),
('01969', 'Thị trấn Phủ Thông', 'Thị trấn', 63),
('01972', 'Xã Phương Linh', 'Xã', 63),
('01975', 'Xã Vi Hương', 'Xã', 63),
('01978', 'Xã Sĩ Bình', 'Xã', 63),
('01981', 'Xã Vũ Muộn', 'Xã', 63),
('01984', 'Xã Đôn Phong', 'Xã', 63),
('01987', 'Xã Tú Trĩ', 'Xã', 63),
('01990', 'Xã Lục Bình', 'Xã', 63),
('01993', 'Xã Tân Tiến', 'Xã', 63),
('01996', 'Xã Quân Bình', 'Xã', 63),
('01999', 'Xã Nguyên Phúc', 'Xã', 63);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'tiêu đề',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'nội dung',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Da mụn đừng vội lo lắng \"Cách chăm sóc da mụn hiệu quả\"', '<div class=\"clearfix\" style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n<div class=\"hometext m-bottom\" style=\"box-sizing: border-box; font-weight: 700; margin-bottom: 10px !important;\">Muốn chăm sóc da mụn tốt đầu tiên bạn phải hiểu rõ làn da của mình trước đã. Cũng như muốn điều trị mụn trước hết bạn cần biết mụn từ đâu mà có, do đâu mà hình thành và phát triển? Tại sao tình trạng mụn của bạn lại không dứt lại ngày càng nặng hơn? Bài viết này sẽ giúp bạn tìm ra cách chăm sóc da hợp lý cho làn da của bạn, giúp cải thiện tình trạng mụn.</div>\r\n<img alt=\"Da mụn đừng vội lo lắng &quot;Cách chăm sóc da mụn hiệu quả&quot;\" class=\"img-thumbnail\" src=\"https://cocoshop.vn/uploads/news/2020_12/cach-cham-soc-da-mun-hieu-qua.jpg\" style=\"background-color:transparent; border-radius:0px; border:none; box-sizing:border-box; display:inline-block; height:auto; line-height:1.42857; margin-right:5px; max-width:100%; padding:0px; transition:all 0.2s ease-in-out 0s; vertical-align:middle; width:460px\" />\r\n<p>Da mụn đừng vội lo lắng \"Cách chăm sóc da mụn hiệu quả\"</p>\r\n</div>\r\n\r\n<div class=\"danh-sach-box\" style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; margin-bottom: 20px; height: 380px;\">&nbsp;</div>\r\n\r\n<div class=\"descriptionhtml js-toc-content\" id=\"news-bodyhtml\" style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"font-size:18px\"><span style=\"font-family:calibri,sans-serif\">Muốn chăm sóc da mụn tốt đầu tiên bạn phải hiểu rõ làn da của mình trước đã. Cũng như muốn điều trị mụn trước hết bạn cần biết mụn từ đâu mà có, do đâu mà hình thành và phát triển? Tại sao tình trạng mụn của bạn lại không dứt lại ngày càng nặng hơn? Bài viết này sẽ giúp bạn tìm ra cách chăm sóc da hợp lý cho làn da của bạn, giúp cải thiện tình trạng mụn.</span></span><br />\r\n&nbsp;\r\n<div style=\"box-sizing: border-box; text-align: center;\"><img alt=\"cach cham soc da mun hieu qua 3\" src=\"https://cocoshop.vn/uploads/news/2020_12/cach-cham-soc-da-mun-hieu-qua-3.jpg\" style=\"border:0px; box-sizing:border-box; height:400px; margin-right:5px; vertical-align:middle; width:600px\" /></div>\r\n&nbsp;\r\n\r\n<h2><span style=\"font-size:18px\"><span style=\"color:rgb(192, 57, 43)\"><span style=\"font-family:calibri,sans-serif\"><strong>I. Nguyên nhân gây ra mụn</strong></span></span></span></h2>\r\n<br />\r\n<span style=\"font-size:18px\"><span style=\"font-family:calibri,sans-serif\">Da của bạn thuộc da gì? Da dầu, da khô, da thường, da hỗn hợp. Làn da của chúng ta rất dễ bị ảnh hưởng từ những tác động bên ngoài, khói bụi, ô nhiễm môi trường, ánh nắng… Tất cả những tác nhân này đều dẫn đến bít tắc lỗ chân lông và gây ra mụn trứng cá, mụn đầu đen, mụn bọc, mụn sưng, mụn mủ. Nguyên nhân dẫn đến mụn do đâu?</span></span><br />\r\n&nbsp;\r\n<h3><span style=\"font-size:18px\"><span style=\"color:rgb(192, 57, 43)\"><span style=\"font-family:calibri,sans-serif\"><strong>1.1 Sử dụng sản phẩm chăm sóc da không phù hợp</strong></span></span></span></h3>\r\n<br />\r\n<span style=\"font-size:18px\"><span style=\"font-family:calibri,sans-serif\">Phổ biến nhất là kem dưỡng da do sản phẩm này có nhiều loại kết cấu khác nhau phù hợp với từng loại da. Ví dụ như khi bạn thuộc da dầu nhưng lại chọn loại kem dành cho da khô. Da dầu cần những sản phẩm dưỡng mỏng nhẹ thấm nhanh tránh gây bí tắc. Kem dành cho da khô thường có kết cấu đặc, độ ẩm cao, lâu thấm. Vì vậy nó nằm trên bề mặt da, cùng với dầu tự nhiên do da tiết ra trở thành một lớp màn khiến da “ngộp thở”. Để an toàn, bạn nên dùng những loại mỹ phẩm có ghi “Non comedogenic” thì sẽ không chứa các thành phần gây bí tắc da.</span></span><br />\r\n&nbsp;\r\n<div style=\"box-sizing: border-box; text-align: center;\"><img alt=\"cach cham soc da mun hieu qua 1\" src=\"https://cocoshop.vn/uploads/news/2020_12/cach-cham-soc-da-mun-hieu-qua-1.jpg\" style=\"border:0px; box-sizing:border-box; height:350px; margin-right:5px; vertical-align:middle; width:512px\" /></div>\r\n&nbsp;\r\n\r\n<h3><span style=\"font-size:18px\"><span style=\"color:rgb(192, 57, 43)\"><span style=\"font-family:calibri,sans-serif\"><strong>1.2 Không vệ sinh cọ trang điểm</strong></span></span></span></h3>\r\n<br />\r\n<span style=\"font-size:18px\"><span style=\"font-family:calibri,sans-serif\">Các cô nàng tuổi trưởng thành khi đi làm hầu hết đều trang điểm hàng ngày. Cọ trang điểm chính là nơi tích tụ rất nhiều tế bào chết, kem phấn trang điểm cùng vi khuẩn. Hãy thử tưởng tượng mỗi lần dùng cọ là mỗi lần bạn đưa vi khuẩn lên mặt. Vì vậy hãy chú ý vệ sinh cọ và các dụng cụ trang điểm thường xuyên.</span></span><br />\r\n&nbsp;\r\n<h3><span style=\"font-size:18px\"><span style=\"color:rgb(192, 57, 43)\"><span style=\"font-family:calibri,sans-serif\"><strong>1.3 Các vật dụng tiếp xúc với da mặt</strong></span></span></span></h3>\r\n<br />\r\n<span style=\"font-size:18px\"><span style=\"font-family:calibri,sans-serif\">Tất cả những thứ tiếp xúc với da mặt phải đảm bảo sạch sẽ để không gây mụn. Bạn biết điều này nhưng vẫn có những thứ “vô tình” đưa lên mặt mà bạn không để ý tới. Ví dụ như điện thoại. Với hàng tỉ vi khuẩn lúc nhúc, điện thoại dơ hơn bạn tưởng nhiều. Hoặc khi bạn chống cằm thì cũng đã đưa vi khuẩn từ tay lên mặt. Vì vậy, hãy chú ý nhiều hơn và đảm bảo giữ vệ sinh cho da mặt.</span></span><br />\r\n&nbsp;\r\n<div style=\"box-sizing: border-box; text-align: center;\"><img alt=\"cach cham soc da mun hieu qua 2\" src=\"https://cocoshop.vn/uploads/news/2020_12/cach-cham-soc-da-mun-hieu-qua-2.jpg\" style=\"border:0px; box-sizing:border-box; height:341px; margin-right:5px; vertical-align:middle; width:512px\" /></div>\r\n&nbsp;\r\n\r\n<h3><span style=\"font-size:18px\"><span style=\"color:rgb(192, 57, 43)\"><span style=\"font-family:calibri,sans-serif\"><strong>1.4 Thức khuya và có chế độ ăn uống không phù hợp</strong></span></span></span></h3>\r\n<br />\r\n<span style=\"font-size:18px\"><span style=\"font-family:calibri,sans-serif\">Điều này có rất nhiều người biết nhưng vẫn không thể thực hiện được chế độ sinh hoạt và ăn uống lành mạnh. Sau 11h đêm là thời gian cơ thể bắt đầu đào thải độc tố. Nếu bạn bỏ qua khoảng thời gian này thì lượng độc tố trong cơ thể không được đào thải gây nên mụn. Bên cạnh đó, tất cả những đồ ăn đồ uống cay nóng, nhiều đường, nhiều dầu mỡ và chứa chất kích thích đều khiến da tiết nhiều dầu hơn. Đó là lí do tại sao da bạn đã mụn lại càng mụn.</span></span><br />\r\n&nbsp;\r\n<h2><span style=\"font-size:18px\"><span style=\"color:rgb(192, 57, 43)\"><span style=\"font-family:calibri,sans-serif\"><strong>II.</strong>&nbsp;<strong>Cách chăm sóc da mụn hiệu quả</strong></span></span></span></h2>\r\n\r\n<h3><span style=\"font-size:18px\"><span style=\"color:rgb(192, 57, 43)\"><span style=\"font-family:calibri,sans-serif\"><strong>2.1 Rửa mặt 2 lần/ngày</strong></span></span></span></h3>\r\n<br />\r\n<span style=\"font-size:18px\"><span style=\"font-family:calibri,sans-serif\">Để bảo vệ da nhờn mụn trước các vi khuẩn và bụi bẩn thì đầu tiên là bạn cần rửa mặt đúng cách thường xuyên mỗi ngày hai lần với sữa rửa mặt. Nên rửa mặt bằng nước ấm tránh dùng nước nóng khiến da bị khô. Khi rửa tránh chà xát quá mạnh trên da có thể khiến da bị tổn thương. Nguyên nhân gây mụn không chỉ là do da nhờn và bẩn nên không phải cứ rửa mặt thường xuyên là sẽ không có mụn.</span><br />\r\n<span style=\"font-family:calibri,sans-serif\">Bạn cũng nên rửa sạch da mặt sau khi tập thể dục hoặc hoạt động mạnh tạo ra nhiều mồ hôi. Do mồ hôi có thể kích thích mụn trứng cá phát triển. Nếu không có sẵn nước và sữa rửa mặt thì bạn có thể dùng khăn ướt để lau mặt sau khi hoạt động mạnh. Tuy nhiên nên ưu tiên sử dụng các loại khăn ướt không mùi để tránh gây kích ứng da.</span></span><br />\r\n&nbsp;\r\n<div style=\"box-sizing: border-box; text-align: center;\"><img alt=\"cach cham soc da mun hieu qua 4\" src=\"https://cocoshop.vn/uploads/news/2020_12/cach-cham-soc-da-mun-hieu-qua-4.jpg\" style=\"border:0px; box-sizing:border-box; height:338px; margin-right:5px; vertical-align:middle; width:512px\" /></div>\r\n<br />\r\n<br />\r\n<span style=\"font-size:18px\"><span style=\"font-family:calibri,sans-serif\">Khi lựa chọn sữa rửa mặt cho da mụn bạn nên chọn là loại tẩy rửa nhẹ nhàng có độ pH 5 – 6.5. Những loại sữa rửa mặt có nhiều chất tẩy rửa có thể kích hoạt da tăng sản xuất dầu nhờn hơn. Các loại sữa rửa mặt thường không có ích trong việc giảm bớt dầu nhờn trên da thì bạn có thể thử các loại có chứa axit như bezoyl peroxide, axit salicylic, axit glycolic hoặc axit beta-hydroxy. Các loại sữa rửa mặt này rất phù hợp với da nhờn bị mụn lâu năm. Nhưng bạn nên mua một tuýp nhỏ dùng thử xem da có bị kích ứng không do trong các thành phần này có thể gây kích ứng trên da.</span></span><br />\r\n&nbsp;\r\n<h3><span style=\"font-size:18px\"><span style=\"color:rgb(192, 57, 43)\"><span style=\"font-family:calibri,sans-serif\"><strong>2.2 Dùng nước hoa hồng</strong></span></span></span></h3>\r\n<br />\r\n<span style=\"font-size:18px\"><span style=\"font-family:calibri,sans-serif\">Nước hoa hồng giúp kiểm soát dầu thừa trên da và thu nhỏ lỗ chân lông tạm thời nên người có da nhờn mụn lỗ chân lông to rất nên dùng. Tuy nhiên bạn nên dùng nước hoa hồng trên các vùng da nhiều dầu nhờn hơn như vùng chữ T, tránh các vùng da khô khác trên mặt.</span><br />\r\n<span style=\"font-family:calibri,sans-serif\">Bạn có thể thấm nước hoa hồng vào bông tẩy trang rồi lau lại da mặt và cổ. Bước chăm sóc này nên áp dụng sau khi rửa mặt nhưng trước khi dùng kem dưỡng ẩm hoặc bôi kem trị mụn trên da.</span></span><br />\r\n&nbsp;\r\n<div style=\"box-sizing: border-box; text-align: center;\"><img alt=\"cach cham soc da mun hieu qua 5\" src=\"https://cocoshop.vn/uploads/news/2020_12/cach-cham-soc-da-mun-hieu-qua-5.jpg\" style=\"border:0px; box-sizing:border-box; height:900px; margin-right:5px; vertical-align:middle; width:600px\" /></div>\r\n<br />\r\n<br />\r\n<span style=\"font-size:18px\"><span style=\"font-family:calibri,sans-serif\">Những loại nước hoa hồng phù hợp với da mụn như: Nước hoa hồng Effaclar La Roche-Posay, nước hoa hồng trị mụn Caryophy, nước hoa hồng cho da mụn Meishoku…</span></span><br />\r\n&nbsp;\r\n<h3><span style=\"font-size:18px\"><span style=\"color:rgb(192, 57, 43)\"><span style=\"font-family:calibri,sans-serif\"><strong>2.3 Dùng kem dưỡng da</strong></span></span></span></h3>\r\n<br />\r\n<span style=\"font-size:18px\"><span style=\"font-family:calibri,sans-serif\">Đối với da nhờn mụn thì bạn nên ưu tiên chọn các loại kem dưỡng không chứa dầu. Nên ưu tiên các sản phẩm có chữ “FREE-Oil” trên kem dưỡng ẩm, kem chống nắng và đồ trang điểm. Bên cạnh đó, bạn cũng nên ưu tiên sản phẩm có nhãn NON-comedogenic (không gây bít lỗ chân lông) giúp giảm khả năng gây mụn.</span></span><br />\r\n&nbsp;\r\n<div style=\"box-sizing: border-box; text-align: center;\"><img alt=\"cach cham soc da mun hieu qua 6\" src=\"https://cocoshop.vn/uploads/news/2020_12/cach-cham-soc-da-mun-hieu-qua-6.jpg\" style=\"border:0px; box-sizing:border-box; height:400px; margin-right:5px; vertical-align:middle; width:600px\" /></div>\r\n&nbsp;\r\n\r\n<h3><span style=\"font-size:18px\"><span style=\"color:rgb(192, 57, 43)\"><span style=\"font-family:calibri,sans-serif\"><strong>2.4 Sử dụng kem bôi trị mụn cho da nhờn mụn</strong></span></span></span></h3>\r\n<br />\r\n<span style=\"font-size:18px\"><span style=\"font-family:calibri,sans-serif\">Da nhờn mụn và lỗ chân lông to thường đi đôi với nhau. Sử dụng kem bôi trị mụn cho da cũng có thể cải thiện lỗ chân lông to của bạn. Dù bạn khó có thể thu nhỏ lỗ chân lông như ban đầu nhưng bạn có thể khiến chúng trở nên nhỏ hơn một chút.</span><br />\r\n<span style=\"font-family:calibri,sans-serif\">Có thể sử dụng thuốc trị mụn có chứa: Retinoids, axit salicylic, axit alpha hydroxy (AAH) dạng gel. Do dạng gel sẽ khiến da đỡ cảm giác nặng và gây ra dầu thừa trên da nhờn mụn.</span><br />\r\n<span style=\"font-family:calibri,sans-serif\">Các loại kem bôi vừa trị mụn vừa thu nhỏ lỗ chân lông khi có chứa thành phần: Retinoids và axit salicylic giúp giảm thiểu lỗ chân lông nở to.</span></span><br />\r\n&nbsp;\r\n<h3><span style=\"font-size:18px\"><span style=\"color:rgb(192, 57, 43)\"><span style=\"font-family:calibri,sans-serif\"><strong>2.5 Dùng giấy thấm dầu</strong></span></span></span></h3>\r\n<br />\r\n<span style=\"font-size:18px\"><span style=\"font-family:calibri,sans-serif\">Giấy thấm dầu được xem là một giải pháp tuyệt vời để loại bỏ dầu trên da mà không gây khô da. Dùng giấy thấm dầu trên vùng da nhiều nhờn như trán, mũi, cằm. Nhưng bạn nên thấm nhẹ vào vùng da dầu trong 15 – 20 giây thay vì chà xát mạnh trên da dễ gây lây nhiễm mụn.</span><br />\r\n<span style=\"font-family:calibri,sans-serif\">Chăm sóc da mụn luôn cần sự tỉ mỉ và sự kiên trì, những cô nàng đang điều trị mụn đừng nên nóng vội. Chỉ cần bạn tuân thủ đúng theo những quy trình và sử dụng những sản phẩm phù hợp với làn da của mình sẽ giúp da bạn khỏe lên từng ngày và đánh bay các loại mụn.</span></span></div>', 'doxDX5h0_cach-cham-soc-da-mun-hieu-qua.jpg', '2021-01-02 14:38:31', '2021-01-02 14:38:31'),
(2, 'Hướng dẫn cách mix và layer các sản phẩm skincare', '<div class=\"clearfix\" style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n<div class=\"hometext m-bottom\" style=\"box-sizing: border-box; font-weight: 700; margin-bottom: 10px !important;\">\r\n<div class=\"clearfix\" style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n<div class=\"hometext m-bottom\" style=\"box-sizing: border-box; font-weight: 700; margin-bottom: 10px !important;\">Cách kết hợp các hoạt chất dưỡng da nhất định phải biết nếu không muốn skincare \"công dã tràng\". 2020 rồi, dưỡng da bây giờ không chỉ còn đơn giản là Rửa mặt – dưỡng ẩm – chống nắng nữa, mà còn là tầng tầng lớp lớp bao nhiêu là serum, bao nhiêu là đặc trị…</div>\r\n<img alt=\"Hướng dẫn cách mix và layer các sản phẩm skincare\" class=\"img-thumbnail\" src=\"https://cocoshop.vn/uploads/news/2020_11/cac-buoc-skincare.jpg\" style=\"background-color:transparent; border-radius:0px; border:none; box-sizing:border-box; display:inline-block; height:auto; line-height:1.42857; margin-right:5px; max-width:100%; padding:0px; transition:all 0.2s ease-in-out 0s; vertical-align:middle; width:460px\" />\r\n<p>Hướng dẫn cách mix và layer các sản phẩm skincare</p>\r\n</div>\r\n\r\n<div class=\"danh-sach-box\" style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; margin-bottom: 20px; height: 156px;\">\r\n<div class=\"danh-sach\" style=\"box-sizing: border-box; border: 2px solid rgb(0, 0, 0); padding: 10px; background: rgb(243, 243, 243); margin-bottom: 20px; border-radius: 6px; right: -114.5px;\">\r\n<div class=\"head-danh-sach\" style=\"box-sizing: border-box; background: none; border: none; width: 791.5px; font-weight: 700; text-transform: uppercase; font-size: 16px; padding: 5px 0px;\">MỤC LỤC&nbsp;</div>\r\n\r\n<div class=\"toc js-toc z-1 transition--300 pa4\" id=\"js-toc\" style=\"box-sizing: border-box; margin-bottom: 10px; max-height: 400px; overflow-y: auto;\">\r\n<ol>\r\n	<li><a class=\"toc-link node-name--H2 tocextra is-active-link\" href=\"https://cocoshop.vn/news/xu-huong-lam-dep/huong-dan-cach-mix-va-layer-cac-san-pham-skincare-390.html#ket-hop-nhung-san-pham-co-do-ph-giong-nhau-hoac-ngang-bang-nhau\" style=\"box-sizing: border-box; background: linear-gradient(to right, rgb(221, 221, 221) 50%, rgb(243, 243, 243) 50%) left bottom / 200% 100%; color: rgb(0, 0, 0); text-decoration-line: none; width: 771.5px; transition: all 0.25s ease 0s; padding: 3px; display: inline-block; font-weight: 700;\">Kết hợp những sản phẩm có độ pH giống nhau hoặc ngang bằng nhau</a></li>\r\n	<li><a class=\"toc-link node-name--H2 tocextra\" href=\"https://cocoshop.vn/news/xu-huong-lam-dep/huong-dan-cach-mix-va-layer-cac-san-pham-skincare-390.html#cac-loai-hoat-chat-duong-da-co-the-ket-hop-duoc-voi-nhau\" style=\"box-sizing: border-box; background: linear-gradient(to right, rgb(221, 221, 221) 50%, rgb(243, 243, 243) 50%) right bottom / 200% 100%; color: rgb(0, 0, 0); text-decoration-line: none; outline: 0px; width: 771.5px; transition: all 0.25s ease 0s; padding: 3px; display: inline-block; font-weight: 700;\">Các loại hoạt chất dưỡng da có thể kết hợp được với nhau</a></li>\r\n	<li><a class=\"toc-link node-name--H2 tocextra\" href=\"https://cocoshop.vn/news/xu-huong-lam-dep/huong-dan-cach-mix-va-layer-cac-san-pham-skincare-390.html#nam-long-quy-tac-khi-dung-cac-hoat-chat-duong-da\" style=\"box-sizing: border-box; background: linear-gradient(to right, rgb(221, 221, 221) 50%, rgb(243, 243, 243) 50%) right bottom / 200% 100%; color: rgb(0, 0, 0); text-decoration-line: none; width: 771.5px; transition: all 0.25s ease 0s; padding: 3px; display: inline-block; font-weight: 700;\">Nằm lòng quy tắc khi dùng các hoạt chất dưỡng da</a></li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'UNYgtMI5_cac-buoc-skincare.jpg', '2021-01-02 14:39:55', '2021-01-02 14:39:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phi_ship`
--

CREATE TABLE `phi_ship` (
  `id` int(11) NOT NULL,
  `matp` int(11) NOT NULL,
  `maqh` int(11) NOT NULL,
  `xaid` int(11) NOT NULL,
  `fee_ship` float NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phi_ship`
--

INSERT INTO `phi_ship` (`id`, `matp`, `maqh`, `xaid`, `fee_ship`, `updated_at`, `created_at`) VALUES
(9, 2, 24, 688, 100000, '2022-08-27 09:37:28', '2022-08-27 09:37:28'),
(10, 6, 60, 1858, 1111110, '2022-08-31 07:47:57', '2022-08-31 07:47:57'),
(11, 1, 3, 103, 11111100, '2022-08-31 07:48:05', '2022-08-31 07:48:05'),
(12, 1, 8, 319, 11111100, '2022-08-31 07:48:10', '2022-08-31 07:48:10'),
(13, 1, 8, 334, 111111000, '2022-08-31 07:48:15', '2022-08-31 07:48:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_type` int(10) UNSIGNED DEFAULT NULL,
  `summary` text CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8 DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `price_cost` float NOT NULL,
  `qty_sold` int(11) DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `summary`, `description`, `amount`, `price_cost`, `qty_sold`, `unit_price`, `promotion_price`, `image`, `unit`, `new`, `created_at`, `updated_at`) VALUES
(4, 'Phấn Phủ Trang Điểm Bobbi Brown Soft Sand 11g', 13, '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">Finish: mỏng nhẹ, tự nhiên, kiềm dầu cho da.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">Thiết kế: Vỏ ngoài đen bóng sang trọng cùng dòng chữ của hãng đúng chuẩn thiết kế Bobbi Brown với hộp vuông dễ dàng mang theo trong túi xách</span></p>', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Phấn phủ Bobbi Brown Sheer Finish Pressed Powder: Dòng&nbsp;<a href=\"https://cocoshop.vn/phan-phu/phan-bot-kiem-dau-innisfree.html\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">phấn phủ kiềm dầu</a>&nbsp;của Bobbi Brown với công thức cải tiến mới, nhẹ nhàng che phủ hoàn hảo, cho bạn làn da mịn mượt suốt cả ngày dài. Đặc biệt,&nbsp;<a href=\"https://cocoshop.vn/group/bobbi-brown/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">Bobbi Brown</a>&nbsp;Sheer Finish Pressed Powder có kết cấu hạt phấn siêu mịn, không chứa dầu giúp lớp nền luôn ráo mịn, lỗ chân lông sạch thoáng, giảm nguy cơ nổi mụn do trang điểm thường xuyên. Ngoài ra, Bobbi Brown Sheer Finish Pressed Powder còn chứa Vitamin E cho làn da cảm giác mềm mượt, mịn màng mỗi khi sử dụng.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: \"><img alt=\"phan phu trang diem bobbi brown 3\" src=\"https://cocoshop.vn/uploads/shops/2020_12/phan-phu-trang-diem-bobbi-brown-3.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">- Phấn phủ này luôn luôn lọt top 10 sản phẩm được ưu thích nhất, bán chạy nhất của nhãn hàng Bobbi Brown. Phấn có thiết kế cổ điển với hộp vuông sang trọng, gọn gàng kèm kính và bông dặm với chất lượng rất xứng tầm tên hiệu.<br />\r\n<br />\r\nPhấn có mã màu 1 Pale Yellow tông trắng sáng, kiểu trắng ngà vàng sang trọng, lộng lẫy cho các nàng có làn da trắng. Phấn dùng lên da vẫn trắng mịn, mượt mà trong suốt rất đẹp (không phải kiểu trắng \"thạch cao\").</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: \"><img alt=\"phan phu trang diem bobbi brown 5\" src=\"https://cocoshop.vn/uploads/shops/2020_12/phan-phu-trang-diem-bobbi-brown-5.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Phấn phủ Bobbi Brown Sheer Finish Pressed Powder có 4 tone màu:<br />\r\n– 01 Pale Yellow: dành cho da trắng sáng<br />\r\n– 02 Sunny Beige: da trung bình<br />\r\n– 05 Soft Sand: da trung bình tới ngăm<br />\r\n– 06 Warm Natural: da ngăm<br />\r\n<br />\r\n<strong>Coco Shop đang có 3 tone màu</strong>:&nbsp;Soft Sand, Warm Natural, Sunny Beige</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: \"><img alt=\"phan phu trang diem bobbi brown 1\" src=\"https://cocoshop.vn/uploads/shops/2020_12/phan-phu-trang-diem-bobbi-brown-1.jpg\" style=\"border:0px; box-sizing:border-box; height:364px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Loại da phù hợp:</strong>&nbsp;Sản phẩm thích hợp với mọi loại da.<br />\r\n<br />\r\n<strong>Finish:&nbsp;</strong>mỏng nhẹ, tự nhiên, kiềm dầu cho da.<br />\r\n<br />\r\n<strong>Thiết kế:</strong>&nbsp;Vỏ ngoài đen bóng sang trọng cùng dòng chữ của hãng đúng chuẩn thiết kế Bobbi Brown với hộp vuông dễ dàng mang theo trong túi xách</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: \"><img alt=\"phan phu trang diem bobbi brown 2\" src=\"https://cocoshop.vn/uploads/shops/2020_12/phan-phu-trang-diem-bobbi-brown-2.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Phấn phủ trang điểm Bobbi Brown với công thức cải tiến mới, nhẹ nhàng bao phủ và giúp mang đến cho bạn làn da mịn mượt hoàn hảo suốt cả ngày dài. Kết cấu hạt phấn siêu mịn kết hợp thành phần có chứa Vitamin E sẽ giúp mang đến cho làn da cảm giác thoải mái vô cùng nhẹ nhàng &amp; mềm mại quyện vào da.Sheer Finish Pressed Powder thiết kế đơn giản với màu đen huyền bí toát lên đẳng cấp đầy sang trọng, cuốn hút mọi phái đẹp khi nhìn nó ngay lập tức. Sản phẩm tiện dụng, &nbsp;có bông phấn trang điểm đi kèm. Sheer Finish Pressed Powder là bước touch-up cuối cùng cho làn da trở nên hoàn hảo tuyệt đối, giữ cho bạn làn da đẹp và kiềm dầu trong suốt nhiều giờ liền. Sản phẩm có nhiều màu sắc phù hợp với làn da của bạn, thích hợp sử dụng với các tông màu khác nhau.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: \"><img alt=\"phan phu trang diem bobbi brown 4\" src=\"https://cocoshop.vn/uploads/shops/2020_12/phan-phu-trang-diem-bobbi-brown-4.jpg\" style=\"border:0px; box-sizing:border-box; height:640px; vertical-align:middle; width:640px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÁCH DÙNG</strong><br />\r\n<br />\r\n- Dùng bông thoa phấn chạm lên trên sản phẩm phấn, nhẹ nhàng vỗ nhẹ lên mặt, đặc biệt những nơi dễ đổ bóng.<br />\r\n- Có thể thoa lại trong ngày (nếu cần) để thấm bớt dầu thừa.<br />\r\n<br />\r\n<br />\r\n<strong>Trọng lượng:</strong>&nbsp;11g<br />\r\n<strong>Thương hiệu:&nbsp;</strong>Bobbi Brown<br />\r\n<strong>Xuất xứ:&nbsp;</strong>Mỹ</span></p>', 397, 1000000, 3, 1350000, 0, 'JX7eCI3S_jzzzcxDw_PzGqTZrj_2.jpg', 'lọ', 1, '2021-01-02 13:46:01', '2022-08-25 10:01:23'),
(5, 'Son Kem Lì Merzy The First Velvet Tint', 14, '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Sức hút đáng gồm của “cô nàng” Merzy Another me The First Velvet Tint chính là ưu điểm về độ bền màu vượt trội, chất kem mướt mịn khi apply lên môi có mùi thơm nhẹ, đặc biệt lên màu cực chuẩn mà không hề bị biến màu hay lộ rãnh môi.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Đối với những cô nàng môi khô thường ngại sử dụng dòng son dạng kem, thì hãy thử trải nghiệm dòng sản phẩm này, chắc hẳn sẽ có sự khác biệt luôn đấy!</span></p>', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><a href=\"https://cocoshop.vn/son-kem/son-kem-merzy-v1.html\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">Son Kem Lì Merzy</a>&nbsp;Another Me The First Velvet Tint Phiên bản mới 4,5g là son kem lì có xuất xứ từ Hàn Quốc, sản phẩm có chất kem cực mịn cộng với bảng màu son lên màu cực chuẩn, hứa hẹn đem đến cho bạn đôi môi xinh xắn quyến rũ trong suốt nhiều giờ.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"son kem li merzy the first velvet tint 2\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-kem-li-merzy-the-first-velvet-tint-2.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Cùng với “đàn chị” son lì Merzy Another me The First Lipstick son kem lì Merzy Another me The First Velvet Tint đang tạo sức “nóng” trên thị trường không những về giá cả mà còn cả chất lượng vượt bậc.<br />\r\n<br />\r\nSon Kem Lì Merzy Another Me The First Velvet Tint 4,5g có thiết kế hình trụ vuông với tông màu đỏ vàng là chủ đạo cùng với chữ Merzy được in nổi trên thân son rất ấn tượng.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"son kem li merzy the first velvet tint 4\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-kem-li-merzy-the-first-velvet-tint-4.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Chất son</strong><br />\r\n<br />\r\n- Sức hút đáng gồm của “cô nàng” Merzy Another me The First Velvet Tint chính là ưu điểm về độ bền màu vượt trội, chất kem mướt mịn khi apply lên môi có mùi thơm nhẹ, đặc biệt lên màu cực chuẩn mà không hề bị biến màu hay lộ rãnh môi.<br />\r\n- Đối với những cô nàng môi khô thường ngại sử dụng dòng son dạng kem, thì hãy thử trải nghiệm dòng sản phẩm này, chắc hẳn sẽ có sự khác biệt luôn đấy!<br />\r\n- Kem son lì Merzy được bổ sung các thành phần dưỡng giúp môi mềm mại hơn, đặc biệt KHÔNG hề chứa các thành phần kích ứng hay chì gây hại cho môi đâu nhé.<br />\r\n- Độ bám của dòng son này khá cao, các nàng có thể yên tâm ăn uống cả ngày cũng không sợ son bám hết ra cốc hay lem trên giấy ăn. Không còn phải cứ lúc nào cũng phải soi gương mà dặm lại son đâu nha mấy nàng.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"son kem li merzy the first velvet tint 6\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-kem-li-merzy-the-first-velvet-tint-6.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"son kem li merzy the first velvet tint 8\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-kem-li-merzy-the-first-velvet-tint-8.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"son kem li merzy the first velvet tint 7\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-kem-li-merzy-the-first-velvet-tint-7.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>BST Velvet Tint Season 3 đã cập bến Coco Shop</strong><br />\r\n<br />\r\nV13. Ambition: Cam nude trendy cuốn hút<br />\r\nV14. Passion: Hồng đất MLBB tự nhiên trẻ trung<br />\r\nV15. Challenge: Cam ánh nâu ấm áp mềm mại .<br />\r\nV16. Independence: Đỏ Chili classic thời thượng<br />\r\nV17. Confidence: Đỏ gạch mạnh mẽ quyến rũ<br />\r\nV18. Diversity: Nâu đất Chocolate cá&nbsp; tính thu hút .&nbsp;</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"son kem li merzy the first velvet tint 9\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-kem-li-merzy-the-first-velvet-tint-9.jpg\" style=\"border:0px; box-sizing:border-box; height:1500px; vertical-align:middle; width:357px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Lớp vỏ metalic ombre đỏ-gold, Merzy Velvet Tint season 3 như một món trang sức đắt giá khiến không chỉ đôi môi tỏa sáng mà còn giúp bạn ĐI-ĐƯỜNG-QUYỀN mạnh hơn nhiều đó<br />\r\n<br />\r\nKhả năng lưu màu vượt trội cùng bảng màu 6 sắc màu đa dạng xen lẫn phong cách hiện đại và cổ điển chắc chắn sẽ khiến bạn không thể ngồi yên.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"son kem li merzy the first velvet tint 5\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-kem-li-merzy-the-first-velvet-tint-5.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"son kem li merzy the first velvet tint 3\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-kem-li-merzy-the-first-velvet-tint-3.jpg\" style=\"border:0px; box-sizing:border-box; height:750px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Tạo nét đẹp kiêu kì phảng phất nhờ các tông đất trầm, chỉ một chút Merzy lì nhẹ như bông cotton cũng là đủ xinh xắn. Chẳng cần gọi tên, nhìn &nbsp;thôi cũng đủ \"gây thương nhớ\" rồi<br />\r\n<br />\r\n<strong>Trọng lượng:&nbsp;</strong>4.5g<br />\r\n<strong>Xuất xứ:</strong>&nbsp;Hàn Quốc<br />\r\n<strong>Thương hiệu:&nbsp;</strong>Merzy<br />\r\n<a href=\"https://cocoshop.vn/news/lam-dep/cac-hang-my-pham-noi-tieng-han-quoc-225.html\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">Mỹ phẩm Hàn Quốc</a></span></p>', 96, 1000000, 4, 175000, 0, 'cHP5DPZO_4.jpg', 'thỏi', 0, '2021-01-02 13:47:33', '2022-08-19 13:16:05'),
(6, 'Combo Son Dưỡng Rohto Chuyên Biêt Cho Môi Khô, Nứt Nẻ 4.3gx2 Mentholatum Medi Lip Stick', 14, '<p><a href=\"https://cocoshop.vn/son-moi-lips/\" style=\"box-sizing: border-box; color: rgb(0, 0, 0); text-decoration-line: none; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Son Dưỡng Môi</a><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;Rohto Chuyên Biệt Cho Môi Khô, Nứt Nẻ Mentholatum Medi Lip Stick là dòng son dưỡng môi đến từ thương hiệu mỹ phẩm Rohto của Nhật Bản, cải thiện khô nứt, dưỡng môi ẩm mịn nhanh chóng, bảo vệ và hỗ trợ phục hồi môi khô khỏi tác động của thời tiết lạnh, khô hanh, thường xuyên tô son và môi khô cơ địa.</span></p>', '<p><a href=\"https://cocoshop.vn/son-moi-lips/\" style=\"box-sizing: border-box; color: rgb(2, 123, 199); text-decoration-line: none; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Son Dưỡng Môi</a><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;Rohto Chuyên Biệt Cho Môi Khô, Nứt Nẻ Mentholatum Medi Lip Stick là dòng son dưỡng môi đến từ thương hiệu mỹ phẩm Rohto của Nhật Bản, cải thiện khô nứt, dưỡng môi ẩm mịn nhanh chóng, bảo vệ và hỗ trợ phục hồi môi khô khỏi tác động của thời tiết lạnh, khô hanh, thường xuyên tô son và môi khô cơ địa.</span><br />\r\n<br />\r\n<strong>Hiện sản phẩm Son Dưỡng Môi Rohto Chuyên Biệt Cho Môi Khô, Nứt Nẻ đã có&nbsp; 2 dung tích:</strong><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">- Son Dưỡng Môi Rohto Chuyên Biệt Cho Môi Khô, Nứt Nẻ</span><strong>&nbsp;4.3g</strong><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">-</span><a href=\"https://cocoshop.vn/son-duong/\" style=\"box-sizing: border-box; color: rgb(2, 123, 199); text-decoration-line: none; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">&nbsp;Son Dưỡng&nbsp;</a><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">Môi Rohto Chuyên Biệt Cho Môi Khô, Nứt Nẻ&nbsp;</span><strong>4.3gx2</strong><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"combo son duong rohto chuyen biet cho moi kho nut ne 4 3gx2 mentholatum medi lip stick 4\" src=\"https://cocoshop.vn/uploads/shops/2020_12/combo-son-duong-rohto-chuyen-biet-cho-moi-kho-nut-ne-4-3gx2-mentholatum-medi-lip-stick-4.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<strong>CÔNG DỤNG&nbsp;&nbsp;</strong><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">- Chiết Xuất Củ Nghệ giúp kháng khuẩn và cải thiện nhanh tình trạng khô nứt môi.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">- Thành phần giàu Vitamin như Vitamin B5, B6 và Vitamin E giàu dưỡng ẩm, làm dịu tối đa vùng da nứt nẻ khó chịu.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">- Thành phần Bơ Xoài, Tsubaki và Dầu Hoa Trà duy trì độ ẩm ưu việt trên môi, nhanh chóng trả lại làn môi mềm mại, dịu dàng.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">- Menthol tạo cảm giác the mát, dễ chịu trên môi.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">- Bảo vệ và phục hồi môi khô nhanh chóng giúp môi luôn tươi tắn, mềm mại.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">- Dạng son thỏi tiện dụng dễ dàng apply trong ngày hay bất cứ khi nào môi khô căng.</span><br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"combo son duong rohto chuyen biet cho moi kho nut ne 4 3gx2 mentholatum medi lip stick 1\" src=\"https://cocoshop.vn/uploads/shops/2020_12/combo-son-duong-rohto-chuyen-biet-cho-moi-kho-nut-ne-4-3gx2-mentholatum-medi-lip-stick-1.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<br />\r\n<strong>THÀNH PHẦN&nbsp;</strong></p>\r\n\r\n<p><strong>Thành phần chính:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Curcuma Longa (Turmeric) Root Extract (Chiết Xuất Củ Nghệ):</strong>&nbsp;Giúp kháng khuẩn và cải thiện nhanh tình trạng khô nứt môi.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hỗn Hợp Vitamin (Vitamin B5, B6 và Vitamin E):</strong>&nbsp;Giúp làm dịu tối đa vùng da nứt nẻ khó chịu.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Irvingia Gabonensis (Wild Mango) Kernel Butter (Bơ Xoài) Và Camellia Japonica (Tsubaki) Seed Oil (Dầu Hoa Trà):</strong>&nbsp;Duy trì độ ẩm ưu việt trên môi, nhanh chóng trả lại làn môi mềm mại, dịu dàng.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Menthol:</strong>&nbsp;Tạo cảm giác the mát, dễ chịu trên môi.<br />\r\n	&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Thành phần đầy đủ:</strong></p>\r\n\r\n<p>Petrolatum,&nbsp;Bis-Diglyceryl Polyacyladipate-2, Theobroma Cacao (Cocoa) Seed Butter, Camellia Japonica (Tsubaki) Seed Oil, Phytosteryl/Isostearyl/Cetyl/Stearyl/Behenyl Dimer Dilinoleate, Ozokerite, Microcrystalline Wax, Behenyl Beeswax, Octyldodecanol, Jojoba Esters,&nbsp; Water, Helianthus Annuus (Sunflower) Seed Wax, Tocopheryl Acetate, Pentylene Glycol, Dextrin Isostearate, Irvingia Gabonensis (Wild Mango) Kernel Butter, Curcuma Longa (Turmeric) Root Extract, Pyridoxine HCl, Panthenol, Hydrogenated Coco-Glycerides, Acacia Decurrens Flower Wax, Polyglycerin-3, Butylene Glycol, 1,2-Hexanediol,&nbsp; Menthol, BHT, Fragrance</p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"sap duong moi rohto chuyen biet cho moi kho nut ne 7g 8\" src=\"https://cocoshop.vn/uploads/shops/2020_12/sap-duong-moi-rohto-chuyen-biet-cho-moi-kho-nut-ne-7g-8.jpeg\" style=\"border:0px; box-sizing:border-box; height:527px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<strong>CÁCH DÙNG&nbsp;</strong></p>\r\n\r\n<p>- Thoa trực tiếp vào vùng môi và da khô, nẻ ít nhất 3-4 lần/ngày hoặc theo nhu cầu và thoa trước khi ngủ.</p>\r\n\r\n<p><br />\r\n<strong>Dung tích</strong><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">: 4.3g; 4.3gx2</span><br />\r\n<strong>Thương hiệu</strong><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">: Rohto</span><br />\r\n<strong>Xuất xứ:</strong><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;Nhật Bản</span><br />\r\n<a href=\"https://cocoshop.vn/\" style=\"box-sizing: border-box; color: rgb(2, 123, 199); text-decoration-line: none; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Mỹ phẩm chính hãng&nbsp;</a></p>', 93, 1000000, 7, 88000, 80000, 'IyFe5o1Z_5.jpg', 'hộp', 1, '2021-01-02 13:50:03', '2022-08-25 09:25:56'),
(7, 'Sáp Dưỡng Môi Rohto Chuyên Biệt Cho Môi Khô, Nứt Nẻ 7g', 14, '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">Sáp Dưỡng Môi Rohto Chuyên Biệt Cho Môi Khô, Nứt Nẻ Mentholatum Medi Lip Balm 7g là dòng son dưỡng môi đến từ thương hiệu mỹ phẩm Rohto của Nhật Bản, cải thiện khô nứt, dưỡng môi ẩm mịn nhanh chóng, bảo vệ và hỗ trợ phục hồi môi khô khỏi tác động của thời tiết lạnh, khô hanh, thường xuyên tô son và môi khô cơ địa.</span></p>', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Sáp Dưỡng Môi Rohto Chuyên Biệt Cho Môi Khô, Nứt Nẻ Mentholatum Medi Lip Balm 7g là dòng son dưỡng môi đến từ thương hiệu mỹ phẩm Rohto của Nhật Bản, cải thiện khô nứt, dưỡng môi ẩm mịn nhanh chóng, bảo vệ và hỗ trợ phục hồi môi khô khỏi tác động của thời tiết lạnh, khô hanh, thường xuyên tô son và môi khô cơ địa.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"sap duong moi rohto chuyen biet cho moi kho nut ne 7g 2\" src=\"https://cocoshop.vn/uploads/shops/2020_12/sap-duong-moi-rohto-chuyen-biet-cho-moi-kho-nut-ne-7g-2.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÔNG DỤNG&nbsp;</strong><br />\r\n<br />\r\n- Chiết Xuất Củ Nghệ giúp kháng khuẩn và cải thiện nhanh tình trạng khô nứt môi.<br />\r\n- Thành phần giàu Vitamin như Vitamin B5, B6 và Vitamin E giàu dưỡng ẩm, làm dịu tối đa vùng da nứt nẻ khó chịu.<br />\r\n- Thành phần Bơ Xoài, Tsubaki và Dầu Hoa Trà duy trì độ ẩm ưu việt trên môi, nhanh chóng trả lại làn môi mềm mại, dịu dàng.<br />\r\n- Menthol tạo cảm giác the mát, dễ chịu trên môi.<br />\r\n- Bảo vệ và phục hồi môi khô nhanh chóng giúp môi luôn tươi tắn, mềm mại.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"sap duong moi rohto chuyen biet cho moi kho nut ne 7g 3\" src=\"https://cocoshop.vn/uploads/shops/2020_12/sap-duong-moi-rohto-chuyen-biet-cho-moi-kho-nut-ne-7g-3.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>THÀNH PHẦN&nbsp;</strong></span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><strong>Thành phần chính:</strong></span></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><span style=\"font-size:18px\"><strong>Curcuma Longa (Turmeric) Root Extract (Chiết Xuất Củ Nghệ):</strong>&nbsp;giúp kháng khuẩn và cải thiện nhanh tình trạng khô nứt môi.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:18px\"><strong>Hỗn Hợp Vitamin (Vitamin B5, B6 Và Vitamin E):</strong>&nbsp;giúp làm dịu tối đa vùng da nứt nẻ khó chịu.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:18px\"><strong>Irvingia Gabonensis (Wild Mango) Kernel Butter (Bơ Xoài) Và Camellia Japonica (Tsubaki) Seed Oil (Dầu Hoa Trà):</strong>&nbsp;duy trì độ ẩm ưu việt trên môi, nhanh chóng trả lại làn môi mềm mại, dịu dàng,</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:18px\"><strong>Menthol:</strong>&nbsp;tạo cảm giác the mát, dễ chịu trên môi.</span><br />\r\n	<br />\r\n	&nbsp;</p>\r\n\r\n	<div style=\"box-sizing: border-box; text-align: center;\"><img alt=\"sap duong moi rohto chuyen biet cho moi kho nut ne 7g 6\" src=\"https://cocoshop.vn/uploads/shops/2020_12/sap-duong-moi-rohto-chuyen-biet-cho-moi-kho-nut-ne-7g-6.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n	</li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:18px\"><strong>Thành phần đầy đủ:</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Petrolatum, Bis-Diglyceryl Polyacyladipate-2, Theobroma Cacao (Cocoa) Seed Butter, Camellia Japonica (Tsubaki) Seed Oil, Phytosteryl/Isostearyl/Cetyl/Stearyl/Behenyl Dimer Dilinoleate, Behenyl Beeswax, Octyldodecanol, Jojoba Esters, Water, Helianthus Annuus (Sunflower) Seed Wax, Tocopheryl Acetate, Pentylene Glycol, Microcrystalline Wax, Dextrin Isostearate, Irvingia Gabonensis (Wild Mango) Kernel Butter, Curcuma Longa (Turmeric) Root Extract, Pyridoxine HCl, Panthenol, Hydrogenated Coco-Glycerides,&nbsp; Acacia Decurrens Flower Wax,&nbsp; Polyglycerin-3, Butylene Glycol, 1,2-Hexanediol, Menthol, BHT, Fragrance.</span><br />\r\n&nbsp;</p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"sap duong moi rohto chuyen biet cho moi kho nut ne 7g 4c\" src=\"https://cocoshop.vn/uploads/shops/2020_12/sap-duong-moi-rohto-chuyen-biet-cho-moi-kho-nut-ne-7g-4c.jpg\" style=\"border:0px; box-sizing:border-box; height:360px; vertical-align:middle; width:650px\" /></div>\r\n\r\n<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"sap duong moi rohto chuyen biet cho moi kho nut ne 7g 5\" src=\"https://cocoshop.vn/uploads/shops/2020_12/sap-duong-moi-rohto-chuyen-biet-cho-moi-kho-nut-ne-7g-5.jpg\" style=\"border:0px; box-sizing:border-box; height:410px; vertical-align:middle; width:660px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÁCH DÙNG&nbsp;</strong><br />\r\n<br />\r\n- Thoa trực tiếp vào vùng môi và da khô, nẻ ít nhất 3-4 lần/ngày hoặc theo nhu cầu và thoa trước khi ngủ.</span><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"sap duong moi rohto chuyen biet cho moi kho nut ne 7g 8\" src=\"https://cocoshop.vn/uploads/shops/2020_12/sap-duong-moi-rohto-chuyen-biet-cho-moi-kho-nut-ne-7g-8.jpeg\" style=\"border:0px; box-sizing:border-box; height:527px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Trọng lượng</strong>&nbsp; : 7g<br />\r\n<strong>Thương hiệu</strong>&nbsp; :&nbsp;&nbsp;Rohto<br />\r\n<strong>Xuất xứ</strong>&nbsp;: Nhật bản&nbsp;<br />\r\n<a href=\"https://cocoshop.vn/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">Mỹ phẩm chính hãng</a></span></p>', 100, 1000000, 0, 75000, 0, 'qMJ9RsUd_sap-duong-moi-rohto-chuyen-biet-cho-moi-kho-nut-ne-7g-2.jpg', 'hộp', 1, '2021-01-02 13:51:13', '2022-08-23 09:28:51'),
(8, 'Son Thỏi Mịn Lì Lâu Trôi Bobbi Brown', 14, '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Lớp finish chuẩn mịn lì trên môi, nhưng vẫn mượt mà như nhung.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Độ che phủ cao, che phủ được các rãnh môi, vân môi.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Công thức dưỡng ẩm vượt trội giúp giữ môi luôn căng mọng &amp; mềm mại, không có cảm giác khô căng khó chịu.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Khả năng bền màu lên đến 12 giờ sau khi sử dụng.</span></p>', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Luxe Lip là dòng son thời thượng đến từ thương hiệu mỹ phẩm trang điểm chuyên nghiệp Bobbi Brown, nay đã có mặt trong 4 kết cấu son khác nhau đầy ấn tượng, đáp ứng mọi nhu cầu của các tín đồ làm đẹp. Và 1 trong 4 dòng son nổi bật thuộc bộ sưu tập Luxe Lip, đồng thời cũng là dòng sản phẩm bán cực kì chạy của Bobbi Brown phải kể đến là&nbsp;<a href=\"https://cocoshop.vn/son-thoi/son-thoi-min-li-lau-troi-bobbi-brown-red-carpet.html\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\"><em><strong>Bobbi Brown Luxe Matte Lip Color</strong></em></a>. Được cải tiến từ dòng son Luxe Lip Color tiền nhiệm, Luxe Matte Lip Color chắc chắn sẽ làm cho các tín đồ của son lì phải “xiêu lòng” ngay lập tức thì chạm môi.</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"son thoi min li lau troi bobbi brown 4 5g 2\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-thoi-min-li-lau-troi-bobbi-brown-4-5g-2.jpeg\" style=\"border:0px; box-sizing:border-box; height:1200px; vertical-align:middle; width:650px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Vẫn sở hữu công thức dưỡng ẩm độc quyền từ Bobbi Brown, nhưng nay Luxe Matte Lip Color đã có mặt với chất son mịn lì như nhung cùng thiết kế vỏ son ánh kim đẳng cấp và sang trọng. Khả năng bám màu lên đến 12 giờ với hiệu ứng lì hoàn hảo, độ che phủ cao nhưng không để lại cảm giác khó chịu, khô căng. Bảng màu của Luxe Matte Lip Color cũng cực kì đa dạng với 18 sắc son nổi bật cho phái đẹp tha hồ biến hóa các phong cách make-up khác nhau. Đặc biệt vào tháng 9 vừa qua, dòng son Bobbi Brown Luxe Matte Lip Color đã đoạt giải thưởng Best of Beauty Award 2019 của tạp chí làm đẹp danh tiếng Allure.</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"son thoi min li lau troi bobbi brown 4 5g 1\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-thoi-min-li-lau-troi-bobbi-brown-4-5g-1.jpeg\" style=\"border:0px; box-sizing:border-box; height:1200px; vertical-align:middle; width:566px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Hiện Son Thỏi Mịn Lì Lâu Trôi Bobbi Brown Luxe Matte Lip Color đã có mặt tại&nbsp;<strong>Coco Shop</strong>&nbsp;với các tông màu:</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"><strong><span style=\"font-size:18px\">Claret</span></strong><br />\r\n&nbsp;\r\n<div style=\"box-sizing: border-box; text-align: center;\"><img alt=\"son thoi min li lau troi bobbi brown red claret\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-thoi-min-li-lau-troi-bobbi-brown-red-claret.jpg\" style=\"border:0px; box-sizing:border-box; height:720px; vertical-align:middle; width:559px\" /></div>\r\n<br />\r\n<strong><span style=\"font-size:18px\">Bold Honey</span></strong><br />\r\n&nbsp;\r\n<div style=\"box-sizing: border-box; text-align: center;\"><img alt=\"son thoi min li lau troi bobbi brown red bold honey\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-thoi-min-li-lau-troi-bobbi-brown-red-bold-honey.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n<br />\r\n<strong><span style=\"font-size:18px\">Wild Poppy</span></strong><br />\r\n&nbsp;\r\n<div style=\"box-sizing: border-box; text-align: center;\"><img alt=\"son thoi min li lau troi bobbi brown red wild poppy\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-thoi-min-li-lau-troi-bobbi-brown-red-wild-poppy.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n<br />\r\n<strong><span style=\"font-size:18px\">Burnt Cherry</span></strong><br />\r\n&nbsp;\r\n<div style=\"box-sizing: border-box; text-align: center;\"><img alt=\"son thoi min li lau troi bobbi brown red curnt cherry\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-thoi-min-li-lau-troi-bobbi-brown-red-curnt-cherry.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n<br />\r\n<strong><span style=\"font-size:18px\">Red Stiletto</span></strong><br />\r\n&nbsp;\r\n<div style=\"box-sizing: border-box; text-align: center;\"><img alt=\"son thoi min li lau troi bobbi brown red red stletto\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-thoi-min-li-lau-troi-bobbi-brown-red-red-stletto.jpg\" style=\"border:0px; box-sizing:border-box; height:735px; vertical-align:middle; width:568px\" /></div>\r\n<br />\r\n<strong><span style=\"font-size:18px\">Desert Sun</span></strong><br />\r\n&nbsp;\r\n<div style=\"box-sizing: border-box; text-align: center;\"><img alt=\"son thoi min li lau troi bobbi brown red desert sun\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-thoi-min-li-lau-troi-bobbi-brown-red-desert-sun.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n<br />\r\n<strong><span style=\"font-size:18px\">Red Carpet</span></strong><br />\r\n&nbsp;\r\n<div style=\"box-sizing: border-box; text-align: center;\"><img alt=\"son thoi min li lau troi bobbi brown red carpet\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-thoi-min-li-lau-troi-bobbi-brown-red-carpet.png\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n<br />\r\n<strong><span style=\"font-size:18px\">Supernova</span></strong><br />\r\n&nbsp;</div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"son thoi min li lau troi bobbi brown red supernova\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-thoi-min-li-lau-troi-bobbi-brown-red-supernova.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Đặc điểm nổi bật:</strong><br />\r\n<br />\r\n- Áp dụng công nghệ kết cấu hạt sắc tố ngấm dầu “Luxe Matte Pigment” tạo nên chất son hoàn toàn khác biệt, cho khả năng lên màu hoàn hảo chỉ với một đường lướt nhẹ.<br />\r\n- Lớp finish chuẩn mịn lì trên môi, nhưng vẫn mượt mà như nhung.<br />\r\n- Độ che phủ cao, che phủ được các rãnh môi, vân môi.<br />\r\n- Công thức dưỡng ẩm vượt trội giúp giữ môi luôn căng mọng &amp; mềm mại, không có cảm giác khô căng khó chịu.<br />\r\n- Khả năng bền màu lên đến 12 giờ sau khi sử dụng.</span><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"son thoi min li lau troi bobbi brown 4 5g 4\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-thoi-min-li-lau-troi-bobbi-brown-4-5g-4.jpeg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Độ an toàn:</strong><br />\r\nKhông Paraben, không phthalate, không sulfate, không sulfite, không dầu khoáng.<br />\r\nSản phẩm thân thiện, không chứa thành phần động vật, không gluten.<br />\r\n<strong>Bảo quản:</strong><br />\r\nNơi khô ráo, thoáng mát.<br />\r\nTránh ánh nắng trực tiếp, nơi có nhiệt độ cao hoặc ẩm ướt.<br />\r\nĐậy nắp kín sau khi sử dụng.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"son thoi min li lau troi bobbi brown 4 5g 3\" src=\"https://cocoshop.vn/uploads/shops/2020_12/son-thoi-min-li-lau-troi-bobbi-brown-4-5g-3.jpeg\" style=\"border:0px; box-sizing:border-box; height:901px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Thương hiệu:</strong>&nbsp;Bobbi Brown<br />\r\n<strong>Dung tích:</strong>&nbsp;4.5g<br />\r\n<strong>Xuất xứ:</strong>&nbsp;Mỹ</span></p>', 100, 1000000, 0, 910000, 0, 'elomAT1T_son-thoi-min-li-lau-troi-bobbi-brown-4-5g-6.jpeg', 'thỏi', 1, '2021-01-02 13:52:50', '2022-08-25 09:25:56'),
(9, 'Mặt Nạ Sur.Medic Aqua 30g', 15, '<p><strong>Mặt Nạ Dưỡng Ẩm Chuyên Sâu Sur.Medic+ Super Hyaluronic 100™ Aqua Mask</strong><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">&nbsp;là mặt nạ cấp ẩm một cách cấp tốc và duy trì lượng nước, giữ da luôn sáng bừng, ẩm mịn. Tăng cường cấu trúc trẻ hoá da, chống các dấu hiệu lão hoá. Cải thiện độ mềm mịn bề mặt da. Làm dịu nhanh các kích ứng da vì tác động môi trường.</span></p>', '<p><span style=\"font-size:18px\"><strong>Mặt Nạ Dưỡng Ẩm Chuyên Sâu Sur.Medic+ Super Hyaluronic 100™ Aqua Mask ,&nbsp;</strong>mặt nạ của nhà&nbsp;<strong>Sur.Medic+</strong>&nbsp;là một trong những sản phẩm được ưa chuộng nhất hiện nay. Với khả năng cấp ẩm hoàn hảo, mặt nạ Sur.Medic+ nhận được nhiều tình cảm từ phía khách hàng.&nbsp;</span><br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"mat na sur medic aqua 30g\" src=\"https://cocoshop.vn/uploads/shops/2020_12/mat-na-sur-medic-aqua-30g.jpg\" style=\"border:0px; box-sizing:border-box; height:485px; vertical-align:middle; width:485px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-size:18px\"><strong>&nbsp;</strong><br />\r\nThiết kế Mặt Nạ Dưỡng Ẩm Chuyên Sâu Sur.Medic+ Super Hyaluronic 100™ Aqua Mask<br />\r\n<br />\r\nThiết kế của các sản phẩm Sur.Medic+ đơn giản và thống nhất với nhau. Nền trắng chữ xanh nổi bật, tạo ấn tượng riêng cho hãng. Trên bao bì có in tên thương hiệu và những thông tin liên quan tới sản phẩm. Mặt nạ dạng giấy, mềm và ôm sát với khuôn mặt, mùi thơm nhẹ, không quá nồng. Không bị xê dịch khi cử động.&nbsp;</span><br />\r\n&nbsp;</p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"Mặt Nạ Sur Medic Aqua 30G 3\" src=\"https://cocoshop.vn/uploads/shops/2020_12/mat-na-sur.medic-aqua-30g-3.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-size:18px\">Các sản phẩm đến từ thương hiệu&nbsp;<strong>Sur.Medic+</strong>&nbsp;có thiết kế đồng nhất tạo nên vẻ đẹp riêng của hãng. Giúp khách hàng mỗi khi nhìn vào đều có thể nhớ ngay tới các sản phẩm của thương hiệu này.<br />\r\n<br />\r\n<strong>CÔNG DỤNG</strong><br />\r\n<br />\r\n- Cung cấp độ ẩm hiệu quả cho da: Làn da sẽ trở nên căng mịn hơn sau khi sử dụng mặt nạ, dưỡng ẩm sâu cho da, giảm thiểu tình trạng bong tróc, khô ráp hay nứt nẻ;<br />\r\n- Chống lão hóa da: Giảm thiểu các nếp nhăn trên da, làm căng da, tránh tình trạng chảy xệ, nám sạm da, da không đều màu. Đem lại một làn da tươi tắn, rạng ngời;<br />\r\n- Sản sinh collagen giúp làn da trở nên săn chắc hơn;<br />\r\n- Se khít lỗ chân lông, giảm tình trạng da bị bít tắc chân lông.</span><br />\r\n<br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"Mặt Nạ Sur Medic Aqua 30G 5\" src=\"https://cocoshop.vn/uploads/shops/2020_12/mat-na-sur.medic-aqua-30g-5.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-size:18px\"><strong>CÁCH DÙNG</strong></span><br />\r\n&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px\">- Rửa mặt thật sạch và để khô da;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Gỡ mặt nạ trong bao bì ra;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Điều chỉnh sao cho mặt nạ khít với vùng mắt, miệng, quai hàm;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Nằm thư giãn từ 10-15 phút;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Gỡ mặt nạ và massage nhẹ nhàng.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Lưu ý: Nên đắp mặt nạ từ 2-3 lần/tuần. Không để mặt nạ trên mặt quá lâu bởi có thể gây thẩm thấu ngược, phản tác dụng.</span></p>\r\n\r\n<p><br />\r\n<span style=\"font-size:18px\"><strong>Trọng lượng:</strong>&nbsp;30g<br />\r\n<strong>Thương hiệu:</strong>&nbsp;Sur.Medic+</span><br />\r\n<span style=\"font-size:18px\"><strong>Xuất xứ:&nbsp;</strong>Hàn Quốc<br />\r\n<a href=\"https://cocoshop.vn/news/lam-dep/cac-hang-my-pham-noi-tieng-han-quoc-225.html\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">Mỹ phẩm Hàn Quốc</a></span></p>', 100, 1000000, 0, 29000, 0, 'OZCXcqeD_mat-na-sur-medic-aqua-30g.jpg', 'hộp', 0, '2021-01-02 13:54:23', '2021-01-02 13:54:23');
INSERT INTO `products` (`id`, `name`, `id_type`, `summary`, `description`, `amount`, `price_cost`, `qty_sold`, `unit_price`, `promotion_price`, `image`, `unit`, `new`, `created_at`, `updated_at`) VALUES
(10, 'Bọt Rửa Mặt Dove Tinh Chất Serum Cho Da Nhạy Cảm 160ml', 15, '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Cấp ẩm cho da bằng cách hút lấy chất ẩm từ môi trường vào da và giữ ẩm trong da.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Chất dưỡng ẩm dạng ưa nước - cấp ẩm hiệu qủa và giúp tái tạo lớp sừng.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Xây dựng lớp lipid nội bào giúp giữ ẩm.</span></p>', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><a href=\"https://cocoshop.vn/sua-rua-mat/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none; outline: 0px;\">Sữa Rửa Mặt</a>&nbsp;Dạng Bọt Tinh Chất Serum Dove Beauty Serum Facial Cleansing Mousse là dòng sản phẩm mới ra mắt từ thương hiệu mỹ phẩm chăm sóc da Dove của Mỹ, được sản xuất tại Nhật Bản theo tiêu chuẩn khắt khe của thị trường nội địa Nhật. Dòng sản phẩm có kết cấu dạng mousse rửa mặt bọt mịn chứa 40% tinh chất Serum dưỡng ẩm da, giúp giữ lại tối đa dưỡng chất thiết yếu và bảo vệ hàng rào độ ẩm tự nhiên của da sau mỗi lần rửa mặt. Tại Nhật, cứ mỗi 5 giây lại có 1 chai Mousse rửa mặt Dove được bán ra.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"sua rua mat dove giup se lo chan long kiem dau 2\" src=\"https://cocoshop.vn/uploads/shops/2020_12/sua-rua-mat-dove-giup-se-lo-chan-long-kiem-dau-2.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Một làn da khỏe mạnh là một làn da đủ độ ẩm, căng mượt và đàn hồi. Khi da thiếu ẩm, da sẽ trở nên xỉn màu, thiếu sức sống, bề mặt da sần sùi, lỗ chân lông nở to và da có xu hướng tiết dầu nhiều hơn bình thường. Tình trạng thiếu ẩm có thể xảy ra ở mọi loại da, từ da khô cho đến da dầu đều có khả năng bị thiếu ẩm, mất nước. Đặc biệt khi da dầu thiếu ẩm sẽ càng tiết thêm nhiều dầu hơn để cân bằng lại độ ẩm trên da, nhưng vẫn có cảm giác khô căng khó chịu. Thường xuyên thiếu ẩm sẽ dẫn đến da khô, bong tróc, dễ bị kích ứng, viêm nhiễm… do các nhân tố gây hại đến từ bên ngoài. Về lâu dài, việc mất độ ẩm sẽ làm đẩy nhanh quá trình lão hóa của da.<br />\r\n<br />\r\nSữa Rửa Mặt Dạng Bọt Tinh Chất Serum&nbsp;<a href=\"https://cocoshop.vn/group/dove-dermaseries/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">Dove</a>&nbsp;chứa đến 40% tinh chất Serum giúp mang lại hiệu quả giữ ẩm sâu, khôi phục độ ẩm cho làn da và ngăn ngừa các tác nhân gây lão hóa. Trong đó bao gồm có:<br />\r\n<br />\r\n- Stearic acid có cấu trúc tương tự như lipid tự nhiên có trong da người, được sử dụng trong công thức sản phẩm như một chất hoạt động bề mặt dịu nhẹ, giúp làm mềm da và mang lại cảm giác mát mẻ dễ chịu khi sử dụng, đồng thời ngăn ngừa thất thoát, hư tổn lipid ở ở hàng rào bảo vệ tự nhiên của da, bảo vệ làn da mỏng manh nhạy cảm.<br />\r\n- Glycerin cấp ẩm cho da<br />\r\n- HEU (Hydroxyethyl Urea) có khả năng thẩm thấu sâu vào lớp sừng để dưỡng ẩm và thúc đẩy sản xuất AMPs (anti-microbia peptides) tăng cường hàng rào bảo vệ tự nhiên của da khỏe mạnh.<br />\r\n- Vitamin B3 (Niacinamide) giúp kháng viêm &amp; làm dịu da, giảm hiện tượng đỏ da &amp; đốm nâu.<br />\r\n- Ceramides giúp phục hồi độ ẩm cho da, tăng cường hàng rào ẩm và giúp bảo vệ da khỏi tác hại của môi trường bên ngoài. Đặc biệt đây cũng là thành phần dưỡng da rất được người tiêu dùng tại Nhật ưa chuộng và tìm kiếm khi mua các sản phẩm chăm sóc da.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"bot rua mat dove tinh chat serum cho da nhay cam 1\" src=\"https://cocoshop.vn/uploads/shops/2020_12/bot-rua-mat-dove-tinh-chat-serum-cho-da-nhay-cam-1.jpg\" style=\"border:0px; box-sizing:border-box; height:400px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Kết cấu sản phẩm dạng Mousse tạo bọt sẵn siêu mịn, lướt êm nhẹ nhàng trên da, hạn chế việc ngón tay tiếp xúc trực tiếp với da tay, từ đó giúp làm sạch da tối ưu mà không gây tổn thương hay kích ứng, ngăn ngừa việc da bị chảy xệ hay chùng nhão trong tương lai, đồng thời duy trì độ ẩm tự nhiên thiết yếu cho làn da mềm mại không khô căng sau khi rửa mặt.&nbsp;<br />\r\n<br />\r\nSản phẩm được sản xuất tại Nhật Bản. Công thức đã được kiểm nghiệm da liễu, không chứa paraben, không màu nhân tạo. Độ pH cân bằng, an toàn cho mọi loại da.<br />\r\n<br />\r\n<strong>Mousse Rửa Mặt Sensitive Mild (Màu Xanh Ngọc) – Dành cho da nhạy cảm &amp; dễ kích ứng.</strong><br />\r\n<br />\r\nSữa rửa mặt dạng bọt siêu mịn với tinh chất - Serum dưỡng ẩm cùng với dưỡng chất Ceramides và chiết xuất hoa cúc giúp làm dịu da. Vừa giúp làm sạch da và lớp trang điểm nhẹ, vừa giúp cấp ẩm cho làn da nhạy cảm. Riêng phiên bản này sẽ không có mùi hương (không chứa thành phần hương liệu nhân tạo), vì vậy an toàn và không gây kích ứng cho làn da nhạy cảm.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"bot rua mat dove tinh chat serum cho da nhay cam\" src=\"https://cocoshop.vn/uploads/shops/2020_12/bot-rua-mat-dove-tinh-chat-serum-cho-da-nhay-cam.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>THÀNH PHẦN &amp; CÔNG DỤNG</strong><br />\r\n<br />\r\n<strong>Glycerin</strong><br />\r\n- Cấp ẩm cho da bằng cách hút lấy chất ẩm từ môi trường vào da và giữ ẩm trong da.<br />\r\n- Chất dưỡng ẩm dạng ưa nước - cấp ẩm hiệu qủa và giúp tái tạo lớp sừng.<br />\r\n<br />\r\n<strong>Stearic Acid</strong><br />\r\n- Chất &nbsp;làm mềm da, giữ &nbsp;ẩm. Dạng kỵ nước, ưa dầu- có nguồn gốc tự nhiên từ axit béo thực vật, nhân tố then chốt trong cấu tạo lớp ngoài cùng của da, đóng góp vai trò vào hàng rào bảo vệ tự nhiên của da.<br />\r\n- Xây dựng lớp lipid nội bào giúp giữ ẩm.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"bot rua mat dove tinh chat serum cho da nhay cam 2\" src=\"https://cocoshop.vn/uploads/shops/2020_12/bot-rua-mat-dove-tinh-chat-serum-cho-da-nhay-cam-2.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>HEU (Hydroxyethyl Urea)&nbsp;</strong><br />\r\n- Chất dưỡng ẩm mạnh với khả năng hút ẩm cao, cấp ẩm cho da và giúp giữ ẩm trong da.<br />\r\n- Thẩm thấu vào lớp sừng, giúp dưỡng ẩm sâu vào da.<br />\r\n- Thúc đẩy sản xuất AMPs ( anti-microbia peptides) tăng cường hàng rào bảo vệ tự nhiên của da.<br />\r\n<br />\r\n<strong>Vitamin B3 (Niacinamide)</strong><br />\r\n- Chất dưỡng ẩm có khả năng hút ẩm.<br />\r\n- Giúp kháng viêm, giảm hình thành hiện tượng đỏ da và đốm nâu.<br />\r\n<br />\r\n<strong>Ceramides</strong><br />\r\n- Phục hồi độ ẩm cho da<br />\r\n- Tăng cường hàng rào bảo vệ tự nhiên của da<br />\r\n- Giúp bảo vệ khỏi tác hại của môi trường bên ngoài<br />\r\n- Thành phần dưỡng da được người tiêu dùng Nhật ưa chuông số 1 và tìm kiếm khi mua các sản phẩm dưỡng da.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"bot rua mat dove tinh chat serum lam sang da 3\" src=\"https://cocoshop.vn/uploads/shops/2020_12/bot-rua-mat-dove-tinh-chat-serum-lam-sang-da-3.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÁCH DÙNG</strong><br />\r\n<br />\r\n- Làm ướt da mặt.<br />\r\n- Cho một lượng bọt rửa mặt bằng 1-2 lần nhấn ra lòng bàn tay, massage lên toàn bộ da mặt và cổ.<br />\r\n- Rửa sạch lại với nước.&nbsp;<br />\r\n- Sử dụng mỗi ngày 2 lần vào buổi sáng và tối.<br />\r\n<br />\r\n<br />\r\n<strong>Trọng lượng:&nbsp;</strong>160ml<br />\r\n<strong>Xuất xứ:&nbsp;</strong>Nhật Bản<br />\r\n<strong>Thương hiệu:</strong>&nbsp;Dove</span></p>', 92, 1000000, 8, 195000, 157000, 'uyB0n3OK_bot-rua-mat-dove-tinh-chat-serum-cho-da-nhay-cam.jpg', 'chai', 1, '2021-01-02 13:56:17', '2022-08-23 09:42:56'),
(11, 'Mặt Nạ JMsolution Sáp Ong 30ml', 15, '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Bổ sung độ ẩm, làm sáng và tái tạo lại làn da sau tổn thương</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Làm giảm quá trình lão hóa da, giúp da mịn màng, căng tràn sức sống.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Kháng khuẩn tốt, ngăn ngừa sự phát triển của vi khuẩn gây mụn</span></p>', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><a href=\"https://cocoshop.vn/group/jm-solution/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">JM Solution</a>&nbsp;Honey Luminous Royal Propolis Mask chứa chiết xuất keo ong, keo ong xanh, sữa ong chúa và mật ong giúp tối đa hóa độ ẩm và dưỡng chất, đồng thời mang lại sự bừng sáng, rạng rỡ ngay tức thì cho làn da. Với sự có mặt của kha khá các hợp chất Peptides trong thành phần giúp nâng cơ, làm săn chắc và ngăn chặn chảy xệ nên em Honey Luminous Royal Propolis Mask cũng được hãng hứa hẹn là mặt nạ giấy chống lão hóa dành cho những ai quan tâm đến vấn đề trẻ hóa làn da.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"mat na jmsolution sap ong 4\" src=\"https://cocoshop.vn/uploads/shops/2020_12/mat-na-jmsolution-sap-ong-4.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÔNG DỤNG</strong><br />\r\n<br />\r\n- Bổ sung độ ẩm, làm sáng và tái tạo lại làn da sau tổn thương<br />\r\n- Làm giảm quá trình lão hóa da, giúp da mịn màng, căng tràn sức sống.<br />\r\n- Kháng khuẩn tốt, ngăn ngừa sự phát triển của vi khuẩn gây mụn<br />\r\n- Tinh chất chứa protein kén lụa vàng và tăng gấp đôi khả năng dưỡng sáng và cải thiện nếp nhăn<br />\r\n- Cấu trúc mặt nạ với lớp lưới dày đặc làm ẩm da và ngăn ngừa sự bốc hơi</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"mat na jmsolution sap ong 3\" src=\"https://cocoshop.vn/uploads/shops/2020_12/mat-na-jmsolution-sap-ong-3.jpeg\" style=\"border:0px; box-sizing:border-box; height:703px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"mat na jmsolution sap ong 1\" src=\"https://cocoshop.vn/uploads/shops/2020_12/mat-na-jmsolution-sap-ong-1.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÁCH DÙNG</strong><br />\r\n<br />\r\n- Sau khi làm sạch da mặt, dùng toner để cân bằng và làm mềm da đồng thời giúp dưỡng chất thẩm thấu vào sâu bên trong da tốt hơn.<br />\r\n- Đắp và dàn trải đều&nbsp;<a href=\"https://cocoshop.vn/mat-na-mask/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">mặt nạ</a>&nbsp;giấy lên mặt tránh vùng mắt và miệng sau đó thư giãn từ 15 đến 20 phút.<br />\r\n- Dùng tay vỗ nhẹ để các dưỡng chất thẩm thấu sâu vào bên trong da</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"mat na jmsolution sap ong 2\" src=\"https://cocoshop.vn/uploads/shops/2020_12/mat-na-jmsolution-sap-ong-2.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Trọng lượng:</strong>&nbsp;30ml<br />\r\n<strong>Xuất xứ:&nbsp;</strong>Hàn Quốc<br />\r\n<strong>Thương hiệu:&nbsp;</strong>JM solution<br />\r\n<a href=\"https://cocoshop.vn/news/lam-dep/cac-hang-my-pham-noi-tieng-han-quoc-225.html\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">Mỹ phẩm Hàn Quốc</a></span></p>', 100, 1000000, 0, 22000, 0, 'APpp6HDx_mat-na-jmsolution-sap-ong.jpg', 'túi', 1, '2021-01-02 14:04:11', '2021-01-02 14:04:11'),
(12, 'Dầu Tắm Gội Clear Men 3 Trong 1 Active Vibe Mát Lạnh 630g', 16, '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Làm sạch sâu mái tóc và da đầu, loại bỏ toàn bộ bụi bẩn, bã nhờn và gàu.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Làm sạch sâu làn da cơ thể, đồng thời lưu lại mùi hương nước hoa nam tính.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Cấp ẩm và nuôi dưỡng da đầu, giảm tình trạng da đầu khô ngứa.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Chấm dứt nỗi lo về gàu, ngăn ngừa gàu quay trở lại.</span></p>', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Dầu Tắm Gội CLEAR Men 3 Trong 1 là dòng sản phẩm cao cấp đến từ thương hiệu CLEAR thuộc tập đoàn UNILEVER - nhãn hiệu hàng đầu tại Việt Nam về dầu gội sạch gàu, cung cấp giải pháp tắm gội và dưỡng ẩm toàn diện cho nam giới, vượt trội với 3 sức mạnh bất bại từ đầu đến chân:</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau tam goi clear men 3 trong 1 active vibe mat lanh 3\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-tam-goi-clear-men-3-trong-1-active-vibe-mat-lanh-3.png\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Tóc sạch gàu vượt trội* với công thức Gel đột phá.<br />\r\n<br />\r\nDưỡng ẩm da đầu và làn da**, đảm bảo da luôn được cấp ẩm và không loại bỏ lớp cấp ẩm cần thiết với công thức chứa Hyaluronic Acid (HA)<br />\r\n<br />\r\nSảng khoái toàn thân với mùi nước hoa nam tính từ các nhà chế tác nước hoa nổi tiếng.<br />\r\nĐối với nam giới, việc lựa chọn mỹ phẩm chăm sóc cho mái tóc và làn da thường không quá phức tạp, rắc rối như phụ nữ. Đôi khi, họ còn không hiểu sự khác biệt giữa \"dầu gội\" và \"sữa tắm\" là gì? Do đó, các sản phẩm dầu gội kiêm sữa tắm 2 trong 1 đã ra đời như một giải pháp làm sạch toàn diện dành cho nam giới.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau tam goi clear men 3 trong 1 active vibe 3\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-tam-goi-clear-men-3-trong-1-active-vibe-3.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Sản phẩm ứng dụng công thức Gel đột phá từ CLEAR lần đầu tiên ra mắt trên thị trường, với 2X sức mạnh sạch gàu vượt trội &amp; nuôi dưỡng da đầu, kết thúc nỗi lo về gàu. Công thức có chứa các hoạt chất làm sạch gàu thế hệ mới thẩm thấu nhanh hơn &amp; sâu hơn vào da đầu, giúp đánh bay gàu tức thì.&nbsp;<br />\r\n<br />\r\nDầu Tắm Gội CLEAR Men 3 Trong 1 hiện đã có mặt tại&nbsp;<strong>Coco Shop</strong>&nbsp;với 3 phân loại:</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau tam goi clear men 3 trong 1 active vibe 1\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-tam-goi-clear-men-3-trong-1-active-vibe-1.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">- Dầu Tắm Gội CLEAR Men 3 Trong 1 Active Clean Sạch Nhanh 630g<br />\r\n- Dầu Tắm Gội CLEAR Men 3 Trong 1 Active Cool Mát Lạnh 630g<br />\r\n- Dầu Tắm Gội CLEAR Men 3 Trong 1 Active Vibe Phong Độ 630g<br />\r\n<br />\r\n<strong>Dầu Tắm Gội CLEAR Men 3 Trong 1 Active Clean Sạch Nhanh</strong><br />\r\n<br />\r\n- Dầu Tắm Gội CLEAR Men 3 Trong 1 Active Clean Sạch Nhanh với thành phần được bổ sung than hoạt tính - giúp làm sạch sâu, thanh lọc làn da, mái tóc và da đầu.<br />\r\n- Phù hợp với đàn ông dùng nhiều sản phẩm tạo kiểu tóc, ảnh hưởng bởi khói bụi bám trên tóc<br />\r\n<br />\r\n<strong>Dầu Tắm Gội CLEAR Men 3 Trong 1 Active Cool Mát Lạnh</strong><br />\r\n<br />\r\n- Dầu Tắm Gội CLEAR Men 3 Trong 1 Active Cool Mát Lạnh với thành phần được bổ sung tinh thể bạc hà mát lạnh, giúp mang lại cảm giác tươi mát sảng khoái cho làn da và mái tóc.<br />\r\n- Phù hợp với đàn ông năng động, yêu thể thao và vận động nhiều.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau tam goi clear men 3 trong 1 active vibe 2\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-tam-goi-clear-men-3-trong-1-active-vibe-2.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Dầu Tắm Gội CLEAR Men 3 Trong 1 Active Vibe Phong Độ</strong><br />\r\n<br />\r\n- Dầu Tắm Gội CLEAR Men 3 Trong 1 Active Vibe Phong Độ với thành phần được bổ sung hương nước hoa cảm hứng từ châu Âu.<br />\r\n- Phù hợp với đàn ông lịch lãm, phong cách và yêu thích mùi thơm của sản phẩm.<br />\r\n<br />\r\n<strong>Đối tượng sử dụng:</strong>&nbsp;Sản phẩm phù hợp cho nam giới.<br />\r\n<br />\r\n<strong>CÔNG DỤNG</strong><br />\r\n<br />\r\n- Làm sạch sâu mái tóc và da đầu, loại bỏ toàn bộ bụi bẩn, bã nhờn và gàu.<br />\r\n- Làm sạch sâu làn da cơ thể, đồng thời lưu lại mùi hương nước hoa nam tính.<br />\r\n- Cấp ẩm và nuôi dưỡng da đầu, giảm tình trạng da đầu khô ngứa.<br />\r\n- Chấm dứt nỗi lo về gàu, ngăn ngừa gàu quay trở lại.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau tam goi clear men 3 trong 1 active vibe 4\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-tam-goi-clear-men-3-trong-1-active-vibe-4.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>THÀNH PHẦN</strong><br />\r\n<br />\r\nWater, Sodium Laureth Sulfate, Cocamidopropyl Betaine, Dimethiconol, Sodium Chloride, Perfume, Dimethicone, Phenoxyethanol, Glycerin, Piroctone Olamine, Menthol, Carbomer, Sodium Salicylate, Citric Acid, Guar Hydroxypropyltrimonium Chloride, TEA-Dodecylbenzenesulfonate, Helianthus Annuus (Sunflower) Seed Oil, TEA-Sulfate, Sodium Benzoate, Poloxamer 407, Laureth-23, Cyclotetrasiloxane, Laureth-4, PEG-4, Xanthan Gum, Sodium Hyaluronate, Potassium Sorbate, Iodopropynyl Butylcarbamate, Sodium Sulfate, CI 42090.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau tam goi clear men 3 trong 1 active vibe 5\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-tam-goi-clear-men-3-trong-1-active-vibe-5.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÁCH DÙNG</strong><br />\r\n<br />\r\nLấy một lượng vừa đủ thoa đều lên tóc ướt và toàn thân. Xoa bóp, tạo bọt để dưỡng chất thấm sâu. Gội và xả sạch với nước.<br />\r\n<br />\r\n<br />\r\n<strong>Trọng lượng:&nbsp;</strong>370g<br />\r\n<strong>Xuất xứ:</strong>&nbsp;Mỹ<br />\r\n<strong>Thương hiệu:</strong>&nbsp;Clear<br />\r\n<a href=\"https://cocoshop.vn/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">Mỹ phẩm chính hãng</a></span></p>', 71, 1000000, 29, 178000, 150000, 'CoSj4tm1_dau-tam-goi-clear-men-3-trong-1-active-vibe-mat-lanh-1.jpg', 'chai', 1, '2021-01-02 14:05:56', '2022-08-23 09:42:57'),
(13, 'Sữa Dưỡng Thể Vaseline Trắng Da Điểm 10 -350ml', 16, '<p><a href=\"https://cocoshop.vn/duong-the/\" style=\"box-sizing: border-box; color: rgb(0, 0, 0); text-decoration-line: none; font-family: \">Sữa Dưỡng Thể&nbsp;</a><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">Trắng Da Healthy White Perfect 10 AHA &amp; Pro-Retinol là sản phẩm dưỡng thể đến từ thương hiệu mỹ phẩm VASELINE của Mỹ, giúp loại bỏ tế bào chết, kích thích sản xuất collagen và giảm thiểu vết nhăn trên da bạn.</span></p>', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><a href=\"https://cocoshop.vn/duong-the/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none; outline: 0px;\">Sữa Dưỡng Thể&nbsp;</a>Trắng Da Healthy White Perfect 10 AHA &amp; Pro-Retinol là sản phẩm dưỡng thể đến từ thương hiệu mỹ phẩm VASELINE của Mỹ, giúp loại bỏ tế bào chết, kích thích sản xuất collagen và giảm thiểu vết nhăn trên da bạn. Đồng thời, các giọt VSL Jelly siêu nhỏ trong sản phẩm sẽ giúp các tế bào da phục hồi hư tổn kết hợp với màng chống nắng 3 tác động sẽ bảo vệ làn da khỏi các tác hại từ tia UVA và UVB, là những tác nhân gây ra lão hóa, sạm nám da.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: \"><img alt=\"8f61e734659347d999d82fd4e2a4425b 194f8109a3a142c7a38ecc9e32cdb0da\" src=\"https://cocoshop.vn/uploads/shops/2020_12/8f61e734659347d999d82fd4e2a4425b_194f8109a3a142c7a38ecc9e32cdb0da.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÔNG DỤNG&nbsp;</strong><br />\r\n<br />\r\n-&nbsp; Hỗ trợ&nbsp;<a href=\"https://cocoshop.vn/kem-chong-nang-sunscreen/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">chống nắng</a>&nbsp;(UVA &amp; UVB), ngăn ngừa tình trạng ung thư da.<br />\r\n-&nbsp; Giảm vết thâm, làm đều màu da giúp da rắng lên trông thấy.<br />\r\n-&nbsp; Tái tạo da, mang lại làn da mềm mịn và săn chắc da, làm mờ nếp nhăn trông thấy.<br />\r\n-&nbsp; Dưỡng ẩm da hiệu quả, rạng rỡ, trông đầy sức sống, nuôi dưỡng da từ sâu bên trong.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: \"><img alt=\"sua duong the sang da vaseline 350ml 5\" src=\"https://cocoshop.vn/uploads/shops/2020_12/sua-duong-the-sang-da-vaseline-350ml-5.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>THÀNH PHẦN</strong><br />\r\nGồm 3 thành phần chính:<br />\r\nvitaminB3 , AHA, pro-retino : giúp dưỡng trắng da , tẩy đi tế bào chết , kích thích sản sinh collagen nuôi dưỡng làn da trắng sáng mịn màng .</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: \"><img alt=\"1e9fd7be4298c40c03b4c65a686772eb\" src=\"https://cocoshop.vn/uploads/shops/2020_12/1e9fd7be4298c40c03b4c65a686772eb.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÁCH DÙNG&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Lấy một lượng vừa đủ cho vào lòng bàn tay và thoa đều vào da theo chiều xoắn ốc, sau đó vỗ nhẹ để dưỡng chất mau thẩm thấu vào da.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Để đạt hiệu quả tối ưu nên thoa sữa dưỡng thể đều toàn thân hai lần mỗi ngày (sáng/tối) và sau khi làm sạch da. Cần sử dụng ít nhất 2 tuần để cảm nhận sự khác biệt.</span><br />\r\n&nbsp;</p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: \"><img alt=\"duong the vasiline dep xinh\" src=\"https://cocoshop.vn/uploads/shops/2020_12/duong-the-vasiline-dep-xinh.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Trọng lượng : 350ml<br />\r\nThương hiệu : Vaseline<br />\r\nXuất xứ : Mỹ&nbsp;<br />\r\n<a href=\"https://cocoshop.vn/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">Mỹ phẩm chính hãng</a></span></p>', 100, 1000000, 0, 141000, 0, 'nOuUlXFD_sua-duong-the-sang-da-vaseline-350ml-1.jpg', 'chai', 0, '2021-01-02 14:06:57', '2021-01-02 14:08:31'),
(14, 'Xịt Khử Mùi Refre Hương Nước Hoa 30ml', 16, '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Chứa các hạt phấn cực mịn, dễ dàng thấm hút ẩm và se lỗ chân lông, giữ cho vùng da dưới cánh tay luôn sáng mịn và khô thoáng.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Khử mùi, ngăn tiết mồ hôi suốt cả ngày, giữ hương thơm lâu hơn suốt cả ngày.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Thành phần chiết xuất từ thiên nhiên, thân thiện và an toàn cho mọi loại da.</span></p>', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><a href=\"https://cocoshop.vn/lan-khu-mui-deodorant-roller/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none; outline: 0px;\">Xịt Khử Mùi</a>&nbsp;Refre Hương Sang Trọng Phiên Bản Quỳnh Aka Deluxe QAKA 30ml là dòng khử mùi cho nữ đến từ thương hiệu Refre của Nhật Bản, với thành phần từ cam thảo và nha đam giúp làm dịu vùng da bị tổn thương do dùng nhíp và dao cạo, ngăn ngừa thâm sạm và dưỡng sáng da.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"xit khu mui refre huong nuoc hoa 3\" src=\"https://cocoshop.vn/uploads/shops/2020_12/xit-khu-mui-refre-huong-nuoc-hoa-3.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Loại da phù hợp:&nbsp;</strong>Sản phẩm phù hợp với mọi loại da.&nbsp;<br />\r\n<br />\r\n<strong>Giải pháp tình trạng da:</strong><br />\r\n- Có mùi cơ thể thiếu tự tin.&nbsp;<br />\r\n- Làn da vùng dưới cánh tay sẫm màu.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"xit khu mui refre huong nuoc hoa 2\" src=\"https://cocoshop.vn/uploads/shops/2020_12/xit-khu-mui-refre-huong-nuoc-hoa-2.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>THÀNH PHẦN</strong><br />\r\n<br />\r\nEthanol Water, Butylene Glycol, Zinc Phenolsulfonate, Fragrance, Cetrimonium Bromide, Aloe Barbadensis (Aloe) Leaf Extract, Benzalkonium Chloride, Menthol, Phenyl Methicone, Silica, Zinc Oxide, Benzotriazolyl Dodecyl p-Cresol, Magnesium Ascorbyl Phosphate, Glycyrrhiza Uralensis (Licorice) Root Extract.<br />\r\n<br />\r\n<strong>CÔNG DỤNG</strong><br />\r\n<br />\r\n- Chứa các hạt phấn cực mịn, dễ dàng thấm hút ẩm và se lỗ chân lông, giữ cho vùng da dưới cánh tay luôn sáng mịn và khô thoáng.<br />\r\n- Khử mùi, ngăn tiết mồ hôi suốt cả ngày, giữ hương thơm lâu hơn suốt cả ngày.<br />\r\n- Thành phần chiết xuất từ thiên nhiên, thân thiện và an toàn cho mọi loại da.<br />\r\n- Dạng xịt nhỏ gọn, thiết kế tiện lợi dễ dàng mang đi bất cứ đâu.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"xit khu mui refre huong nuoc hoa 1\" src=\"https://cocoshop.vn/uploads/shops/2020_12/xit-khu-mui-refre-huong-nuoc-hoa-1.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÁCH DÙNG</strong><br />\r\n<br />\r\n- Lắc kỹ trước khi dùng.<br />\r\n- Xịt vào vùng da dưới cánh tay.<br />\r\n<br />\r\n<strong>Trọng lượng:</strong>&nbsp;30ml<br />\r\n<strong>Xuất xứ:&nbsp;</strong>Nhật Bản<br />\r\n<strong>Thương hiệu:&nbsp;</strong>Refre&nbsp;<br />\r\n<a href=\"https://cocoshop.vn/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">Cửa hàng mỹ phẩm</a></span></p>', 100, 1000000, 0, 57000, 0, 'Z6AW9uuF_xit-khu-mui-refre-huong-nuoc-hoa.jpg', 'chai', 1, '2021-01-02 14:08:02', '2021-01-02 14:08:02'),
(15, 'Dầu Xả 50 Megumi Ngăn Ngừa Rụng 400ml', 17, '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Tóc khô xơ, thiếu độ ẩm</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Tóc thiếu sức sống, thiếu độ bóng mượt tự nhiên&nbsp;</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Tóc hư tổn do các tác nhân đến từ môi trường bên ngoài như tia UV, tác động của hóa chất uốn nhuộm...</span></p>', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><a href=\"https://cocoshop.vn/dau-goi-xa-shampoo-conditioner/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">Dầu Xả</a>&nbsp;50 Megumi đến từ thương hiệu Megumi (thuộc tập đoàn Rohto Mentholatum) là dòng sản phẩm chăm sóc tóc nội địa Nhật Bản, chứa 50 thành phần dưỡng chất quý giá từ thiên nhiên giúp nuôi dưỡng mái tóc và da đầu, thúc đẩy tóc phát triển dày hơn và chắc khỏe hơn, ngăn ngừa lão hóa tóc trước ngưỡng tuổi 40.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau xa 50 megumi ngan ngua rung 400ml\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-xa-50-megumi-ngan-ngua-rung-400ml.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Hiện Dầu Xả 50 Megumi với 3 phân loại cho bạn lựa chọn:</strong><br />\r\n<br />\r\n- 50 Megumi Fresh and Clean Conditioner - Dầu xả dành cho tóc dầu, giúp làm sạch sâu &amp; thanh mát tóc.<br />\r\n- 50 Megumi Smooth and Moist Conditioner - Dầu xả dành cho tóc khô, giúp dưỡng ẩm &amp; làm mềm mượt tóc.<br />\r\n- 50 Megumi Hair Fall Control Conditioner - Dầu xả dành cho tóc yếu, giúp ngăn ngừa và làm giảm rụng tóc hiệu quả.<br />\r\n<br />\r\n<strong>50 Megumi Fresh and Clean Conditioner</strong><br />\r\n<br />\r\nDầu Xả 50 Megumi Fresh and Clean Conditioner được thiết kế dành cho mái tóc từ thường đến dầu, giúp cải thiện tình trạng tóc mỏng xẹp, giảm rụng tóc và hỗ trợ trẻ hóa da đầu, đồng thời bảo vệ màu tóc nhuộm với 3 thành phần chiết xuất chính được chọn lọc cẩn thận. Sản phẩm chứa chiết xuất Bạc Hà giúp tạo cảm giác tóc nhẹ thoáng và tươi mát sau khi gội.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau xa 50 megumi ngan ngua rung 400ml 1\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-xa-50-megumi-ngan-ngua-rung-400ml-1.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Loại tóc phù hợp:</strong>&nbsp;Sản phẩm phù hợp cho tóc từ thường đến dầu.<br />\r\n<br />\r\n<strong>Giải pháp cho tình trạng tóc:</strong><br />\r\n- Tóc dầu bết, bóng nhờn<br />\r\n- Tóc mỏng xẹp, thiếu độ phồng<br />\r\n<br />\r\n<strong>Công dụng:&nbsp;</strong><br />\r\n- Chứa 50 thành phần dưỡng chất quý hiếm giúp chăm sóc mái tóc và da đầu, ngăn ngừa các dấu hiệu lão hóa dưới tác động của môi trường.<br />\r\n- Tăng cường độ đàn hồi cho từng sợi tóc, ngăn ngừa rụng tóc, cải thiện hiệu quả các vấn đề tóc mỏng yếu và lão hóa tóc, giúp mái tóc trở nên chắc khỏe và dày hơn.<br />\r\n- Chiết xuất Hương Thảo (Rosemary) có đặc tính kháng viêm, giúp tăng cường lưu thông máu tới da đầu, thúc đẩy mọc tóc.<br />\r\n- Chiết xuất Bạch Thược Dược (White Peony Root) hỗ trợ cải thiện hệ thống miễn dịch của tóc và góp phần cân bằng nội tiết, giúp giảm tình trạng viêm da đầu.<br />\r\n- Bổ sung yếu tố khóa màu tóc, giúp giữ màu tóc nhuộm luôn trong trạng thái bóng mượt &amp; đẹp như mới, không làm phai màu tóc.&nbsp;<br />\r\n- Mùi hương thanh mát từ chiết xuất Bạc Hà giúp mang lại cảm giác nhẹ tênh, thoáng sạch và tươi mát sau khi gội đầu.<br />\r\n<br />\r\n<strong>50 Megumi Smooth and Moist Conditioner</strong><br />\r\n<br />\r\nDầu Xả 50 Megumi Smooth and Moist Conditioner được thiết kế dành cho mái tóc khô và hư tổn, với công thức mới cải tiến giúp cải thiện tình trạng tóc mỏng xẹp, giảm rụng tóc và hỗ trợ trẻ hóa da đầu, đồng thời bảo vệ màu tóc nhuộm với 3 thành phần chiết xuất chính được chọn lọc cẩn thận, mang lại cho bạn một mái tóc mềm mại, suôn mượt và óng ả tự nhiên.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau xa 50 megumi ngan ngua rung 400ml 2\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-xa-50-megumi-ngan-ngua-rung-400ml-2.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Loại tóc phù hợp:&nbsp;</strong>Sản phẩm phù hợp cho tóc từ thường đến khô<br />\r\n<br />\r\n<strong>Giải pháp cho tình trạng tóc:</strong><br />\r\n- Tóc khô xơ, thiếu độ ẩm<br />\r\n- Tóc thiếu sức sống, thiếu độ bóng mượt tự nhiên&nbsp;<br />\r\n- Tóc hư tổn do các tác nhân đến từ môi trường bên ngoài như tia UV, tác động của hóa chất uốn nhuộm...<br />\r\n<br />\r\n<strong>Công dụng:&nbsp;</strong><br />\r\n- Chứa 50 thành phần dưỡng chất quý hiếm giúp chăm sóc mái tóc và da đầu, ngăn ngừa các dấu hiệu lão hóa dưới tác động của môi trường.<br />\r\n- Mang lại độ đàn hồi và chắc khỏe cho từng sợi tóc, tạo cảm giác tóc dày và bồng bềnh hơn từ gốc, đồng thời ngăn ngừa rụng tóc, cải thiện hiệu quả các vấn đề tóc mỏng yếu và lão hóa.<br />\r\n- Dầu Argan thẩm thấu sâu và nuôi dưỡng các nang tóc giúp làm giảm rụng tóc và cải thiện độ dày tóc.<br />\r\n- Dầu Jojoba giúp giữ lại độ ẩm và cung cấp độ ẩm sâu cho tóc, làm tóc chắc khỏe từ gốc, dày và khỏe hơn.<br />\r\n- Bơ Hạt Mỡ (Shea Butter) làm sạch và nuôi dưỡng da đầu, từ đó cải thiện sức khỏe của mái tóc.<br />\r\n- Bổ sung yếu tố đồng thời khóa màu tóc, giúp giữ màu tóc nhuộm luôn trong trạng thái bóng mượt &amp; đẹp như mới, không làm phai màu tóc.&nbsp;<br />\r\n<br />\r\n<strong>50 Megumi Hair Fall Control Conditioner</strong><br />\r\n<br />\r\nDầu Xả Hair Fall Control Conditioner Ngăn Ngừa Rụng Tóc Cho Tóc Yếu được chiết xuất từ các thành phần thiên nhiên như: Olive, Argan, Hạt hướng dương cung 50 thành phần dưỡng quý giá nuôi dưỡng mái tóc từ gốc đến ngọn, giúp tóc suôn mượt, giảm tình trạng gãy rụng đem lại mái tóc óng ả, dày mượt.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau xa 50 megumi ngan ngua rung 400ml 3\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-xa-50-megumi-ngan-ngua-rung-400ml-3.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">&nbsp;<br />\r\n<strong>Loại tóc phù hợp:&nbsp;</strong>Sản phẩm phù hợp với mọi loại tóc.<br />\r\n<br />\r\n<strong>Giải pháp tình trạng:</strong><br />\r\n- Tóc dễ gãy rụng, tóc yếu do hậu quả sử dụng nhiệt để lại.<br />\r\n- Da đầu yếu, tóc dầu nhờn, bết dính.<br />\r\n<br />\r\n<strong>CÁCH DÙNG</strong></span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau goi 50 megumi 400ml 6\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-goi-50-megumi-400ml-6.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau goi 50 megumi 400ml 5\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-goi-50-megumi-400ml-5.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau goi 50 megumi 400ml 4\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-goi-50-megumi-400ml-4.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">- Sử dụng sau khi gội đầu với Dầu Gội 50 Megumi.<br />\r\n- Dùng đầu ngón tay xoa đều dầu gội lên tóc từ gốc đến ngọn và mát-xa nhẹ nhàng da đầu.<br />\r\n- Sau đó xả sạch tóc với nước.<br />\r\n<br />\r\n<br />\r\n<br />\r\n<strong>Trọng lượng:</strong>&nbsp;400ml<br />\r\n<strong>Thương hiệu:</strong>&nbsp;Megumi<br />\r\n<strong>Xuất xứ</strong>: Nhật Bản<br />\r\n<a href=\"https://cocoshop.vn/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">Mỹ phẩm chính hãng</a></span></p>', 96, 1000000, 4, 250000, 180000, '8f1khetg_dau-xa-50-megumi-ngan-ngua-rung-400ml.jpg', 'chai', 1, '2021-01-02 14:11:57', '2022-08-25 09:25:56');
INSERT INTO `products` (`id`, `name`, `id_type`, `summary`, `description`, `amount`, `price_cost`, `qty_sold`, `unit_price`, `promotion_price`, `image`, `unit`, `new`, `created_at`, `updated_at`) VALUES
(16, 'Dầu Gội TRESemmé Gừng & Trà Xanh Detox Tóc Chắc Khỏe 640g', 17, '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Thanh lọc và loại bỏ các tạp chất, bụi bẩn, bã nhờn, mồ hôi… tích tụ trên tóc và da đầu.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Khôi phục lại độ chắc khỏe cho mái tóc yếu và hư tổn.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Giúp tóc trở nên mềm mại, bóng mượt và tràn đầy sức sống.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Hương thơm thư giãn từ Gừng &amp; Trà Xanh.</span></p>', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Dầu Gội TRESemmé Gừng &amp; Trà Xanh Detox Tóc Chắc Khỏe 640g Salon Detox là dòng sản phẩm chăm sóc tóc cao cấp đến từ thương hiệu TRESemmé của Mỹ, với công thức chứa thành phần thiên nhiên gồm gừng và trà xanh, giúp detox (thanh lọc) và nuôi dưỡng tóc, hỗ trợ phục hồi lại mái tóc chắc khỏe đẹp “chuẩn sàn diễn”.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau goi tresemme gung tra xanh detox toc chac khoe 4\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-goi-tresemme-gung-tra-xanh-detox-toc-chac-khoe-4.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Trên cơ thể chúng ta, mái tóc chính là nơi phải tiếp xúc với nhiều yếu tố gây hại nhất đến từ môi trường như: nắng nóng và tia UV, thay đổi nhiệt độ đột ngột, gió lạnh, bụi bẩn &amp; ô nhiễm, khói thuốc lá, khí thải… Bên cạnh đó, tóc còn tích tụ các hóa chất trong sản phẩm tạo kiểu và chăm sóc tóc mỗi ngày. Lâu dần sẽ khiến mái tóc trông yếu hơn, xỉn màu và thiếu sức sống, mất đi độ bóng mượt tự nhiên, thậm chí trở nên khô xơ và dễ gãy rụng. Đây là những dấu hiệu của việc bạn cần phải detox cho mái tóc ngay lập tức.<br />\r\n<br />\r\nCông thức sản phẩm chứa các thành phần từ thiên nhiên bao gồm Gừng và Trà Xanh, kết hợp cùng công nghệ tiên tiến của TRESemmé sẽ chăm sóc cho mái tóc hiệu quả và mang lại kết quả tối ưu nhất chỉ sau một thời gian ngắn sử dụng. Đặc biệt, sản phẩm còn thích hợp với cả tóc nhuộm nhờ công thức cực kỳ dịu nhẹ, không chứa Parabens và chất tạo màu.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau goi tresemme gung tra xanh detox toc chac khoe 6\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-goi-tresemme-gung-tra-xanh-detox-toc-chac-khoe-6.jpg\" style=\"border:0px; box-sizing:border-box; height:601px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Loại tóc phù hợp:</strong><br />\r\n- Sản phẩm phù hợp cho mọi loại tóc.<br />\r\n- Đặc biệt phù hợp với tóc hư tổn do đối mặt với khói bụi ô nhiễm, mồ hôi và sản phẩm tạo kiểu mỗi ngày.<br />\r\n- Có thể sử dụng cho tóc nhuộm.<br />\r\n<br />\r\nHiện tại TRESemmé Salon Detox đã có mặt tại COCO SHOP với đủ bộ 2 sản phẩm gội – xả:<br />\r\n<br />\r\n- Dầu Gội Gừng &amp; Trà Xanh Detox Tóc Chắc Khỏe TRESemmé Salon Detox Shampoo 640g<br />\r\n<br />\r\n- Dầu Xả Gừng &amp; Trà Xanh Detox Tóc Chắc Khỏe TRESemmé Salon Detox Conditioner 620g</span><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau goi tresemme gung tra xanh detox toc chac khoe 2\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-goi-tresemme-gung-tra-xanh-detox-toc-chac-khoe-2.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÔNG DỤNG</strong><br />\r\n<br />\r\n- Thanh lọc và loại bỏ các tạp chất, bụi bẩn, bã nhờn, mồ hôi… tích tụ trên tóc và da đầu.<br />\r\n- Khôi phục lại độ chắc khỏe cho mái tóc yếu và hư tổn.<br />\r\n- Giúp tóc trở nên mềm mại, bóng mượt và tràn đầy sức sống.<br />\r\n- Hương thơm thư giãn từ Gừng &amp; Trà Xanh.<br />\r\n- Công thức dịu nhẹ cho cả mái tóc nhuộm, không làm ảnh hưởng đến màu tóc.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau goi tresemme gung tra xanh detox toc chac khoe 1\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-goi-tresemme-gung-tra-xanh-detox-toc-chac-khoe-1.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau goi tresemme gung tra xanh detox toc chac khoe 5\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-goi-tresemme-gung-tra-xanh-detox-toc-chac-khoe-5.jpg\" style=\"border:0px; box-sizing:border-box; height:1032px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÁCH DÙNG</strong><br />\r\n<br />\r\n- Thoa đều dầu gội TRESemmé Salon Detox lên tóc ướt, xoa bóp nhẹ nhàng để tạo bọt.<br />\r\n- Vuốt nhẹ từ chân tóc đến ngọn tóc, đồng thời massage da đầu nhiều lần giúp các mạch máu lưu thông, nuôi dưỡng tóc tốt hơn; sau đó gội sạch với nước.<br />\r\n- Sau khi sử dụng dầu gội, lấy một lượng vừa đủ dầu xả TRESemmé Salon Detox.<br />\r\n- Vuốt nhẹ từ 2/3 đoạn tóc từ thân đến ngọn, đồng thời massage đều nhiều lần giúp dưỡng chất được thấm vào tóc tốt hơn.<br />\r\n- Xả sạch bằng nước lạnh để cố định lớp biểu bì và cho tóc thêm phần sáng bóng.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"dau goi tresemme gung tra xanh detox toc chac khoe 3\" src=\"https://cocoshop.vn/uploads/shops/2020_12/dau-goi-tresemme-gung-tra-xanh-detox-toc-chac-khoe-3.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Trọng lượng:</strong>&nbsp;640g<br />\r\n<strong>Xuất xứ:&nbsp;</strong>Mỹ<br />\r\n<strong>Thương hiệu:</strong>&nbsp;TRESemmé<br />\r\n<a href=\"https://cocoshop.vn/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">Mỹ phẩm chính hãng</a></span></p>', 100, 1000000, 0, 185000, 0, 'bYpkk4CK_dau-goi-tresemme-gung-tra-xanh-detox-toc-chac-khoe.jpg', 'chai', 0, '2021-01-02 14:12:46', '2021-01-02 14:12:46'),
(17, 'Kem Ủ Tresemmé Keratin Smooth Vào Nếp Mượt Mà - 180ml', 17, '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">Kem Ủ Vào Nếp Mềm Mượt TRESemmé&nbsp;Keratin Smooth&nbsp;thuộc dòng sản phẩm chăm sóc tóc chuẩn salon, sản phẩm là liệu pháp dưỡng ẩm chuyên sâu dành cho mái tóc dễ xơ rối trở nên suôn mượt, óng mượt vào nếp.</span></p>', '<p><span style=\"font-size:18px\">Ủ tóc chính là biện pháp chăm sóc tóc hiệu quả và an toàn, đảm bảo luôn giữ cho mái tóc có đủ độ ẩm đồng thời tránh khỏi tình trạng khô xơ, chẻ ngọn. Thông qua việc ủ tóc, mái tóc bạn cũng sẽ nhận được những chất dinh dưỡng cần thiết, phục hồi và trở nên bóng mượt hơn.&nbsp;Dưỡng chất trong kem ủ giúp mái tóc bình thường trở nên suôn, mượt và khỏe đẹp không ngờ. Do đó, công đoạn ủ tóc khá là quan trọng trong quy trình chăm sóc tóc của bạn.<br />\r\n<br />\r\nKem Ủ Vào Nếp Mềm Mượt TRESemmé&nbsp;Keratin Smooth&nbsp;thuộc dòng sản phẩm chăm sóc tóc chuẩn salon, sản phẩm là liệu pháp dưỡng ẩm chuyên sâu dành cho mái tóc dễ xơ rối trở nên suôn mượt, óng mượt vào nếp.&nbsp;Không còn tốn kém hay mất nhiều thời gian đến salon phục hồi mái tóc khô hư tổn, các cô gái hoàn toàn có thể tự chăm sóc tóc hiệu quả ngay tại nhà với bộ sản phẩm&nbsp;TRESemmé&nbsp;Keratin&nbsp;Smooth. Phục hồi keratin, cho mái tóc mềm mượt và không còn xơ rối lên đến 48 giờ.</span><br />\r\n&nbsp;</p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"kem u tresemme keratin smooth vao nep muot ma 180ml 1\" src=\"https://cocoshop.vn/uploads/shops/2020_12/kem-u-tresemme-keratin-smooth-vao-nep-muot-ma-180ml-1.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-size:18px\">TRESemmé là thương hiệu chăm sóc tóc được thành lập bởi Công ty Godefroy (bang Missouri, Hoa Kỳ) vào năm 1947 và được Công ty Alberto Culver mua lại vào năm 1968. Trong suốt gần 70 năm lịch sử hình thành và phát triển, TRESemmé được yêu thích và tin tưởng bởi chất lượng chăm sóc tóc “chuẩn salon”. TRESemmé còn được tin dùng bởi các nhà tạo mẫu tóc lừng danh trên thế giới. Những sản phẩm của TRESemmé luôn đồng hành trong các sàn diễn thời trang, sự kiện làm đẹp uy tín quốc tế...</span><br />\r\n&nbsp;</p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"kem u tresemme keratin smooth vao nep muot ma 180ml 3\" src=\"https://cocoshop.vn/uploads/shops/2020_12/kem-u-tresemme-keratin-smooth-vao-nep-muot-ma-180ml-3.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-size:18px\">Kem Ủ Vào Nếp Mềm Mượt TRESemmé Keratin Smooth với nồng độ sulfate thấp mà sản phẩm mang đến cho bạn hương thơm dịu nhẹ dễ chịu. Bên cạnh đó, thành phần chính là Keratin Protein sẽ bảo vệ mái tóc bạn tránh những hư tổn và kéo dài vẻ đẹp cho mái tóc. Đồng thời, Vitamin sẽ cung cấp những dưỡng chất cần thiết cho mái tóc.<br />\r\n<br />\r\nSản phẩm giúp phục hồi protein và thấm sâu nuôi dưỡng cho từng sợi tóc, cho tóc mềm mượt như được chăm sóc tại salon. Mái tóc sẽ trở nên óng mượt rạng ngời và dễ tạo kiểu.</span><br />\r\n&nbsp;</p>\r\n\r\n<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÔNG DỤNG&nbsp;</strong><br />\r\n<br />\r\n- Phục hồi Protein nuôi dưỡng tóc mềm mượt, khỏe mạnh.<br />\r\n<br />\r\n- Mái tóc bồng bềnh, suôn mượt, dễ dàng tạo nhiều kiểu tóc.<br />\r\n<br />\r\n- Bảo vệ mái tóc khỏi tác hại như: hóa chất, nhuộm, nhiệt độ.<br />\r\n<br />\r\n- Hương thơm dịu nhẹ, dễ chịu đem đến cảm giác thư giãn.<br />\r\n<br />\r\n- Thành phần an toàn, lành tính không gây kích ứng da dầu.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"kem u tresemme keratin smooth vao nep muot ma 180ml 3\" src=\"https://cocoshop.vn/uploads/shops/2020_12/kem-u-tresemme-keratin-smooth-vao-nep-muot-ma-180ml-3.jpg\" style=\"border:0px; box-sizing:border-box; height:500px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÁCH DÙNG&nbsp;</strong><br />\r\n-&nbsp;&nbsp;Thoa đều dầu ủ TRESemmé Keratin Smooth lên tóc ướt, xoa bóp nhẹ nhàng .<br />\r\n- Vuốt nhẹ từ chân tóc đến ngọn tóc, đồng thời massage da đầu nhiều lần giúp các mạch máu lưu thông, nuôi dưỡng tóc tốt hơn; sau đó gội sạch với nước.<br />\r\n- Luôn dùng dầu xả TRESemmé Keratin Smooth sau mỗi lần gội, tập trung vào phần thân và ngọn tóc, tránh tiếp xúc với da đầu.<br />\r\n- Xả sạch bằng nước lạnh để cố định lớp biểu bì và cho tóc thêm phần sáng bóng.<br />\r\n- Sử dụng kem ủ tóc TRESemmé Keratin Smooth ít nhất 1 - 2 lần một tuần sau khi gội và xả để đạt hiệu quả tốt nhất.</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"TRESemme Keratin Smooth Masque1\" src=\"https://cocoshop.vn/uploads/shops/2020_12/tresemme-keratin-smooth-masque1.jpg\" style=\"border:0px; box-sizing:border-box; height:414px; vertical-align:middle; width:558px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Trọng lượng&nbsp;</strong>: 180ml<br />\r\n<strong>Thương hiệu</strong>&nbsp;:&nbsp;TRESemmé<br />\r\n<strong>Xuất xứ</strong>&nbsp;: Mỹ</span></p>', 100, 1000000, 0, 118000, 0, 'uEHojMLG_kem-u-tresemme-keratin-smooth-vao-nep-muot-ma-180ml-1.jpg', 'hủ', 0, '2021-01-02 14:13:32', '2021-01-02 14:13:32'),
(18, 'Bộ cọ 4 cây Etude House (Bộ)', 18, '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">-&nbsp;</span><a href=\"https://cocoshop.vn/group/etude-house/\" style=\"box-sizing: border-box; color: rgb(0, 0, 0); text-decoration-line: none; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-align: justify;\">Etude house</a><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">&nbsp;là một thương hiệu mỹ phẩm đến từ Hàn Quốc được biết đến với những sản phẩm có thiết kế cực kì dễ thương và bắt mắt, lại có giá thành hợp lí nên luôn là một trong những hãng mỹ phẩm được ưa chuộng hiện nay.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">-Hãng vừa mới cho ra mắt bộ cọ&nbsp;Etude House Twinkle Mini Brush Set 4 cây với thiết kế cực kì bắt mắt. Tone màu chủ đạo là màu hồng cực kì xinh xắn, điểm nhấn nằm ngay thân cọ khi được làm trong suốt với những hạt kim tuyến có thể chạy lên xuống khi bạn lắc cây cọ.</span></p>', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">-&nbsp;<a href=\"https://cocoshop.vn/group/etude-house/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none; outline: 0px;\">Etude house</a>&nbsp;là một thương hiệu mỹ phẩm đến từ Hàn Quốc được biết đến với những sản phẩm có thiết kế cực kì dễ thương và bắt mắt, lại có giá thành hợp lí nên luôn là một trong những hãng mỹ phẩm được ưa chuộng hiện nay.<br />\r\n-Hãng vừa mới cho ra mắt bộ cọ&nbsp;Etude House Twinkle Mini Brush Set 4 cây với thiết kế cực kì bắt mắt. Tone màu chủ đạo là màu hồng cực kì xinh xắn, điểm nhấn nằm ngay thân cọ khi được làm trong suốt với những hạt kim tuyến có thể chạy lên xuống khi bạn lắc cây cọ.<br />\r\n&nbsp;</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"127592805 1848793881926486 7841597253019773982 o\" src=\"https://cocoshop.vn/uploads/shops/2020_12/127592805_1848793881926486_7841597253019773982_o.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>&nbsp;&nbsp;<a href=\"https://cocoshop.vn/co-trang-diem/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">&nbsp;Bộ cọ</a>&nbsp;gồm 4 cây cọ cơ bản :</strong><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Powder Cheek Brush : Cọ phấn má hay có thể dùng tán kem nền, phấn phủ.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Contour Brush : Cọ tạo khối.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Eyeshadow Blending Brush : Cọ tán phấn mắt.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Angled Eyebrow Brush : Cọ tán chân mày.<br />\r\n&nbsp;</span><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"a nh chu p ma n hi nh 2020 08 19 lu c 9 05 24 sa\" src=\"https://cocoshop.vn/uploads/shops/2020_12/a-nh-chu-p-ma-n-hi-nh-2020-08-19-lu-c-9-05-24-sa.png\" style=\"border:0px; box-sizing:border-box; height:511px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÔNG DỤNG</strong><br />\r\n<br />\r\n-Sử dụng các dụng cụ trang điểm để có một lớp trang điểm hoàn hảo hơn hết.<br />\r\n-Đầu cọ được làm với những sợi lông mềm cực kì nhẹ nhàng cho da mà không gây đau rát.<br />\r\n-Lông cọ được búi chắc chắc không sợ bị rụng lông hay lông cọ bị xơ cứng.<br />\r\n&nbsp;</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>THÀNH PHẦN&nbsp;</strong><br />\r\n<br />\r\n- Thân cọ: PVC,&nbsp;Water, Silicone oil, Glitter confetti (Polyethyłene)</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Lông cọ: Synthetic fiber, Aluminum Ferrule, Plastic (SAN) handle</span></p>\r\n\r\n<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"127243740 1850600591745815 4771862328447528327 o\" src=\"https://cocoshop.vn/uploads/shops/2020_12/127243740_1850600591745815_4771862328447528327_o.jpg\" style=\"border:0px; box-sizing:border-box; height:900px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"30ea69cd609fd83e7db4011fb7b71d8e 1\" src=\"https://cocoshop.vn/uploads/shops/2020_12/30ea69cd609fd83e7db4011fb7b71d8e-1.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÁCH DÙNG</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px\">&nbsp;-Lấy một lượng kem nền vừa đủ chấm lên da và dùng cọ Foundation Brush tán ra theo chiều ngang.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">&nbsp;-Dùng Powder &amp; Highlighter Brush để tán phẩn phủ/nền và phấn bắt sáng.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">- Dùng Eyeshadow &amp; Blending Brush để tán phấn mắt lên bầu mắt hoặc viền mí dưới.</span></p>\r\n\r\n<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"98e4407b03b094bbc048171d64dd2465\" src=\"https://cocoshop.vn/uploads/shops/2020_12/98e4407b03b094bbc048171d64dd2465.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Xuất xứ&nbsp; :</strong>&nbsp;Hàn Quốc<br />\r\n<strong>Thương hiệu :&nbsp;</strong>Etude House</span></p>', 100, 1000000, 0, 215000, 0, '4blpqjRi_98e4407b03b094bbc048171d64dd2465.jpg', 'cái', 1, '2021-01-02 14:21:21', '2021-01-02 14:21:21'),
(19, 'Cọ môi The Face Shop', 18, '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Cọ có đầu mềm mại, êm ái, không bị tưa</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Thiết kế đơn giản, nhỏ gọn với thành phần lành tính</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Cọ nhỏ gọn cầm gọn trong tay</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Thiết kế kiểu dáng độc đáo</span></p>', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Có thể thấy chị em ít ai có thói quen sử dụng&nbsp;<a href=\"https://cocoshop.vn/co-trang-diem/co-moi-autumn-cay.html\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">cọ môi</a>&nbsp;để đánh son bởi bạn cho rằng không cần thiết điều đó là sai lầm bởi lẽ nhiều chị em vẫn chưa biết được công dụng tuyệt vời của cọ môi. Hôm nay boshop sẽ bật mí cho bạn một loại cọ môi đến từ thương hiệu mỹ phẩm chính hãng đình đám tại Hàn Quốc đó là sản phẩm cọ môi&nbsp;<a href=\"https://cocoshop.vn/group/the-face-shop/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">The Face Shop</a>&nbsp;One Touch Lip Brush của thương hiệu The Face Shop. Bây giờ thì cùng Boshop tìm hiểu thêm về phụ kiện làm đẹp này cũng như công dụng tuyệt vời của nó mà các bạn vẫn chưa biết nhé.&nbsp;</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"co moi the face shop 1\" src=\"https://cocoshop.vn/uploads/shops/2020_11/co-moi-the-face-shop-1.jpg\" style=\"border:0px; box-sizing:border-box; height:900px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Cọ môi The Face Shop One Touch Lip Brus</strong>&nbsp;- Giúp tán son đều màu, dễ dàng và tạo được nhiều kiểu son ưng ý<br />\r\n<br />\r\nHầu hết chúng ta đã thoa son môi trực tiếp từ cây son. Tuy nhiên, đôi khi son sẽ không được mịn hoặc khó điều chỉnh độ đậm nhạt. Và một cây cọ thoa son sẽ giúp bạn dễ dàng kiểm soát việc ấy.One Touch Lip Brushgiúp thoa son môi đều và chính xác hơn .<br />\r\n<br />\r\nNhững chiếc cọ trang điểm là người bạn đồng hành giúp các bạn gái hoàn hảo hơn. Lông cọ mềm mại và có độ bền cao, tiếp xúc với da dễ dàng và giúp son dễ bám vào môi.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"co moi the face shop\" src=\"https://cocoshop.vn/uploads/shops/2020_11/co-moi-the-face-shop.jpg\" style=\"border:0px; box-sizing:border-box; height:400px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Loại cọ One Touch Lip Brushnày có đầu nhỏ, phẳng và tròn. Đây là khuôn mẫu cọ tốt nhất để làm đẹp đôi môi với bất kì màu son nào. Đầu cọ nhỏ giúp bạn dễ vẽ đường viền, tạo cho đôi môi mọng hơn với những nét cong gợi cảm. Bạn sẽ dùng cọ bắt đầu từ trung tâm môi sau đó tán ra phía các bên.<br />\r\n<br />\r\nDAILY BEAUTY TOOLS ONE TOUCH LIP BRUSHlà sản phẩm cọ son môi được thiết kế với những sợi lông thật mềm và mịn giúp thoa son đều và mỏng<br />\r\n<br />\r\nOne Touch Lip Brush là cọ môi với thiết kế dạng bút bấm, sang trọng và gọn gàng, rất thuận tiện cho các bạn mang theo. Đầu lông mềm mại và mịn giúp thoa son đều và mỏng, bạn có thể dễ dàng tô son theo ý thích.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"co moi the face shop 3\" src=\"https://cocoshop.vn/uploads/shops/2020_11/co-moi-the-face-shop-3.jpg\" style=\"border:0px; box-sizing:border-box; height:399px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÁCH DÙNG</strong><br />\r\n<br />\r\n- Lấy một lượng son lên đầu cọ<br />\r\n- Nhẹ nhàng tô lên môi, tô viền môi trước và tô dần vào trong lòng môi<br />\r\n- Tùy chỉnh độ đậm nhạt theo ý</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"co moi the face shop 2\" src=\"https://cocoshop.vn/uploads/shops/2020_11/co-moi-the-face-shop-2.jpg\" style=\"border:0px; box-sizing:border-box; height:438px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Xuất xứ:</strong>&nbsp;Hàn Quốc<br />\r\n<strong>Thương hiệu:&nbsp;</strong>The Face Shop<br />\r\n<a href=\"https://cocoshop.vn/news/lam-dep/cac-hang-my-pham-noi-tieng-han-quoc-225.html\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">Mỹ phẩm Hàn Quốc</a></span></p>', 100, 1000000, 0, 65000, 50000, 'AbRkwLgQ_co-moi-the-face-shop-4.jpg', 'cái', 0, '2021-01-02 14:22:17', '2021-01-02 14:22:17'),
(20, 'Cọ trang điểm Lime 202 Cọ trang điểm mắt tạo điểm nhấn', 18, '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Đầu cọ mảnh dẻ giúp dễ dàng tạo điểm nhấn cho đôi mắt bằng đường phấn mỏng mịn, lên màu đều, không bị bết dính</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">-&nbsp;Chất liệu: Sợi nhân tạo / Đầu bọc nhôm / Tay cầm gỗ</span></p>', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 96, 1000000, 4, 215000, 110000, '6QFkDdm8_co-trang-diem-mat-tao-diem-nhan-lime.jpg', 'cái', 0, '2021-01-02 14:25:39', '2022-08-25 09:25:56'),
(21, 'Xịt thơm body Victoria\'s secret - Spring poppies 250ml', 19, '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">Mỗi sản phẩm làm đẹp của Victoria’s Secret là một bản hòa tấu ngọt ngào của hương thơm và tính cách làm siêu lòng hầu hết phụ nữ trên toàn thế giới. Xịt thơm toàn thân body fragrance mist Victoria’s Secret với hương thơm đa dạng, mang đến vẻ ngọt ngào, sexy lôi cuốn cho phái đẹp.</span></p>', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">-<a href=\"https://cocoshop.vn/group/victorias-secret/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none; outline: 0px;\">Victoria\'s Secret&nbsp;</a>Xịt Thơm Body #Spring Poppies 250ml<br />\r\n-Xịt Thơm Body Victoria’s Secret có xuất xứ USA với dung tích 250ml là một thể khác của nước hoa khi lượng tinh dầu ít hơn nhiều so với các loại nước hoa danh tiếng. Nhưng vẫn đảm bảo rằng bạn vẫn có thể thơm ngào ngạt, ngất ngây, lôi cuốn trong khoảng 5 – 6 tiếng đồng hồ<br />\r\n<br />\r\n-Victoria’s Secret là thương hiệu nổi tiếng hàng đầu của Mỹ không chỉ trong lĩnh vực thời trang và còn cả trong ngành mỹ phẩm và sản phẩm chăm sóc sắc đẹp. Mỗi sản phẩm làm đẹp của Victoria’s Secret là một bản hòa tấu ngọt ngào của hương thơm và tính cách làm siêu lòng hầu hết phụ nữ trên toàn thế giới. Xịt thơm toàn thân body fragrance mist Victoria’s Secret với hương thơm đa dạng, mang đến vẻ ngọt ngào, sexy lôi cuốn cho phái đẹp.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">-Xịt thơm toàn thân (body mist) là một dạng nước hoa có hương thơm nhẹ, dạng lỏng, có kết cấu loãng và tỷ lệ tinh dầu thấp. Do đó, body mist có thời gian giữ mùi ngắn hơn các loại nước hoa thông thường như eau de parfum hay eau de toilet.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">-Body mist được sử dụng cho toàn thân với khả năng lưu mùi trên cơ thể từ 3-5 giờ. Vì ở dạng loãng nên bạn có thể mang theo và xịt lại bất cứ lúc nào nếu thích mà không phải lo ngại mùi hương quá nồng. Body mist được phụ nữ Việt Nam ưa chuộng vì nó phù hợp với khí hậu nhiệt đới với hương thơm thoang thoảng, thanh mát và thư giãn.</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"Xịt thơm body Victoria\'s secret Spring poppies 250ml 4\" src=\"https://cocoshop.vn/uploads/shops/2020_12/xit-thom-body-victorias-secret-spring-poppies-250ml-4.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÔNG&nbsp; DỤNG&nbsp;</strong><br />\r\n<br />\r\n-Nắp hình tròn cá tính, được bổ sung nhiều tinh dầu, giúp tăng thời gian lưu hương, đồng thời hỗ trợ dưỡng ẩm dịu nhẹ nuôi dưỡng da mềm mại.<br />\r\n- Phong cách sexy, quyến rũ từ xịt thơm toàn thân Victoria\'s Secret Fragrance Mist sẽ mang lại sự tự tin cho các nàng suốt cả ngày dài.<br />\r\n- Tinh chất dưỡng da giúp bạn có một làn da thật mềm mại và hương thơm quyến rũ.<br />\r\n- Có chứa tinh chất nha đam hỗ trợ dưỡng ẩm dịu nhẹ cho da mềm mại.<br />\r\n- Hương thơm dịu nhẹ tự nhiên không nồng gắt, phù hợp sử dụng hằng ngày.<br />\r\n- Dạng xịt phun sương có độ lan tỏa khá rộng khắp cơ thể.<br />\r\n- Đa dạng hương thơm cho các nàng lựa chọn phù hợp với sở thích cá nhân.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"Xịt thơm body Victoria\'s secret Spring poppies 250ml 2\" src=\"https://cocoshop.vn/uploads/shops/2020_12/xit-thom-body-victorias-secret-spring-poppies-250ml-2.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÁCH DÙNG</strong><br />\r\n<br />\r\nLắc đều chai và hướng vòi xịt vào những nơi cần xịt, khoảng cách từ 15-20cm. Để hương thơm duy trì lâu hơn, bạn nên xịt ở những vùng cơ thể tập trung nhiều mạch máu, da ẩm và nhạy cảm như cổ tay, sau gáy, giữa ngực để hương thơm có thể khuếch tán đồng đều. Hạn chế xịt trực tiếp lên quần áo và đồ trang sức.<br />\r\nNgoài ra, để xịt toàn thân giữ mùi hương lâu bền hơn và cho làn da hoàn hảo, bạn nên dùng kèm với các sản phẩm cùng dòng như dưỡng ẩm toàn thân, sữa tắm, tẩy tế bào chết toàn thân</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"Xịt thơm body Victoria\'s secret Spring poppies 250ml 3\" src=\"https://cocoshop.vn/uploads/shops/2020_12/xit-thom-body-victorias-secret-spring-poppies-250ml-3.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"Xịt thơm body Victoria\'s secret Spring poppies 250ml 5\" src=\"https://cocoshop.vn/uploads/shops/2020_12/xit-thom-body-victorias-secret-spring-poppies-250ml-5.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Trọng lượng :&nbsp;</strong>250ml<br />\r\n<strong>Thương hiệu :&nbsp;</strong>Victoria\'s secret<br />\r\n<strong>Xuất xứ :&nbsp;</strong>Mỹ<strong>&nbsp;</strong></span></p>', 100, 1000000, 0, 270000, 0, 'QLNObUl5_xit-thom-body-victorias-secret-spring-poppies-250ml-4.jpg', 'lọ', 0, '2021-01-02 14:27:10', '2021-01-02 14:27:10'),
(22, 'Nước Hoa Marc Jacobs Daisy Love EDT 100ml', 19, '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">Nước hoa nữ Marc Jacobs Daisy Love EDT với hương thơm nhẹ nhàng và ngọt ngào cho bạn thêm phần quyến rũ .</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">Nước hoa nữ Marc Jacobs Daisy Love EDT phong cách: quyến rũ, ngọt ngào, lôi cuốn</span></p>', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><a href=\"https://cocoshop.vn/nuoc-hoa-body/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none; outline: 0px;\">Nước hoa</a>&nbsp;nữ Marc Jacobs Daisy Love EDT là một sản phẩm đến từ thương hiệu Marc Jacobs của Mỹ. Marc Jacobs vốn nổi tiếng với các sản phẩm cao cấp không dừng lại chỉ ở nước hoa, hơn nữa thương hiệu này cũng là một trong những nhãn hàng có lượng fan rất đông đảo. Một số sản phẩm nước hoa của Marc Jacobs mà&nbsp;<a href=\"https://cocoshop.vn/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">COCO SHOP</a>&nbsp;gợi ý thêm cho bạn như&nbsp;<a href=\"https://cocoshop.vn/group/marc-jacobs/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">Marc Jacobs</a>&nbsp;Daisy Dream EDT, Marc Jacobs Daisy Eau So Fresh EDT, Marc Jacobs Decadence EDP,…</span><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"download (3)\" src=\"https://cocoshop.vn/uploads/shops/2020_12/download-3.jpg\" style=\"border:0px; box-sizing:border-box; height:800px; vertical-align:middle; width:652px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"db5cf42f4980afe600f685a914999774\" src=\"https://cocoshop.vn/uploads/shops/2020_12/db5cf42f4980afe600f685a914999774.jpg\" style=\"border:0px; box-sizing:border-box; height:450px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÔNG DỤNG</strong><br />\r\n<br />\r\nNước hoa nữ Marc Jacobs Daisy Love EDT là một mùi nước hoa sở hữu nhóm hương hoa cỏ gỗ xạ hương – Floral Woody Musk. Với cái tên Daisy Love chính là chỉ đến những đóa hoa cúc mùa thu và cũng là âm hưởng giai điệu của những bản tình ca ngọt ngào. Hương thơm của nước hoa này bắt đầu từ hương thơm của thiên nhiên như quả bưởi huyết, dâu dại và lá hoa tím cho một mùi thơm thanh mát mang hương vị rất riêng.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"download (3)\" src=\"https://cocoshop.vn/uploads/shops/2020_12/download-3.jpg\" style=\"border:0px; box-sizing:border-box; height:800px; vertical-align:middle; width:652px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Nước hoa nữ Marc Jacobs Daisy Love EDT 4ml thích hợp sử dụng trong mùa xuân hoặc tiết đầu mùa hạ, lọ nước hoa nhỏ xinh, sang trọng, không cần cầm lên bạn vẫn có thể nhìn rõ màu sắc của nước hoa bên trong.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"751D3395 C9EE 470A AF53 6462BC2ED45F 1 big\" src=\"https://cocoshop.vn/uploads/shops/2020_12/751d3395-c9ee-470a-af53-6462bc2ed45f_1_big.png\" style=\"border:0px; box-sizing:border-box; height:413px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">-Tiếp đến là mùi hương giữa từ hoa sơn chi, hoa tím và hoa nhài của sản phẩm sau khi hương đầu nhạt dần. Sự chuyển đổi mùi hương linh hoạt trong cùng một sản phẩm nước hoa cho thấy người pha chế đã tốn khá nhiều công sức cho công đoạn này. Kết thúc của bất kỳ hương nước hoa nào cũng là một mùi hương gây thương nhớ từ gỗ trắng, hương Vani, xạ hương. Hương cuối này cũng là mùi hương khép lại toàn bộ những hương thơm đằng trước kèm theo độ lưu hương tốt hơn, bám lâu trên cơ thể hơn.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"marc jacobs daisy love eau de toilette 100ml\" src=\"https://cocoshop.vn/uploads/shops/2020_12/marc-jacobs-daisy-love-eau-de-toilette-100ml.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">-Nước hoa Marc Jacobs Daisy Love là sự kết hợp của các loại tinh dầu thiên nhiên mang đến cho bạn sự trải nghiệm mùi hương tinh tế đến từ thiên nhiên bốn mùa mang lại, kết hợp cùng với hương vanilla giúp giữ mùi lâu hơn.&nbsp;<br />\r\n-Nồng độ Eau de toilette (EDT) của nước hoa này cho khả năng tỏa hương và lưu hương cũng như độ bám mùi trên cơ thể ở mức ổn. Thích hợp sử dụng trong mùa xuân hoặc tiết đầu mùa hạ cho cảm giác mát mẻ xua tan đi cái nóng của mùa hạ và chút ẩm ướt của mùa xuân.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"nuoc hoa mini marc jacobs daisy love edt 4ml boshop 3\" src=\"https://cocoshop.vn/uploads/shops/2020_12/nuoc-hoa-mini-marc-jacobs-daisy-love-edt-4ml-boshop-3.jpg\" style=\"border:0px; box-sizing:border-box; height:408px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Nước hoa nữ Marc Jacobs Daisy Love EDT phong cách: quyến rũ, ngọt ngào, lôi cuốn</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"3614225476570 5 1200x1200\" src=\"https://cocoshop.vn/uploads/shops/2020_12/3614225476570-5-1200x1200.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>THÀNH PHẦN&nbsp;</strong><br />\r\n<br />\r\nAlcohol Denat., Fragrance, Water, Ethylhexyl Methoxycinnamate, Benzyl Salicylate, Benzophenone-3, Ethylhexyl Salicylate, Butyl Methoxydibenzoylmethane, Hydroxycitronellal, Linalool, Hexyl Cinnamal, Limonene, Bht, Citronellol, Farnesol, Cinnamyl Alcohol, Propylene Glycol, Coumarin, Citral, Geraniol, Benzyl Benzoate, Acrylates/Octylacrylamide Copolymer, Hydrolyzed Jojoba Esters, Fd&amp;C Red No. 4 (Ci 14700), Fd&amp;C Yellow No. 5 (Ci 19140), Ext. D&amp;C Violet No. 2 (Ci 60730).</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"daisy love 30ml\" src=\"https://cocoshop.vn/uploads/shops/2020_12/daisy_love_30ml.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÁCH DÙNG&nbsp;</strong><br />\r\n-Hướng vòi xịt vào vị trí cần xịt, cách cơ thể khoảng 15-20cm.<br />\r\n-Xịt ở những vùng cơ thể tập trung nhiều mạch máu, da ẩm và nhạy cảm như cổ tay, sau gáy, giữa ngực, để - thơm có thể khuếch tán đồng thời cũng giữ được mùi lâu hơn.<br />\r\n-Hạn chế xịt trực tiếp lên quần áo và đồ trang sức.<br />\r\n-Chỉ xịt vào vùng da ở điểm mạch như cổ, cổ tay trong, …<br />\r\n-Nên xịt nước hoa sau khi tắm và đã lau khô người.<br />\r\n-Không chà nước hoa trên da sau khi xịt xong.<br />\r\n-Không xịt nước hoa vào không khí phía trước mặt rồi bước vào vì rất lãng phí.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"925430b7 b722 4006 bd0b 40533a25ce95\" src=\"https://cocoshop.vn/uploads/shops/2020_12/925430b7-b722-4006-bd0b-40533a25ce95.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Trọng lượng&nbsp;</strong>: 100ml<br />\r\n<strong>Thương hiệu</strong>&nbsp;:&nbsp;Marc Jacobs<br />\r\n<strong>Xuất xứ</strong>&nbsp;: Mỹ&nbsp;</span></p>', 100, 1000000, 0, 2860000, 2540000, 'oNuADw2t_o.53284.jpg', 'chai', 1, '2021-01-02 14:28:25', '2021-01-02 14:28:25'),
(23, 'Nước Hoa Gucci Bloom Acqua di Fiori 50ml', 19, '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Hương đầu: lá nhựa galbanum, lá cây lý chua</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Hương giữa: hoa nhài, hoa huệ, hoa kim ngân.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Hương cuối: Xạ hương, gỗ đàn hương.</span></p>', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Thiết kế của&nbsp;<em><strong>Gucci bloom acqua di fiori 50ml</strong></em>&nbsp;mẫu mới 2018 vẫn giử nguyên phong cách Vintage tối giản sự tin tế sắc sảo như phiên bản Gucci Bloom cũ. Thân chai vuông gốc và màu hồng cổ điển , chất liệu là sứ cao cấp góp phần tăng thêm vẻ đẹp tinh tế thanh lịch vủa sản phẩm. Các họa tiết chồi non thanh mảnh màu xanh lá ở vỏ hộp và logo Hericanium Gucci xanh \"man mát\" thể hiện phong các mát mẻ của sản phẩm. gucci bloom acqua di fiori thiết kế hoàn hảo thích hợp cho các cô gái yêu sự lãng mạng và nét cổ điển.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"gucci bloom 1\" src=\"https://cocoshop.vn/uploads/shops/2020_11/gucci-bloom-1.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Gucci đã cho ra mắt loại&nbsp;<a href=\"https://cocoshop.vn/nuoc-hoa-perfume/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none;\">nước hoa</a>&nbsp;mới ‘Bloom Acqua di Fiori‘ dành cho phụ nữ vào năm 2018. Bloom Acqua di Fiori được định vị như một loại nước hoa thể hiện được mức năng lượng và sức sống của tuổi trẻ và trong tình bạn. Nó mang hương thơm tươi trẻ và xanh mát, nhấn mạnh nét đẹp ngây thơ trong trắng.<br />\r\n<br />\r\nHương thơm nở rộ như một khu vườn ngát hương hoa. Note hương đầu là sự kết hợp của nhựa galbanum cùng lá hoa lý chua tạo một ấn tượng ban đầu thật độc đáo, lạ lẫm. Hoa nhài, hoa huệ Tuberose, hoa kim ngân là bộ ba ngọt ngào làm nên sức sống cho hương trung tâm. Hương cuối là sự trầm ấm quen thuộc, nhưng trưởng thành của xạ hương và gỗ đàn hương. Các note huong xoáy với nhau tạo ra một cảm xúc mãnh liệt cho tinh thần.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"gucci bloom 2\" src=\"https://cocoshop.vn/uploads/shops/2020_11/gucci-bloom-2.jpg\" style=\"border:0px; box-sizing:border-box; height:802px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Mùa xuân là thời điểm thích hợp để sử dụng hương thơm khi bạn đang ở một khoảng thời gian khoan khoái, tươi trẻ nhất.<br />\r\nAlessandro Michele, giám đốc sáng tạo cho Gucci muốn đem đến cho phái đẹp một hương thơm hoa thật tinh tế và tràn đầy ngọt ngào. Ông tin rằng phụ nữ đẹp và đầy màu sắc như hoa!<br />\r\n<br />\r\nMùi hương của nước hoa gucci bloom mang một nét đẹp thuần khiết. Bạn có thể sử dụng chúng vào ban ngày mà không cần phải lo lắng về vấn đề nồng gắt đâu nhé! Đặc biệt là, tone mùi hoa cỏ tươi mát rất thích hợp để dụng truong mùa hè và mùa xuân.<br />\r\nĐộ bám tỏa mùi hương rất tốt . Đặc biệt khi xuống tone thì mùi cực kì sang, độ lưu hương của nước hoa trên cở thể khoảng 6 - 12h tùy vào cơ địa của mỗi người.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"gucci bloom 3\" src=\"https://cocoshop.vn/uploads/shops/2020_11/gucci-bloom-3.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Mùi hương đặc trưng:</strong><br />\r\n- Hương đầu: lá nhựa galbanum, lá cây lý chua<br />\r\n- Hương giữa: hoa nhài, hoa huệ, hoa kim ngân.<br />\r\n- Hương cuối: Xạ hương, gỗ đàn hương.<br />\r\n<br />\r\nThương Hiệu:&nbsp;Gucci<br />\r\nXuất Xứ: Ý<br />\r\nTrọng Lượng: 50ml</span></p>', 100, 1000000, 0, 2450000, 2250000, 'm9saxk1D_gucci-bloom-1.jpg', 'chai', 1, '2021-01-02 14:29:15', '2021-01-02 14:29:15');
INSERT INTO `products` (`id`, `name`, `id_type`, `summary`, `description`, `amount`, `price_cost`, `qty_sold`, `unit_price`, `promotion_price`, `image`, `unit`, `new`, `created_at`, `updated_at`) VALUES
(24, 'Nước hoa Burberry Her Blossom 100ml', 19, '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Hương đầu: Cam quýt, Hạt tiêu hồng</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Hương giữa: Hoa mận, Hoa mẫu đơn</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Hương cuối: Xạ hương, Gỗ đàn hương</span></p>', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong><a href=\"https://cocoshop.vn/nuoc-hoa-body/nuoc-hoa-burberry-her-blossom-100ml.html\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(2, 123, 199); text-decoration-line: none; outline: 0px;\"><em>Nước hoa Burberry Her Blossom</em></a></strong>&nbsp;được ra mắt vào mùa xuân năm 2019, là dòng sản phẩm mới nhất của thươnG hiệu nước hoa Burberry.<br />\r\nBurberry Her Blossom được đánh giá là hương thơm rất sáng sủa và tràn đầy sức sống, Her Blossom là một bức thư tình đến London nở rộ. Đi bộ qua những công viên ngập tràn ánh nắng và những con đường phủ đầy hoa, đó là hiện thân của thái độ của người London trong những ngày đầu tiên của mùa xuân, tinh thần cao.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"nuoc hoa burberry her 1\" src=\"https://cocoshop.vn/uploads/shops/2020_11/nuoc-hoa-burberry-her-1.png\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Burberry Her Blossom nguyên bản được gói trong những nốt hương hoa mận rực rỡ, quýt lấp lánh, gỗ đàn hương, và xạ hương thoải mái truyền đạt sự ấm áp và sâu sắc. Phù hợp sử dụng vào ban ngày, mùa xuân, hạ. Mẫu chai Burberry Her Blossom cũng được thiết kế khá sang trọng với màu sắc dịu dàng, rất nữ tính gần giống như phiên bản Burberry Her trước.<br />\r\n<br />\r\nĐược ra mắt vào đầu xuân năm 2019, nàng thơ Burberry Her Blossom không cần phải quảng bá quá nhiều để được biết đến bởi sự tươi mát, thanh tao đặc biệt của mình.<br />\r\nGói gọn sự thanh ngọt đặc trưng của Cam quýt cùng ít vị cay nồng từ Tiêu hồng trong các nốt hương đầu, Burberry Her Blossom nhanh chóng cho ta thấy được sự năng động đầy cá tính của mình.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"nuoc hoa burberry her 3\" src=\"https://cocoshop.vn/uploads/shops/2020_11/nuoc-hoa-burberry-her-3.png\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Cùng các tầng hương mang đầy hoa cỏ từ Hoa mận và Mẫu đơn, ta dường như có thể tưởng tượng được một vườn hoa mùa xuân bạt ngàn đủ màu được đem vào vỏn vẹn trọng Burberry Her Blossom.<br />\r\nSau cùng, nàng có thể cảm nhận được sự ấm áp đến dễ chịu chạy dọc cơ thể với Bạch đàn hương, điểm xuyết thêm đường nét quyến rũ tự nhiên của Xạ hương.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"nuoc hoa burberry her 2\" src=\"https://cocoshop.vn/uploads/shops/2020_11/nuoc-hoa-burberry-her-2.png\" style=\"border:0px; box-sizing:border-box; height:301px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">- Hương đầu: Cam quýt, Hạt tiêu hồng<br />\r\n- Hương giữa: Hoa mận, Hoa mẫu đơn<br />\r\n- Hương cuối: Xạ hương, Gỗ đàn hương<br />\r\n<br />\r\n<strong>Thương hiệu:</strong>&nbsp;Burberry<br />\r\n<strong>Xuất xứ:&nbsp;</strong>Anh</span></p>', 100, 1000000, 0, 2380000, 0, 'Z21HE4W2_nuoc-hoa-burberry-her-1.png', 'chai', 0, '2021-01-02 14:30:02', '2021-01-02 14:30:02'),
(25, 'Nước Uống Collagen Innerb Làm Đẹp Da', 20, '<h3><span style=\"font-size:16px\"><strong>Nước Uống Collagen Innerb Làm Đẹp Da</strong></span></h3>\r\n\r\n<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:16px\">- Bổ sung thêm hàm lượng Collagen, Elastin và vitamin C cần thiết, hỗ trợ cho sức khỏe và làn da.<br />\r\n- Bổ sung độ ẩm và cấp nước giúp mang lại làn da ẩm mượt, tươi mới.<br />\r\n- Thành phần Vitamin C giúp chống oxy hóa, dưỡng sáng và làm đều màu da.<br />\r\n- Làm mờ nếp nhăn, đốm nâu và tàn nhang, thúc đẩy sự đàn hồi và săn chắc cho da.</span></p>', '<p><span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Nước Uống Collagen Làm Đẹp Da InnerB GlowShot Collagen 3000 là dòng sản phẩm thức uống hỗ trợ sức khỏe &amp; làm đẹp của thương hiệu InnerB từ Hàn Quốc, chứa thành phần Collagen Peptide đậm đặc 3000mg, Elastin và Vitamin C giúp bổ sung dưỡng chất hỗ trợ cho làn da khỏe mạnh, đồng thời dưỡng da ẩm mượt, thúc đẩy quá trình tái tạo da, ngăn ngừa xuất hiện các dấu hiệu lão hóa, mang lại làn da mịn màng tươi sáng.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"nuoc uong collagen innerb lam dep da 3\" src=\"https://cocoshop.vn/uploads/shops/2020_11/nuoc-uong-collagen-innerb-lam-dep-da-3.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Collagen và Elastin là những thành phần quan trọng trong cấu trúc làn da, đóng vai trò như một \"bộ khung\" chống đỡ bên dưới da, giúp duy trì sự căng mịn và đàn hồi cho da. Thế nhưng, hàm lượng Collagen &amp; Elastin lại rất dễ suy giảm theo thời gian, đặc biệt là khi bước qua độ tuổi 30 sẽ sụt giảm đáng kể. Nước Uống Collagen Làm Đẹp Da InnerB GlowShot Collagen 3000 giúp bổ sung Elastin và Collagen dưới dạng phân tử peptide siêu nhỏ, dễ dàng hấp thu vào cơ thể, mang lại hiệu quả làm đẹp da cao: cải thiện cấu trúc da, tăng cường độ đàn hồi và săn chắc cho làn da, làm mờ nếp nhăn, sạm nám và các dấu hiệu lão hóa khác.&nbsp;<br />\r\n<br />\r\nNgoài ra, InnerB Glowshot còn chứa thành phần vitamin C - hoạt chất chống oxy hóa mạnh mẽ giúp ngăn ngừa các tổn thương do gốc tự do, đồng thời dưỡng da sáng mịn, giảm nhanh vết sạm, nám.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"nuoc uong collagen innerb lam dep da 1\" src=\"https://cocoshop.vn/uploads/shops/2020_11/nuoc-uong-collagen-innerb-lam-dep-da-1.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\">Sản phẩm ở dạng nước dễ sử dụng cùng hương vị xoài thơm ngon, hấp dẫn. InnerB Glowshot chính là công thức làm đẹp tuyệt vời cho phái đẹp để duy trì một làn da tươi trẻ, tràn đầy sức sống và không tì vết.<br />\r\n<br />\r\n<strong>THÀNH PHẦN</strong><br />\r\n<br />\r\n- Nàng nào đã từng sử dụng Viên uống cấp nước thần thánh Aqua Rich InnerB thì chắc chắn đừng bỏ qua em này nha<br />\r\n- Nước Uống Collagen Làm Đẹp Da InnerB GlowShot Collagen 3000 là dòng sản phẩm thức uống hỗ trợ sức khỏe &amp; làm đẹp của thương hiệu InnerB từ Hàn Quốc<br />\r\n- Chứa thành phần Collagen Peptide đậm đặc 3000mg, Elastin và Vitamin C giúp bổ sung dưỡng chất hỗ trợ cho làn da khỏe mạnh, đồng thời dưỡng da ẩm mượt, thúc đẩy quá trình tái tạo da, ngăn ngừa xuất hiện các dấu hiệu lão hóa.<br />\r\n- Collagen và Elastin là những thành phần quan trọng trong cấu trúc làn da, đóng vai trò như một \"bộ khung\" chống đỡ bên dưới da, giúp duy trì sự căng mịn và đàn hồi cho da. Tuy nhiên, nồng độ của 2 thành phần quan trọng ấy dễ bị suy giảm theo thời gian. Vậy nên, InnerB GlowShot Collagen 3000 chính là lựa chọn hoàn hảo giúp da luôn giữ tuổi xuân<br />\r\n- Thành phần Vitamin C giúp chống oxy hóa, dưỡng sáng và làm đều màu da.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"nuoc uong collagen innerb lam dep da 2\" src=\"https://cocoshop.vn/uploads/shops/2020_11/nuoc-uong-collagen-innerb-lam-dep-da-2.jpg\" style=\"border:0px; box-sizing:border-box; height:598px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÔNG DỤNG</strong><br />\r\n<br />\r\n- Bổ sung thêm hàm lượng Collagen, Elastin và vitamin C cần thiết, hỗ trợ cho sức khỏe và làn da.<br />\r\n- Bổ sung độ ẩm và cấp nước giúp mang lại làn da ẩm mượt, tươi mới.<br />\r\n- Thành phần Vitamin C giúp chống oxy hóa, dưỡng sáng và làm đều màu da.<br />\r\n- Làm mờ nếp nhăn, đốm nâu và tàn nhang, thúc đẩy sự đàn hồi và săn chắc cho da.<br />\r\n- Củng cố màng liên kết tế bào, góp phần cải thiện da bị chảy xệ hoặc khô ráp.<br />\r\n- Tái tạo da, ngăn ngừa và làm chậm tiến trình lão hóa da.</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"nuoc uong collagen innerb lam dep da 4\" src=\"https://cocoshop.vn/uploads/shops/2020_11/nuoc-uong-collagen-innerb-lam-dep-da-4.png\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>CÁCH DÙNG</strong><br />\r\n<br />\r\n- Sản phẩm được khuyên dùng cho hội chị em 25+<br />\r\n- Phù hợp với làn da thiếu nước, da xuất hiện nếp nhăn mới<br />\r\n- Dùng 1 chai/ngày &amp; dùng ngay sau khi mở nắp</span><br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\"><img alt=\"nuoc uong collagen innerb lam dep da 5\" src=\"https://cocoshop.vn/uploads/shops/2020_11/nuoc-uong-collagen-innerb-lam-dep-da-5.jpg\" style=\"border:0px; box-sizing:border-box; height:600px; vertical-align:middle; width:600px\" /></div>\r\n\r\n<p><br />\r\n<br />\r\n<br />\r\n<span style=\"font-family:helvetica neue,helvetica,arial,sans-serif; font-size:18px\"><strong>Trọng lượng:&nbsp;</strong>6*50ml<br />\r\n<strong>Xuất xứ:</strong>&nbsp;Hàn Quốc<br />\r\n<strong>Thương hiệu:</strong>&nbsp;InnerB</span></p>', 100, 1000000, 0, 215000, 200000, 'vWANnkvx_nuoc-uong-collagen-innerb-lam-dep-da.png', 'chai', 0, '2021-01-02 14:31:05', '2021-01-02 14:31:05'),
(91, 'Van Test', 13, '<p>test</p>', '<p>test</p>', 497, 1000000, 3, 1000000, 10000, 'UYFLCtCT_JX7eCI3S_jzzzcxDw_PzGqTZrj_2.jpg', 'Hộp', 1, '2022-08-09 14:16:07', '2022-08-19 13:16:06'),
(92, 'Vân Test 1 Sua', 13, '<p>Van test 1</p>', '<p>Van test 1</p>', 200, 1000000, 0, 123457000, 1000, 'RqnXEzZv_4blpqjRi_98e4407b03b094bbc048171d64dd2465.jpg', 'Hộp', 1, '2022-08-23 10:46:58', '2022-08-23 10:47:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `link` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, '123', '7LCYhPiz_banner-giua-trang_1.jpg', '2021-01-02 13:57:14', '2021-01-02 13:57:14'),
(2, '12345', '1ELc5NZT_banner-giua-trang-2.jpg', '2021-01-02 13:57:20', '2021-01-02 13:57:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social`
--

CREATE TABLE `social` (
  `user_id` int(11) NOT NULL,
  `provider_user_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `provider_user_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `social`
--

INSERT INTO `social` (`user_id`, `provider_user_id`, `provider_user_email`, `provider`, `user`) VALUES
(7, '109600495132923422925', 'haovanqltb@gmail.com', 'GOOGLE', 21),
(8, '104880539349009988420', 'vannguyenduc.k13.haui@gmail.com', 'GOOGLE', 22),
(9, '116943414182538215123', 'haovanpltb@gmail.com', 'GOOGLE', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statistical`
--

CREATE TABLE `statistical` (
  `id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `sales` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `profit` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statistical`
--

INSERT INTO `statistical` (`id`, `order_date`, `sales`, `profit`, `quantity`, `total_order`) VALUES
(2, '2022-08-22', '68000000', '9000000', 60, 8),
(3, '2022-08-21', '30000000', '3000000', 45, 7),
(4, '2022-08-20', '45000000', '3800000', 30, 9),
(5, '2022-08-19', '30000000', '1500000', 15, 12),
(6, '2022-08-18', '8000000', '700000', 65, 30),
(7, '2022-08-17', '28000000', '23000000', 32, 20),
(8, '2022-07-23', '25000000', '20000000', 7, 6),
(9, '2022-07-22', '36000000', '28000000', 40, 15),
(10, '2022-07-21', '50000000', '13000000', 89, 19),
(12, '2022-07-20', '25000000', '16000000', 94, 14),
(13, '2022-06-20', '32000000', '17000000', 16, 10),
(14, '2022-05-20', '33000000', '19000000', 14, 5),
(15, '2022-04-20', '36000000', '18000000', 22, 12),
(16, '2022-03-20', '34000000', '20000000', 33, 20),
(17, '2022-02-20', '25000000', '16000000', 94, 14),
(18, '2022-01-20', '12000000', '7000000', 16, 10),
(19, '2022-01-19', '63000000', '19000000', 14, 5),
(71, '2022-08-23', '9327000', '5327000', 12, 6),
(72, '2022-08-05', '10800000', '8800000', 8, 2),
(73, '2022-08-25', '3660000', '-1340000', 13, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(13, 'TRANG ĐIỂM - MAKEUP', NULL, '123', '2021-01-02 13:20:18', '2021-01-02 13:20:18'),
(14, 'SON MÔI - LIPS', NULL, '123', '2021-01-02 13:20:35', '2021-01-02 13:20:35'),
(15, 'CHĂM SÓC DA - SKINCARE', NULL, '123', '2021-01-02 13:20:47', '2021-01-02 13:20:47'),
(16, 'CHĂM SÓC CƠ THỂ - BODY CARE', NULL, '123', '2021-01-02 13:20:58', '2021-01-02 13:20:58'),
(17, 'CHĂM SÓC TÓC - HAIR', NULL, '123', '2021-01-02 13:21:13', '2021-01-02 13:21:13'),
(18, 'DỤNG CỤ - TOOLS - BRUSHES', NULL, '123', '2021-01-02 13:21:24', '2021-01-02 13:21:24'),
(19, 'NƯỚC HOA - PERFUME', NULL, '123', '2021-01-02 13:21:35', '2021-01-02 13:21:35'),
(20, 'SẢN PHẨM KHÁC - OTHERS', NULL, '123', '2021-01-02 13:21:45', '2021-01-02 13:21:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `level`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Đức Vân', 'admin@gmail.com', '$2y$10$qegDSkKQaL1XmUQo9vz3ZeeXcw7wicMITkyPXtViJPmFOEqfK5MGW', 1, '0396646090', 'Thái Bình', '6yBcI1k7Ast5h2i7JBFI25wPgUR1kSulrpvRUNGPLQyqg2EtKbwioMS2nzZB', '2021-01-02 10:22:31', '2021-01-02 10:22:31'),
(2, 'Nguyễn Đức Vân', 'phonglang01249@gmail.com', '$2y$10$qf5Rk4vd8ZAf42.yrdVi4O/jHED5AinUTnf096ZJVCil/rUE3Q/Ya', 0, NULL, NULL, 'RlHlzW4cKmGteaVtaTgSdSafjl3IDCFjSEVu6FeuDRMRAhJqU49L8hXGW1gd', '2022-07-14 01:45:18', '2022-08-25 07:16:38'),
(3, 'N T T', 'haovanpltb@gmail.com', '$2y$10$BtyYkvSPlgtqR247IjzQ..xNiuIzxrqCg2ddhw391yX6dLToYPBhe', 0, '0123456789', 'Street Address', 'jRhiREKIQhzztvJz77FBTXGMLc9dhYzsaeMlkHkY4wEQs5uucEvQdfn8fGD2', '2022-08-16 02:28:08', '2022-08-23 13:30:38'),
(21, 'Hạo Nguyễn', 'haovanqltb@gmail.com', '$2y$10$.d9T2.BuQR6qDU.jR1CNguEf761rn9/wyhAmggtxnmFlwDaBMnYcC', 0, '', '', 'pYKko4PznrOvmlfS6EOaqRoLWcG3e8tbwqeg7PPH9sYhsiXPgsZ0yr16dvEa', '2022-08-24 08:41:39', '2022-08-24 08:41:39'),
(22, 'Vân Nguyễn Đức Vân', 'vannguyenduc.k13.haui@gmail.com', '$2y$10$mn6PfK8xo3Fc26qoGlYUMuIL4fpzH/4K4WhwW0hXIw4oM1RsPRF52', 0, '', '', NULL, '2022-08-24 09:01:11', '2022-08-24 09:01:11');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_detail_ibfk_2` (`id_product`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `devvn_quanhuyen`
--
ALTER TABLE `devvn_quanhuyen`
  ADD PRIMARY KEY (`maqh`);

--
-- Chỉ mục cho bảng `devvn_tinhthanhpho`
--
ALTER TABLE `devvn_tinhthanhpho`
  ADD PRIMARY KEY (`matp`);

--
-- Chỉ mục cho bảng `devvn_xaphuongthitran`
--
ALTER TABLE `devvn_xaphuongthitran`
  ADD PRIMARY KEY (`xaid`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phi_ship`
--
ALTER TABLE `phi_ship`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_type_foreign` (`id_type`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `statistical`
--
ALTER TABLE `statistical`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `phi_ship`
--
ALTER TABLE `phi_ship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `social`
--
ALTER TABLE `social`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `statistical`
--
ALTER TABLE `statistical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
