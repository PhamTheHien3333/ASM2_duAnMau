-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 21, 2023 lúc 02:54 PM
-- Phiên bản máy phục vụ: 8.0.31
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hienpt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `ma_bl` int NOT NULL,
  `noi_dung` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ma_hh` int NOT NULL,
  `ma_kh` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ngay_bl` date NOT NULL,
  `rating` tinyint NOT NULL DEFAULT '5'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binh_luan`
--

INSERT INTO `binh_luan` (`ma_bl`, `noi_dung`, `ma_hh`, `ma_kh`, `ngay_bl`, `rating`) VALUES
(47, 'Sản phẩm rất đẹp', 39, 'admin', '2023-10-21', 5),
(48, 'Rất đẹp', 40, 'admin', '2023-10-21', 4),
(49, 'Rất tốt', 46, 'admin', '2023-10-21', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_hoa`
--

CREATE TABLE `hang_hoa` (
  `ma_hh` int NOT NULL,
  `ten_hh` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `don_gia` int NOT NULL,
  `giam_gia` int DEFAULT '0',
  `hinh` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ngay_nhap` date DEFAULT NULL,
  `mo_ta` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `dac_biet` int NOT NULL DEFAULT '0',
  `so_luot_xem` int NOT NULL DEFAULT '0',
  `ma_loai` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hang_hoa`
--

INSERT INTO `hang_hoa` (`ma_hh`, `ten_hh`, `don_gia`, `giam_gia`, `hinh`, `ngay_nhap`, `mo_ta`, `dac_biet`, `so_luot_xem`, `ma_loai`) VALUES
(39, 'Áo Hoodie trắng thời trang', 233000, 200000, 'ah4.jpg', '2023-10-21', '', 1, 3, 1),
(40, 'Áo Hoodie đen thời trang', 300000, 230000, 'ah5.jpg', '2023-10-21', 'Áo hoodie thời trang mùa đông', 1, 2, 1),
(41, 'Áo Hoodie đỏ cho nam', 500000, 430000, 'ah6.jpg', '2023-10-21', 'Áo Hoodie mùa đông theo xu hướng mới nhất', 1, 1, 1),
(42, 'Quần short trắng nam ', 200000, 150000, 'qs2.jpg', '2023-10-21', 'Quần short dành cho nam được nhập khẩu từ Nhật Bản', 1, 0, 2),
(43, 'Quần short xám nam ', 300000, 210000, 'qs3.jpg', '2023-10-21', 'Quần short xám nam chất vải nhẹ nhàng thoải mái được nhập từ Nhật Bản', 1, 0, 2),
(44, 'Áo sơ mi đen nam lịch sự', 500000, 300000, 'as2.jpg', '2023-10-21', 'Áo sơ mi đen nam phong cách giản dị đẹp mắt', 1, 0, 4),
(45, 'Áo sơ mi trắng thời trang', 400000, 300000, 'as1.jpg', '2023-10-21', 'Áo sơ mi trắng thời trang đẹp mắt', 1, 2, 4),
(46, 'Áo Hoodie lam Woo thời trang', 320000, 300000, 'ah2.jpg', '2023-10-21', 'Áo Hoodie lam Woo thời trang độc đáo được nhập từ Nhật Bản', 1, 2, 1),
(47, 'Áo sơ mi văn phòng nam', 200000, 120000, 'as4.jpg', '2023-10-14', 'Áo sơ mi văn phòng nam cá tính', 1, 0, 4),
(48, 'Áo khoác caro nữ dễ thương', 370000, 320000, 'aokhoac.jpg', '2023-10-25', 'Áo khoác caro nữ dễ thương phù hợp thời trang xu hướng hiện nay', 1, 0, 17),
(49, 'Áo khoác ASRM nam', 600000, 450000, 'aobc.jpg', '2023-10-21', 'Áo khoác ASRM nam', 1, 0, 17),
(50, 'Quần jean đen văn phòng', 670000, 500000, 'qj2.jpg', '2023-10-31', 'Quần jean văn phòng lịch lãm', 1, 0, 3),
(51, 'Quần jean phong cách nghệ sĩ', 230000, 220000, 'qj6.jpg', '2023-10-28', 'Quần jean phong cách nghệ sĩ năng động', 1, 0, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_kh` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'mã đăng nhập',
  `mat_khau` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'mật khẩu',
  `ho_ten` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'họ tên',
  `kich_hoat` bit(1) NOT NULL DEFAULT b'0' COMMENT 'trạng thái kích hoạt',
  `hinh` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `vai_tro` bit(1) NOT NULL DEFAULT b'0' COMMENT 'vai trò true là nv'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_kh`, `mat_khau`, `ho_ten`, `kich_hoat`, `hinh`, `email`, `vai_tro`) VALUES
('admin', '123456', 'Phạm Thế Hiển', b'1', 'icon-2.png', 'hienptpc07191@gmail.com', b'1'),
('huanhoanhai', '123456', 'Thầy Huấn Hoa Nhài', b'1', 'huan-hoa-hong-xanh-le-noi-oi-doi-oi.jpeg', 'huanhoanhai@gmail.com', b'0'),
('kimkhanh', '123456', 'Kim Khánh', b'1', 'icon-3.png', 'khanhcute@gmail.com', b'0'),
('Nhựt Tân', '123456', 'Nhựt Tân', b'1', 'ghm.png', 'tanlpi@gmail.com', b'0'),
('phuonggg', '123456', 'Duy Phương', b'0', 'arrow.png', 'phuong@gmail.com', b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `ma_loai` int NOT NULL COMMENT 'mã loại hàng',
  `ten_loai` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'tên loại hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`ma_loai`, `ten_loai`) VALUES
(1, 'Áo Hoodie'),
(2, 'Quần short'),
(3, 'Quần jean'),
(4, 'Áo sơ mi'),
(17, 'Áo khoác');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`ma_bl`),
  ADD KEY `binh_luan_ibfk_1` (`ma_hh`),
  ADD KEY `binh_luan_ibfk_2` (`ma_kh`);

--
-- Chỉ mục cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD PRIMARY KEY (`ma_hh`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_kh`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`ma_loai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `ma_bl` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  MODIFY `ma_hh` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `ma_loai` int NOT NULL AUTO_INCREMENT COMMENT 'mã loại hàng', AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `binh_luan_ibfk_1` FOREIGN KEY (`ma_hh`) REFERENCES `hang_hoa` (`ma_hh`) ON DELETE CASCADE,
  ADD CONSTRAINT `binh_luan_ibfk_2` FOREIGN KEY (`ma_kh`) REFERENCES `khach_hang` (`ma_kh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD CONSTRAINT `hang_hoa_ibfk_1` FOREIGN KEY (`ma_loai`) REFERENCES `loai` (`ma_loai`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
