-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 06, 2022 lúc 08:01 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `1951060873_university`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `MAGV` int(10) UNSIGNED NOT NULL,
  `HOVATEN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NGAYSINH` date NOT NULL,
  `GIOITINH` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRINHDO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CHUYENMON` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HOCHAM` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HOCVI` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `COQUAN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giangvien`
--

INSERT INTO `giangvien` (`MAGV`, `HOVATEN`, `NGAYSINH`, `GIOITINH`, `TRINHDO`, `CHUYENMON`, `HOCHAM`, `HOCVI`, `COQUAN`) VALUES
(1, 'NGUYỄN VĂN A', '2001-12-03', 'NAM', 'ĐẠI HỌC', 'IT', 'GIÁO SƯ', 'TIẾN SĨ', 'PHÒNG MẠNG'),
(2, 'HOÀNG VĂN B', '1999-05-06', 'NỮ', 'CAO ĐẲNG', 'KẾ TOÁN', NULL, NULL, 'PHÒNG KIỂM KÊ');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`MAGV`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  MODIFY `MAGV` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
