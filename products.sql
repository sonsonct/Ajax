-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 12, 2022 lúc 01:44 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `testajax`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `Ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `Ten`, `Gia`, `Mota`) VALUES
(1, 'Iphone 14', '32.000.000', 'https://kenh14cdn.com/thumb_w/660/203336854389633024/2022/8/2/img4613-1659414840996277474713.jpg'),
(2, 'SamSungA1', '12.000.000', 'https://cdn.tgdd.vn/Products/Images/42/214908/samsung-galaxy-a01-do-new-600x600-600x600.jpg'),
(3, 'SamSungA2', '12.000.000', 'https://cdn.tgdd.vn/Products/Images/42/214908/samsung-galaxy-a01-do-new-600x600-600x600.jpg'),
(4, 'SamSungA2', '12.000.000', 'https://cdn.tgdd.vn/Products/Images/42/200529/samsung-galaxy-a2-core-600x600.jpg'),
(5, 'SamSungA3', '12.000.000', 'https://file.hstatic.net/1000238589/file/dien_thoai_samsung_galaxy_a2_core_afc5adb573924ff2a7d44c9c408c30c6.jpg'),
(6, 'SamSung galaxy', '23.000.000', 'https://cdn.tgdd.vn/Products/Images/42/235838/Galaxy-S22-Ultra-Burgundy-600x600.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
