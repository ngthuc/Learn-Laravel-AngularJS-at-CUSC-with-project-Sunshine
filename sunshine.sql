-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2017 at 02:25 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sunshine`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `dh_ma` bigint(20) UNSIGNED NOT NULL,
  `sp_ma` bigint(20) UNSIGNED NOT NULL,
  `m_ma` tinyint(3) UNSIGNED NOT NULL,
  `ctdh_soLuong` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `ctdh_donGia` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietnhap`
--

CREATE TABLE `chitietnhap` (
  `pn_ma` bigint(20) UNSIGNED NOT NULL,
  `sp_ma` bigint(20) UNSIGNED NOT NULL,
  `m_ma` tinyint(3) UNSIGNED NOT NULL,
  `ctn_soLuong` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `ctn_donGia` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chude`
--

CREATE TABLE `chude` (
  `cd_ma` tinyint(3) UNSIGNED NOT NULL,
  `cd_ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cd_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cd_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cd_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chude`
--

INSERT INTO `chude` (`cd_ma`, `cd_ten`, `cd_taoMoi`, `cd_capNhat`, `cd_trangThai`) VALUES
(1, 'Qui et molestiae odio sunt enim.', '2017-12-15 18:31:43', '2017-12-17 14:09:38', 2),
(2, 'Sit rerum sed aut.', '2017-12-15 23:29:43', '2017-12-16 17:37:35', 2),
(3, 'Corrupti nostrum laborum quam quaerat est omnis.', '2017-12-18 06:49:49', '2017-12-17 03:45:28', 2),
(4, 'Velit est voluptas nam dolorem error.', '2017-12-18 11:01:28', '2017-12-18 12:06:23', 2),
(5, 'Et magni beatae sit totam tempora in doloremque.', '2017-12-16 14:58:53', '2017-12-16 23:02:31', 2),
(6, 'Placeat eum autem illum enim placeat explicabo.', '2017-12-16 13:13:04', '2017-12-16 01:45:42', 2),
(7, 'Ut nulla ipsa quia autem.', '2017-12-18 12:24:38', '2017-12-17 05:54:26', 2),
(8, 'Incidunt laboriosam ducimus eum qui delectus.', '2017-12-18 06:56:52', '2017-12-17 20:04:52', 2),
(9, 'Ab labore quas quod dolorem debitis.', '2017-12-16 00:13:01', '2017-12-18 08:29:10', 2),
(10, 'Sed voluptas quo consequatur autem.', '2017-12-17 05:36:52', '2017-12-17 09:19:40', 2),
(11, 'Soluta aut deserunt et vitae vel non tenetur.', '2017-12-16 04:16:50', '2017-12-16 10:45:27', 2),
(12, 'Ex et adipisci ab vero.', '2017-12-16 14:25:03', '2017-12-15 21:32:59', 2),
(13, 'Iure esse impedit consequatur dolores porro.', '2017-12-15 23:18:44', '2017-12-16 20:28:52', 2),
(14, 'Fugit sint provident perferendis.', '2017-12-15 21:15:15', '2017-12-16 23:44:37', 2),
(15, 'Saepe veniam consectetur quis error.', '2017-12-18 09:20:02', '2017-12-18 03:15:09', 2),
(16, 'Enim et dolor quia vel a. Eos inventore magni at.', '2017-12-18 00:22:20', '2017-12-16 15:58:01', 2),
(17, 'Libero sapiente neque eligendi quis nemo.', '2017-12-18 02:32:31', '2017-12-17 07:06:46', 2),
(18, 'Consectetur voluptatem aut amet nihil.', '2017-12-17 00:34:57', '2017-12-18 10:23:52', 2),
(19, 'Eligendi nisi asperiores ipsam dolores.', '2017-12-16 08:12:35', '2017-12-18 12:45:44', 2),
(20, 'Quos veniam ab ut in ipsam vel quam a.', '2017-12-17 19:57:23', '2017-12-16 21:25:03', 2),
(21, 'Alias eaque non a sit accusamus eos.', '2017-12-16 13:35:59', '2017-12-16 15:44:26', 2),
(22, 'Et aut excepturi corrupti.', '2017-12-17 09:53:16', '2017-12-17 14:53:20', 2),
(23, 'Aperiam earum expedita et magni.', '2017-12-16 20:07:24', '2017-12-18 14:23:29', 2),
(24, 'Incidunt magni minus a qui et.', '2017-12-18 09:14:29', '2017-12-15 18:29:53', 2),
(25, 'Ex aliquam alias illo quae consequatur rerum aut.', '2017-12-16 12:29:04', '2017-12-16 17:12:24', 2),
(26, 'Quaerat voluptatem dolor et tenetur aspernatur.', '2017-12-15 19:56:23', '2017-12-16 01:27:38', 2),
(27, 'Sequi saepe est in quia vero incidunt.', '2017-12-18 07:50:21', '2017-12-17 18:27:32', 2),
(28, 'Sed architecto qui beatae commodi.', '2017-12-16 21:16:47', '2017-12-16 01:37:46', 2),
(29, 'Et nesciunt explicabo voluptas libero et eaque.', '2017-12-16 09:46:37', '2017-12-17 11:02:47', 2),
(30, 'Suscipit nobis sint facere quibusdam incidunt.', '2017-12-17 10:48:44', '2017-12-18 03:50:31', 2),
(31, 'Veniam incidunt id voluptatem error.', '2017-12-16 18:20:59', '2017-12-16 21:02:21', 2),
(32, 'Ad sit quae fugit est quo commodi a vero.', '2017-12-18 00:30:13', '2017-12-18 10:05:49', 2),
(33, 'Consequatur vero porro autem.', '2017-12-16 07:00:30', '2017-12-16 18:28:41', 2),
(34, 'Eum rem hic eum et temporibus et.', '2017-12-15 21:31:55', '2017-12-16 02:00:39', 2),
(35, 'Eos iusto doloribus sit velit accusamus.', '2017-12-16 23:40:00', '2017-12-18 08:10:24', 2),
(36, 'Corrupti consequatur provident quis.', '2017-12-17 22:51:11', '2017-12-17 11:37:32', 2),
(37, 'Qui asperiores eum aliquam at deleniti molestias.', '2017-12-18 07:52:25', '2017-12-16 05:33:51', 2),
(38, 'Nobis amet est vitae amet placeat harum officia.', '2017-12-17 21:51:20', '2017-12-16 17:15:02', 2),
(39, 'Repellat soluta ut ea ipsam velit modi et.', '2017-12-17 14:49:50', '2017-12-17 23:39:53', 2),
(40, 'Quo est officiis ad qui est expedita dolorem.', '2017-12-15 17:19:48', '2017-12-16 14:10:00', 2),
(41, 'Reiciendis corporis in eum reiciendis nisi.', '2017-12-16 06:55:23', '2017-12-16 01:15:17', 2),
(42, 'Ex optio molestiae nesciunt est omnis.', '2017-12-15 20:34:46', '2017-12-18 08:40:36', 2),
(43, 'Rerum et neque impedit aut.', '2017-12-15 23:47:21', '2017-12-16 02:56:18', 2),
(44, 'Repellat numquam quis voluptatem.', '2017-12-16 14:05:37', '2017-12-17 11:51:33', 2),
(45, 'Quod ut molestiae libero est nesciunt hic.', '2017-12-16 13:52:52', '2017-12-18 01:44:33', 2),
(46, 'Laudantium ratione porro aut omnis.', '2017-12-16 22:09:54', '2017-12-18 02:40:17', 2),
(47, 'Sit neque impedit voluptatem odit.', '2017-12-16 11:12:06', '2017-12-18 15:41:39', 2),
(48, 'Dignissimos eum laboriosam quidem id.', '2017-12-16 09:10:31', '2017-12-17 17:20:19', 2),
(49, 'Sint aut et sit animi rerum.', '2017-12-17 07:13:33', '2017-12-18 02:21:43', 2),
(50, 'Id facere ut molestiae omnis.', '2017-12-18 01:08:35', '2017-12-15 20:48:25', 2);

-- --------------------------------------------------------

--
-- Table structure for table `chude_sanpham`
--

CREATE TABLE `chude_sanpham` (
  `sp_ma` bigint(20) UNSIGNED NOT NULL,
  `cd_ma` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `dh_ma` bigint(20) UNSIGNED NOT NULL,
  `kh_ma` bigint(20) UNSIGNED NOT NULL,
  `dh_thoiGianDatHang` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dh_thoiGianNhanHang` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dh_nguoiNhan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dh_diaChi` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dh_dienThoai` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dh_nguoiGui` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dh_loiChuc` text COLLATE utf8mb4_unicode_ci,
  `dh_daThanhToan` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `nv_xuLy` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `dh_ngayXuLy` datetime DEFAULT NULL,
  `nv_giaoHang` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `dh_ngayLapPhieuGiao` datetime DEFAULT NULL,
  `dh_ngayGiaoHang` datetime DEFAULT NULL,
  `dh_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dh_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dh_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `vc_ma` tinyint(3) UNSIGNED NOT NULL,
  `tt_ma` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gopy`
--

CREATE TABLE `gopy` (
  `gy_ma` bigint(20) UNSIGNED NOT NULL,
  `gy_thoiGian` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gy_noiDung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `km_ma` bigint(20) UNSIGNED NOT NULL,
  `sp_ma` bigint(20) UNSIGNED NOT NULL,
  `gy_trangThai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh`
--

CREATE TABLE `hinhanh` (
  `sp_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Vừa là khóa ngoại và khóa chính',
  `ha_stt` tinyint(4) NOT NULL,
  `ha_ten` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoadonle`
--

CREATE TABLE `hoadonle` (
  `hdl_ma` bigint(20) UNSIGNED NOT NULL,
  `hdl_nguoiMuaHang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hdl_dienThoai` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hdl_diaChi` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nv_lapHoaDon` tinyint(3) UNSIGNED NOT NULL,
  `hdl_ngayXuatHoaDon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dh_ma` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoadonsi`
--

CREATE TABLE `hoadonsi` (
  `hds_ma` bigint(20) UNSIGNED NOT NULL,
  `hds_nguoiMuaHang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hds_tenDonVi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hds_diaChi` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hds_maSoThe` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hds_soTaiKhoan` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nv_lapHoaDon` tinyint(3) UNSIGNED NOT NULL,
  `hds_ngayXuatHoaDon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nv_thuTruong` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `hds_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hds_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hds_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `dh_ma` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `tt_ma` tinyint(3) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `kh_ma` bigint(20) UNSIGNED NOT NULL,
  `kh_taiKhoan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kh_matKhau` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kh_hoTen` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kh_gioiTinh` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `kh_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kh_ngaySinh` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kh_diaChi` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kh_dienThoai` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kh_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kh_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kh_trangThai` tinyint(4) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`kh_ma`, `kh_taiKhoan`, `kh_matKhau`, `kh_hoTen`, `kh_gioiTinh`, `kh_email`, `kh_ngaySinh`, `kh_diaChi`, `kh_dienThoai`, `kh_taoMoi`, `kh_capNhat`, `kh_trangThai`) VALUES
(1, 'TRANGLE-TAM_2503', 'df7f5e287cde73fa9cc328eccdcf3941', 'Lê Tâm Trang\r\n', 0, 'LeTamTrang250391@outlook.com', '1991-03-25 00:00:00', '256 Nguyễn Văn Linh, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '0928999169', '2010-01-20 01:00:00', '2010-01-20 01:00:00', 2),
(2, 'Thuy.24-02', '39334679abcf10e6d4e584d8a49d36c8', 'Trần Lệ Thủy\r\n', 0, 'THUYLE-TRAN-1979-02-24@outlook.com', '1979-02-24 00:00:00', '66/201 Lê Hồng Phong, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01201397505', '2010-01-20 01:00:00', '2010-01-20 01:00:00', 2),
(3, 'Loan-CaoThiMy_1981', 'a938b9e70ecea2b95b05c2a4da0a6e65', 'Cao Thị Mỹ Loan\r\n', 0, 'LOANCAO.THI_MY-07_05_81@yahoo.com', '1981-05-07 00:00:00', '199/84 Nguyễn Văn Linh, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01685301561', '2010-01-20 02:32:08', '2010-01-20 02:32:08', 2),
(4, 'nuong_31.12.1994', 'd64ee5981dfc628f20f8002efa14c3f7', 'Lê Thụy Nương\r\n', 0, 'le_thuy_nuong.31.12.1994@gmail.com', '1994-12-31 00:00:00', '12 Trần Hưng Đạo, P. An Nghiệp, Q. Ninh Kiều, TP. Cần Thơ', '0926537222', '2010-01-22 02:32:08', '2010-01-22 02:32:08', 2),
(5, 'tuong_1703', 'a908e5a81dfc630b836d543df53a8801', 'Nguyễn Huy Tường\r\n', 1, 'TUONG.20050317@ymail.com', '2005-03-17 00:00:00', '389 3/2, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '01676902451', '2010-01-22 06:01:43', '2010-01-22 06:01:43', 2),
(6, 'N-V_TUYET.21_07_94', '7d46558c8572c7504645d5aee894f429', 'Nguyễn Việt Tuyết\r\n', 0, 'NVTUYET1994@hotmail.com', '1994-07-21 00:00:00', '189/338 QL1, P. Thường Thạnh, Q. Cái Răng, TP. Cần Thơ', '0984978861', '2010-02-11 06:01:43', '2010-02-11 06:01:43', 2),
(7, 'Chi.dung\r\n_1980', '4a14ce6aa4d5daf709dc91305eb064bc', 'Nguyễn Chí Dũng\r\n', 1, 'Dung_80@outlook.com', '1980-06-07 00:00:00', '153 QL1, P. Lê Bình, Q. Cái Răng, TP. Cần Thơ', '01661188751', '2010-02-11 10:13:18', '2010-02-11 10:13:18', 2),
(8, 'PHUC-NGUYEN_HONG-18-08', '2ba16880c0ae285f38829a6e86566add', 'Nguyễn Hồng Phúc\r\n', 0, 'PHUC.HONG_NGUYEN-180883@ymail.com', '1983-08-18 00:00:00', '187 Nguyễn Văn Cừ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01292299732', '2010-02-13 10:13:18', '2010-02-13 10:13:18', 2),
(9, 'HUY-KHIEM\r\n-26.10', '168e66c47c146dfbef6d7b5bb45ca042', 'Lê Huy Khiêm\r\n', 1, 'LE-HUY-KHIEM.26101995@gmail.com', '1995-10-26 00:00:00', '286 Hùng Vương, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01269839861', '2010-02-13 16:24:07', '2010-02-13 16:24:07', 2),
(10, 'L.Q.Sang2103', '31990adabf7832b2bf17dd39445bee7a', 'Lê Quang Sáng\r\n', 1, 'sang_le_quang-21_03@hotmail.com', '1980-03-21 00:00:00', '103 Nguyễn Thị Minh Khai, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01882627115', '2010-02-14 16:24:07', '2010-02-14 16:24:07', 2),
(11, 'PHAMNGUYEN-QUANG-VINH-01-12-1985', 'f4cc7165f2feb591779b56487cb81fd1', 'Phạm Nguyễn Quang Vinh\r\n', 1, 'vinhquang.nguyen_pham.01_12@outlook.com', '1985-12-01 00:00:00', '253 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01248579704', '2010-02-14 16:24:07', '2010-02-14 16:24:07', 2),
(12, 'kien.trinh-khang.1974', '3efad996af5a78d9f3689eb19522be76', 'Trịnh Khang Kiện\r\n', 1, 'KIEN1107@hotmail.com', '1974-07-11 00:00:00', '65 QL1, P. Thường Thạnh, Q. Cái Răng, TP. Cần Thơ', '01677461543', '2010-02-15 16:24:07', '2010-02-15 16:24:07', 2),
(13, 'Dong921116', '73954fae7ba7ac95b6ce142233f60403', 'Hồ Văn Đông\r\n', 1, 'hvdong161192@gmail.com', '1992-11-16 00:00:00', '148 CMT8, P. Bùi Hữu Nghĩa, Q. Bình Thủy, TP. Cần Thơ', '01684047633', '2010-02-21 16:24:07', '2010-02-21 16:24:07', 2),
(14, 'LongBui_Phan_1971', '842348664775ccf6edabd37d1554d824', 'Phan Bùi Long', 1, 'PBLong1971@yahoo.com.vn', '1971-11-25 00:00:00', '389 CMT8, P. An Thới , Q. Bình Thủy, TP. Cần Thơ', '0927504588', '2010-02-24 16:24:07', '2010-02-24 16:24:07', 2),
(15, 'NGUYEN-NGUYEN-LETHAO-59', 'c047a0f49c99566fcf4f17ac67cc8c4e', 'Nguyễn Lê Thảo Nguyên\r\n', 0, 'Thaonguyen101259@outlook.com', '1959-12-10 00:00:00', '227 Trần Quang Diệu, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '0893814785', '2010-03-21 16:24:07', '2010-03-21 16:24:07', 2),
(16, 'Nguyen_Truong_Phu.930119', 'ea58c2474db2a15fb0784c61927a7c5d', 'Nguyễn Trường Phu\r\n', 1, 'phunguyentruong93@yahoo.com', '1993-01-19 00:00:00', '317 CMT8, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01623060482', '2010-04-06 16:24:07', '2010-04-06 16:24:07', 2),
(17, 'N_V_TU_31081974', '8a8fa480bd5f6773cd09d39292c432f6', 'Nguyễn Văn Từ\r\n', 1, 'Tu31.08.1974@yahoo.com', '1974-08-31 00:00:00', '112/49 Phan Đình Phùng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0980458689', '2010-04-09 16:24:07', '2010-04-09 16:24:07', 2),
(18, 'thao_uyen\r\n_08-08', '8cfbf506df4046dd50b284bd140c5ffd', 'Khưu Thảo Uyên\r\n', 0, 'UyenThaoKhuu1989@ymail.com', '1989-08-08 00:00:00', '112 Võ Nguyên Giáp, P. Hưng Thạnh, Q. Cái Răng, TP. Cần Thơ', '0945627077', '2010-05-02 16:24:07', '2010-05-02 16:24:07', 2),
(19, 'N.D.Kinh.13.07', '571e98a4e44e97be0cc1212c10296814', 'Nguyễn Duy Kính\r\n', 1, 'NguyenDuy.Kinh-13-07@hotmail.com', '1985-07-13 00:00:00', '194 Nguyễn Đệ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01280855845', '2010-05-02 18:03:03', '2010-05-02 18:03:03', 2),
(20, 'mai-1989', '8735e9a431ffb583e6588580a9e073ab', 'Nguyễn Trần Ngọc Mai\r\n', 0, 'MAI_NGOC_TRAN_NGUYEN_1989@hotmail.com', '1989-11-14 00:00:00', '72/6 Nguyễn Văn Linh, P. Long Tuyền , Q. Bình Thủy, TP. Cần Thơ', '01661606254', '2010-05-03 02:19:39', '2010-05-03 02:19:39', 2),
(21, 'Quynh_ngan\r\n.2002-01-01', '6b114dc74cc5a8de4e7897be0c1366b0', 'Trần Quỳnh Ngân\r\n', 0, 'Tran-Quynh.Ngan_02@gmail.com.vn', '2002-01-01 00:00:00', '109/184 Võ Văn Tần, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01640816968', '2010-05-21 02:19:39', '2010-05-21 02:19:39', 2),
(22, 'maihuynhkhanh1703', '11be801f81b7b3c1afc19179f9cacd50', 'Huỳnh Khánh Mai\r\n', 0, 'MAI91@yahoo.com', '1991-03-17 00:00:00', '117C/179 Đinh Công Chánh, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '0919385919', '2010-05-26 02:19:39', '2010-05-26 02:19:39', 2),
(23, 'M.P-Hung80', 'fc7194d20d9ca7ea4a4596cd3e6e8de8', 'Mã Phạm Hưng', 1, 'HUNGMAPHAM-1980@ymail.com', '1980-04-23 00:00:00', '192 Lê Hồng Phong, P. Trà Nóc, Q. Bình Thủy, TP. Cần Thơ', '01635277381', '2010-05-28 02:19:39', '2010-05-28 02:19:39', 2),
(24, 'LOC.PHAM.XUAN2406', '7c749912aa6286819742008c55db1eff', 'Phạm Xuân Lộc\r\n', 1, 'LOCPHAM-XUAN82@ymail.com', '1982-06-24 00:00:00', '348 QL1, P. Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '0890523170', '2010-06-11 02:19:39', '2010-06-11 02:19:39', 2),
(25, 'N-T-HHOP1945.04.26', '7bb71e72234a9891fdffe98a3f3322ad', 'Nguyễn Trần Hòa Hợp\r\n', 1, 'hoahop\r\n.26_04_1945@gmail.com', '1945-04-26 00:00:00', '251 Tỉnh lộ 923, P. Trường Lạc, Q. Ô Môn, TP. Cần Thơ', '0898643630', '2010-06-11 05:40:50', '2010-06-11 05:40:50', 2),
(26, 'vtxvan1985', '53274e82e64d4820a6592745fb16e784', 'Vũ Thị Xuân Vân\r\n', 0, 'VAN_XUAN-THI_VU-01_10@outlook.com', '1985-10-01 00:00:00', '181/207 Võ Văn Kiệt, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01630654845', '2010-06-24 05:40:50', '2010-06-24 05:40:50', 2),
(27, 'LONGNGUYEN-THANH-16_06', 'e9f7844b8e58a479e889f6a6619e4a05', 'Nguyễn Thành Long\r\n', 1, 'N_T_Long-1606@outlook.com', '1978-06-16 00:00:00', '78 CMT8, P. Bùi Hữu Nghĩa, Q. Bình Thủy, TP. Cần Thơ', '01629856229', '2010-06-24 05:40:50', '2010-06-24 05:40:50', 2),
(28, 'Dieuanh\r\n-800130', '57550e79deef7e30f56130b81458e31d', 'Nguyễn Diệu Anh\r\n', 0, 'ANH.NGUYENDIEU-30_01_80@ymail.com', '1980-01-30 00:00:00', '246 Nguyễn Văn Cừ, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01642784895', '2010-06-24 16:38:09', '2010-06-24 16:38:09', 2),
(29, 'le.phong.2004_10_08', '4f99731324d57761ace520158ed0b498', 'Lê Phong', 1, 'lephong2004@hotmail.com', '2004-10-08 00:00:00', '148 Võ Nguyên Giáp, P. Tân Phú, Q. Cái Răng, TP. Cần Thơ', '0940647713', '2010-06-24 22:10:37', '2010-06-24 22:10:37', 2),
(30, 'tran-huy-00_01_21', '7039f5799b5502c709a668c689d2f4ac', 'Trần Huy', 1, 'tran.huy.00.01.21@outlook.com', '2000-01-21 00:00:00', '200 CMT8, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01666383201', '2010-06-26 22:10:37', '2010-06-26 22:10:37', 2),
(31, 'Nhan-22-12-1959', 'f37cfdb943fc3e38b73b70f57970edaa', 'Nguyễn Phi Nhạn\r\n', 1, 'NPNhan59-12-22@yahoo.com', '1959-12-22 00:00:00', '105/176 Lê Lợi, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '0971731120', '2010-06-26 22:10:37', '2010-06-26 22:10:37', 2),
(32, 'VANTOAI19840109', '2ca24e7e7234fc285d08484ac11bc429', 'Đặng Văn Toại\r\n', 1, 'Toai.Dang-Van.84@gmail.com', '1984-01-09 00:00:00', '21 Trần Quang Diệu, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01284877217', '2010-07-13 22:10:37', '2010-07-13 22:10:37', 2),
(33, 'NGUYENVAN-DANG-1947', 'e2978d96e201d03559ff776501561c5e', 'Nguyễn Văn Ðăng\r\n', 1, 'Dang470828@hotmail.com', '1947-08-28 00:00:00', '263 Ngô Quyền, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '0975041998', '2010-07-14 04:21:18', '2010-07-14 04:21:18', 2),
(34, 'QUANPHAN.1950', '089536bfbae7137b2855b42e4bfcc36e', 'Phan Quân', 1, 'PHANQUAN1950.12.02@ymail.com', '1950-12-02 00:00:00', '14 Hùng Vương, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01230374584', '2010-07-25 04:21:18', '2010-07-25 04:21:18', 2),
(35, 'NGUYEN_THITUYETOANH_05_09_04', 'f4e29d36ce06261ede11cbff3700ad98', 'Nguyễn Thị Tuyết Oanh\r\n', 0, 'OANHNGUYEN_THI.TUYET05.09.2004@hotmail.com', '2004-09-05 00:00:00', '21 QL1, P. Ba Láng, Q. Cái Răng, TP. Cần Thơ', '01671739570', '2010-07-25 06:48:27', '2010-07-25 06:48:27', 2),
(36, 'Phuong-ThuThiNguyen-100382', 'a811552986dc1dd0b8732df30b8ddf0b', 'Nguyễn Thị Thu Phương\r\n', 0, 'N-T-TPhuong-820310@gmail.com.vn', '1982-03-10 00:00:00', '140 Ngô Gia Tự, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01696309405', '2010-08-17 06:48:27', '2010-08-17 06:48:27', 2),
(37, 'TrangGiaHuan3005', 'dd4a9f7ebdbf255da5e1df93fa14e44e', 'Trang Gia Huấn\r\n', 1, 'GIAHUAN\r\n-03@hotmail.com', '2003-05-30 00:00:00', '244 Võ Nguyên Giáp, P. Phú Thứ, Q. Cái Răng, TP. Cần Thơ', '0936176349', '2010-08-17 12:14:42', '2010-08-17 12:14:42', 2),
(38, 'Van861221', 'd6f2393e8ba732f3af0e765fdc140758', 'Mạc Trang Thị Tường Vân\r\n', 0, 'VAN_MAC-TRANGTHITUONG-86@outlook.com', '1986-12-21 00:00:00', '337 Tỉnh lộ 923, P. Trường Lạc, Q. Ô Môn, TP. Cần Thơ', '01699575815', '2010-08-17 15:36:57', '2010-08-17 15:36:57', 2),
(39, 'LINHAI_PHAN_TRAN94-10-08', 'f4a42cede4266ea44197cd306c0bdece', 'Trần Phan Ái Linh\r\n', 0, 'TRAN_PHANAI-LINH.94.10.08@yahoo.com', '1994-10-08 00:00:00', '100/85 Võ Văn Kiệt, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '01697743522', '2010-08-22 15:36:57', '2010-08-22 15:36:57', 2),
(40, 'Bachquynh\r\n-19_01', '8558057f57c5cefe9e1f3025cfa21a6b', 'Trịnh Bạch Quỳnh\r\n', 0, 'QUYNH_TRINH_BACH_85-01-19@gmail.com.vn', '1985-01-19 00:00:00', '71/154 Trần Phú, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01274399522', '2010-09-09 15:36:57', '2010-09-09 15:36:57', 2),
(41, 'LamPhanLe.Tung04-03', '7c5355e0b254bc7ea8313ce30b5cfc1c', 'Phan Lê Tùng Lâm\r\n', 1, 'LAMTUNGLEPHAN020304@yahoo.com', '2002-03-04 00:00:00', '42C/363 Hùng Vương, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01640217540', '2010-09-12 15:36:57', '2010-09-12 15:36:57', 2),
(42, 'LUONG-NGUYEN-07.06', '332e40d72d7685fd33a071a22eb2d268', 'Nguyễn Lương', 1, 'luong-nguyen.07062005@hotmail.com', '2005-06-07 00:00:00', '92 Nguyễn Chí Thanh, P. Thới An Đông, Q. Bình Thủy, TP. Cần Thơ', '0970730657', '2010-09-12 17:41:28', '2010-09-12 17:41:28', 2),
(43, 'quynhgiadangnguyen_1705', '2bf55d9da6c25c5c90141299820f5bb8', 'Nguyễn Đặng Gia Quỳnh\r\n', 0, 'quynh.nguyendang-gia.17-05@ymail.com', '1980-05-17 00:00:00', '36 Ngô Quyền, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '0976193617', '2010-09-22 17:41:28', '2010-09-22 17:41:28', 2),
(44, 'Quang.anh861021', '0866da90b7d4edfe6677f3fac93f5687', 'Nguyễn Quang Anh\r\n', 1, 'anhnguyenquang861021@yahoo.com', '1986-10-21 00:00:00', '25 Nguyễn Văn Cừ, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '0939975237', '2010-10-16 17:41:28', '2010-10-16 17:41:28', 2),
(45, 'chi22021968', 'b964fb376ac1b2f28401c5a6bf11a20c', 'Vũ Thái Chi\r\n', 0, 'CHIVU.THAI.22021968@yahoo.com', '1968-02-22 00:00:00', '287 Hoàng Văn Thụ, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '0892718432', '2010-10-16 21:38:48', '2010-10-16 21:38:48', 2),
(46, 'ThanhLeVan0803', 'b4672a950fa64346965e1eb0675de510', 'Lê Văn Thành\r\n', 1, 'LEVANTHANH_08_03_1987@ymail.com', '1987-03-08 00:00:00', '48D/227 QL1, P. Ba Láng, Q. Cái Răng, TP. Cần Thơ', '01236613678', '2010-10-22 21:38:48', '2010-10-22 21:38:48', 2),
(47, 'Trach12-08-98', 'e7885a47d562f5b55be7a8d57f20eae5', 'Nguyễn Văn Trạch\r\n', 1, 'nguyenvan-trach-98.08.12@ymail.com', '1998-08-12 00:00:00', '362 Ngô Quyền, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01882197735', '2010-10-27 21:38:48', '2010-10-27 21:38:48', 2),
(48, 'Thuy_Huong.Vu-Nguyen01-01-00', '86014ea386e41bd5c27181dbc22752f5', 'Nguyễn Vũ Hương Thủy\r\n', 0, 'Thuy01.01@yahoo.com.vn', '2000-01-01 00:00:00', '275 Võ Nguyên Giáp, P. Tân Phú, Q. Cái Răng, TP. Cần Thơ', '0911182436', '2010-10-29 21:38:48', '2010-10-29 21:38:48', 2),
(49, 'thanhducdo19870707', '788950d4a9a6caa06b989d19b7353e31', 'Đỗ Ðức Thành\r\n', 1, 'DD-Thanh07-07@gmail.com.vn', '1987-07-07 00:00:00', '27 Nguyễn Đệ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01285747111', '2010-10-30 00:32:00', '2010-10-30 00:32:00', 2),
(50, 'nhan_31-03', '97b08ffb6da477a06fd04df0d5452897', 'Lê Nhân', 1, 'NHAN_3103@yahoo.com.vn', '1989-03-31 00:00:00', '280 Võ Văn Kiệt, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '01629994599', '2010-10-30 05:53:12', '2010-10-30 05:53:12', 2),
(51, 'phamhuy96', 'd791d232abe9ef0a007a814db4196da0', 'Phạm Huy', 1, 'Phamhuy0504@yahoo.com', '1996-04-05 00:00:00', '60 Nguyễn Văn Cừ, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01245152794', '2010-11-01 05:53:12', '2010-11-01 05:53:12', 2),
(52, 'Tho.Anh.Thi.Nguyen1985', '47a7f050bfe06f17b02549bf4c4826e1', 'Nguyễn Thị Anh Thơ\r\n', 0, 'THONGUYENTHIANH110485@gmail.com', '1985-04-11 00:00:00', '312 3/2, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0903898381', '2010-11-22 05:53:12', '2010-11-22 05:53:12', 2),
(53, 'vo-thi-ngocyen_050714', '8cf0cb824be51e9d72ae42158bf17af6', 'Võ Thị Ngọc Yến\r\n', 0, 'ngoc.yen2005-07-14@outlook.com', '2005-07-14 00:00:00', '238 Trần Hưng Đạo, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '0971240010', '2010-11-24 05:53:12', '2010-11-24 05:53:12', 2),
(54, 'DAM.THUY-DU-1988', '3a6941d368acf07bc94d59759126bd2a', 'Đàm Thụy Du\r\n', 1, 'Thuydu\r\n-1988-10-12@hotmail.com', '1988-10-12 00:00:00', '33/273 Nguyễn An Ninh, An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01267851793', '2010-11-27 05:53:12', '2010-11-27 05:53:12', 2),
(55, 'NguyenThiHai.Anh.1978_02_06', '555e035a7be4d8d1bfd203794f829eae', 'Nguyễn Thị Hải Anh\r\n', 0, 'NguyenThiHai.Anh.06.02.1978@yahoo.com.vn', '1978-02-06 00:00:00', '6 Nguyễn Chí Thanh, P. Thới An Đông, Q. Bình Thủy, TP. Cần Thơ', '01209907462', '2010-12-22 05:53:12', '2010-12-22 05:53:12', 2),
(56, 'truongvan_bac940511', '264b2996a9a764cde2a19cf55844f4a9', 'Trương Văn Bắc\r\n', 1, 'BAC-94-05-11@hotmail.com', '1994-05-11 00:00:00', '65/146 Nguyễn Văn Cừ, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '09949716009', '2011-01-10 05:53:12', '2011-01-10 05:53:12', 2),
(57, 't_q-tu_98-09-02', 'cc2f15ff32da67e803952b0913c0db3a', 'Trần Quang Tú\r\n', 1, 'tu.tranquang19980902@gmail.com.vn', '1998-09-02 00:00:00', '386 Mậu Thân, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '09982902296', '2011-01-10 10:39:21', '2011-01-10 10:39:21', 2),
(58, 'Nguyen.ThaiNguyen.19860219', '03b00941616745efabfe132877c5ab08', 'Nguyễn Thái Nguyên\r\n', 1, 'Nguyen.19860219@yahoo.com', '1986-02-19 00:00:00', '64 Bùi Hữu Nghĩa, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '0881504920', '2011-01-12 10:39:21', '2011-01-12 10:39:21', 2),
(59, 'Thu.linh\r\n.95', 'f01fdf2d54e629caa92c81794313789a', 'Võ Thị Thu Linh\r\n', 0, 'linh_29_07_95@yahoo.com.vn', '1995-07-29 00:00:00', '133 Châu Văn Liêm, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '0976703210', '2011-01-17 10:39:21', '2011-01-17 10:39:21', 2),
(60, 'hang_bich_nguyen.16_12_1984', '62767dd1aab64aa723c044a8bed09b36', 'Nguyễn Bích Hằng\r\n', 0, 'NguyenBich_Hang-84@ymail.com', '1984-12-16 00:00:00', '20 CMT8, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01885899833', '2011-02-04 10:39:21', '2011-02-04 10:39:21', 2),
(61, 'Vanlinh\r\n_0106', '6ff6d070017b273038e17896678bb152', 'Nguyễn Đặng Văn Linh\r\n', 1, 'LINH_01-06-2001@ymail.com', '2001-06-01 00:00:00', '379 Mậu Thân, P. An Nghiệp, Q. Ninh Kiều, TP. Cần Thơ', '0931466997', '2011-02-24 10:39:21', '2011-02-24 10:39:21', 2),
(62, 'HIENNGUYEN.QUOC04.10.83', '4dcca91eade0c4d18b678b85b02b086a', 'Nguyễn Quốc Hiền\r\n', 1, 'NGUYENQUOCHIEN0410@yahoo.com', '1983-10-04 00:00:00', '160/271 Nguyễn Văn Linh, P. An Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01656668807', '2011-03-20 10:39:21', '2011-03-20 10:39:21', 2),
(63, 'nguyen_ngoc_hien-09-08-98', 'e6bfd79633e652b9b7656422155ed50e', 'Nguyễn Ngọc Hiền\r\n', 0, 'HIEN.NGUYEN_NGOC98_08_09@ymail.com', '1998-08-09 00:00:00', '189/134 Trần Phú, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '0922218741', '2011-03-20 12:00:12', '2011-03-20 12:00:12', 2),
(64, 'Phamliet-1992', 'f8bb7ccf69217d52c651d1a7383b2500', 'Nguyễn Phạm Liệt', 1, 'LIET.PHAMNGUYEN_92@yahoo.com.vn', '1992-10-19 00:00:00', '336 Nguyễn Trãi, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01697871662', '2011-04-10 12:00:12', '2011-04-10 12:00:12', 2),
(65, 'TRUONGTHIVYLAM16071997', 'c95901dc4fae263416ea2d27cf377512', 'Trương Thị Vy Lam\r\n', 0, 'vylam\r\n.19970716@outlook.com', '1997-07-16 00:00:00', '21/154 Nguyễn Trãi, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01647866215', '2011-05-04 12:00:12', '2011-05-04 12:00:12', 2),
(66, 'TRUONG.DUONG_17_07', '7db507c259abe5d6ce8c8db82f0e75f6', 'Dương Trường', 1, 'truong170759@ymail.com', '1959-07-17 00:00:00', '48 Mậu Thân, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01683768739', '2011-05-07 12:00:12', '2011-05-07 12:00:12', 2),
(67, 'NGA-PHAM-TRAN_KIEU1992.08.23', '962bb9cad4feb8ece3e50436b594574f', 'Phạm Trần Kiều Nga\r\n', 0, 'p.t_k_nga92@gmail.com.vn', '1992-08-23 00:00:00', '203 Phan Đình Phùng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '09925057193', '2011-05-17 12:00:12', '2011-05-17 12:00:12', 2),
(68, 'v_phong_77.11.18', 'b0365333bc3c44bbdb97008d7d830614', 'Vũ Phong', 1, 'Vuphong.18-11@gmail.com', '1977-11-18 00:00:00', '171 Hòa Bình, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '0974870160', '2011-05-22 12:00:12', '2011-05-22 12:00:12', 2),
(69, 'L.T_LGIANG.19770806', '0b38afd2378e3784798bb8e838c5c49c', 'Lê Thị Linh Giang\r\n', 0, 'L-T-LGIANG77-08-06@outlook.com', '1977-08-06 00:00:00', '25B/355 Hoàng Văn Thụ, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01219518238', '2011-05-29 12:00:12', '2011-05-29 12:00:12', 2),
(70, 'NTBTHAO211139', '6233a51111425dfa5f116efa3ca655e8', 'Nguyễn Thị Bích Thảo\r\n', 0, 'ThaoNguyen.ThiBich-21.11.39@hotmail.com', '1939-11-21 00:00:00', '201 Nguyễn Văn Linh, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '01659349646', '2011-06-16 12:00:12', '2011-06-16 12:00:12', 2),
(71, 'vo_21.01.1996', '8629253797fcb7fe7589befe9d1863c1', 'Lê Tiến Võ\r\n', 1, 'vo-le_tien-21_01_96@gmail.com.vn', '1996-01-21 00:00:00', '148/193 30/4, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '09927532689', '2011-06-18 12:00:12', '2011-06-18 12:00:12', 2),
(72, 'BAO-DUY_TRAN620516', '18c8eb43026051901e991852b705fe87', 'Trần Duy Bảo\r\n', 1, 'TDBao19620516@outlook.com', '1962-05-16 00:00:00', '39A/77 QL1, P. Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01620874195', '2011-06-18 17:52:23', '2011-06-18 17:52:23', 2),
(73, 'trieu_nguyen_dinhquang_95-06-25', 'b8e3a16f289323afb052fc317171b167', 'Nguyễn Đinh Quang Triệu\r\n', 1, 'trieunguyendinhquang2506@outlook.com', '1995-06-25 00:00:00', '322 Nguyễn Thị Minh Khai, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0911396929', '2011-06-19 17:52:23', '2011-06-19 17:52:23', 2),
(74, 'nguyendinh_hop_900716', '1efb6ad4e813826e399fe4b0df369412', 'Nguyễn Ðình Hợp\r\n', 1, 'Nguyen_Dinh.Hop90.07.16@gmail.com', '1990-07-16 00:00:00', '316 Nguyễn Văn Linh, P. An Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01652473994', '2011-06-19 17:52:23', '2011-06-19 17:52:23', 2),
(75, 'Quangthai\r\n.030782', 'e1ee3641aee7973121844ffdd40c9727', 'Trần Quang Thái\r\n', 1, 'Quangthai19820703@gmail.com', '1982-07-03 00:00:00', '179 Võ Văn Kiệt, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '08682269221', '2011-07-01 17:52:23', '2011-07-01 17:52:23', 2),
(76, 'DUYBUI_30_09_90', 'c1776dccad7aefb6634486f018fd8fd4', 'Bùi Duy', 1, 'DUY_BUI-30-09@gmail.com.vn', '1990-09-30 00:00:00', '287 Nguyễn Thái Học, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0916475284', '2011-07-01 17:52:23', '2011-07-01 17:52:23', 2),
(77, 'NGUYENTHUSINH29-07-79', 'bc3e1fc0fb6b828f2c650c4bf88f0f75', 'Nguyễn Thu Sinh\r\n', 1, 'SINH29071979@gmail.com', '1979-07-29 00:00:00', '154 Nguyễn Chí Thanh, P. Trà Nóc , Q. Bình Thủy, TP. Cần Thơ', '01218462992', '2011-07-05 17:52:23', '2011-07-05 17:52:23', 2),
(78, 'nghi_1988_08_22', '8192e05ecbccb87f79cd79b104627337', 'Trần Cương Nghị\r\n', 1, 'TRANCUONGNGHI_22_08@yahoo.com.vn', '1988-08-22 00:00:00', '42 Nguyễn Chí Thanh, P. Thới An Đông, Q. Bình Thủy, TP. Cần Thơ', '0978063600', '2011-07-11 17:52:23', '2011-07-11 17:52:23', 2),
(79, 'HaNgocTran040663', '314f28a692ab5b15f938fccff23a1ecf', 'Trần Ngọc Hạ\r\n', 0, 'Ha_Tran_Ngoc19630604@outlook.com', '1963-06-04 00:00:00', '171C/122 Võ Văn Tần, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01642605971', '2011-07-22 17:52:23', '2011-07-22 17:52:23', 2),
(80, 'nuong_nguyen.my.1982_10_25', '45e59b35e010ffa68cdf0cda990057bf', 'Nguyễn Mỹ Nương\r\n', 0, 'NUONG-NGUYEN_MY25.10@gmail.com.vn', '1982-10-25 00:00:00', '285 CMT8, P. Bùi Hữu Nghĩa, Q. Bình Thủy, TP. Cần Thơ', '01216280044', '2011-08-12 17:52:23', '2011-08-12 17:52:23', 2),
(81, 'CHI.NGUYEN.TRAN_KIM-18.04.1996', 'd04f4a642f9634704f2167f73ab5fd0e', 'Nguyễn Trần Kim Chi\r\n', 0, 'chi.kimtrannguyen96.04.18@ymail.com', '1996-04-18 00:00:00', '325 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '0881047574', '2011-08-17 17:52:23', '2011-08-17 17:52:23', 2),
(82, 'VY_NGUYEN-THI.DIEP-98_03_13', '10124c2042c04db27e0270a3a8d04b1b', 'Nguyễn Thị Diệp Vy\r\n', 0, 'VyDiep-Thi-Nguyen13-03-1998@outlook.com', '1998-03-13 00:00:00', '36 Ngô Gia Tự, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01231795032', '2011-08-31 17:52:23', '2011-08-31 17:52:23', 2),
(83, 'duyet-03-12-03', '8591c852dbe5c25911195f93fb15d3ff', 'Trần Phạm Văn Duyệt\r\n', 1, 'TPVDUYET031203@ymail.com', '2003-12-03 00:00:00', '11 Thái Thị Hạnh, P. Long Hưng, Q. Ô Môn, TP. Cần Thơ', '0924833079', '2011-09-04 17:52:23', '2011-09-04 17:52:23', 2),
(84, 'Hai-son\r\n-1995', '41ec16d5fa40bbe51be77d47e902cc9b', 'Nguyễn Hải Sơn\r\n', 1, 'son-nguyen-hai-95-01-04@gmail.com.vn', '1995-01-04 00:00:00', '116/85 Trần Phú, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01273865571', '2011-09-04 17:52:23', '2011-09-04 17:52:23', 2),
(85, 'Thienluan811123', 'a0e5590d6a266784bc4bb538de6d6c93', 'Lê Thiện Luân\r\n', 1, 'LUANTHIENLE811123@outlook.com', '1981-11-23 00:00:00', '161 Quang Trung, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01211119162', '2011-09-08 17:52:23', '2011-09-08 17:52:23', 2),
(86, 'nguyen.van.huu-24.11.1996', '134bc51c4c9a9a74108f6bda3e035b82', 'Nguyễn Văn Hữu\r\n', 1, 'Huu-VanNguyen-1996-11-24@yahoo.com.vn', '1996-11-24 00:00:00', '233 QL91, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01888751014', '2011-09-13 17:52:23', '2011-09-13 17:52:23', 2),
(87, 'VUPHAMVAN20040330', 'c5dea869052003537ecd673b58d397b5', 'Phạm Văn Vu\r\n', 1, 'P-VVu3003@yahoo.com', '2004-03-30 00:00:00', '122/88 CMT8, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01230157299', '2011-09-16 17:52:23', '2011-09-16 17:52:23', 2),
(88, 'THUNGUYEN.THI.MONG-26-04-85', '530a8e3650d337bd26beb24cdb85aac6', 'Nguyễn Thị Mộng Thu\r\n', 0, 'Thu26041985@gmail.com', '1985-04-26 00:00:00', '67 QL91B, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01216884243', '2011-09-16 22:40:02', '2011-09-16 22:40:02', 2),
(89, 'XUYEN_TRANNGUYEN.THI.31', '3b2e205237effa4bc862e231e8fb421b', 'Trần Nguyễn Thị Xuyến\r\n', 0, 'xuyentran_nguyen.thi_1931_12_06@gmail.com.vn', '1931-12-06 00:00:00', '115 Nguyễn Văn Cừ, P. An Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01211088793', '2011-09-20 22:40:02', '2011-09-20 22:40:02', 2),
(90, 'BAO-THIEU-PHAM-PHAN-0110', '7ca0332c7ca18f4b84fd6c99a2197bb8', 'Phan Phạm Thiệu Bảo\r\n', 1, 'PP_T_Bao05@outlook.com', '2005-10-01 00:00:00', '296 Nguyễn Chí Thanh, P. Thới An Đông, Q. Bình Thủy, TP. Cần Thơ', '01212490868', '2011-09-21 20:02:59', '2011-09-21 20:02:59', 2),
(91, 'hoang0112', 'c86ce1d823abcd658a4e4c7f000574b5', 'Phạm Hoàng', 1, 'PHOANG1984@gmail.com.vn', '1984-12-01 00:00:00', '38/373 Bùi Hữu Nghĩa, P. Long Hòa , Q. Bình Thủy, TP. Cần Thơ', '0965160722', '2011-09-30 20:02:59', '2011-09-30 20:02:59', 2),
(92, 'N.PThe98', '941fe2733bacf0aa70e3fdce4dfbc5c5', 'Nguyễn Phương Thể\r\n', 1, 'phuong-the98@gmail.com.vn', '1998-05-06 00:00:00', '286 Quang Trung, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '09996624350', '2011-09-30 21:45:54', '2011-09-30 21:45:54', 2),
(93, 'GIANGTRAN-NGUYEN_09-02-1994', '1844d81fe3af11726c78cd04a565fdd8', 'Trần Nguyễn Giang', 1, 'Nguyengiang19940209@hotmail.com', '1994-02-09 00:00:00', '351 QL91, P. Châu Văn Liêm, Q. Ô Môn, TP. Cần Thơ', '0985957929', '2011-10-15 21:45:54', '2011-10-15 21:45:54', 2),
(94, 'GIAHUNG23.12.93', 'a008de31bece219ad5b855b7ffd880d5', 'Nguyễn Gia Hưng\r\n', 1, 'HUNG_2312@ymail.com', '1993-12-23 00:00:00', '323 Trần Kiết Tường, P. Thới Hòa, Q. Ô Môn, TP. Cần Thơ', '0884352354', '2011-10-27 21:45:54', '2011-10-27 21:45:54', 2),
(95, 'chuong19870926', 'fb9cb4c8e7c5cf6b9236b67d1a9d5c75', 'Trần Nguyễn Văn Chưởng\r\n', 1, 'T-N_VChuong26.09.87@hotmail.com', '1987-09-26 00:00:00', '198C/212 Nguyễn Chí Thanh, P. Thới An Đông, Q. Bình Thủy, TP. Cần Thơ', '01216580452', '2011-10-29 21:45:54', '2011-10-29 21:45:54', 2),
(96, 'LNVDUC1979', '28d203d992445da630c9f88da4b31398', 'Lê Nguyễn Văn Đức\r\n', 1, 'DucLeNguyenVan1979@gmail.com.vn', '1979-03-18 00:00:00', '8/135 Tỉnh lộ 922, P. Châu Văn Liêm, Q. Ô Môn, TP. Cần Thơ', '01283837475', '2011-11-14 21:45:54', '2011-11-14 21:45:54', 2),
(97, 'DT.PHUONG1988.12.17', '4f1e60b7485fc4bcfcb60b6dd4552b7b', 'Đường Thu Phượng\r\n', 0, 'phuong_17.12.88@yahoo.com.vn', '1988-12-17 00:00:00', '192 Nguyễn Trãi, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01209585287', '2011-11-15 21:45:54', '2011-11-15 21:45:54', 2),
(98, 'VuHuuKhoat95', '7969b6f4d762edb86a9e429caacf59cc', 'Vũ Hữu Khoát\r\n', 1, 'Khoat19951118@hotmail.com', '1995-11-18 00:00:00', '46 QL1, P. Lê Bình, Q. Cái Răng, TP. Cần Thơ', '01210444752', '2011-11-16 18:28:03', '2011-11-16 18:28:03', 2),
(99, 'N.T_T_Q.CHI1986.11.22', 'ef2ac629291a2a6b06fcf9b6d05f04f3', 'Nguyễn Trần Thị Quỳnh Chi\r\n', 0, 'NTT-QChi22-11-1986@yahoo.com', '1986-11-22 00:00:00', '359 Nguyễn Văn Linh, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '01661493861', '2011-11-17 12:31:59', '2011-11-17 12:31:59', 2),
(100, 'HANHNGA2003', 'c983f199b27d9b79cf87e5f6f70c80ef', 'Vương Hạnh Nga\r\n', 0, 'NGA.VUONGHANH2003@yahoo.com.vn', '2003-03-14 00:00:00', '138 Trần Ngọc Quế, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01620047780', '2011-11-28 12:31:59', '2011-11-28 12:31:59', 2),
(101, 'Xuan-hanh\r\n_10_03_1961', '06bffc87700a1ae320e2a9b70028ddc7', 'Nguyễn Xuân Hạnh\r\n', 0, 'NX-HANH61@yahoo.com', '1961-03-10 00:00:00', '22B/150 CMT8, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01222350333', '2011-11-28 14:15:55', '2011-11-28 14:15:55', 2),
(102, 'Tran_Thi_GiaQuynh-96', 'e31369ac5799f0a8b2cbc4d98177fe8c', 'Trần Thị Gia Quỳnh\r\n', 0, 'Quynh.TranThiGia23.10.96@outlook.com', '1996-10-23 00:00:00', '360 Trương Văn Diễn, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '09927669347', '2011-12-02 14:15:55', '2011-12-02 14:15:55', 2),
(103, 'Nhat10021987', 'b53774d683dbfb35cc28ead65d094e2c', 'Khưu Minh Nhật\r\n', 1, 'MINHNHAT\r\n.87@outlook.com', '1987-02-10 00:00:00', '351 Nguyễn Trãi, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01640025759', '2011-12-03 14:15:55', '2011-12-03 14:15:55', 2),
(104, 'VDTCLINH1991', 'a60f41876e1c3a03f1fb963b53e47168', 'Võ Đặng Thị Cát Linh\r\n', 0, 'linh911107@gmail.com', '1991-11-07 00:00:00', '207 3/2, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01628284818', '2011-12-03 17:40:56', '2011-12-03 17:40:56', 2),
(105, 'TPXPhuong19430115', '1f9e8b2e6046d0429d172957b2c7f878', 'Trần Phạm Xuân Phương\r\n', 0, 'tranpham.xuan.phuong43@ymail.com', '1943-01-15 00:00:00', '221 CMT8, P. An Thới , Q. Bình Thủy, TP. Cần Thơ', '01675009506', '2011-12-10 17:40:56', '2011-12-10 17:40:56', 2),
(106, 't_tien.190648', '1b1792b23a61e443ec6abe7d1b71b497', 'Trần Tiến', 1, 'Tran_Tien480619@hotmail.com', '1948-06-19 00:00:00', '71/195 CMT8, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01885358981', '2011-12-18 17:40:56', '2011-12-18 17:40:56', 2),
(107, 'nguyen-van1207', '2f64a337e5fbe6c712e085aa55477d9a', 'Nguyễn Văn', 1, 'Van_Nguyen-2003@ymail.com', '2003-07-12 00:00:00', '11/341 Nguyễn Chí Thanh, P. Thới An Đông, Q. Bình Thủy, TP. Cần Thơ', '01687382628', '2011-12-22 17:40:56', '2011-12-22 17:40:56', 2),
(108, 'h-lthien80_09_14', '32ebbc578dcdb67315e26f6a94eea354', 'Huỳnh Lương Thiện\r\n', 1, 'luongthien140980@outlook.com', '1980-09-14 00:00:00', '358 Trương Văn Diễn, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '0889372990', '2011-12-26 17:40:56', '2011-12-26 17:40:56', 2),
(109, 'n-hthu01_04_16', 'a4b152b3e5924cef142d234a65d72d0f', 'Nguyễn Huyền Thư\r\n', 0, 'huyen_thu\r\n-2001@yahoo.com', '2001-04-16 00:00:00', '292 Nguyễn Văn Cừ, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '01260782888', '2011-12-26 17:58:07', '2011-12-26 17:58:07', 2),
(110, 'nguyenthaouyen19900411', 'd203157ef6b2e88c5cb270bf02eb023f', 'Nguyễn Thảo Uyên\r\n', 0, 'uyen_nguyen_thao.90-04-11@yahoo.com.vn', '1990-04-11 00:00:00', '15/5 QL1, P. Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01636424418', '2012-01-02 17:58:07', '2012-01-02 17:58:07', 2),
(111, 'mantrieunguyen040127', '4c04bad471d84113d047d844fd0bc113', 'Nguyễn Triệu Mẫn\r\n', 0, 'Man270104@gmail.com.vn', '2004-01-27 00:00:00', '120E/55 QL1, P. Lê Bình, Q. Cái Răng, TP. Cần Thơ', '01287011686', '2012-01-02 17:58:07', '2012-01-02 17:58:07', 2),
(112, 'hiep_20051956', '9e1d8a9f42a5722b4abeee2e075267ed', 'Lương Nguyễn Dân Hiệp\r\n', 1, 'DAN-HIEP\r\n.20-05-56@yahoo.com', '1956-05-20 00:00:00', '384 QL91B, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01251971583', '2012-01-06 17:58:07', '2012-01-06 17:58:07', 2),
(113, 'TRIEUQUANGNGUYEN280294', 'd528818aa8ae1c41375defbfbfde2fe8', 'Nguyễn Quang Triều\r\n', 1, 'Trieu.Quang.Nguyen-940228@gmail.com', '1994-02-28 00:00:00', '186B/25 Nguyễn Văn Cừ, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '01628790719', '2012-01-06 19:05:34', '2012-01-06 19:05:34', 2),
(114, 'n_tt_khanh_97_01_29', '2d8cad051b5f67841a00b2ba993af09e', 'Nguyễn Thị Thụy Khanh\r\n', 0, 'Khanh.19970129@gmail.com', '1997-01-29 00:00:00', '327 QL1, P. Hưng Thạnh, Q. Cái Răng, TP. Cần Thơ', '01260711456', '2012-01-06 22:33:28', '2012-01-06 22:33:28', 2),
(115, 'khai-tuan\r\n-93', '21fb87e1020d83424f580c56f9b10461', 'Ông Khải Tuấn\r\n', 1, 'ongkhai-tuan-06-08-93@gmail.com.vn', '1993-08-06 00:00:00', '154 Hòa Bình, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01663882904', '2012-01-06 23:41:53', '2012-01-06 23:41:53', 2),
(116, 'Chau011120', 'b4e95d7f82bb514d853e05a091225175', 'Nguyễn Minh Châu\r\n', 0, 'Chau2001.11.20@yahoo.com', '2001-11-20 00:00:00', '70 Võ Văn Kiệt, P. Bình Thủy , Q. Bình Thủy, TP. Cần Thơ', '0940771381', '2012-01-15 23:41:53', '2012-01-15 23:41:53', 2),
(117, 'Thanh04071976', '9f61cf1215c96b2756b241bd17fbd736', 'Phan Đan Thanh\r\n', 0, 'Thanh.Phan-Dan-04-07-76@outlook.com', '1976-07-04 00:00:00', '14/224 Nguyễn Văn Linh, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '08681795547', '2012-01-16 04:04:01', '2012-01-16 04:04:01', 2),
(118, 'THO-92', '3f651c2a75a8b32fcc7e246898860ac1', 'Trang Thọ', 1, 'Tho.Trang28091992@outlook.com', '1992-09-28 00:00:00', '380 Nguyễn Văn Cừ, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01620263592', '2012-01-19 04:04:01', '2012-01-19 04:04:01', 2),
(119, 'NGUYEN-LOC-28062000', '883ee3bfd0d193f9d8e543e78fc125a1', 'Nguyễn Lộc', 1, 'NGUYEN-LOC-00-06-28@yahoo.com.vn', '2000-06-28 00:00:00', '82 Châu Văn Liêm, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01275393084', '2012-01-20 04:04:01', '2012-01-20 04:04:01', 2),
(120, 'quan.phuongthido.93.07.31', '3fbcbd9f358e44eb9481b9f137ff3aae', 'Đỗ Thị Phương Quân\r\n', 0, 'quan-31_07@outlook.com', '1993-07-31 00:00:00', '95A/44 Trương Văn Diễn, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01275522081', '2012-01-25 04:04:01', '2012-01-25 04:04:01', 2),
(121, 'Huu_khang\r\n_1982', '140a69d8cf1cc0ee4cc5bd8bb42244ae', 'Nguyễn Huỳnh Hữu Khang\r\n', 1, 'khanghuuhuynhnguyen1982@ymail.com', '1982-06-15 00:00:00', '225 Lý Tự Trọng, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01278231960', '2012-02-19 04:04:01', '2012-02-19 04:04:01', 2),
(122, 'n_t-huyen08-11-1988', '6191a140c835ceeb01e7a61fccc91f7a', 'Nguyễn Thúy Huyền\r\n', 0, 'huyen-nguyen-thuy881108@yahoo.com.vn', '1988-11-08 00:00:00', '34 Trần Văn Hoài, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0880831082', '2012-02-20 04:04:01', '2012-02-20 04:04:01', 2),
(123, 'anhle_huynhthivang0108', '1a54d1e0f837cf8e27d4e8c34e8b436b', 'Lê Huỳnh Thị Vàng Anh\r\n', 0, 'Vanganh010879@gmail.com', '1979-08-01 00:00:00', '272 Hòa Bình, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01868856432', '2012-02-23 04:04:01', '2012-02-23 04:04:01', 2),
(124, 'NGUYEN_TRUNGDUNG_1979', 'ea616be0094334b9f1bcdaefa831e07a', 'Nguyễn Trung Dũng\r\n', 1, 'DUNGNGUYENTRUNG03121979@outlook.com', '1979-12-03 00:00:00', '152 Phan Đình Phùng, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01258883461', '2012-02-23 13:08:11', '2012-02-23 13:08:11', 2),
(125, 'NGUYETLETHIMONG05011990', '33283fa26e1221a538afc2117bbac482', 'Lê Thị Mộng Nguyệt\r\n', 0, 'nguyet-mong_thi_le_05_01_90@ymail.com', '1990-01-05 00:00:00', '94B/270 Hòa Bình, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01695737194', '2012-03-18 13:08:11', '2012-03-18 13:08:11', 2),
(126, 'Van_tuyen\r\n_2000-04-19', '79c776b6ab0532209dc9f80b965f7745', 'Đỗ Lê Văn Tuyển\r\n', 1, 'TUYEN2000_04_19@outlook.com', '2000-04-19 00:00:00', '76G/110 Ngô Gia Tự, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01643421066', '2012-03-18 15:49:07', '2012-03-18 15:49:07', 2),
(127, 'LeHuu-Thuc43', 'a450879252b25392ffbbc8d888910109', 'Lê Hữu Thực\r\n', 1, 'Thuc.04.09.1943@ymail.com', '1943-09-04 00:00:00', '241 Đinh Công Chánh, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '01246674769', '2012-03-19 15:49:07', '2012-03-19 15:49:07', 2),
(128, 'PSMAI.100600', 'e296c2eb379949343f6c9e5ab2dd1e76', 'Phạm Sao Mai\r\n', 0, 'mai_00@gmail.com.vn', '2000-06-10 00:00:00', '123 Tỉnh lộ 923, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '08688622380', '2012-03-26 15:49:07', '2012-03-26 15:49:07', 2),
(129, 'pham-tuyetchi_03', 'c71332572e17123deb5a10f0df63a37e', 'Phạm Tuyết Chi\r\n', 0, 'phamtuyet.chi.050103@yahoo.com.vn', '2003-01-05 00:00:00', '119C/105 Trần Ngọc Quế, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01280787623', '2012-04-18 15:49:07', '2012-04-18 15:49:07', 2),
(130, 'Phuc-1990', 'e802503f058094cecfd6b8e096e42e1d', 'Phạm Văn Phúc\r\n', 1, 'phucvan_pham_90@ymail.com', '1990-06-27 00:00:00', '139 Xô Viết Nghệ Tĩnh, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '0940205323', '2012-05-02 15:49:07', '2012-05-02 15:49:07', 2),
(131, 'vien03051983', '819552ae0fcf8e124f1c0cd14d076e5a', 'Nguyễn Lâm Viên\r\n', 1, 'VienLamNguyen19830503@yahoo.com.vn', '1983-05-03 00:00:00', '395 Mậu Thân, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '0929474481', '2012-05-06 15:49:07', '2012-05-06 15:49:07', 2),
(132, 'tuyetthanhthinguyenbui2307', '149b46311bbba267b67789d1a265bab7', 'Bùi Nguyễn Thị Thanh Tuyết\r\n', 0, 'Thanh_tuyet23_07_1995@yahoo.com.vn', '1995-07-23 00:00:00', '371 Hòa Bình, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0932023507', '2012-05-19 15:49:07', '2012-05-19 15:49:07', 2),
(133, 'NTMTram0809', '6a041d697119e25e4a0025602dec2ea2', 'Nguyễn Thị Mỹ Trâm\r\n', 0, 'Tram93@outlook.com', '1993-09-08 00:00:00', '181 Đặng Thanh Sử, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01288959801', '2012-05-19 15:49:07', '2012-05-19 15:49:07', 2),
(134, 'hathienpham611025', 'ac7939528db9618e5b04e7194d4dd778', 'Phạm Thiên Hà\r\n', 0, 'hathienpham_611025@yahoo.com.vn', '1961-10-25 00:00:00', '310 Quang Trung, P.  Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '09961343204', '2012-05-19 17:06:54', '2012-05-19 17:06:54', 2),
(135, 'THIEN_XUAN-NGUYEN.55', 'cbab684924592f13a9c4afaf48a27c46', 'Nguyễn Xuân Thiện\r\n', 1, 'THIEN1955_10_23@gmail.com.vn', '1955-10-23 00:00:00', '118 Hòa Bình, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01864726765', '2012-05-19 19:25:17', '2012-05-19 19:25:17', 2),
(136, 'dinh-nguyenbinh-17-10-1982', '88c29400b7afc718f5c02186879ff7e3', 'Nguyễn Bình Ðịnh\r\n', 1, 'binh_dinh82_10_17@yahoo.com', '1982-10-17 00:00:00', '274 Trần Văn Hoài, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01630301519', '2012-05-26 19:25:17', '2012-05-26 19:25:17', 2),
(137, 'NGUYET_ANH1922-08-24', 'a35cabe8faf0392f8e0e311239ec1980', 'Phan Nguyệt Anh\r\n', 0, 'ANH24081922@hotmail.com', '1922-08-24 00:00:00', '294 Quang Trung, P.  Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01644692432', '2012-06-02 19:25:17', '2012-06-02 19:25:17', 2),
(138, 'NGHIAMINHKHUU950812', '158a6fd4c7ac26c3f1d192b2b768849a', 'Khưu Minh Nghĩa\r\n', 1, 'NGHIAKHUUMINH_1995@gmail.com', '1995-08-12 00:00:00', '278 Nguyễn Văn Cừ, P. An Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0931789645', '2012-06-02 20:26:33', '2012-06-02 20:26:33', 2),
(139, 'TUYET-THANH\r\n-03', '988c1c697adc613ec79c1323c3c57eb5', 'Huỳnh Tuyết Thanh\r\n', 0, 'tuyet_thanh03@gmail.com.vn', '2003-04-11 00:00:00', '137 Võ Nguyên Giáp, P. Phú Thứ, Q. Cái Răng, TP. Cần Thơ', '0925799171', '2012-06-06 20:26:33', '2012-06-06 20:26:33', 2),
(140, 'congvannguyen_22101985', 'cf6e05d835ca26329c52f70dd1fe3aa2', 'Nguyễn Văn Công\r\n', 1, 'congnguyen.van1985@yahoo.com.vn', '1985-10-22 00:00:00', '159/384 Nguyễn Trãi, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01639195927', '2012-06-07 06:42:52', '2012-06-07 06:42:52', 2),
(141, 'THAO-1996', '26ab0fe08f8159471215e29a3c0cc11a', 'Phạm Thị Thái Thảo\r\n', 0, 'thaophamthithai07031996@outlook.com', '1996-03-07 00:00:00', '88/133 CMT8, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '0901876779', '2012-06-10 06:42:52', '2012-06-10 06:42:52', 2),
(142, 'quy_vanle00', '4a1c0d7dc4f3ea79599129916b5def53', 'Lê Văn Quý\r\n', 1, 'lvquy000930@ymail.com', '2000-09-30 00:00:00', '200E/148 Nguyễn Trãi, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01268699854', '2012-06-11 02:51:26', '2012-06-11 02:51:26', 2),
(143, 'Nga-DoPhamThiBich-0604', 'f4086aeae517cd8dbfe8a25294797612', 'Đỗ Phạm Thị Bích Ngà\r\n', 0, 'D-P-T-B-NGA-000406@yahoo.com.vn', '2000-04-06 00:00:00', '157 Mậu Thân, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01216934489', '2012-06-24 02:51:26', '2012-06-24 02:51:26', 2),
(144, 'NguyetNguyen_Thu_1938', 'a57aa10c852682acc5dfecb376bcd3c8', 'Nguyễn Thu Nguyệt\r\n', 0, 'Nguyet_09_10_1938@yahoo.com.vn', '1938-10-09 00:00:00', '164 Trần Hưng Đạo, P. An Nghiệp, Q. Ninh Kiều, TP. Cần Thơ', '01867144049', '2012-06-24 13:49:59', '2012-06-24 13:49:59', 2),
(145, 'Bichhang\r\n.1980', '9dd0a2e236eca1f914d531d999082691', 'Nguyễn Lê Bích Hằng\r\n', 0, 'NLBHANG80@yahoo.com.vn', '1980-12-12 00:00:00', '179/155 Tỉnh lộ 923, P. Trường Lạc, Q. Ô Môn, TP. Cần Thơ', '01275093776', '2012-06-30 13:49:59', '2012-06-30 13:49:59', 2),
(146, 'vien-tran-van_00', 'b227b1f173e0d5ed434ccc9b8f188cbf', 'Trần Văn Viên\r\n', 1, 'vanvien2000@hotmail.com', '2000-06-28 00:00:00', '70 Võ Văn Kiệt, P. Bình Thủy , Q. Bình Thủy, TP. Cần Thơ', '01261038113', '2012-07-22 13:49:59', '2012-07-22 13:49:59', 2),
(147, 'LOAN19960130', '9705081c7f2a9ca4e8f4ab8205a17f4b', 'Nguyễn Phương Loan\r\n', 0, 'phuongloan300196@yahoo.com.vn', '1996-01-30 00:00:00', '194 3/2, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '01627216840', '2012-07-23 12:39:04', '2012-07-23 12:39:04', 2),
(148, 'TAMNGUYENTHIEN19780708', 'e22be0d96be5224769589a2804002a35', 'Nguyễn Thiện Tâm\r\n', 1, 'NGUYENTHIEN.TAM.780708@gmail.com', '1978-07-08 00:00:00', '365 CMT8, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01648616903', '2012-07-28 12:39:04', '2012-07-28 12:39:04', 2),
(149, 'Hung_ngoc\r\n_2000.05.15', 'f938fde408a6a5392159fda138e5bd11', 'Lê Hùng Ngọc\r\n', 1, 'LHNGOC.15.05.00@gmail.com', '2000-05-15 00:00:00', '291 Nguyễn Truyền Thanh, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01682066575', '2012-07-28 14:56:24', '2012-07-28 14:56:24', 2),
(150, 'Hoai-Nguyen-Le.02-05-30', 'ef5a73ee08c2c0a4c5c0aaead25b6dde', 'Nguyễn Lê Hoài', 1, 'LE-HOAI30-05-2002@hotmail.com', '2002-05-30 00:00:00', '59C/202 Trần Hưng Đạo, P. An Nghiệp, Q. Ninh Kiều, TP. Cần Thơ', '01658421770', '2012-07-28 22:59:13', '2012-07-28 22:59:13', 2),
(151, 'DINHHUYNHHA300983', '06fb14ba1c8b8c8e9a39042ffc6e3c11', 'Đinh Huỳnh Hà', 1, 'd_h_ha_300983@gmail.com', '1983-09-30 00:00:00', '172 Bùi Hữu Nghĩa, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '0891971098', '2012-07-29 22:52:02', '2012-07-29 22:52:02', 2),
(152, 'Nhat_huy\r\n.1996', '047dc168350aa1c4e32c906213eb811a', 'Nguyễn Nhật Huy\r\n', 1, 'huy_1996_09_27@gmail.com.vn', '1996-09-27 00:00:00', '373 Trần Quang Diệu, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01268120796', '2012-08-07 22:52:02', '2012-08-07 22:52:02', 2),
(153, 'KhaiVuongViet81', '868015ddb81b1789f1ab60f8dddab9fa', 'Vương Việt Khải\r\n', 1, 'khaivuongviet151281@gmail.com.vn', '1981-12-15 00:00:00', '163 Hoàng Văn Thụ, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01260454199', '2012-08-21 22:52:02', '2012-08-21 22:52:02', 2),
(154, 'Ledien1304', '266d367dc69b0565f9c83ec5e275c761', 'Trần Lê Ðiền', 1, 'LEDIEN04@outlook.com', '2004-04-13 00:00:00', '104 Lý Tự Trọng, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01257976724', '2012-09-14 22:52:02', '2012-09-14 22:52:02', 2),
(155, 'THI_CUONG\r\n.51.03.03', '4cba2a9097151f1aa3f5bae1e41940b5', 'Trần Thị Cương\r\n', 0, 'CUONGTRANTHI51@gmail.com', '1951-03-03 00:00:00', '29/312 30/4, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01676936029', '2012-09-15 03:13:09', '2012-09-15 03:13:09', 2),
(156, 'NHI_MINH_THI_NGO-78', '67022b6fdccc103d4f819c0f75d02b1d', 'Ngô Thị Minh Nhi\r\n', 0, 'NHIMINH.THI_NGO_0805@ymail.com', '1978-05-08 00:00:00', '334 Nguyễn Văn Linh, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01636501004', '2012-09-24 03:13:09', '2012-09-24 03:13:09', 2),
(157, 'Luc-The-Nguyen-1944', 'e25ea45e79b5cf656ac29cc86d48ab77', 'Nguyễn Thế Lực\r\n', 1, 'NGUYENTHELUC1944@gmail.com.vn', '1944-07-21 00:00:00', '251 Phan Đình Phùng, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01286106039', '2012-09-24 04:02:37', '2012-09-24 04:02:37', 2),
(158, 'PHAN_THI_MAICHI_1943', '633ab72894fbc9d04c969f44e863bce8', 'Phan Thị Mai Chi\r\n', 0, 'ChiPhan_ThiMai43@yahoo.com', '1943-09-01 00:00:00', '43/144 Nguyễn Văn Linh, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '01215056411', '2012-10-19 04:02:37', '2012-10-19 04:02:37', 2),
(159, 'cuongdactran22101988', 'bb0855b6a81b0a750879a285480322b7', 'Trần Ðắc Cường\r\n', 1, 'cuong_tran_dac88-10-22@yahoo.com.vn', '1988-10-22 00:00:00', '75 Thái Thị Hạnh, P. Thới Long, Q. Ô Môn, TP. Cần Thơ', '0918830376', '2012-10-20 04:02:37', '2012-10-20 04:02:37', 2),
(160, 'P.T_LBinh21', '30acb1c29d0bf0318fa22fac7c78df22', 'Phạm Thị Lục Bình\r\n', 0, 'LUC-BINH\r\n-181021@outlook.com', '1921-10-18 00:00:00', '182 3/2, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0965233142', '2012-11-06 04:02:37', '2012-11-06 04:02:37', 2),
(161, 'h-an-96', '9e4eb48bcfdcff3c55731cea816e9c06', 'Huỳnh Ân', 1, 'huynh-an-18-10-1996@hotmail.com', '1996-10-18 00:00:00', '148 Nguyễn Văn Bông, P. Long Tuyền, Q. Bình Thủy, TP. Cần Thơ', '0901261187', '2012-11-22 04:02:37', '2012-11-22 04:02:37', 2),
(162, 'L.NT-Viet-1990', 'c9a946ca64186b91f1667046a58e5752', 'Lê Nguyễn Tuấn Việt\r\n', 1, 'viet_1990_10_22@hotmail.com', '1990-10-22 00:00:00', '332 3/2, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '0939558241', '2012-11-27 04:02:37', '2012-11-27 04:02:37', 2),
(163, 'lapcongnguyen20001210', 'e6ccec79fba498f479104ad6104a62c7', 'Nguyễn Công Lập\r\n', 1, 'lapnguyen.cong2000@gmail.com', '2000-12-10 00:00:00', '11 Lộ Vòng Cung, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '01991466386', '2012-11-30 04:02:37', '2012-11-30 04:02:37', 2),
(164, 'THIENPHUOC1995_06_29', '4bb368a72502390954899e757e62b92a', 'Thạch Thiện Phước\r\n', 1, 'THACH_THIEN-PHUOC1995@gmail.com', '1995-06-29 00:00:00', '185A/97 Quang Trung, P.  Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01679901758', '2012-11-30 04:54:07', '2012-11-30 04:54:07', 2),
(165, 'Duc10-09', '5a285e1ba0b7a41f00dce7f81811612f', 'Nguyễn Tiến Ðức\r\n', 1, 'duc-tien-nguyen_10091998@ymail.com', '1998-09-10 00:00:00', '398 QL1, P. Lê Bình, Q. Cái Răng, TP. Cần Thơ', '09984808230', '2012-12-15 04:54:07', '2012-12-15 04:54:07', 2),
(166, 'THO2103', 'c0e4522b7b2c9c60c66483e17de21f7e', 'Đỗ Ngô Quỳnh Thơ\r\n', 0, 'tho02@gmail.com', '2002-03-21 00:00:00', '173 Nguyễn Đệ, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01225474034', '2012-12-23 04:54:07', '2012-12-23 04:54:07', 2),
(167, 'QUANG_TRAN_VAN19920525', '51e6511cdc6b45fe7cab4f14b1c1fbaf', 'Trần Văn Quảng\r\n', 1, 'Tran-VanQuang.25.05@gmail.com', '1992-05-25 00:00:00', '19/67/32/246 Nguyễn Văn Cừ, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '08682016995', '2012-12-23 07:37:04', '2012-12-23 07:37:04', 2),
(168, 'dn_th_diem-87', 'cadec417b27bc1680beaf9b54372177e', 'Đặng Nguyễn Thị Hồng Diễm\r\n', 0, 'Hong-diem87@hotmail.com', '1987-01-22 00:00:00', '208 Phan Văn Trị, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '0883615820', '2012-12-23 07:37:04', '2012-12-23 07:37:04', 2),
(169, 'Nguyen_lac_19890801', '94e2a556b17c297ebd37a4212090f91d', 'Bành Nguyễn Lạc', 1, 'BanhNguyen_Lac89.08.01@ymail.com', '1989-08-01 00:00:00', '229 Võ Văn Kiệt, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '01888574373', '2012-12-23 07:37:04', '2012-12-23 07:37:04', 2),
(170, 'vietnhan191181', '96ce028a7ec7184b35363e6baddd2938', 'Nguyễn Việt Nhân\r\n', 1, 'nhanvietnguyen811119@yahoo.com', '1981-11-19 00:00:00', '18 Đinh Công Chánh, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '0912599182', '2013-01-05 07:37:04', '2013-01-05 07:37:04', 2),
(171, 'Oanh1990', '0d988d07e9ad59da863f8038b5a433b9', 'Nguyễn Võ Thục Oanh\r\n', 0, 'Oanh1990@yahoo.com.vn', '1990-01-11 00:00:00', '356 Ngô Gia Tự, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01295897830', '2013-01-06 02:08:02', '2013-01-06 02:08:02', 2),
(172, 'T-N-TD-PHUC-1979', '1d4aca2bf2ed4512f08e6b079398366c', 'Trần Nguyễn Thị Diễm Phúc\r\n', 0, 'PHUC_DIEM_THI_NGUYENTRAN_0103@outlook.com', '1979-03-01 00:00:00', '195 Mậu Thân, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '0887628829', '2013-01-13 02:08:02', '2013-01-13 02:08:02', 2),
(173, 'nguyenhanhi2002', '85c4558b8d0699ed98402b3791552762', 'Nguyễn Hà Nhi\r\n', 0, 'NHI3112@yahoo.com', '2002-12-31 00:00:00', '263 Ngô Quyền, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01694784177', '2013-01-14 00:16:42', '2013-01-14 00:16:42', 2),
(174, 'nguyenquynh-nga-06051988', '8632e6f162f821849619e53d5f56aec6', 'Nguyễn Quỳnh Nga\r\n', 0, 'Nga-Nguyen-Quynh.88@hotmail.com', '1988-05-06 00:00:00', '200/383 Bùi Hữu Nghĩa, P. Long Hòa , Q. Bình Thủy, TP. Cần Thơ', '01671968477', '2013-01-14 00:56:28', '2013-01-14 00:56:28', 2),
(175, 'L_P_LE01-04-06', 'de606e5b217496c9faa9f68952e6e3ae', 'Lê Phượng Lệ\r\n', 0, 'le.phuongle-2001@yahoo.com', '2001-04-06 00:00:00', '300 Tỉnh lộ 923, P. Trường Lạc, Q. Ô Môn, TP. Cần Thơ', '01653923339', '2013-01-23 00:56:28', '2013-01-23 00:56:28', 2),
(176, 'HOP0711', '1c872a14dad35be743f5680d5cb381b9', 'Nguyễn Văn Hợp\r\n', 1, 'Nguyen-Van-Hop07111990@hotmail.com', '1990-11-07 00:00:00', '144 Xô Viết Nghệ Tĩnh, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01653008553', '2013-01-26 00:56:28', '2013-01-26 00:56:28', 2),
(177, 'HoangPhamSy-19820415', '51b9ea5aa3604dcf824b065c6e358fab', 'Phạm Sỹ Hoàng\r\n', 1, 'HOANGSYPHAM82@yahoo.com', '1982-04-15 00:00:00', '13/54/66/35 Nguyễn Thái Học, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01634566227', '2013-01-26 02:53:46', '2013-01-26 02:53:46', 2),
(178, 'MIEN.HAI.PHAM.TRAN92.12.07', '272e96358860971ba05922fd764c1039', 'Trần Phạm Hải Miên\r\n', 0, 'MIEN92@gmail.com.vn', '1992-12-07 00:00:00', '359 Lê Hồng Phong, P. Trà Nóc, Q. Bình Thủy, TP. Cần Thơ', '01630385016', '2013-01-29 02:53:46', '2013-01-29 02:53:46', 2),
(179, 'KhiemVu-Chi-82', '044779915a996830671ec734d2d49e6b', 'Vũ Chí Khiêm\r\n', 1, 'VU_CHI_KHIEM82@yahoo.com', '1982-02-17 00:00:00', '165A/306 Trần Kiết Tường, P. Thới Hòa, Q. Ô Môn, TP. Cần Thơ', '01641689543', '2013-02-18 02:53:46', '2013-02-18 02:53:46', 2),
(180, 'th.t.nhi.17.12.2001', 'cec80b06d640fa2382990fd286b5ca4a', 'Trần Huỳnh Tâm Nhi\r\n', 0, 'tran_huynh-tam-nhi_01@gmail.com', '2001-12-17 00:00:00', '40 Xô Viết Nghệ Tĩnh, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '09938494089', '2013-02-18 02:53:46', '2013-02-18 02:53:46', 2),
(181, 'son_nguyen_truong94', '8cb885608befa21fa659192f2c1b867f', 'Trương Nguyễn Sơn', 1, 'SON18_10@hotmail.com', '1994-10-18 00:00:00', '148/181 Hùng Vương, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01659705475', '2013-02-28 02:53:46', '2013-02-28 02:53:46', 2),
(182, 'TrieuNguyen940225', 'cb239fc14a31e92ae09b5bd1a6730c6c', 'Nguyễn Triều', 1, 'Nguyentrieu94@gmail.com', '1994-02-25 00:00:00', '60 Võ Nguyên Giáp, P. Phú Thứ, Q. Cái Răng, TP. Cần Thơ', '0966920595', '2013-03-15 02:53:46', '2013-03-15 02:53:46', 2),
(183, 'phanlethanhvu870420', 'b5e7874c131d5a9998220cf6a257edcf', 'Phan Lê Thanh Vũ\r\n', 1, 'VuPhan.Le.Thanh.87.04.20@gmail.com', '1987-04-20 00:00:00', '143A/313 Phan Đình Phùng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01659992464', '2013-04-09 02:53:46', '2013-04-09 02:53:46', 2),
(184, 'man.nguyentranthi_thanh88.04.17', '1106ff72d62adf1ff3175b6e29a599c0', 'Nguyễn Trần Thị Thanh Mẫn\r\n', 0, 'MAN_NGUYEN_TRANTHITHANH17_04_88@gmail.com.vn', '1988-04-17 00:00:00', '369 Nguyễn Văn Linh, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01687924064', '2013-04-15 02:53:46', '2013-04-15 02:53:46', 2),
(185, 'TN.Son12.03', '265c1cba7721f22d6b406ef11cfcb72e', 'Trần Nam Sơn\r\n', 1, 'SON_NAMTRAN_1998@gmail.com.vn', '1998-03-12 00:00:00', '114 Đặng Thanh Sử, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '09920898914', '2013-04-20 02:53:46', '2013-04-20 02:53:46', 2),
(186, 'mong.hoan29.03.84', 'b2732ed80d2387d700dbd3864f00a7fb', 'Lê Mộng Hoàn\r\n', 1, 'HOAN-LE-MONG1984@gmail.com.vn', '1984-03-29 00:00:00', '51 Huỳnh Phan Hộ, P. Trà An, Q. Bình Thủy, TP. Cần Thơ', '01995635895', '2013-04-30 02:53:46', '2013-04-30 02:53:46', 2),
(187, 'Quynh.lam1940', '4c6122e41fb74c05971634e385edb334', 'Nguyễn Quỳnh Lâm\r\n', 0, 'Lam.26.10.1940@hotmail.com', '1940-10-26 00:00:00', '144/19 Quang Trung, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01682240016', '2013-05-01 02:53:46', '2013-05-01 02:53:46', 2);
INSERT INTO `khachhang` (`kh_ma`, `kh_taiKhoan`, `kh_matKhau`, `kh_hoTen`, `kh_gioiTinh`, `kh_email`, `kh_ngaySinh`, `kh_diaChi`, `kh_dienThoai`, `kh_taoMoi`, `kh_capNhat`, `kh_trangThai`) VALUES
(188, 'lap19791217', 'ba0434612b9f64a436cf1557224d9947', 'Trần Gia Lập\r\n', 1, 'Gialap\r\n-79@outlook.com', '1979-12-17 00:00:00', '93 Châu Văn Liêm, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01244497120', '2013-05-01 06:10:23', '2013-05-01 06:10:23', 2),
(189, 'nhahuynh140560', 'af0234d5e4cfc2f323a02037293a42ab', 'Huỳnh Nhã', 1, 'hnha.14.05.60@hotmail.com', '1960-05-14 00:00:00', '388 CMT8, P. An Thới , Q. Bình Thủy, TP. Cần Thơ', '01670117231', '2013-05-01 16:45:03', '2013-05-01 16:45:03', 2),
(190, 'phuonghanhthile_13_02_83', '6331cc12c480a2d991ba7b77b375e3c0', 'Lê Thị Hạnh Phương\r\n', 0, 'Hanh.phuong83@outlook.com', '1983-02-13 00:00:00', '67/100 30/4, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '09996954411', '2013-05-15 16:45:03', '2013-05-15 16:45:03', 2),
(191, 'vo.vanvuong-tran-59-08-01', '276018b0f24a7486d6a2e1ef4279bf50', 'Trần Vương Văn Võ\r\n', 1, 'VAN_VO\r\n.59@outlook.com', '1959-08-01 00:00:00', '363 Võ Văn Kiệt, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '0941763141', '2013-06-04 16:45:03', '2013-06-04 16:45:03', 2),
(192, 'BUITUONG04101997', '5964fa19eae97625e8db9da30f3a3d33', 'Bùi Tường', 1, 'tuong-bui.971004@yahoo.com', '1997-10-04 00:00:00', '26/176 Nguyễn Văn Linh, P. An Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01676673390', '2013-06-19 16:45:03', '2013-06-19 16:45:03', 2),
(193, 'VOTHAIMINH99', 'c3514f107a3fef3bdc7ae93cdc6bb72d', 'Võ Thái Minh\r\n', 1, 'thai.minh180799@gmail.com', '1999-07-18 00:00:00', '372 Phan Văn Trị, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01213059850', '2013-06-19 16:45:03', '2013-06-19 16:45:03', 2),
(194, 'GIANG470329', '8706351079e378112adf4d407d245cc3', 'Nguyễn Thùy Giang\r\n', 0, 'nt-giang29-03@ymail.com', '1947-03-29 00:00:00', '114/266 Lê Hồng Phong, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01233197877', '2013-06-24 16:45:03', '2013-06-24 16:45:03', 2),
(195, 'Nguyen_ThiYenPhuong1956', '42373ba3dab64ec610a64f7c78615387', 'Nguyễn Thị Yến Phương\r\n', 0, 'phuong24.02.1956@outlook.com', '1956-02-24 00:00:00', '353 Lê Hồng Phong, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01665459787', '2013-06-27 16:45:03', '2013-06-27 16:45:03', 2),
(196, 'dong_nghi\r\n_19841209', 'b46e56ce03450f622dd0638fe177f806', 'Nguyễn Ðông Nghi\r\n', 0, 'NghiNguyen_Dong_1984@ymail.com', '1984-12-09 00:00:00', '29/246 Quang Trung, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01686251488', '2013-07-12 16:45:03', '2013-07-12 16:45:03', 2),
(197, 'HAI.56-10-31', 'ace47a4cbc17e93dccfae43819de6f55', 'Lê Ðức Hải\r\n', 1, 'LE.DUC_HAI.31-10-56@ymail.com', '1956-10-31 00:00:00', '382 QL1, P. Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01667804386', '2013-07-14 16:45:03', '2013-07-14 16:45:03', 2),
(198, 'tamthanhthihuynh24081997', '78aab87c7d871f1a1b9703457ee5fa43', 'Huỳnh Thị Thanh Tâm\r\n', 0, 'h.tt.tam2408@gmail.com.vn', '1997-08-24 00:00:00', '82 QL91, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01280384151', '2013-07-29 16:45:03', '2013-07-29 16:45:03', 2),
(199, 'T.H-TRI.14_10_1983', 'd0e839bad8103494fd81f36a0ee777ae', 'Trần Hữu Trí\r\n', 1, 'Tri831014@gmail.com', '1983-10-14 00:00:00', '173D/252 30/4, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01215768805', '2013-08-01 16:45:03', '2013-08-01 16:45:03', 2),
(200, 'L-H-KHANG19990509', 'bb92b4ef197aa2466d82a66b8a44fe7c', 'Lê Hữu Khang\r\n', 1, 'KHANGHUULE090599@outlook.com', '1999-05-09 00:00:00', '143B/80 3/2, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01663100199', '2013-08-01 17:53:33', '2013-08-01 17:53:33', 2),
(201, 'BTLam_140589', '49a7908133db5df5ae3844fcf7f73148', 'Bùi Thị Lâm\r\n', 0, 'LAM.THI.BUI.1989@yahoo.com.vn', '1989-05-14 00:00:00', '94/25 Nguyễn Văn Linh, P. Thới An Đông, Q. Bình Thủy, TP. Cần Thơ', '09942018615', '2013-08-11 17:53:33', '2013-08-11 17:53:33', 2),
(202, 'HUNG18_05', 'f24462a16909b66f190a18c2b21f9b6c', 'Nguyễn Văn Hưng\r\n', 1, 'Hung180504@outlook.com', '2004-05-18 00:00:00', '152 Thái Thị Hạnh, P. Thới Long, Q. Ô Môn, TP. Cần Thơ', '01626341120', '2013-08-12 06:58:27', '2013-08-12 06:58:27', 2),
(203, 'Ha060188', '3b340e03e85e7adee9941ffbdf4d392f', 'Phạm Thị Thu Hà\r\n', 0, 'P_T-THa.88.01.06@ymail.com', '1988-01-06 00:00:00', '330 Nguyễn Văn Cừ, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '01637335364', '2013-08-12 06:58:27', '2013-08-12 06:58:27', 2),
(204, 'HoaLeDoThiMong010304', '604b62284b272574bd8273fb08c18bd1', 'Lê Đỗ Thị Mộng Hoa\r\n', 0, 'HoaMongThiDoLe2004@yahoo.com', '2004-03-01 00:00:00', '30/43/28/201 QL1, P. Hưng Thạnh, Q. Cái Răng, TP. Cần Thơ', '01215388662', '2013-08-22 06:58:27', '2013-08-22 06:58:27', 2),
(205, 'mi-hathi24-10', 'd008f393340b5ba64c69dc508268f030', 'Hà Thị Mi\r\n', 0, 'THIMI\r\n.1984-10-24@hotmail.com', '1984-10-24 00:00:00', '214 Trần Hưng Đạo, P. An Nghiệp, Q. Ninh Kiều, TP. Cần Thơ', '01880811096', '2013-08-31 06:58:27', '2013-08-31 06:58:27', 2),
(206, 'Chien_DinhPham-24_11_62', '5646371b48c27e520287d3cd68ca9861', 'Phạm Đình Chiến\r\n', 1, 'P.D.Chien.24.11.62@gmail.com', '1962-11-24 00:00:00', '85 QL91, P. Thới Hòa, Q. Ô Môn, TP. Cần Thơ', '0933798818', '2013-09-05 06:58:27', '2013-09-05 06:58:27', 2),
(207, 'NguyenThiHanhNga.17.01.98', '0fdf076bee55e1903b8d19dd035cf52b', 'Nguyễn Thị Hạnh Nga\r\n', 0, 'NGUYEN.THI.HANHNGA.98.01.17@yahoo.com', '1998-01-17 00:00:00', '134A/60 Nguyễn Thị Minh Khai, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01676826865', '2013-09-18 06:58:27', '2013-09-18 06:58:27', 2),
(208, 'TAM120148', '394c0491c48778612093e9eb4d0fcbf0', 'Ngô Văn Tâm\r\n', 1, 'TamVan-Ngo12-01-1948@ymail.com', '1948-01-12 00:00:00', '381 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01200014427', '2013-09-18 10:32:36', '2013-09-18 10:32:36', 2),
(209, 'NKIET-19841225', 'e909523d31fe5252cdfc37b5e3de47bd', 'Nguyễn Kiệt', 1, 'kiet_84@gmail.com', '1984-12-25 00:00:00', '84/205 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01237689933', '2013-10-11 10:32:36', '2013-10-11 10:32:36', 2),
(210, 'hong.nhuan\r\n_86.01.30', '0bbed0b0be9723dcfcddc0decd401c0c', 'Ngô Hồng Nhuận\r\n', 1, 'nhuan-hong-ngo860130@ymail.com', '1986-01-30 00:00:00', '165 Lý Tự Trọng, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01865857135', '2013-10-14 10:32:36', '2013-10-14 10:32:36', 2),
(211, 'NuongOngDuyen19531220', 'c698e3b4212f80216064b9037b49bd38', 'Ông Duyên Nương\r\n', 0, 'nuong-duyen_ong-19531220@gmail.com', '1953-12-20 00:00:00', '61 Đinh Tiên Hoàng, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '09957010374', '2013-10-14 11:50:51', '2013-10-14 11:50:51', 2),
(212, 'Giap1994', '12e9db13eaf89dbb7a9cb95edae727a6', 'Lê Văn Giáp\r\n', 1, 'van-giap\r\n.22-10-94@outlook.com', '1994-10-22 00:00:00', '330 Nguyễn Văn Linh, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01222095131', '2013-10-14 12:52:15', '2013-10-14 12:52:15', 2),
(213, 'Mai_1988', '3a9c463d01b0b592188bc24d96249ac2', 'Phan Thị Thúy Mai\r\n', 0, 'Mai_Thuy-Thi.Phan_040688@gmail.com.vn', '1988-06-04 00:00:00', '157 Quang Trung, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0937702389', '2013-10-17 12:52:15', '2013-10-17 12:52:15', 2),
(214, 'L.TSinh1980', 'ac0529a5a85b74b51fbbbb55b19c2063', 'Lê Triển Sinh\r\n', 1, 'sinh_le.trien-80.10.19@gmail.com.vn', '1980-10-19 00:00:00', '138/261 Trần Văn Hoài, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01258687988', '2013-10-17 20:09:49', '2013-10-17 20:09:49', 2),
(215, 'nguyentrung20-06', 'b6693bcae4f9e6671b2af004993689a3', 'Nguyễn Trung', 1, 'NGUYENTRUNG20061990@yahoo.com', '1990-06-20 00:00:00', '262 Bùi Hữu Nghĩa, P. Long Tuyền, Q. Bình Thủy, TP. Cần Thơ', '01680610086', '2013-10-25 20:09:49', '2013-10-25 20:09:49', 2),
(216, 'THINH1993', 'fddd8199e7ec09b2fb75100b7fa94e46', 'Nguyễn Gia Thịnh\r\n', 1, 'thinhgia-nguyen-03-09@yahoo.com', '1993-09-03 00:00:00', '21 Võ Nguyên Giáp, P. Tân Phú, Q. Cái Răng, TP. Cần Thơ', '01867855268', '2013-10-26 03:46:54', '2013-10-26 03:46:54', 2),
(217, 'VIET_08-01-2004', '1d7b69a9c71a2245589597c94fe4b0ae', 'Nguyễn Trung Việt\r\n', 1, 'viettrungnguyen-08-01-2004@hotmail.com', '2004-01-08 00:00:00', '145 Nguyễn Văn Cừ, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '01657099519', '2013-10-26 04:35:52', '2013-10-26 04:35:52', 2),
(218, 'Diemtrang19700629', 'ab7eb415573643f9abc812bf24f25678', 'Nguyễn Thị Diễm Trang\r\n', 0, 'trang.diemthi_nguyen_29.06@yahoo.com', '1970-06-29 00:00:00', '7 Lê Lợi, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01280195006', '2013-10-28 04:35:52', '2013-10-28 04:35:52', 2),
(219, 'BANH.THAI.THAO00_11_27', 'ad37616c647005dd6ea43397905803f2', 'Bành Thái Thảo\r\n', 0, 'ThaoBanhThai271100@yahoo.com', '2000-11-27 00:00:00', '48 Trương Văn Diễn, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '0925621058', '2013-11-02 04:35:52', '2013-11-02 04:35:52', 2),
(220, 'khanh.28_05_82', '32d6122035b7451204f9a62aeb42211c', 'Trần Nguyễn Minh Khánh\r\n', 1, 'KhanhMinhNguyen-Tran-19820528@yahoo.com.vn', '1982-05-28 00:00:00', '1 Thái Thị Hạnh, P. Long Hưng, Q. Ô Môn, TP. Cần Thơ', '01253126391', '2013-11-16 04:35:52', '2013-11-16 04:35:52', 2),
(221, 'VOTO-CHAU-05-01-82', 'e81e36b5678c7a49b5b4041c6674636c', 'Võ Tô Châu', 1, 'votochau_19820105@outlook.com', '1982-01-05 00:00:00', '91/26 Bùi Hữu Nghĩa, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01244630455', '2013-11-16 12:41:08', '2013-11-16 12:41:08', 2),
(222, 'NGUYENKIMTOAN010449', '229ce9d1f51f9cb5061ca448e98f317a', 'Nguyễn Kim Toàn\r\n', 1, 'ToanKimNguyen010449@hotmail.com', '1949-04-01 00:00:00', '295 CMT8, P. Bùi Hữu Nghĩa, Q. Bình Thủy, TP. Cần Thơ', '0887097722', '2013-11-20 12:41:08', '2013-11-20 12:41:08', 2),
(223, 't-thuong87', 'f5ee56faa7b2ae4d8af22e51680507f7', 'Trần Thảo Hương\r\n', 0, 'huong_tran_thao.250387@ymail.com', '1987-03-25 00:00:00', '52 Thái Thị Hạnh, P. Thới Long, Q. Ô Môn, TP. Cần Thơ', '0970652205', '2013-11-24 12:41:08', '2013-11-24 12:41:08', 2),
(224, 'TU.THIPHAM.540403', '40eab81ff07967e993197ea63ccedbd4', 'Phạm Thị Tú\r\n', 0, 'PT_TU_03_04@outlook.com', '1954-04-03 00:00:00', '67A/206 Ngô Gia Tự, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01658698410', '2013-11-26 12:41:08', '2013-11-26 12:41:08', 2),
(225, 'my.loan\r\n_1996.04.25', '0cf9b8fab336c5ba2c32f8ac09ed8dfe', 'Trần Nguyễn Thị Mỹ Loan\r\n', 0, 'TRANNGUYENTHIMYLOAN960425@outlook.com', '1996-04-25 00:00:00', '114 Võ Nguyên Giáp, P. Phú Thứ, Q. Cái Răng, TP. Cần Thơ', '01629868921', '2013-12-02 12:41:08', '2013-12-02 12:41:08', 2),
(226, 'VoViet.Son.2003.11.03', 'ac4f14263b5f970bc261a2ef9bd5f806', 'Võ Việt Sơn\r\n', 1, 'VoViet.Son03.11@yahoo.com.vn', '2003-11-03 00:00:00', '94 Ngô Gia Tự, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0928049231', '2013-12-02 16:25:34', '2013-12-02 16:25:34', 2),
(227, 'TranVanHuan2307', 'e8f3a850d47928d048925720a7f44428', 'Trần Văn Huấn\r\n', 1, 'huan.19800723@gmail.com.vn', '1980-07-23 00:00:00', '152/318 Bùi Hữu Nghĩa, P. Long Hòa , Q. Bình Thủy, TP. Cần Thơ', '01658168104', '2013-12-14 16:25:34', '2013-12-14 16:25:34', 2),
(228, 'quyenvanpham0506', 'ab24efc534f2a361423f6bff8549a92e', 'Phạm Vân Quyên\r\n', 0, 'PHAM.VAN.QUYEN-96_06_05@yahoo.com', '1996-06-05 00:00:00', '361 Đinh Công Chánh, P. Long Tuyền , Q. Bình Thủy, TP. Cần Thơ', '0926158099', '2013-12-15 00:15:54', '2013-12-15 00:15:54', 2),
(229, 'tutrinh1999', 'a2f4a4e57c213ded43476a7322cb8bae', 'Ông Phan Thị Tú Trinh\r\n', 0, 'TRINH_TU_THI.PHAN_ONG1999_03_25@ymail.com', '1999-03-25 00:00:00', '358 QL1, P. Lê Bình, Q. Cái Răng, TP. Cần Thơ', '01292582040', '2014-01-09 00:15:54', '2014-01-09 00:15:54', 2),
(230, 'NHAN1990_08_07', 'ef849f5aa706dafba1cde06f9c31e120', 'Phạm Thị Nhàn\r\n', 0, 'NHANPHAMTHI900807@gmail.com.vn', '1990-08-07 00:00:00', '290 30/4, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0946962402', '2014-01-22 00:15:54', '2014-01-22 00:15:54', 2),
(231, 'Tran-Minh-Hai0205', 'b9965e499f7ab824c5f7db9da0929b72', 'Trần Minh Hải\r\n', 1, 'Hai-TranMinh_02-05-1991@yahoo.com', '1991-05-02 00:00:00', '319 Lý Tự Trọng, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01287730970', '2014-01-22 04:02:57', '2014-01-22 04:02:57', 2),
(232, 'Thinguyet30061986', '2d4d5f12d4cdfdc5ba2f9a55272acbcd', 'Huỳnh Thị Nguyệt\r\n', 0, 'NguyetHuynh_Thi30_06@gmail.com', '1986-06-30 00:00:00', '32 Lý Tự Trọng, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '09935765785', '2014-02-09 04:02:57', '2014-02-09 04:02:57', 2),
(233, 'LeNguyenManhCuong82', 'fe925723e90c1bb06b8bd15a6eaec059', 'Lê Nguyễn Mạnh Cương\r\n', 1, 'CuongManhNguyenLe.06-02-1982@ymail.com', '1982-02-06 00:00:00', '203 Hòa Bình, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01248272604', '2014-02-09 07:39:24', '2014-02-09 07:39:24', 2),
(234, 'lietnguyen511227', '86a3b1ca2a552f38ea5d5e9f258cc7b5', 'Nguyễn Liệt', 1, 'LietNguyen27.12.51@outlook.com', '1951-12-27 00:00:00', '195 3/2, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '0901457604', '2014-02-09 08:15:01', '2014-02-09 08:15:01', 2),
(235, 'NHINGUYEN.TRAN.THI-GIA30-10-1980', '9cb3ab37d97b324900c834c6c478eda8', 'Nguyễn Trần Thị Gia Nhi\r\n', 0, 'NGUYENTRANTHI-GIANHI-30_10_80@outlook.com', '1980-10-30 00:00:00', '137/109 Nguyễn Thị Minh Khai, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01636070162', '2014-02-21 08:15:01', '2014-02-21 08:15:01', 2),
(236, 'HANG_NGOC-NGUYEN-LE-91', '354b9784920eab7813c2157526824e07', 'Lê Nguyễn Ngọc Hằng\r\n', 0, 'HangLeNguyenNgoc91@gmail.com', '1991-01-12 00:00:00', '227 Mậu Thân, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '09920859171', '2014-02-25 08:15:01', '2014-02-25 08:15:01', 2),
(237, 'thy_03', 'b6c3047937f084d947001ae64f6d3d74', 'Trần Bành Thị Mộng Thy\r\n', 0, 'THY2003@yahoo.com', '2003-01-08 00:00:00', '280 Hòa Bình, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01282533695', '2014-03-12 08:15:01', '2014-03-12 08:15:01', 2),
(238, 'PHATTRUONG.LE1108', '7b59a1bd7a45f8b5117d5044b486bae6', 'Lê Trường Phát\r\n', 1, 'L-TPhat-19840811@outlook.com', '1984-08-11 00:00:00', '22/345 Trần Hưng Đạo, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01883313875', '2014-03-16 08:15:01', '2014-03-16 08:15:01', 2),
(239, 'son-le-danh-1974', 'da74b7eae0f186febfce2ca462174bbe', 'Lê Danh Sơn\r\n', 1, 'son040374@ymail.com', '1974-03-04 00:00:00', '56/78/57 30/4, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01654634593', '2014-03-16 12:54:44', '2014-03-16 12:54:44', 2),
(240, 'TOLYTHAI25081999', '8ece58b774d6de9b140c220b0d0722b9', 'Lý Thái Tổ\r\n', 1, 'ly-thai-to99-08-25@yahoo.com.vn', '1999-08-25 00:00:00', '58/117 Nguyễn Chí Thanh, P. Trà Nóc , Q. Bình Thủy, TP. Cần Thơ', '01265232763', '2014-03-16 12:54:44', '2014-03-16 12:54:44', 2),
(241, 'BinhHuong-To81', '1c0cb41ab4302cef5f460b232d2b6d35', 'Tô Hướng Bình\r\n', 1, 'binh-1981@yahoo.com', '1981-04-19 00:00:00', '242 30/4, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01669969050', '2014-03-17 12:54:44', '2014-03-17 12:54:44', 2),
(242, 'oanh_2005', 'd2f2acb8d6e47bb6f08ec75904452aaf', 'Võ Phùng Thục Oanh\r\n', 0, 'Thucoanh\r\n.2005@gmail.com', '2005-01-21 00:00:00', '74/59 Phan Đình Phùng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01696257334', '2014-04-07 12:54:44', '2014-04-07 12:54:44', 2),
(243, 'CHIEN-NGUYEN.PHAM.VAN2004', 'e82872249c7c118f2755b7fb436c2ad2', 'Nguyễn Phạm Văn Chiến\r\n', 1, 'Van.chien\r\n-2004-06-28@gmail.com', '2004-06-28 00:00:00', '46 Hai Bà Trưng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0934500466', '2014-04-07 17:33:23', '2014-04-07 17:33:23', 2),
(244, 'Tien-Huynh.Quynh-1946', '169232662b5939775d482f74fad447f6', 'Huỳnh Quỳnh Tiên\r\n', 0, 'TIEN04121946@hotmail.com', '1946-12-04 00:00:00', '87/205 3/2, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '0972087619', '2014-04-10 17:33:23', '2014-04-10 17:33:23', 2),
(245, 'AN-MINH_NGUYEN.VO27-05-1986', '9161c71be7f6393708122aa858b2a005', 'Võ Nguyễn Minh An\r\n', 0, 'v-n-m-an86@yahoo.com.vn', '1986-05-27 00:00:00', '320 3/2, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '0971464116', '2014-04-13 17:33:23', '2014-04-13 17:33:23', 2),
(246, 'bbcuong80', 'e6a42da749f803cc5af73a2aace71c9b', 'Bùi Bá Cường\r\n', 1, 'buiba-cuong.26.02@gmail.com', '1980-02-26 00:00:00', '302 Xô Viết Nghệ Tĩnh, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '0936408409', '2014-04-13 19:03:58', '2014-04-13 19:03:58', 2),
(247, 'huong_nguyen_le.tram.04', '9a6863c1fd767aa9d604b8068d64e14d', 'Nguyễn Lê Trầm Hương\r\n', 0, 'HUONG.23122004@gmail.com.vn', '2004-12-23 00:00:00', '259 Hòa Bình, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01687230556', '2014-04-15 19:03:58', '2014-04-15 19:03:58', 2),
(248, 'nhi-ha.nguyen-thiminh11.10.1994', '6e44ac1888d9a1964d724383b655e60e', 'Hà Nguyễn Thị Minh Nhi\r\n', 0, 'HN_T-M_NHI-11_10@hotmail.com', '1994-10-11 00:00:00', '283 Nguyễn Văn Linh, P. Thới An Đông, Q. Bình Thủy, TP. Cần Thơ', '01285014025', '2014-04-21 19:03:58', '2014-04-21 19:03:58', 2),
(249, 'CANH-NGUYEN_VUONG-VIEN05.07', '685dd45525640c57aede25a87d69a218', 'Nguyễn Vương Viễn Cảnh\r\n', 1, 'CANHNGUYENVUONGVIEN1982@ymail.com', '1982-07-05 00:00:00', '267 QL1, P. Hưng Thạnh, Q. Cái Răng, TP. Cần Thơ', '01697248621', '2014-04-22 00:42:46', '2014-04-22 00:42:46', 2),
(250, 'nguyenthilanchi170904', '8241d7549366bbfda824a167c592639d', 'Nguyễn Thị Lan Chi\r\n', 0, 'NT-L-Chi_2004@ymail.com', '2004-09-17 00:00:00', '116 Phan Đình Phùng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01665481739', '2014-05-13 00:42:46', '2014-05-13 00:42:46', 2),
(251, 'THIEN-NGUYEN-TRAN-57', 'ac0a231cf453f850fedb8e5b81f00872', 'Nguyễn Trần Thiên', 1, 'THIENNGUYENTRAN09061957@yahoo.com', '1957-06-09 00:00:00', '176 Bùi Hữu Nghĩa, P. Long Hòa , Q. Bình Thủy, TP. Cần Thơ', '0983028933', '2014-05-15 00:42:46', '2014-05-15 00:42:46', 2),
(252, 'Truc-90', '8e8e3fc83b65916a257861e371af41a5', 'Phạm Thị Thy Trúc\r\n', 0, 'TRUC-2405@hotmail.com', '1990-05-24 00:00:00', '397 QL1, P. Lê Bình, Q. Cái Răng, TP. Cần Thơ', '01645165052', '2014-05-23 00:42:46', '2014-05-23 00:42:46', 2),
(253, 'MY.YEN.NGUYEN-LY-17-10-1981', 'ac1a51546b8b283894c4353e106ff8a1', 'Lý Nguyễn Yến My\r\n', 0, 'LyNguyenYenMy1710@ymail.com', '1981-10-17 00:00:00', '394 Nguyễn Văn Cừ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '09999623557', '2014-05-27 00:42:46', '2014-05-27 00:42:46', 2),
(254, 'N_H_Mai88', 'e2917184149dafa3d914219372058b65', 'Nguyễn Hương Mai\r\n', 0, 'nh-mai-1988-01-24@hotmail.com', '1988-01-24 00:00:00', '90 Võ Văn Tần, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '09960161126', '2014-05-28 00:42:46', '2014-05-28 00:42:46', 2),
(255, 'Anh-vu1947', 'e30e1300f5976e4db0b17e082e8048bf', 'Ngô Anh Vũ\r\n', 1, 'Vu30091947@yahoo.com', '1947-09-30 00:00:00', '383 Trần Văn Hoài, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '09999421866', '2014-06-06 00:42:46', '2014-06-06 00:42:46', 2),
(256, 'hoa-87_03_28', '5654ba0c2a4a56673d788e6a56c54c8e', 'Nguyễn Hòa', 1, 'nguyenhoa19870328@gmail.com', '1987-03-28 00:00:00', '79/42 Võ Văn Kiệt, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01271124675', '2014-06-22 00:42:46', '2014-06-22 00:42:46', 2),
(257, 'ThanhDang_Lai-94', '5fdfc4c85ec66ffc9ba64c2c25a6ad50', 'Lại Đặng Thành', 1, 'thanhlaidang11111994@yahoo.com', '1994-11-11 00:00:00', '124 Nguyễn Văn Cừ, P. An Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01203042202', '2014-06-26 00:42:46', '2014-06-26 00:42:46', 2),
(258, 'Loan1980', '71cd974622dbafd45fbfceb274dfd2df', 'Nguyễn Thị Thanh Loan\r\n', 0, 'loan05041980@hotmail.com', '1980-04-05 00:00:00', '226 Võ Văn Kiệt, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01650529495', '2014-07-02 00:42:46', '2014-07-02 00:42:46', 2),
(259, 'BINH77', '3dc9f3c3c2a93ec7c9cc968088bf1ae1', 'Đỗ Thái Bình\r\n', 1, 'BinhThaiDo1977@ymail.com', '1977-06-07 00:00:00', '154/46 Ngô Gia Tự, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01235101503', '2014-07-13 00:42:46', '2014-07-13 00:42:46', 2),
(260, 'T-V-Nhuan19770424', '04e696ff6c6d5f61152dc0addf2dcb36', 'Trần Văn Nhuận\r\n', 1, 'NhuanTranVan24041977@outlook.com', '1977-04-24 00:00:00', '94 Tỉnh lộ 923, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '0935490236', '2014-07-13 00:42:46', '2014-07-13 00:42:46', 2),
(261, 'Vinh.Truong-Tran-16032005', 'c7bddc92481e627e572ba074222e5133', 'Trần Trường Vinh\r\n', 1, 'vinh.truongtran.05@ymail.com', '2005-03-16 00:00:00', '28 CMT8, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01867853343', '2014-07-15 00:42:46', '2014-07-15 00:42:46', 2),
(262, 'HaiMinh_Bui_Huynh.1992', '792308a76d59c2d7eff091f75f32544d', 'Huỳnh Bùi Minh Hải\r\n', 1, 'HaiHuynh_Bui_Minh_15_12_92@yahoo.com.vn', '1992-12-15 00:00:00', '67 Nguyễn Văn Linh, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '01671860949', '2014-07-15 05:48:04', '2014-07-15 05:48:04', 2),
(263, 'thu13.05.1953', '23836b053fa30afead901ab1cb50adbf', 'Nguyễn Thị Hoàng Thư\r\n', 0, 'ThuNguyenThiHoang13051953@outlook.com', '1953-05-13 00:00:00', '69/14 Lộ Vòng Cung, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '0980529910', '2014-07-15 11:39:04', '2014-07-15 11:39:04', 2),
(264, 'Khanh19441214', 'f5d3909c1b4f92ed1474f3723b03d349', 'Phạm Tuấn Khanh\r\n', 1, 'khanh-tuan_pham14-12-1944@ymail.com', '1944-12-14 00:00:00', '266 Nguyễn Thị Minh Khai, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01642328067', '2014-08-08 11:39:04', '2014-08-08 11:39:04', 2),
(265, 'Tu_LeHuynh_Nam05051986', 'ce5ae6fa7002dfe0cf1e43a7327512c9', 'Lê Huỳnh Nam Tú\r\n', 1, 'LH_NTU-05-05@gmail.com', '1986-05-05 00:00:00', '125 Nguyễn Văn Linh, P. An Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01677283156', '2014-08-18 11:39:04', '2014-08-18 11:39:04', 2),
(266, 'Hoa.Pham_Thi_Ngoc_1982', '7d43f982e78ab3240ea86ff4c8558f2f', 'Phạm Thị Ngọc Hoa\r\n', 0, 'HOA.1982@hotmail.com', '1982-07-28 00:00:00', '45 Nguyễn Thị Minh Khai, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '0985373905', '2014-09-11 11:39:04', '2014-09-11 11:39:04', 2),
(267, 'khang.nguyen.viet2003', '36b6090d2d7ddf9239d842d2b979b3c4', 'Nguyễn Việt Khang\r\n', 1, 'Viet-khang\r\n_2003_07_07@yahoo.com', '2003-07-07 00:00:00', '41 Nguyễn Văn Cừ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '0927983721', '2014-09-11 11:39:04', '2014-09-11 11:39:04', 2),
(268, 'TRAN-VAN_CAN19841130', '027ffe0e0276909ae84d0d507f5929a3', 'Trần Văn Cẩn\r\n', 1, 'TranVanCan3011@ymail.com', '1984-11-30 00:00:00', '78/261 Võ Nguyên Giáp, P. Phú Thứ, Q. Cái Răng, TP. Cần Thơ', '01696395704', '2014-09-11 12:34:15', '2014-09-11 12:34:15', 2),
(269, 'Vo-vu130403', '1167f21f926eb7644baa4f43b6396d22', 'Nguyễn Võ Vũ', 1, 'VU.NGUYEN_VO2003@gmail.com.vn', '2003-04-13 00:00:00', '153/176 QL1, P. Ba Láng, Q. Cái Răng, TP. Cần Thơ', '09953766742', '2014-09-25 12:34:15', '2014-09-25 12:34:15', 2),
(270, 'My.PhamThi_Yen.77', '5359104641378513961abbdf31f1401b', 'Phạm Thị Yến My\r\n', 0, 'myphamthiyen1977@yahoo.com.vn', '1977-05-03 00:00:00', '297 Trần Quang Diệu, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01867749477', '2014-09-25 16:01:10', '2014-09-25 16:01:10', 2),
(271, 'lcung-18_04_2004', '888f71a2250ddcd15f5a827d6dc86d6b', 'Lê Cung', 1, 'le-cung_2004-04-18@gmail.com.vn', '2004-04-18 00:00:00', '8 Lê Hồng Phong, P. Trà Nóc, Q. Bình Thủy, TP. Cần Thơ', '01656022637', '2014-09-25 16:01:10', '2014-09-25 16:01:10', 2),
(272, 'DUYEN_HAM_THI.TRAN-841018', '97f15f782184454c5c06ef7b1da84719', 'Trần Thị Hàm Duyên\r\n', 0, 'TRAN.THI.HAM_DUYEN1984_10_18@ymail.com', '1984-10-18 00:00:00', '301 Nguyễn Văn Linh, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '01235495383', '2014-09-25 16:01:10', '2014-09-25 16:01:10', 2),
(273, 'VKiet190204', 'ee866d08177ff42acde705f0925b04a9', 'Vũ Kiệt', 1, 'KIETVU2004@yahoo.com', '2004-02-19 00:00:00', '161 Võ Văn Kiệt, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '01630423486', '2014-10-20 16:01:10', '2014-10-20 16:01:10', 2),
(274, 'Ho_TuanViet_800622', 'eb598975b4a6f93982c0aeeacd829a6f', 'Hồ Tuấn Việt\r\n', 1, 'ho.tuan-viet.1980@yahoo.com', '1980-06-22 00:00:00', '52 Ngô Quyền, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0964291201', '2014-10-20 16:01:10', '2014-10-20 16:01:10', 2),
(275, 'QuanDaoLe10081998', '35d6622a5b6672b7141880deab0675d2', 'Đào Lê Quân', 1, 'daolequan-1998@hotmail.com', '1998-08-10 00:00:00', '106A/78 Phan Đình Phùng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0943328551', '2014-11-02 16:01:10', '2014-11-02 16:01:10', 2),
(276, 'nhien-van_le-tran83', '901d38cbcbad74b769f6a9b8090d1bda', 'Trần Lê Văn Nhiên\r\n', 1, 'NHIEN.TRANLEVAN100583@outlook.com', '1983-05-10 00:00:00', '218 Trần Văn Hoài, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0981334667', '2014-11-02 21:00:21', '2014-11-02 21:00:21', 2),
(277, 'my-duyen-nguyen-101172', '74c0e0c9ecf059efae680f5105744852', 'Nguyễn Duyên My\r\n', 0, 'NguyenDuyenMy10111972@yahoo.com.vn', '1972-11-10 00:00:00', '3 Tỉnh lộ 923, P. Trường Lạc, Q. Ô Môn, TP. Cần Thơ', '01259993635', '2014-11-03 21:00:21', '2014-11-03 21:00:21', 2),
(278, 'nguyen-duc_tai_1973', '6569ad053da83b5570fc314084deebc6', 'Nguyễn Ðức Tài\r\n', 1, 'taiduc-nguyen731130@ymail.com', '1973-11-30 00:00:00', '113 Xô Viết Nghệ Tĩnh, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01882846872', '2014-11-04 21:00:21', '2014-11-04 21:00:21', 2),
(279, 'N.DKhanh16.03.99', '3e49ec3ddc85290fc52deaec35dc7d4b', 'Nguyễn Dương Khánh\r\n', 1, 'duongkhanh\r\n_99@yahoo.com', '1999-03-16 00:00:00', '14/179/165 Nguyễn Chí Thanh, P. Thới An Đông, Q. Bình Thủy, TP. Cần Thơ', '0947700454', '2014-11-24 21:00:21', '2014-11-24 21:00:21', 2),
(280, 'Nhan-Phan.Van1985', '4d95b79a94b3fb372a15a004bd4ff033', 'Phan Văn Nhạn\r\n', 1, 'Nhan-18_07_85@yahoo.com', '1985-07-18 00:00:00', '165A/285 Võ Văn Tần, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01262044541', '2014-11-24 21:00:21', '2014-11-24 21:00:21', 2),
(281, 'Nghi.Nguyen.Uyen160192', '788529da4e74156f56bdc08ad748b6b3', 'Nguyễn Uyển Nghi\r\n', 0, 'Nghi.UyenNguyen.19920116@gmail.com', '1992-01-16 00:00:00', '37/103 Hòa Bình, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '0903735960', '2014-11-24 21:29:53', '2014-11-24 21:29:53', 2),
(282, 'VU-KIEN.72', 'de3912ca0a0ca5f1a2e051b82aca18fe', 'Vũ Kiên', 1, 'kien.vu720321@gmail.com', '1972-03-21 00:00:00', '355 Nguyễn Văn Cừ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01865794714', '2014-11-28 21:29:53', '2014-11-28 21:29:53', 2),
(283, 'hoattien-nguyen_29-04-78', '1c9720fd90cd1b9b2b138601c023d665', 'Nguyễn Tiến Hoạt\r\n', 1, 'N_THOAT_78_04_29@yahoo.com.vn', '1978-04-29 00:00:00', '255 Huỳnh Phan Hộ, P. Trà An, Q. Bình Thủy, TP. Cần Thơ', '0936295006', '2014-12-02 21:29:53', '2014-12-02 21:29:53', 2),
(284, 'nguyen-thiuyen-820522', '979b93c83c026a827969f287fb16ea33', 'Nguyễn Thị Uyển\r\n', 0, 'uyenthinguyen_22_05@ymail.com', '1982-05-22 00:00:00', '101 Phan Đình Phùng, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01246116314', '2014-12-07 21:29:53', '2014-12-07 21:29:53', 2),
(285, 'Nguyen_TranThi_Hong_Thu_2000', '34f9d3e937197f831dc80a2be56af922', 'Nguyễn Trần Thị Hồng Thư\r\n', 0, 'ThuHong.ThiTranNguyen.23_01_00@gmail.com.vn', '2000-01-23 00:00:00', '128/115 Bùi Hữu Nghĩa, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01866254278', '2014-12-12 21:29:53', '2014-12-12 21:29:53', 2),
(286, 'HAISINH27111974', 'e9f09b870f00d2ad1b042b3bbac0c08d', 'Phan Nguyễn Thị Hải Sinh\r\n', 0, 'Sinh-Hai-ThiNguyen-Phan-2711@gmail.com', '1974-11-27 00:00:00', '188/323 Lê Hồng Phong, P. Trà Nóc, Q. Bình Thủy, TP. Cần Thơ', '09926970368', '2014-12-12 22:31:49', '2014-12-12 22:31:49', 2),
(287, 'KHOINGUYENHOANG97', '4217adffebe0800afc4cf1922eac6ef2', 'Nguyễn Hoàng Khôi\r\n', 1, 'khoi_hoangnguyen97@yahoo.com.vn', '1997-04-29 00:00:00', '64/363 Nguyễn Văn Linh, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '09977590781', '2014-12-17 22:31:49', '2014-12-17 22:31:49', 2),
(288, 'huamanh_dinh_1987', '1b166943d1575a7a3310a75aeb5565fc', 'Hứa Mạnh Ðình\r\n', 1, 'DinhManhHua23041987@outlook.com', '1987-04-23 00:00:00', '156 Hùng Vương, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '0882521443', '2015-01-03 22:31:49', '2015-01-03 22:31:49', 2),
(289, 'thuymy1993', '35e2958224b05fdbf2225aaec8e0029a', 'Cao Phan Thúy My\r\n', 0, 'CAO_PHAN.THUYMY_04.06@ymail.com', '1993-06-04 00:00:00', '340 Bùi Hữu Nghĩa, P. Long Tuyền, Q. Bình Thủy, TP. Cần Thơ', '01218122831', '2015-01-03 22:31:49', '2015-01-03 22:31:49', 2),
(290, 'thongquangnguyen1994', 'c6de31f887658dd32ae6392b73c59822', 'Nguyễn Quảng Thông\r\n', 1, 'n-q_thong-94@hotmail.com', '1994-08-09 00:00:00', '84 CMT8, P. An Thới , Q. Bình Thủy, TP. Cần Thơ', '01861400383', '2015-01-06 22:31:49', '2015-01-06 22:31:49', 2),
(291, 'THUY_VU\r\n-01-07-1953', '70d70c8cfcee4029f40e23dbb36db6ad', 'Phan Thụy Vũ\r\n', 1, 'VuThuyPhan01071953@hotmail.com', '1953-07-01 00:00:00', '50/307 Hòa Bình, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '0916019455', '2015-01-08 22:31:49', '2015-01-08 22:31:49', 2),
(292, 't_h.thien_800508', '831eec8e625b5e181b7ef6455ecd557d', 'Trịnh Hữu Thiện\r\n', 1, 'Huu.thien\r\n_80@yahoo.com', '1980-05-08 00:00:00', '396 Nguyễn Văn Bông, P. Long Tuyền, Q. Bình Thủy, TP. Cần Thơ', '0960654360', '2015-01-09 04:43:44', '2015-01-09 04:43:44', 2),
(293, 'n.tt_thao_14.01', 'bec8bdab6f585bca71998b191aa74afb', 'Nguyễn Thị Thanh Thảo\r\n', 0, 'thaothanhthi-nguyen81-01-14@gmail.com', '1981-01-14 00:00:00', '100/204 Nguyễn Chí Thanh, P. Thới An Đông, Q. Bình Thủy, TP. Cần Thơ', '01676214735', '2015-01-09 05:13:11', '2015-01-09 05:13:11', 2),
(294, 'Thinh77_02_11', 'c4bcf0ee3309e6c88fdceecba0800863', 'Huỳnh Kim Thịnh\r\n', 1, 'Kimthinh1977@gmail.com', '1977-02-11 00:00:00', '355 Nguyễn Truyền Thanh, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01274354869', '2015-01-09 09:09:25', '2015-01-09 09:09:25', 2),
(295, 'DaoLinh770412', '1d2b2f852578094420cd731ca96b59d4', 'Đào Lĩnh', 1, 'Linh-Dao120477@ymail.com', '1977-04-12 00:00:00', '225 3/2, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '01658825242', '2015-01-10 09:09:25', '2015-01-10 09:09:25', 2),
(296, 'HAI.1943', 'de49f73058c8ec1f9e4635626fdb6438', 'Trần Ðức Hải\r\n', 1, 'TDHAI05031943@gmail.com.vn', '1943-03-05 00:00:00', '92/335 Nguyễn Đệ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '0901904049', '2015-01-10 10:56:04', '2015-01-10 10:56:04', 2),
(297, 'Vu_Huy_Nguyen1607', '72d2360c0005e6bdd0f56ac325999a14', 'Nguyễn Huy Vũ\r\n', 1, 'VuNguyen-Huy-16-07-04@ymail.com', '2004-07-16 00:00:00', '311 Võ Văn Kiệt, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01681600757', '2015-01-15 10:56:04', '2015-01-15 10:56:04', 2),
(298, 'Nguyen-Thai_Hong-791215', '92f6e95e420dabd2dd62fc96d7ba22c8', 'Nguyễn Thái Hồng\r\n', 0, 'NguyenThaiHong1979@yahoo.com.vn', '1979-12-15 00:00:00', '126/367 Lý Tự Trọng, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '09999054335', '2015-01-30 10:56:04', '2015-01-30 10:56:04', 2),
(299, 'tamdangthithuy98', '0eead7e4df64c054119093d842aaedbb', 'Đặng Thị Thủy Tâm\r\n', 0, 'TAM98@gmail.com.vn', '1998-05-31 00:00:00', '108/118 Trần Kiết Tường, P. Thới An, Q. Ô Môn, TP. Cần Thơ', '01640142327', '2015-01-30 13:54:05', '2015-01-30 13:54:05', 2),
(300, 'TRANHAN19091978', '5566c9c98c9c3a947e2b34fe745c8277', 'Trần Hãn', 1, 'hantran780919@yahoo.com', '1978-09-19 00:00:00', '133 Võ Nguyên Giáp, P. Hưng Thạnh, Q. Cái Răng, TP. Cần Thơ', '01645528891', '2015-01-30 16:52:57', '2015-01-30 16:52:57', 2),
(301, 'xuanthithihuynh0204', 'd438d6dfa5f5636786c89d4e87463004', 'Huỳnh Thị Thi Xuân\r\n', 0, 'THIXUAN020496@yahoo.com', '1996-04-02 00:00:00', '200 CMT8, P. An Thới , Q. Bình Thủy, TP. Cần Thơ', '0985208782', '2015-02-18 16:52:57', '2015-02-18 16:52:57', 2),
(302, 'Chi_hieu29_09_1994', '3dc888f5043b87ee903b3dda6210a29c', 'Trần Chí Hiếu\r\n', 1, 'hieutranchi1994@hotmail.com', '1994-09-29 00:00:00', '315 Võ Văn Tần, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0882622060', '2015-03-10 16:52:57', '2015-03-10 16:52:57', 2),
(303, 'P-DD_Son1998', '4c9203ad9af5959ffd5833a33a21d5f5', 'Phan Dương Danh Sơn\r\n', 1, 'danh_son1998@ymail.com', '1998-01-04 00:00:00', '160C/145 Xô Viết Nghệ Tĩnh, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '0922410432', '2015-03-15 16:52:57', '2015-03-15 16:52:57', 2),
(304, 'LAMHOSON03071999', '678b111691eea087b15d32cb306f146e', 'Hồ Sơn Lâm\r\n', 1, 'hoson.lam1999_07_03@gmail.com', '1999-07-03 00:00:00', '144 Trần Hưng Đạo, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '0906086403', '2015-03-28 16:52:57', '2015-03-28 16:52:57', 2),
(305, 'HOANGLAM1968', '316ccda89bd62effc49e420d100d6d79', 'Nguyễn Hoàng Lâm\r\n', 1, 'n.h.lam.1968@yahoo.com.vn', '1968-08-25 00:00:00', '232 Trương Văn Diễn, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01215124634', '2015-03-28 22:14:07', '2015-03-28 22:14:07', 2),
(306, 'trinhngocduong02', '7d526743515a1116b6184cdcb8a43edf', 'Dương Ngọc Trinh\r\n', 0, 'Ngoc.trinh\r\n.020827@hotmail.com', '2002-08-27 00:00:00', '139/278 Nguyễn Văn Cừ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01664072829', '2015-04-07 22:14:07', '2015-04-07 22:14:07', 2),
(307, 'n.ll_phuc-22.05.1977', 'efa83d4d599bb4c758a1e6d53e43f22a', 'Nguyễn Lê Lạc Phúc\r\n', 1, 'PHUC-LAC-LENGUYEN22-05-77@gmail.com', '1977-05-22 00:00:00', '270 Trần Hưng Đạo, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01264370263', '2015-04-17 22:14:07', '2015-04-17 22:14:07', 2),
(308, 'QuynhPham-Tieu-19-10', '108ad7239f84ffee884b7de4d60262b5', 'Phạm Tiểu Quỳnh\r\n', 0, 'P.T.Quynh1979-10-19@yahoo.com', '1979-10-19 00:00:00', '24 Mậu Thân, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01667841139', '2015-04-21 22:14:07', '2015-04-21 22:14:07', 2),
(309, 'tu.96', 'b44fc5dc3117c3bc00701e1101a96c25', 'Nguyễn Ðoàn Tụ\r\n', 1, 'TU161196@hotmail.com', '1996-11-16 00:00:00', '307 Nguyễn Thị Minh Khai, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '0923387335', '2015-04-25 22:14:07', '2015-04-25 22:14:07', 2),
(310, 'HOALEQUOC88', 'f5c0a45402206620fa2be72ee1729c1a', 'Lê Quốc Hòa\r\n', 1, 'quoc_hoa1988@yahoo.com.vn', '1988-06-29 00:00:00', '212 Lê Hồng Phong, P. Trà Nóc, Q. Bình Thủy, TP. Cần Thơ', '01697682757', '2015-04-25 22:14:07', '2015-04-25 22:14:07', 2),
(311, 'tam_nguyen-thi_xuan_87_05_18', '2b1a75f05c3e3f9e263ba936400252ea', 'Nguyễn Thị Xuân Tâm\r\n', 0, 'NT_X_TAM18_05_87@gmail.com.vn', '1987-05-18 00:00:00', '145/368 Võ Nguyên Giáp, P. Tân Phú, Q. Cái Răng, TP. Cần Thơ', '01670573069', '2015-04-28 22:14:07', '2015-04-28 22:14:07', 2),
(312, 't_tn_anh94_07_30', '94d85fcb56136c183268619b2a961130', 'Trần Thị Nhật Ánh\r\n', 0, 'T.TNANH300794@gmail.com.vn', '1994-07-30 00:00:00', '52/400 Nguyễn Trãi, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01292529893', '2015-04-29 17:10:12', '2015-04-29 17:10:12', 2),
(313, 'huy_khanh01-03-1997', 'b05ff6633db5e323dadb979c7d73e123', 'Hứa Huy Khánh\r\n', 1, 'KhanhHuaHuy19970301@gmail.com.vn', '1997-03-01 00:00:00', '25 Phan Đình Phùng, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '0976991926', '2015-05-02 17:10:12', '2015-05-02 17:10:12', 2),
(314, 'HienBichThiNguyen-2412', '563d59f35131b5f2fdd1d45133087482', 'Nguyễn Thị Bích Hiền\r\n', 0, 'Bich.hien\r\n.84@gmail.com', '1984-12-24 00:00:00', '38 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01218715558', '2015-05-15 17:10:12', '2015-05-15 17:10:12', 2),
(315, 'CAMNGUYENTHINGUYET130304', 'da0c227568b3b9765e29fdd89397c409', 'Nguyễn Thị Nguyệt Cầm\r\n', 0, 'cam2004@yahoo.com', '2004-03-13 00:00:00', '29/130 30/4, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01683810801', '2015-05-16 00:52:33', '2015-05-16 00:52:33', 2),
(316, 'MAI17121990', 'e396e3758a54d54ed3c0c1ba6962b0ac', 'Nguyễn Trần Thị Bạch Mai\r\n', 0, 'NGUYENTRANTHIBACHMAI1990@hotmail.com', '1990-12-17 00:00:00', '159B/355 Nguyễn Đệ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01676973872', '2015-05-16 12:00:52', '2015-05-16 12:00:52', 2),
(317, 'san89', 'dab41cf6ccc91608a5a1bccc0ba9adc3', 'Trần Nguyễn Hải San\r\n', 0, 'sanhainguyen.tran1989@yahoo.com.vn', '1989-01-06 00:00:00', '363 Nguyễn Văn Cừ, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01204979652', '2015-05-20 12:00:52', '2015-05-20 12:00:52', 2),
(318, 'N-NM_TUAN_97', 'af68ca54007afdfe3de634cd59913406', 'Nguyễn Ngô Minh Tuấn\r\n', 1, 'Minhtuan1997@gmail.com.vn', '1997-01-29 00:00:00', '65/128/253 Xô Viết Nghệ Tĩnh, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01239497680', '2015-05-20 12:00:52', '2015-05-20 12:00:52', 2),
(319, 'le_manh14.07.04', 'c7fbeae11af5b102d7de43e0ae311480', 'Lê Mạnh', 1, 'Manh_Le_040714@outlook.com', '2004-07-14 00:00:00', '333 Nguyễn An Ninh, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0909127773', '2015-05-20 14:22:18', '2015-05-20 14:22:18', 2),
(320, 'DANG_LY-BANG_13-03-1987', 'cf31af5cc29052e53b05c4dceccc87c0', 'Đặng Lý Bằng', 1, 'DangLy.Bang.870313@yahoo.com.vn', '1987-03-13 00:00:00', '48/237 CMT8, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '0907320366', '2015-05-20 14:22:18', '2015-05-20 14:22:18', 2),
(321, 'NhiHaThiLy1962', '5212e0520fee846eeeca6c12a80f71bf', 'Lý Thị Hà Nhi\r\n', 0, 'Nhi25.07.62@yahoo.com', '1962-07-25 00:00:00', '36 3/2, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '01284162625', '2015-06-11 14:22:18', '2015-06-11 14:22:18', 2),
(322, 'nguyen_tri_huu.89', '18a342968466e76af1a98e0e16103c54', 'Nguyễn Trí Hữu\r\n', 1, 'nguyen-tri_huu89-05-27@hotmail.com', '1989-05-27 00:00:00', '149B/3 CMT8, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01675593705', '2015-06-12 09:34:29', '2015-06-12 09:34:29', 2),
(323, 'HaoNguyen2704', 'fba85dc15b607731be1d1f0325efe4d4', 'Nguyễn Hào', 1, 'haonguyen2704@gmail.com.vn', '2004-04-27 00:00:00', '106/371 3/2, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01661694552', '2015-06-29 09:34:29', '2015-06-29 09:34:29', 2),
(324, 'HUUDAT19081992', 'ef07c22cecae62c67def63bcc10c5794', 'Đỗ Hữu Ðạt\r\n', 1, 'DHDat92@gmail.com.vn', '1992-08-19 00:00:00', '11/339 Mậu Thân, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01691252192', '2015-07-10 09:34:29', '2015-07-10 09:34:29', 2),
(325, 'NT.TNHI-1995', '44ce97e139cb3455b393271848825cea', 'Nguyễn Thị Tịnh Nhi\r\n', 0, 'NhiTinh.ThiNguyen-950608@yahoo.com', '1995-06-08 00:00:00', '355 Nguyễn Trãi, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '09945788453', '2015-07-10 09:34:29', '2015-07-10 09:34:29', 2),
(326, 'nguyen-vancao_1980_07_10', 'c8b709e61aacd896786f8ba086d2fe0b', 'Nguyễn Văn Cao\r\n', 1, 'NVCAO80@yahoo.com.vn', '1980-07-10 00:00:00', '366 QL1, P. Thường Thạnh, Q. Cái Răng, TP. Cần Thơ', '01659158974', '2015-07-19 09:34:29', '2015-07-19 09:34:29', 2),
(327, 'L_T.THUONG2000', '29aa27b77cc504715bbf9059414dc7e4', 'Lê Thị Thu Hương\r\n', 0, 'LTT-Huong-2000@gmail.com', '2000-06-27 00:00:00', '136A/325 Hai Bà Trưng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01206468586', '2015-07-19 09:34:29', '2015-07-19 09:34:29', 2),
(328, 'DANBUITHI.790121', '6012aa894282d0caa3d9e9d3263f1b62', 'Bùi Thị Đan\r\n', 0, 'DanThiBui_21-01-79@gmail.com.vn', '1979-01-21 00:00:00', '33 QL91, P. Long Hưng, Q. Ô Môn, TP. Cần Thơ', '0944991345', '2015-07-24 09:34:29', '2015-07-24 09:34:29', 2),
(329, 'Nguyen-Tran-HuongThien-05-11-77', 'ba5b55be3ee92bc270a1fc3020472707', 'Nguyễn Trần Hướng Thiện\r\n', 1, 'THIENNGUYENTRANHUONG051177@gmail.com', '1977-11-05 00:00:00', '83 3/2, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01991166067', '2015-07-25 09:34:29', '2015-07-25 09:34:29', 2),
(330, 'Trung-87.09.06', '023d0da25e27632f66e7c6b3b2ffed1c', 'Triệu Minh Trung\r\n', 1, 't_mtrung06_09_87@yahoo.com.vn', '1987-09-06 00:00:00', '343 Lý Tự Trọng, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01689069905', '2015-08-02 09:34:29', '2015-08-02 09:34:29', 2),
(331, 'dqanh1905', '26ea007c0c4f055331851b6e1d8d2076', 'Dương Quốc Anh\r\n', 1, 'Anh-Quoc_Duong-490519@outlook.com', '1949-05-19 00:00:00', '6 Nguyễn Văn Cừ, P. An Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0903215368', '2015-08-17 09:34:29', '2015-08-17 09:34:29', 2),
(332, 'Ly25-09-1985', '6e834d0b8adf892f2fc3a8415d05910e', 'Nguyễn Thảo Ly\r\n', 0, 'THAOLY85@gmail.com', '1985-09-25 00:00:00', '294 Bùi Minh Trực, P. Long Tuyền, Q. Bình Thủy, TP. Cần Thơ', '01652070312', '2015-08-17 10:33:43', '2015-08-17 10:33:43', 2),
(333, 'nghinguyen-van-19791028', '7df45fd131dbc922fe81476d46b5dc3e', 'Nguyễn Văn Nghị\r\n', 1, 'NGUYEN.VAN.NGHI1979.10.28@gmail.com', '1979-10-28 00:00:00', '165/382 Mậu Thân, P. An Nghiệp, Q. Ninh Kiều, TP. Cần Thơ', '09932071862', '2015-08-17 12:20:15', '2015-08-17 12:20:15', 2),
(334, 'p-dthai1978-08-29', 'bf11f186570ac6d8698270f221482b8a', 'Phan Ðắc Thái\r\n', 1, 'THAI_DACPHAN29081978@gmail.com', '1978-08-29 00:00:00', '253 Nguyễn Văn Linh, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '01210759862', '2015-08-18 12:20:15', '2015-08-18 12:20:15', 2),
(335, 'N.T_N_Loan06', '4b430fccf5335d1f58530689bcefcb55', 'Ngô Thị Như Loan\r\n', 0, 'NgoThi.Nhu-Loan-07_06@gmail.com', '1906-06-07 00:00:00', '93 Phan Đình Phùng, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '0943796082', '2015-08-30 12:20:15', '2015-08-30 12:20:15', 2),
(336, 'phi_diep\r\n.241294', '605f6eec57875b786174cdb8d01aaffe', 'Phan Phi Ðiệp\r\n', 1, 'PhanPhi.Diep1994.12.24@yahoo.com', '1994-12-24 00:00:00', '56 Nguyễn Chí Thanh, P. Trà Nóc , Q. Bình Thủy, TP. Cần Thơ', '01999892592', '2015-09-17 12:20:15', '2015-09-17 12:20:15', 2),
(337, 'vy.31.05.1940', 'ac85999f13cde2ecbb46d7efbfc13304', 'Vũ Trúc Vy\r\n', 0, 'vy.vu-truc310540@ymail.com', '1940-05-31 00:00:00', '337 Nguyễn Đệ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01230498152', '2015-09-17 13:50:25', '2015-09-17 13:50:25', 2),
(338, 'nguyen-pham.trang2003', '637d4ecf7075e5cec9889d75f20b354d', 'Nguyễn Phạm Tráng', 1, 'nguyenphamtrang.17.02.2003@hotmail.com', '2003-02-17 00:00:00', '138 Xô Viết Nghệ Tĩnh, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01262562154', '2015-09-22 13:50:25', '2015-09-22 13:50:25', 2),
(339, 'HUY_HA\r\n-29_11', '911d73a6af2f94bc2b0046ee2bf73503', 'Vũ Huy Hà\r\n', 1, 'HUYHA\r\n_2001@gmail.com.vn', '2001-11-29 00:00:00', '50/386 Lê Hồng Phong, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01862808657', '2015-09-23 03:58:30', '2015-09-23 03:58:30', 2),
(340, 'hieu-tran_duy-03_11', '481ff411bdb5f6e3ce1f9fc92e626674', 'Trần Duy Hiếu\r\n', 1, 'HIEUTRANDUY_1913_11_03@gmail.com', '1913-11-03 00:00:00', '70/119 Ngô Gia Tự, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01203876562', '2015-09-27 03:58:30', '2015-09-27 03:58:30', 2),
(341, 'VIET.PHAMTRUNG.19951226', '745b62cc8a2cfe60b63dd06523c13973', 'Phạm Trung Việt\r\n', 1, 'pham_trung-viet-26-12-95@yahoo.com', '1995-12-26 00:00:00', '146 Quang Trung, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01697352422', '2015-09-27 04:57:15', '2015-09-27 04:57:15', 2),
(342, 'Tram_Quynh_Bui_09.06', '7eed41ff8da5af4bc2a425161f02d656', 'Bùi Quỳnh Trâm\r\n', 0, 'Quynh_tram\r\n_03@outlook.com', '2003-06-09 00:00:00', '217 Phan Văn Trị, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01625322508', '2015-10-02 04:57:15', '2015-10-02 04:57:15', 2),
(343, 'LeThanhMan2403', 'aafba5bcb4e249d79cacd31eb8a7bb1e', 'Lê Thanh Mẫn\r\n', 0, 'THANH-MAN240386@yahoo.com.vn', '1986-03-24 00:00:00', '61 Nguyễn Trãi, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01646422353', '2015-10-11 04:57:15', '2015-10-11 04:57:15', 2),
(344, 'MINHNGOCPHAMNGUYEN1978', 'a6487ed6c084ce89c22715e2e0036c0f', 'Nguyễn Phạm Ngọc Minh\r\n', 1, 'minh_ngocpham_nguyen19780406@hotmail.com', '1978-04-06 00:00:00', '345 Phan Đình Phùng, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01200093724', '2015-10-29 04:57:15', '2015-10-29 04:57:15', 2),
(345, 'vinhthanhnguyen19370323', 'ff170580e1471330415889defd866852', 'Nguyễn Thành Vinh\r\n', 1, 'ntvinh23031937@yahoo.com', '1937-03-23 00:00:00', '157/154 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01869729535', '2015-10-31 04:57:15', '2015-10-31 04:57:15', 2),
(346, 'HONGVOHOTHI-HUE.1977.05.30', '8622e0765f3ec11904006df7b1cd7d46', 'Võ Hồ Thị Huệ Hồng\r\n', 0, 'VH-TH-Hong_300577@gmail.com', '1977-05-30 00:00:00', '376 Lê Lợi, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01660933326', '2015-10-31 07:32:03', '2015-10-31 07:32:03', 2),
(347, 'LE.THIEU.ANH.77', '4200619cc5caa13574f080e7b2c52eeb', 'Lê Thiếu Anh\r\n', 1, 'L-T-ANH_1977@gmail.com', '1977-10-28 00:00:00', '61 Trần Hưng Đạo, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01295315607', '2015-11-22 07:32:03', '2015-11-22 07:32:03', 2),
(348, 'Quang.thinh\r\n.11.03.1997', 'cd229502beea590f9f934dd350ee7870', 'Lê Nguyễn Quang Thịnh\r\n', 1, 'lnqthinh1997@yahoo.com.vn', '1997-03-11 00:00:00', '30 Đinh Công Chánh, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '09939979565', '2015-12-09 07:32:03', '2015-12-09 07:32:03', 2),
(349, 'YENPHUONGTHILE2108', '8a650237a0bb7a31d719ab36e1735e8a', 'Lê Thị Phương Yến\r\n', 0, 'le_thiphuong_yen_210894@yahoo.com.vn', '1994-08-21 00:00:00', '43 Hai Bà Trưng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0967480940', '2015-12-09 09:27:59', '2015-12-09 09:27:59', 2),
(350, 'TLMLe040995', 'c41b53085e10abad85c796c60ba0466e', 'Trần Lê Mỹ Lệ\r\n', 0, 'T.L_M-Le_95@outlook.com', '1995-09-04 00:00:00', '279 Nguyễn Đệ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01663044843', '2015-12-23 09:27:59', '2015-12-23 09:27:59', 2),
(351, 'PHUONG.NGUYEN_HUYNH-THI_MINH.1994', '5b73617596d1964a14758030e76038c1', 'Nguyễn Huỳnh Thị Minh Phương\r\n', 0, 'PHUONGNGUYENHUYNHTHIMINH2906@yahoo.com', '1994-06-29 00:00:00', '308 Tỉnh lộ 923, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01867868134', '2016-01-16 09:27:59', '2016-01-16 09:27:59', 2),
(352, 'PhiNguyenVan860907', '978563020d49121d18a11caa0ee7b1a3', 'Nguyễn Văn Phi\r\n', 1, 'NGUYENVAN_PHI_0709@gmail.com.vn', '1986-09-07 00:00:00', '206 Hùng Vương, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '0894298580', '2016-01-31 09:27:59', '2016-01-31 09:27:59', 2),
(353, 'DV-UY-1996-12-29', 'f9f5c844ca12fd212d362423e663626e', 'Dương Vũ Uy\r\n', 1, 'UYDUONG.VU.29121996@yahoo.com.vn', '1996-12-29 00:00:00', '52 Thái Thị Hạnh, P. Long Hưng, Q. Ô Môn, TP. Cần Thơ', '01255892338', '2016-01-31 09:27:59', '2016-01-31 09:27:59', 2),
(354, 'DUONG_94', '0c6d7aee644d7f7b209abfef791e5eed', 'Trần Sơn Dương\r\n', 1, 'TRAN_SONDUONG2912@gmail.com', '1994-12-29 00:00:00', '23 Nguyễn Văn Linh, P. An Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0923107894', '2016-01-31 13:11:17', '2016-01-31 13:11:17', 2),
(355, 'nang.0511', 'dd25ca743f3d7f84f2660f9bfbe550f7', 'Nguyễn Văn Năng\r\n', 1, 'nang2004@gmail.com.vn', '2004-11-05 00:00:00', '53 CMT8, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01687925446', '2016-01-31 13:11:17', '2016-01-31 13:11:17', 2),
(356, 'Vinh.Phan.Nguyen.02', '51d7df0263289a2f724f25d8b200ef25', 'Nguyễn Phan Vinh', 1, 'vinh.nguyen.phan.2002_10_04@gmail.com', '2002-10-04 00:00:00', '353 Trần Kiết Tường, P. Thới Hòa, Q. Ô Môn, TP. Cần Thơ', '01256227588', '2016-01-31 13:11:17', '2016-01-31 13:11:17', 2),
(357, 'thichau1986', 'f5c47e59c928c3c40c72b835c3bac1f4', 'Phạm Thị Châu\r\n', 0, 'chau.thi_pham.18121986@yahoo.com', '1986-12-18 00:00:00', '59/309 Thái Thị Hạnh, P. Long Hưng, Q. Ô Môn, TP. Cần Thơ', '0929155679', '2016-02-08 13:11:17', '2016-02-08 13:11:17', 2),
(358, 'SANLINHTHINGUYENLE94', 'b94c3798db5fd41cdf1c774aa0b7bb80', 'Lê Nguyễn Thị Linh San\r\n', 0, 'Linhsan19-09-94@yahoo.com', '1994-09-19 00:00:00', '156E/217 Quang Trung, P.  Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01269223796', '2016-02-08 13:36:11', '2016-02-08 13:36:11', 2),
(359, 'Vanchi\r\n.05', '252f3299eb17d6cf9bc563feedd85445', 'Nguyễn Thị Vân Chi\r\n', 0, 'VAN.CHI26052005@hotmail.com', '2005-05-26 00:00:00', '10 Quang Trung, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0883743290', '2016-02-10 13:36:11', '2016-02-10 13:36:11', 2),
(360, 'PHAN_NGOCANH2004', '872c7052fba62a1366f5ac0318247116', 'Phan Ngọc Anh\r\n', 0, 'PNAnh040621@yahoo.com', '2004-06-21 00:00:00', '206 Nguyễn Văn Linh, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01665966381', '2016-02-24 13:36:11', '2016-02-24 13:36:11', 2),
(361, 'CANH-NGUYEN.VAN-94', '4a039e569ba0722fa773a31e9445f066', 'Nguyễn Văn Cảnh\r\n', 1, 'Nguyen.Van-Canh.94-01-24@ymail.com', '1994-01-24 00:00:00', '42 Bùi Hữu Nghĩa, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '0943316859', '2016-02-27 13:36:11', '2016-02-27 13:36:11', 2),
(362, 'hai-duong\r\n-010117', 'df0fd0009f2e97aab36df09c83eef47c', 'Dương Hải Ðường\r\n', 0, 'd.hduong1917@gmail.com', '1917-01-01 00:00:00', '27/329 Nguyễn Văn Linh, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '01886567463', '2016-02-28 13:36:11', '2016-02-28 13:36:11', 2),
(363, 'lamnguyenngoc190292', 'c0b3cf28d1495d86b1fc2085ec6521f8', 'Nguyễn Ngọc Lam\r\n', 0, 'LAM.NGUYEN.NGOC_19.02.1992@yahoo.com', '1992-02-19 00:00:00', '101/52 Nguyễn Văn Linh, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01669115594', '2016-02-28 13:36:11', '2016-02-28 13:36:11', 2),
(364, 'nguyentrannhat-nam-78', '266d0e73c79a211864620268d1dc6021', 'Nguyễn Trần Nhật Nam\r\n', 1, 'namnhattrannguyen191278@outlook.com', '1978-12-19 00:00:00', '262 Nguyễn Văn Linh, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '0924933243', '2016-03-12 13:36:11', '2016-03-12 13:36:11', 2),
(365, 'ly.171101', 'f11f0ce1af3e4e6850fb3605f6f43dbb', 'Trần Cát Ly\r\n', 0, 'LYTRAN-CAT-171101@hotmail.com', '2001-11-17 00:00:00', '376 Đặng Thanh Sử, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '0929902334', '2016-03-12 18:07:32', '2016-03-12 18:07:32', 2),
(366, 'ngoc-bui.nguyenminh.04-06', '706f16176c5e3d239599fcb722cae3dc', 'Bùi Nguyễn Minh Ngọc\r\n', 0, 'NGOC2001@yahoo.com.vn', '2001-06-04 00:00:00', '165/335 Hai Bà Trưng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01274711698', '2016-03-14 18:07:32', '2016-03-14 18:07:32', 2),
(367, 'N_M_TAN0104', '765b37b96fa3f1c479de6f3260b2605f', 'Nguyễn Mạnh Tấn\r\n', 1, 'NMTan0104@hotmail.com', '1993-04-01 00:00:00', '323 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01643760227', '2016-04-07 18:07:32', '2016-04-07 18:07:32', 2),
(368, 'thuyuyen19910507', 'c60e18c54bd131720a8cfc3384751b8a', 'Nguyễn Thị Thụy Uyên\r\n', 0, 'NGUYEN.THI.THUY-UYEN_91@hotmail.com', '1991-05-07 00:00:00', '344 Nguyễn Văn Cừ, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '0932454285', '2016-04-11 18:07:32', '2016-04-11 18:07:32', 2),
(369, 'khoihuunguyenvo031231', '9afe64f66a340327677dc0cfa1edfcc7', 'Võ Nguyễn Hữu Khôi\r\n', 1, 'KHOI.VO-NGUYENHUU_03_12_31@gmail.com', '2003-12-31 00:00:00', '190 Thái Thị Hạnh, P. Thới Long, Q. Ô Môn, TP. Cần Thơ', '01222547885', '2016-04-14 18:07:32', '2016-04-14 18:07:32', 2),
(370, 'BAO-NGUYEN_HUU.90-01-27', '03d6e1f2294908188180dfb319281fce', 'Nguyễn Hữu Bào\r\n', 1, 'N.H_BAO.1990.01.27@hotmail.com', '1990-01-27 00:00:00', '13D/88 Mậu Thân, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01666839493', '2016-05-03 18:07:32', '2016-05-03 18:07:32', 2),
(371, 'NguyenNhan.78', 'dc6e6e6809b54c4baa6e21ec8242cbde', 'Nguyễn Nhân', 1, 'nguyen.nhan_78@ymail.com', '1978-01-13 00:00:00', '31 Nguyễn Văn Linh, P. Thới An Đông, Q. Bình Thủy, TP. Cần Thơ', '0887350552', '2016-05-08 18:07:32', '2016-05-08 18:07:32', 2),
(372, 'Nu_Ngoc-Vo_08-09-1980', 'c1ef63a03a4be4a666151efb9caf7bb4', 'Võ Ngọc Nữ\r\n', 0, 'nungocvo-0809@hotmail.com', '1980-09-08 00:00:00', '176 Nguyễn Thái Học, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01231225401', '2016-05-27 18:07:32', '2016-05-27 18:07:32', 2),
(373, 'LAN-27.09', 'c552f94873098b81633e834fc33c9661', 'Huỳnh Chi Lan\r\n', 0, 'lanhuynhchi270989@yahoo.com', '1989-09-27 00:00:00', '95/295 Trần Hưng Đạo, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01234443466', '2016-06-01 18:07:32', '2016-06-01 18:07:32', 2);
INSERT INTO `khachhang` (`kh_ma`, `kh_taiKhoan`, `kh_matKhau`, `kh_hoTen`, `kh_gioiTinh`, `kh_email`, `kh_ngaySinh`, `kh_diaChi`, `kh_dienThoai`, `kh_taoMoi`, `kh_capNhat`, `kh_trangThai`) VALUES
(374, 't.t.lan03_07', 'db35fb4b91fd65f12e04832ded797204', 'Trang Tường Lân\r\n', 1, 'Trang-TuongLan-1990@gmail.com.vn', '1990-07-03 00:00:00', '281 Quang Trung, P.  Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01258121159', '2016-06-16 18:07:32', '2016-06-16 18:07:32', 2),
(375, 'HoaThuanNguyen02011991', '0beb58122531534ba6eec2d285eb5c9d', 'Nguyễn Thuận Hòa\r\n', 1, 'NT-HOA-02-01-91@gmail.com.vn', '1991-01-02 00:00:00', '115 Nguyễn Văn Linh, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '09981230985', '2016-06-16 21:45:02', '2016-06-16 21:45:02', 2),
(376, 'Huynh.Lam860204', 'e9c31fb554bf15cbf4472380e1e72bc4', 'Huỳnh Lam', 1, 'LAM_HUYNH-04_02_86@outlook.com', '1986-02-04 00:00:00', '350 Lê Hồng Phong, P. Trà Nóc, Q. Bình Thủy, TP. Cần Thơ', '01648311506', '2016-07-08 21:45:02', '2016-07-08 21:45:02', 2),
(377, 'LH_TLAM15_08_95', '7d5d1be6795aa99a7782065c315f03b6', 'Lê Huỳnh Thái Lâm\r\n', 0, 'lamlehuynhthai1995@ymail.com', '1995-08-15 00:00:00', '128/311 Quang Trung, P.  Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01665594068', '2016-07-09 21:45:02', '2016-07-09 21:45:02', 2),
(378, 'THAO.MAI20030408', '83e12cd4199f08222de018ed8d3cf864', 'Nguyễn Thị Thảo Mai\r\n', 0, 'N_T-T_MAI0804@hotmail.com', '2003-04-08 00:00:00', '277 Tỉnh lộ 923, P. Trường Lạc, Q. Ô Môn, TP. Cần Thơ', '0976092180', '2016-07-19 21:45:02', '2016-07-19 21:45:02', 2),
(379, 'Vy.971022', '4da3c5d2f3216504a82ce1f21b50a54b', 'Nguyễn Thị Phượng Vy\r\n', 0, 'VY-PHUONGTHI-NGUYEN_1997@hotmail.com', '1997-10-22 00:00:00', '290 QL1, P. Thường Thạnh, Q. Cái Răng, TP. Cần Thơ', '01259923477', '2016-07-19 21:45:02', '2016-07-19 21:45:02', 2),
(380, 'vu.nha_y19840220', 'a2d623fabaac7a592296866459e9380c', 'Vũ Nhã Ý\r\n', 0, 'VUNHAY19840220@gmail.com.vn', '1984-02-20 00:00:00', '311 Lý Tự Trọng, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '0908807224', '2016-07-23 21:45:02', '2016-07-23 21:45:02', 2),
(381, 'thanhdoannguyen19041977', '8fdc05650efcb70e50fe100216f9456f', 'Nguyễn Ðoan Thanh\r\n', 0, 'DOANTHANH\r\n_770419@yahoo.com', '1977-04-19 00:00:00', '56 QL91, P. Thới Hòa, Q. Ô Môn, TP. Cần Thơ', '01621823585', '2016-07-27 21:45:02', '2016-07-27 21:45:02', 2),
(382, 'pmly19981024', '0eb5d03222930acdd17ae37afe257035', 'Phạm Mai Ly\r\n', 0, 'maily\r\n-24-10@outlook.com', '1998-10-24 00:00:00', '90 Thái Thị Hạnh, P. Long Hưng, Q. Ô Môn, TP. Cần Thơ', '01880721171', '2016-07-31 21:45:02', '2016-07-31 21:45:02', 2),
(383, 'xuannguyennghi85', '2454a82667cf97c9423aa7a9a333ad41', 'Nguyễn Nghi Xuân\r\n', 0, 'nguyen-nghi.xuan.01-04-1985@outlook.com', '1985-04-01 00:00:00', '235 Quang Trung, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01635214134', '2016-07-31 21:45:02', '2016-07-31 21:45:02', 2),
(384, 'VY-20.09.24', '3321e9a24b3f30a5e1680c0e6b3573e8', 'Phạm Lý Thị Tuyết Vy\r\n', 0, 'pham_lythi_tuyetvy-24.09@yahoo.com.vn', '1920-09-24 00:00:00', '178/246 Ngô Quyền, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01889729181', '2016-08-03 21:45:02', '2016-08-03 21:45:02', 2),
(385, 'QuynhNguyenLeThiNhu130395', '996013f92dd01111b8fd307911d06ee6', 'Nguyễn Lê Thị Như Quỳnh\r\n', 0, 'quynh.13.03@gmail.com', '1995-03-13 00:00:00', '380 Nguyễn Văn Linh, P. Thới An Đông, Q. Bình Thủy, TP. Cần Thơ', '09996041336', '2016-08-05 21:45:02', '2016-08-05 21:45:02', 2),
(386, 'Nhien_Le_ThiDi.89', '840bc4a7967375f9093f6ad93ee3dfc4', 'Lê Thị Di Nhiên\r\n', 0, 'nhien19890424@outlook.com', '1989-04-24 00:00:00', '186/182 Trần Ngọc Quế, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '0892190755', '2016-08-19 21:45:02', '2016-08-19 21:45:02', 2),
(387, 'tran.linh.ha280195', 'a4e2db00e8a7adc60ccfcd391069ece4', 'Trần Linh Hà\r\n', 0, 'HALINHTRAN.19950128@ymail.com', '1995-01-28 00:00:00', '69/356 Huỳnh Phan Hộ, P. Bình Thủy , Q. Bình Thủy, TP. Cần Thơ', '01623175701', '2016-08-20 01:40:04', '2016-08-20 01:40:04', 2),
(388, 'DIEM_HANH\r\n_89', 'bfd0f13a59bf7bec21aa3b2152be63b6', 'Trần Thị Diễm Hạnh\r\n', 0, 'Diem_hanh89@ymail.com', '1989-09-15 00:00:00', '113 Nguyễn Đệ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01227670396', '2016-08-23 01:40:04', '2016-08-23 01:40:04', 2),
(389, 'LINHTRANTHITRANG19740407', 'd8da7d996662a1470e4a4631439554a9', 'Trần Thị Trang Linh\r\n', 0, 'LINH-TRAN.THI.TRANG-1974@hotmail.com', '1974-04-07 00:00:00', '88E/85 Hòa Bình, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0885239158', '2016-08-28 01:40:04', '2016-08-28 01:40:04', 2),
(390, 'NGUYEN_THITHANHTHUY_881023', '7bb0bc46db61a4a57be96eebe9732406', 'Nguyễn Thị Thanh Thủy\r\n', 0, 'Thuy-Thanh-ThiNguyen88@yahoo.com', '1988-10-23 00:00:00', '239 Châu Văn Liêm, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01889703031', '2016-08-28 08:42:46', '2016-08-28 08:42:46', 2),
(391, 'Nguyet_1940_04_09', 'ee3c28cafc48a42c53514955fb6b1992', 'Dương Ánh Nguyệt\r\n', 0, 'd_anguyet40_04_09@gmail.com', '1940-04-09 00:00:00', '214 Nguyễn Văn Linh, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01229653543', '2016-08-28 13:23:03', '2016-08-28 13:23:03', 2),
(392, 'T-AVAN-02-10', 'a9100d3078c6c401f649ae6b105ffc06', 'Trần Ái Vân\r\n', 0, 'van031002@gmail.com', '2003-10-02 00:00:00', '247 CMT8, P. Bùi Hữu Nghĩa, Q. Bình Thủy, TP. Cần Thơ', '01882350201', '2016-09-20 13:23:03', '2016-09-20 13:23:03', 2),
(393, 'MAIHUYNHNGUYENHIEN87', '1aeb75fd9083a3c61729d9d9e0b548c5', 'Huỳnh Nguyễn Hiền Mai\r\n', 0, 'mai1987-12-04@outlook.com', '1987-12-04 00:00:00', '62 CMT8, P. Bùi Hữu Nghĩa, Q. Bình Thủy, TP. Cần Thơ', '0882105457', '2016-09-20 13:23:03', '2016-09-20 13:23:03', 2),
(394, 'NGUYENLE-THIENKHANH18-11', '1b3115343e4fd6360a1249faebc8103f', 'Nguyễn Lê Thiên Khánh\r\n', 0, 'NguyenLe_Thien-Khanh1987_11_18@outlook.com', '1987-11-18 00:00:00', '90 Hùng Vương, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '0892856803', '2016-09-29 13:23:03', '2016-09-29 13:23:03', 2),
(395, 'LDTQuan1997', '40d7a0f221320b5cd819f3b2548c572f', 'Lê Đàm Tùng Quân\r\n', 0, 'Quan-02.11.1997@yahoo.com', '1997-11-02 00:00:00', '77 Nguyễn An Ninh, An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01663916573', '2016-09-29 13:23:03', '2016-09-29 13:23:03', 2),
(396, 'TRAN.NGUYEN.THIEN-DI.1940', '75c553024617f2945d8b350d2170b415', 'Trần Nguyễn Thiên Di\r\n', 0, 'tran-nguyenthiendi.23_04_1940@hotmail.com', '1940-04-23 00:00:00', '279 Nguyễn An Ninh, An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01627280346', '2016-09-29 17:51:01', '2016-09-29 17:51:01', 2),
(397, 'huyen.tram\r\n_99', '9ccf46bc9d4b39ec80985bbffab02b08', 'Phan Thị Huyền Trâm\r\n', 0, 'Tram990101@outlook.com', '1999-01-01 00:00:00', '213 Lê Lợi, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '0890232564', '2016-10-07 17:51:01', '2016-10-07 17:51:01', 2),
(398, 'P.TQNHU_1993.04.19', '4a2d151257d4c82da40f922c4e1f6579', 'Phan Thị Quỳnh Như\r\n', 0, 'phanthiquynhnhu190493@outlook.com', '1993-04-19 00:00:00', '7/185 Nguyễn Truyền Thanh, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01295504422', '2016-10-07 23:12:03', '2016-10-07 23:12:03', 2),
(399, 'DIEMNGUYEN_THUY.1996', '414aaa395f3f9d0048a4ea0e450ade2a', 'Nguyễn Thúy Diễm\r\n', 0, 'Diem.1996-05-07@ymail.com', '1996-05-07 00:00:00', '329 Nguyễn Chí Thanh, P. Trà Nóc , Q. Bình Thủy, TP. Cần Thơ', '01205644226', '2016-10-11 23:12:03', '2016-10-11 23:12:03', 2),
(400, 'NH-Thao1999_10_10', 'd1b5565e484e772c10dba8c995c61a6b', 'Nguyễn Hồng Thảo\r\n', 0, 'THAONGUYENHONG19991010@yahoo.com', '1999-10-10 00:00:00', '280 Nguyễn Văn Cừ, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '09943202495', '2016-10-26 23:12:03', '2016-10-26 23:12:03', 2),
(401, 'TRANGTHI-NGUYEN1986', 'e054fb1af367cf9bb73218bc20784454', 'Nguyễn Thị Trang\r\n', 0, 'nt_trang_2108@hotmail.com', '1986-08-21 00:00:00', '13 Lê Lợi, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01867486812', '2016-10-26 23:41:37', '2016-10-26 23:41:37', 2),
(402, 'NUONGDANGTHUY-81-09-27', '669e569cee1478330f98200764099d9d', 'Đặng Thụy Nương\r\n', 0, 'd-t.nuong270981@ymail.com', '1981-09-27 00:00:00', '68 Trần Ngọc Quế, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01291359681', '2016-11-19 23:41:37', '2016-11-19 23:41:37', 2),
(403, 'thihieu19930615', '4068db86323702bd98c1999331df5df8', 'Nguyễn Trang Thị Hiếu\r\n', 0, 'N_TT.Hieu.19930615@ymail.com', '1993-06-15 00:00:00', '9/345 Xô Viết Nghệ Tĩnh, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '0912799491', '2016-12-12 23:41:37', '2016-12-12 23:41:37', 2),
(404, 'PHUONG79', '9cbc74a0c2ded63bbdd451d9a5130339', 'Trần Nguyễn Diễm Phượng\r\n', 0, 'phuong.diem.nguyen.tran-1979.08.25@gmail.com', '1979-08-25 00:00:00', '400 CMT8, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '0924631288', '2016-12-18 23:41:37', '2016-12-18 23:41:37', 2),
(405, 'theudodangthi1402', '9a7e1568971ed085e84cdb73a444d879', 'Đỗ Đặng Thị Thêu\r\n', 0, 'theu1402@yahoo.com.vn', '1995-02-14 00:00:00', '198 Xô Viết Nghệ Tĩnh, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01256392701', '2016-12-19 06:38:55', '2016-12-19 06:38:55', 2),
(406, 'TUONG.VU.THI-79', 'f77bd477118a7984cb6aee4b36965a4a', 'Vũ Thị Tường\r\n', 0, 'TuongVu.Thi26051979@outlook.com', '1979-05-26 00:00:00', '81 Nguyễn Trãi, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01643444405', '2016-12-21 06:38:55', '2016-12-21 06:38:55', 2),
(407, 'Van_01', '30d988cfbbc63de3c04ed74c78879031', 'Dương Tuyết Vân\r\n', 0, 'VANTUYETDUONG010117@gmail.com', '2001-01-17 00:00:00', '16A/178 Nguyễn Văn Bông, P. Long Tuyền, Q. Bình Thủy, TP. Cần Thơ', '0897933958', '2016-12-22 06:38:55', '2016-12-22 06:38:55', 2),
(408, 'maihuongthipham20010507', 'c166c4708c5349827caca63e75c09069', 'Phạm Thị Hương Mai\r\n', 0, 'maihuong_thipham-20010507@gmail.com.vn', '2001-05-07 00:00:00', '149/42 QL1, P. Thường Thạnh, Q. Cái Răng, TP. Cần Thơ', '0970433548', '2016-12-27 06:38:55', '2016-12-27 06:38:55', 2),
(409, 'thuy-quynh\r\n-920402', 'd0839f9567606ec7ead8c893a2facc97', 'Vũ Lý Thị Thúy Quỳnh\r\n', 0, 'QUYNHTHUYTHILYVU19920402@outlook.com', '1992-04-02 00:00:00', '8/251 Nguyễn Trãi, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01286279053', '2017-01-06 06:38:55', '2017-01-06 06:38:55', 2),
(410, 'My861101', 'e0d97fbff2302947fa73ff3133735a2b', 'Vũ Thùy My\r\n', 0, 'my01111986@gmail.com', '1986-11-01 00:00:00', '2 30/4, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01884645025', '2017-01-06 08:41:55', '2017-01-06 08:41:55', 2),
(411, 'maitran.thi-phuong.92', 'f0d66ba29b2ef616cb74ab471fd37c46', 'Trần Thị Phương Mai\r\n', 0, 'tt.pmai.1992@gmail.com.vn', '1992-07-15 00:00:00', '36/196 QL1, P. Ba Láng, Q. Cái Răng, TP. Cần Thơ', '01664847623', '2017-01-06 09:58:43', '2017-01-06 09:58:43', 2),
(412, 'OanhLe-Nguyen-ThiThu1990-09-18', 'd02cf6ad0c77e8a3fb76065fb4669387', 'Lê Nguyễn Thị Thu Oanh\r\n', 0, 'OANHLE-NGUYENTHITHU-1990@ymail.com', '1990-09-18 00:00:00', '6/364 Ngô Quyền, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01269706282', '2017-01-07 09:58:43', '2017-01-07 09:58:43', 2),
(413, 'Hai-mien\r\n_84_05_30', '48aa9641ce5b8063acc33698b799dc22', 'Huỳnh Hải Miên\r\n', 0, 'mien84-05-30@yahoo.com', '1984-05-30 00:00:00', '245 QL1, P. Ba Láng, Q. Cái Răng, TP. Cần Thơ', '01684557235', '2017-01-11 09:58:43', '2017-01-11 09:58:43', 2),
(414, 'ngohuynh-thiha.phuong.19940109', '025e38a7a4aef19a842ef70f3d60292a', 'Ngô Huỳnh Thị Hà Phương\r\n', 0, 'PHUONG94@hotmail.com', '1994-01-09 00:00:00', '218 Lê Hồng Phong, P. Trà An , Q. Bình Thủy, TP. Cần Thơ', '0947966964', '2017-01-16 09:58:43', '2017-01-16 09:58:43', 2),
(415, 'ly_phanthi_nha_95', '34f1d9753a191581ec49c5066c4a98d3', 'Phan Thị Nhã Lý\r\n', 0, 'phanthi.nha.ly1995.05.17@outlook.com', '1995-05-17 00:00:00', '88 QL1, P. Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '0948538285', '2017-01-17 09:58:43', '2017-01-17 09:58:43', 2),
(416, 'Tuyet_Pham_ThiBach210595', 'a93647345e3c231232401f4f17f34994', 'Phạm Thị Bạch Tuyết\r\n', 0, 'Tuyet.Bach.Thi-Pham-95-05-21@yahoo.com.vn', '1995-05-21 00:00:00', '57 Bùi Minh Trực, P. Long Tuyền, Q. Bình Thủy, TP. Cần Thơ', '01242771264', '2017-01-31 09:58:43', '2017-01-31 09:58:43', 2),
(417, 'Nguyen_Phan_Thi_Thuong_86', 'a1b5c5531cd9f0c5b70ef543afd9f127', 'Nguyễn Phan Thị Thương\r\n', 0, 'NguyenPhanThiThuong070586@hotmail.com', '1986-05-07 00:00:00', '194A/392 QL91, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01241314963', '2017-02-09 09:58:43', '2017-02-09 09:58:43', 2),
(418, 'Tram81', '6fd3097b9709d2c12965dbbfc561ca57', 'Phạm Thị Bích Trâm\r\n', 0, 'Tram22.05.1981@outlook.com', '1981-05-22 00:00:00', '26/147 Bùi Hữu Nghĩa, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01883441245', '2017-02-09 14:09:34', '2017-02-09 14:09:34', 2),
(419, 'NHU091262', '8d5fa207ede0271c1e78bda482558de5', 'Lý Thị Uyển Như\r\n', 0, 'lythiuyennhu621209@ymail.com', '1962-12-09 00:00:00', '242 Quang Trung, P.  Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '0893282216', '2017-02-23 14:09:34', '2017-02-23 14:09:34', 2),
(420, 'chilehothimai2703', '6c0d9b897eb3147a33810910c6cfb673', 'Lê Hồ Thị Mai Chi\r\n', 0, 'Mai.chi27_03_1980@hotmail.com', '1980-03-27 00:00:00', '33/341 Trần Ngọc Quế, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01234656859', '2017-03-09 14:09:34', '2017-03-09 14:09:34', 2),
(421, 'HTKThuy13102003', '0bf26dd910c8d88bf7526cdeb7703305', 'Huỳnh Thị Khánh Thủy\r\n', 0, 'Thuy1310@gmail.com.vn', '2003-10-13 00:00:00', '19 Võ Nguyên Giáp, P. Phú Thứ, Q. Cái Răng, TP. Cần Thơ', '01675961136', '2017-03-09 23:25:04', '2017-03-09 23:25:04', 2),
(422, 'Lam_04.04.15', '54455b82937ac1a48cb3c86f86d8c300', 'Trần Thị Hương Lâm\r\n', 0, 'HUONG-LAM\r\n-04@gmail.com.vn', '2004-04-15 00:00:00', '154D/230 Mậu Thân, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01214347357', '2017-03-10 02:08:43', '2017-03-10 02:08:43', 2),
(423, 'NhiNguyenTran.ThiYen.2004', '44e130caf1a799e7f018ecd990ca8a1f', 'Nguyễn Trần Thị Yến Nhi\r\n', 0, 'nttynhi2004@hotmail.com', '2004-03-31 00:00:00', '148/240 Hòa Bình, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '0904892853', '2017-03-10 03:40:14', '2017-03-10 03:40:14', 2),
(424, 'nhathanhnguyen_22_10_1976', 'a597562778202d428cce7f00f764d84f', 'Nguyễn Thanh Nhã\r\n', 0, 'NHA.THANHNGUYEN22.10.1976@gmail.com.vn', '1976-10-22 00:00:00', '20/205 Hoàng Văn Thụ, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01649533262', '2017-03-10 10:39:39', '2017-03-10 10:39:39', 2),
(425, 'thithanh19941203', '0718cb253cf61b0c4185e30dd8780acf', 'Hồ Thị Thanh\r\n', 0, 'Thanh19941203@outlook.com', '1994-12-03 00:00:00', '170/330 Võ Văn Tần, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0938772974', '2017-04-04 10:39:39', '2017-04-04 10:39:39', 2),
(426, 'LTBLAN760607', 'c5f0eb00ba01e2dd95334f6e170fd3d9', 'Lê Thị Bảo Lan\r\n', 0, 'lan1976@gmail.com.vn', '1976-06-07 00:00:00', '2C/164 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01246707348', '2017-04-04 22:43:16', '2017-04-04 22:43:16', 2),
(427, 'p-h.thuy_96', 'f60bf30088e9fdc2a68adfce752db4de', 'Phạm Hương Thủy\r\n', 0, 'Huongthuy120196@hotmail.com', '1996-01-12 00:00:00', '202 Trần Ngọc Quế, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01268838388', '2017-04-09 22:43:16', '2017-04-09 22:43:16', 2),
(428, 'antuthingo-nguyen-860305', 'd3edbc6f2a3be398acadeed64d165493', 'Nguyễn Ngô Thị Từ Ân\r\n', 0, 'nn.t-t-an-1986.03.05@yahoo.com', '1986-03-05 00:00:00', '222 CMT8, P. An Thới , Q. Bình Thủy, TP. Cần Thơ', '0923486853', '2017-04-15 22:43:16', '2017-04-15 22:43:16', 2),
(429, 'VoNguyenDieu.Ngoc.25.04', '9960140628971f37a3478e27298082ea', 'Võ Nguyễn Diệu Ngọc\r\n', 0, 'ngoc-dieunguyen_vo_25_04_1989@yahoo.com.vn', '1989-04-25 00:00:00', '307 Phan Văn Trị, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '0911928498', '2017-04-25 22:43:16', '2017-04-25 22:43:16', 2),
(430, 'N_T.TXUAN.11_12', '97cf09b8711faa969922b3bcd34d37fd', 'Nguyễn Thị Thi Xuân\r\n', 0, 'n_t-t-xuan_1985@gmail.com.vn', '1985-12-11 00:00:00', '190/394 Tỉnh lộ 922, P. Châu Văn Liêm, Q. Ô Môn, TP. Cần Thơ', '01623946814', '2017-04-28 22:43:16', '2017-04-28 22:43:16', 2),
(431, 'Dung91', '187f69c37116bec8969ad716922667ba', 'Nguyễn Ngọc Dung\r\n', 0, 'N_N_Dung.1991@ymail.com', '1991-11-24 00:00:00', '397 Đặng Thanh Sử, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01629714157', '2017-04-29 10:40:31', '2017-04-29 10:40:31', 2),
(432, 'daodongthi.nguyendo22_02_92', '0923a3cc8af804fb59391a6d5d7b3b3b', 'Đỗ Nguyễn Thị Ðồng Dao\r\n', 0, 'DAO-DONG-THINGUYEN-DO.920222@yahoo.com.vn', '1992-02-22 00:00:00', '31A/337 Nguyễn Văn Cừ, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01215742301', '2017-05-06 10:40:31', '2017-05-06 10:40:31', 2),
(433, 'HIENNHI\r\n.12.03', 'fd6e1b6467bc54b09974dd0ca72bc897', 'Vũ Hiền Nhi\r\n', 0, 'nhihienvu12031982@outlook.com', '1982-03-12 00:00:00', '15 Phan Đình Phùng, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01625284238', '2017-05-09 10:40:31', '2017-05-09 10:40:31', 2),
(434, 'TRAN_HA.TIEN_1993', '540c91c1d284170816fd93fbef50be01', 'Trần Hạ Tiên\r\n', 0, 'tientran.ha1993@outlook.com', '1993-01-16 00:00:00', '279 CMT8, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01687874728', '2017-05-09 16:27:35', '2017-05-09 16:27:35', 2),
(435, 'Ha-nhi\r\n-1991-05-08', '265124462bb14a71294cbed85deca6f5', 'Nguyễn Trần Thị Hà Nhi\r\n', 0, 'Nguyen-TranThiHa.Nhi-1991@gmail.com.vn', '1991-05-08 00:00:00', '25 Nguyễn Đệ, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '08684048607', '2017-05-21 16:27:35', '2017-05-21 16:27:35', 2),
(436, 'Trang210394', '674c2f72833e8bc5a88ee54169136abd', 'Mạc Thị Thục Trang\r\n', 0, 'trang.macthi.thuc-21_03@gmail.com', '1994-03-21 00:00:00', '73 Tỉnh lộ 923, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01625699412', '2017-05-31 16:27:35', '2017-05-31 16:27:35', 2),
(437, 'BT-TTRANG800627', 'cd7003eaa433cef56ea296195457e309', 'Bùi Thị Thanh Trang\r\n', 0, 'THANHTRANG2706@outlook.com', '1980-06-27 00:00:00', '299 Nguyễn Văn Bông, P. Long Tuyền, Q. Bình Thủy, TP. Cần Thơ', '01230637049', '2017-06-10 16:27:35', '2017-06-10 16:27:35', 2),
(438, 'VT-Anh.1997', 'f7692f7a8aa40044bdac400ae8e4e975', 'Võ Thúy Anh\r\n', 0, 'vothuyanh97@gmail.com', '1997-03-26 00:00:00', '254 Trần Kiết Tường, P. Thới An, Q. Ô Môn, TP. Cần Thơ', '09930428393', '2017-06-11 16:27:35', '2017-06-11 16:27:35', 2),
(439, 'Hanh_Diem.Thi_Nguyen22_01', '395e8f274b9a8dfeb5932cf958c79e48', 'Nguyễn Thị Diễm Hạnh\r\n', 0, 'n-tdhanh-85@yahoo.com', '1985-01-22 00:00:00', '315 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01219330886', '2017-06-25 16:27:35', '2017-06-25 16:27:35', 2),
(440, 'YenPhungThiToNguyen0604', 'a813c34904823a60f4e8dc326b0f7db3', 'Nguyễn Tô Thị Phụng Yến\r\n', 0, 'N_T.T.PYen_83@gmail.com', '1983-04-06 00:00:00', '106 Trần Kiết Tường, P. Thới Hòa, Q. Ô Môn, TP. Cần Thơ', '01626111751', '2017-06-30 16:27:35', '2017-06-30 16:27:35', 2),
(441, 'thy.2107', 'c59ddbcbbfb5019bf8aafecae0687e24', 'Đặng Thị Mai Thy\r\n', 0, 'dtmthy21071979@ymail.com', '1979-07-21 00:00:00', '266 QL91B, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01680887727', '2017-07-18 16:27:35', '2017-07-18 16:27:35', 2),
(442, 'ngocnguyenthi_van23011979', 'ae658cc61861635c2a4f2ca51b28bbd7', 'Nguyễn Thị Vân Ngọc\r\n', 0, 'Nguyen_Thi_Van_Ngoc1979-01-23@hotmail.com', '1979-01-23 00:00:00', '156 QL91, P. Châu Văn Liêm, Q. Ô Môn, TP. Cần Thơ', '0916250318', '2017-07-18 16:53:00', '2017-07-18 16:53:00', 2),
(443, 'chau-le_ong_diem-19771211', '93be91d5e6150ff32bb1a90771c94ecd', 'Lê Ông Diễm Châu\r\n', 0, 'DIEMCHAU11_12_1977@outlook.com', '1977-12-11 00:00:00', '59/154 QL1, P. Thường Thạnh, Q. Cái Răng, TP. Cần Thơ', '01632785159', '2017-07-18 17:20:32', '2017-07-18 17:20:32', 2),
(444, 'VONGUYENVANLINH19860905', '7d036f94e3d6e05a0ab6aa0f7a687ed2', 'Võ Nguyễn Vân Linh\r\n', 0, 'VONGUYENVANLINH0509@outlook.com', '1986-09-05 00:00:00', '389 Nguyễn Trãi, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01686568245', '2017-07-18 20:22:27', '2017-07-18 20:22:27', 2),
(445, 'nguyenngoc.lan.1990', 'cc081e9e17784c2e53f347456c09d5ed', 'Nguyễn Ngọc Lan\r\n', 0, 'Lan.Nguyen_Ngoc07.10@gmail.com', '1990-10-07 00:00:00', '298 QL1, P. Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01637599301', '2017-07-18 20:22:27', '2017-07-18 20:22:27', 2),
(446, 'NGUYENTHUY.NUONG.06.10.97', '1395f2b04dd3b85b09fb3ede8c3153bf', 'Nguyễn Thụy Nương\r\n', 0, 'NUONGNGUYENTHUY0610@yahoo.com', '1997-10-06 00:00:00', '117/210 Châu Văn Liêm, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01689537690', '2017-07-18 22:46:30', '2017-07-18 22:46:30', 2),
(447, 'P-V_M_Loan.78', '265e6dec792204e21a79a5d53d9991cd', 'Phạm Võ Minh Loan\r\n', 0, 'p-vm.loan_01071978@gmail.com.vn', '1978-07-01 00:00:00', '66 Hòa Bình, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01679166796', '2017-07-18 22:46:30', '2017-07-18 22:46:30', 2),
(448, 'Mi-08-02-89', '2b8039f25706da168bd886a9ca85ee60', 'Lê Đặng Họa Mi\r\n', 0, 'LE-DANG-HOAMI-08-02@hotmail.com', '1989-02-08 00:00:00', '335 Nguyễn Văn Cừ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '0893636179', '2017-07-23 22:46:30', '2017-07-23 22:46:30', 2),
(449, 'TRANGNGUYENHOAI19931231', 'fabd91a582168d33377d0d03bd162e03', 'Nguyễn Hoài Trang\r\n', 0, 'hoaitrang3112@hotmail.com', '1993-12-31 00:00:00', '236 Thái Thị Hạnh, P. Long Hưng, Q. Ô Môn, TP. Cần Thơ', '01234038182', '2017-07-26 22:46:30', '2017-07-26 22:46:30', 2),
(450, 'LinhNguyen.Le.Thi_Thuy_31-08-05', 'a45010d6112b2cc853a6bd7aad7cf0bf', 'Nguyễn Lê Thị Thủy Linh\r\n', 0, 'Nguyen-Le-Thi.Thuy-Linh_05_08_31@yahoo.com', '2005-08-31 00:00:00', '86 Nguyễn Văn Linh, P. Long Tuyền , Q. Bình Thủy, TP. Cần Thơ', '0882925478', '2017-07-29 22:46:30', '2017-07-29 22:46:30', 2),
(451, 'VYTHANHTHITA19931016', '69e66a58071a2d7c1bd792dbea16c93e', 'Tạ Thị Thanh Vy\r\n', 0, 'TaThiThanhVy1993@yahoo.com', '1993-10-16 00:00:00', '172/344 Mậu Thân, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01678493111', '2017-08-02 22:46:30', '2017-08-02 22:46:30', 2),
(452, 'Yen031078', 'aa16e11649e884d3b4cc2925805e6ab0', 'Nguyễn Thị Bạch Yến\r\n', 0, 'BACH_YEN\r\n-03_10_1978@gmail.com', '1978-10-03 00:00:00', '37 Phan Đình Phùng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01298236815', '2017-08-15 22:46:30', '2017-08-15 22:46:30', 2),
(453, 'TrangDoKhanh1984', 'f0c00f111dda6b76fcd3c0aff2eb8f0c', 'Đỗ Khánh Trang\r\n', 0, 'dokhanhtrang290184@hotmail.com', '1984-01-29 00:00:00', '124 Bùi Hữu Nghĩa, P. Long Hòa , Q. Bình Thủy, TP. Cần Thơ', '01292618718', '2017-08-16 00:20:16', '2017-08-16 00:20:16', 2),
(454, 'THOUYENDINHTRAN060199', '7d82c90cf30081c48cc15bc5d83660a4', 'Trần Đinh Uyên Thơ\r\n', 0, 'TRAN-DINH-UYEN_THO_1999@gmail.com.vn', '1999-01-06 00:00:00', '167 Trần Quang Diệu, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01220440050', '2017-08-20 00:20:16', '2017-08-20 00:20:16', 2),
(455, 'TAM_NGUYEN.MY.910218', '23c38dbf2ae04700454e4679edbc6447', 'Nguyễn Mỹ Tâm\r\n', 0, 'nguyenmytam.1802@gmail.com.vn', '1991-02-18 00:00:00', '145 Nguyễn Thị Minh Khai, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01676837338', '2017-08-20 15:34:00', '2017-08-20 15:34:00', 2),
(456, 'VyNguyen.Thi.Minh-1978', '12ae5fb01228c8cdae83397bd4ba278f', 'Nguyễn Thị Minh Vy\r\n', 0, 'NTM-Vy1978-02-22@gmail.com.vn', '1978-02-22 00:00:00', '119A/163 QL1, P. Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '0977131932', '2017-08-23 15:34:00', '2017-08-23 15:34:00', 2),
(457, 'Khanhquynh700911', '90c7ee9a4ac57b5e37cbee2e3e1f1e34', 'Vương Khánh Quỳnh\r\n', 0, 'Quynh_Khanh.Vuong1970.09.11@ymail.com', '1970-09-11 00:00:00', '118 Trần Văn Hoài, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01284387810', '2017-08-24 10:20:49', '2017-08-24 10:20:49', 2),
(458, 'hienpham_nguyen-thi_phuong-121081', '27d4ddeef2b9e152c9349f6985e3ac49', 'Phạm Nguyễn Thị Phương Hiền\r\n', 0, 'HIEN-PHUONGTHI.NGUYENPHAM_811012@ymail.com', '1981-10-12 00:00:00', '178 Mậu Thân, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01651233988', '2017-08-24 19:12:22', '2017-08-24 19:12:22', 2),
(459, 'TRA.PHUONG-NGUYEN18.05.03', 'f292eecb921600c7b61d5633cd58a3f2', 'Nguyễn Phương Trà\r\n', 0, 'phuong-tra18.05.2003@hotmail.com', '2003-05-18 00:00:00', '170B/27 Lý Tự Trọng, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01869708285', '2017-08-29 19:12:22', '2017-08-29 19:12:22', 2),
(460, 'Truc.NhaThi.Nguyen_1995', '9045343319fd579125bd43f695beb8a9', 'Nguyễn Thị Nhã Trúc\r\n', 0, 'TRUC.NHA-THI.NGUYEN.19950519@ymail.com', '1995-05-19 00:00:00', '129/229 Trần Hưng Đạo, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01882666430', '2017-09-13 19:12:22', '2017-09-13 19:12:22', 2),
(461, 'L-T-THI000813', '638c623081c022fe75af216f0129e859', 'Lê Tuệ Thi\r\n', 0, 'ltthi2000@hotmail.com', '2000-08-13 00:00:00', '343 QL91, P. Long Hưng, Q. Ô Môn, TP. Cần Thơ', '01647396455', '2017-09-13 19:59:52', '2017-09-13 19:59:52', 2),
(462, 'VANTHUYBUI.0908', '25e2edf632772470afde7fa995db9af2', 'Bùi Thùy Vân\r\n', 0, 'VanThuy.Bui09.08@gmail.com', '1978-08-09 00:00:00', '198 Trần Kiết Tường, P. Thới An, Q. Ô Môn, TP. Cần Thơ', '01861460431', '2017-09-13 19:59:52', '2017-09-13 19:59:52', 2),
(463, 'TrinhNgoc-Thi-PhanHuynh-1999', '3975f3f30661916ea5f8c7dc3a044439', 'Huỳnh Phan Thị Ngọc Trinh\r\n', 0, 'TrinhHuynhPhanThiNgoc19990410@ymail.com', '1999-04-10 00:00:00', '244 Châu Văn Liêm, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01637351767', '2017-09-18 19:59:52', '2017-09-18 19:59:52', 2),
(464, 'nguyenhamtho0609', '3a3421c0113d32df3c5dddd30e7ca18e', 'Nguyễn Hàm Thơ\r\n', 0, 'N-HTho1996-09-06@gmail.com.vn', '1996-09-06 00:00:00', '161/83 CMT8, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01272906270', '2017-09-19 19:59:52', '2017-09-19 19:59:52', 2),
(465, 'xuan.phanthimy_07.02', 'b4bac071b9f1f70121060d3a81ef52e9', 'Phan Thị Mỹ Xuân\r\n', 0, 'XUAN_PHAN.THI_MY07.02.93@ymail.com', '1993-02-07 00:00:00', '231 Nguyễn An Ninh, An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01281643825', '2017-09-19 20:21:01', '2017-09-19 20:21:01', 2),
(466, 'DungTa-Thi_Kieu-27-01', 'dee2361b790101030faa2943003d91b7', 'Tạ Thị Kiều Dung\r\n', 0, 'ttkdung27011999@gmail.com.vn', '1999-01-27 00:00:00', '176 Nguyễn An Ninh, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01636727726', '2017-09-19 20:21:01', '2017-09-19 20:21:01', 2),
(467, 'Nguyen_ThiPhuongNga2004.11.07', '1fc11957642780a507cd1550cba6732c', 'Nguyễn Thị Phượng Nga\r\n', 0, 'N_TPNGA07112004@gmail.com', '2004-11-07 00:00:00', '12 Châu Văn Liêm, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '09950112671', '2017-09-23 20:21:01', '2017-09-23 20:21:01', 2),
(468, 'Kieu-DiemThi-Nguyen04102003', '30731e208825a873103a9e2dbc869df3', 'Nguyễn Thị Diễm Kiều\r\n', 0, 'nguyenthidiemkieu_031004@gmail.com', '2003-10-04 00:00:00', '71 QL91, P. Long Hưng, Q. Ô Môn, TP. Cần Thơ', '01629821178', '2017-09-25 20:21:01', '2017-09-25 20:21:01', 2),
(469, 'NGHITHITRANNGUYEN560802', '21d418c129b0f58db744e1fee07d2ccb', 'Nguyễn Trần Thị Nghi\r\n', 0, 'nghi_nguyen-tran_thi_56@hotmail.com', '1956-08-02 00:00:00', '124 3/2, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01268989833', '2017-09-28 20:21:01', '2017-09-28 20:21:01', 2),
(470, 'NGUYENTHITHANHMAI10031942', '2803f896b5ede036f964f215d612c136', 'Nguyễn Thị Thanh Mai\r\n', 0, 'MAI.1942@hotmail.com', '1942-03-10 00:00:00', '162 3/2, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '0948311091', '2017-10-03 20:21:01', '2017-10-03 20:21:01', 2),
(471, 'Dieu.van19961118', '1cc72f3826774bdaec0764127ee7c912', 'Đinh Thị Diệu Vân\r\n', 0, 'VANDIEUTHIDINH1996@gmail.com', '1996-11-18 00:00:00', '41 Xô Viết Nghệ Tĩnh, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01295871436', '2017-10-03 20:21:01', '2017-10-03 20:21:01', 2),
(472, 'Tuyanh\r\n.2408', '1b1339915f9311eff5627e6a53c6488c', 'Nguyễn Thị Tùy Anh\r\n', 0, 'TUY-ANH24-08-1938@gmail.com.vn', '1938-08-24 00:00:00', '317 Nguyễn Đệ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '0977984786', '2017-10-04 05:32:58', '2017-10-04 05:32:58', 2),
(473, 'KHANHHA\r\n-1946', 'b03eeb870b91b6851533b405b0d32667', 'Trần Thị Khánh Hà\r\n', 0, 'HA1946@gmail.com.vn', '1946-03-26 00:00:00', '88/240 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01232500679', '2017-10-04 13:07:44', '2017-10-04 13:07:44', 2),
(474, 'MAN_NGUYEN_THI_94_08_04', '98cb3889b0dda4f83b393b9ea0b108cf', 'Nguyễn Thị Mẫn\r\n', 0, 'N_T-MAN-94@gmail.com', '1994-08-04 00:00:00', '253 Trần Phú, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '09985002011', '2017-10-04 23:51:17', '2017-10-04 23:51:17', 2),
(475, 'P_N_TDHuong_96', 'bdc35fca9c030954fd3bd3713720814c', 'Phan Nguyễn Thị Ðinh Hương\r\n', 0, 'HuongPhanNguyenThiDinh19960115@gmail.com', '1996-01-15 00:00:00', '56 Tỉnh lộ 922, P. Châu Văn Liêm, Q. Ô Môn, TP. Cần Thơ', '01284706896', '2017-10-05 23:51:17', '2017-10-05 23:51:17', 2),
(476, 'DOTHISONGOANH52', '2ef2a18f25785658f88b6b513f498c7e', 'Đỗ Thị Song Oanh\r\n', 0, 'OANH.DOTHI-SONG52@hotmail.com', '1952-12-24 00:00:00', '380 Nguyễn Trãi, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01694504635', '2017-10-07 23:51:17', '2017-10-07 23:51:17', 2),
(477, 'khanhly1949', '7f9f1f403dba9f4f7ddafdd5bcf2aada', 'Nguyễn Khánh Ly\r\n', 0, 'KHANHLY1949@outlook.com', '1949-03-25 00:00:00', '49 Trần Kiết Tường, P. Thới An, Q. Ô Môn, TP. Cần Thơ', '01259024094', '2017-10-08 03:13:05', '2017-10-08 03:13:05', 2),
(478, 'Quyen_Tran-Vi19-07-1961', '6849049a2db2b0d50e9878f77e546f78', 'Trần Vi Quyên\r\n', 0, 'TranViQuyen61@hotmail.com', '1961-07-19 00:00:00', '58D/224 Võ Văn Kiệt, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '01867966662', '2017-10-08 03:13:05', '2017-10-08 03:13:05', 2),
(479, 'damtran.thidiemthu050495', '82a06918f1749a53cd889dffb8da7a24', 'Đàm Trần Thị Diễm Thư\r\n', 0, 'THUDIEMTHITRANDAM0504@outlook.com', '1995-04-05 00:00:00', '121B/325 Nguyễn An Ninh, An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01649456437', '2017-10-08 05:24:17', '2017-10-08 05:24:17', 2),
(480, 'Hanh.Kieu.ThiLe0308', '4f95e4c03aba83f955b80afd30a07c17', 'Lê Thị Kiều Hạnh\r\n', 0, 'Le.Thi-KieuHanh03081961@hotmail.com', '1961-08-03 00:00:00', '62 Nguyễn An Ninh, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01290406664', '2017-10-26 05:24:17', '2017-10-26 05:24:17', 2),
(481, 'Kimanh1956.06.05', 'b09b84d99d03fe1f349f1ea3822cbc0c', 'Nguyễn Thị Kim Anh\r\n', 0, 'NT.K.ANH050656@gmail.com', '1956-06-05 00:00:00', '133/218 Nguyễn Trãi, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '0969236802', '2017-10-26 10:41:01', '2017-10-26 10:41:01', 2),
(482, 'TAM2005-10-16', 'a2ead93cd23ff8cf2b2a60d058227d02', 'Đỗ Như Tâm\r\n', 0, 'Nhu.tam\r\n-16.10@yahoo.com.vn', '2005-10-16 00:00:00', '114/14 Nguyễn Văn Cừ, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '0976790135', '2017-10-26 10:41:01', '2017-10-26 10:41:01', 2),
(483, 'Hieugiang1987_04_28', '5994151a84119120c9a309f1bbf2cd59', 'Mạc Hiếu Giang\r\n', 0, 'Hieu-giang\r\n_28_04_1987@yahoo.com', '1987-04-28 00:00:00', '348 Nguyễn An Ninh, An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '0973738681', '2017-11-08 10:41:01', '2017-11-08 10:41:01', 2),
(484, 'NTXHUONG19890605', 'cc0f3f899100898d3a90aa4b6ae45986', 'Nguyễn Thị Xuân Hương\r\n', 0, 'huongnguyen-thixuan-050689@gmail.com.vn', '1989-06-05 00:00:00', '272 CMT8, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '09978951072', '2017-11-10 10:41:01', '2017-11-10 10:41:01', 2),
(485, 'PHAN_THUHANG250282', '690bc9b0b0f8f66823ea4bb154fc0e40', 'Phan Thu Hằng\r\n', 0, 'HANGPHANTHU25.02@yahoo.com.vn', '1982-02-25 00:00:00', '358 Lý Tự Trọng, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01676167499', '2017-11-10 11:19:43', '2017-11-10 11:19:43', 2),
(486, 'Thao24021996', '70e8603953bc192853566cc2fb61569a', 'Phạm Đàm Thị Minh Thảo\r\n', 0, 'pdtmthao24021996@hotmail.com', '1996-02-24 00:00:00', '56 Quang Trung, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01886505789', '2017-11-24 11:19:43', '2017-11-24 11:19:43', 2),
(487, 'ha1985', 'f1d0cd7471a7a667e4fcf1154cb58357', 'Nguyễn Hồng Hà\r\n', 0, 'Ha08061985@gmail.com.vn', '1985-06-08 00:00:00', '26 Nguyễn Đệ, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01623781776', '2017-12-17 11:19:43', '2017-12-17 11:19:43', 2),
(488, 'Nhahong030823', '75366e6f7b4549fa47a2765deb9c1a6b', 'Nguyễn Thị Nhã Hồng\r\n', 0, 'NTN.Hong230803@gmail.com', '2003-08-23 00:00:00', '205 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01213933282', '2017-12-22 11:19:43', '2017-12-22 11:19:43', 2),
(489, 'tt.n.hong.96.10.27', '7816eae6f210dc8a0e2b750c36584c8f', 'Trần Thị Nguyên Hồng\r\n', 0, 'HongNguyenThi.Tran_96@gmail.com.vn', '1996-10-27 00:00:00', '344 Bùi Hữu Nghĩa, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01654747469', '2017-12-23 09:52:49', '2017-12-23 09:52:49', 2),
(490, 'nd-hong-2004', '73ef753093f4e5cfdeee2007d07cde91', 'Nguyễn Diệu Hồng\r\n', 0, 'Nguyen-Dieu.Hong.10.10@gmail.com.vn', '2004-10-10 00:00:00', '120 Lộ Vòng Cung, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '09959129811', '2017-12-24 03:11:35', '2017-12-24 03:11:35', 2),
(491, 'dai_pham.thi.22.07.1922', '6ffcda900bfa6468ca2bee76a7178cdd', 'Phạm Thị Ðài\r\n', 0, 'Dai_Pham_Thi22-07-22@yahoo.com', '1922-07-22 00:00:00', '300 Nguyễn Thị Minh Khai, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '0928353342', '2017-12-24 03:11:35', '2017-12-24 03:11:35', 2),
(492, 'TRIEUTHIMYTAM20000205', 'de454690fd644c8437b8ef29a90aff6b', 'Triệu Thị Mỹ Tâm\r\n', 0, 'tam0502@gmail.com', '2000-02-05 00:00:00', '245 Nguyễn Trãi, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '0923889435', '2017-12-29 03:11:35', '2017-12-29 03:11:35', 2),
(493, 'Kieunguyet63', '51bcf126fa2d926cc1da6fbaaff5644e', 'Trần Kiều Nguyệt\r\n', 0, 'kieu_nguyet3112@hotmail.com', '1963-12-31 00:00:00', '366 Tỉnh lộ 922, P. Châu Văn Liêm, Q. Ô Môn, TP. Cần Thơ', '01238467837', '2018-01-01 03:11:35', '2018-01-01 03:11:35', 2),
(494, 'Loan_Bach-Nguyen11.11', '4688ecb8e479a1d856ebc9d36f55a3d6', 'Nguyễn Bạch Loan\r\n', 0, 'bach_loan\r\n_84.11.11@hotmail.com', '1984-11-11 00:00:00', '33 Hai Bà Trưng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01867029083', '2018-01-01 11:25:48', '2018-01-01 11:25:48', 2),
(495, 'Hong-20000426', '5ce6f0ea91f219fbc62e3eb6da623c3c', 'Đỗ Thị Như Hồng\r\n', 0, 'DO.THI-NHU.HONG2000@hotmail.com', '2000-04-26 00:00:00', '399 Quang Trung, P.  Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01668059184', '2018-01-02 05:11:28', '2018-01-02 05:11:28', 2),
(496, 'VUNGUYEN-DANG-THI86', 'e24a30ccd490dea79ed3c7fe89781c9c', 'Nguyễn Đặng Thị Vũ\r\n', 0, 'vu86.07.12@gmail.com', '1986-07-12 00:00:00', '194 Võ Văn Kiệt, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01689169169', '2018-01-03 05:11:28', '2018-01-03 05:11:28', 2),
(497, 'DAN_LINH-DAM.91', '1f9f90a8dbed824b36303b7bbfd8fecb', 'Đàm Linh Ðan\r\n', 0, 'dan.dam.linh.13.04@yahoo.com', '1991-04-13 00:00:00', '265 Trần Ngọc Quế, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '0928332649', '2018-01-05 05:11:28', '2018-01-05 05:11:28', 2),
(498, 'n.ttphuong.19980503', '1bdca154a3aa2cb05b9c03b56ee48f24', 'Nguyễn Thị Thiên Phương\r\n', 0, 'N.T-T.Phuong03.05.1998@hotmail.com', '1998-05-03 00:00:00', '254 Huỳnh Phan Hộ, P. Bình Thủy , Q. Bình Thủy, TP. Cần Thơ', '01260911775', '2018-01-08 05:11:28', '2018-01-08 05:11:28', 3),
(499, 'THIBINH19380518', 'a422a3cd9cbfbe3135b0eb64fdea9a90', 'Ngô Nguyễn Thị Bình\r\n', 0, 'BINH_NGONGUYEN_THI1938@hotmail.com', '1938-05-18 00:00:00', '15 Nguyễn Văn Cừ, P. An Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01634922056', '2018-01-16 05:11:28', '2018-01-16 05:11:28', 3),
(500, 'KhuyenKim-Thi-Tran.99', '4a3a470d1861bcf0c8925ae043284752', 'Trần Thị Kim Khuyên\r\n', 0, 'TRAN_THI_KIM_KHUYEN99@gmail.com.vn', '1999-09-02 00:00:00', '114/276 Tỉnh lộ 923, P. Trường Lạc, Q. Ô Môn, TP. Cần Thơ', '0904804555', '2018-01-17 05:11:28', '2018-01-17 05:11:28', 3);

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `km_ma` tinyint(3) UNSIGNED NOT NULL,
  `km_ten` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `km_noiDung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `km_batDau` datetime NOT NULL,
  `km_ketThuc` datetime DEFAULT NULL,
  `km_giaTri` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '100;100',
  `nv_nguoiLap` tinyint(3) UNSIGNED NOT NULL,
  `km_ngayLap` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nv_kyNhay` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `nv_kyDuyet` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `km_ngayKyNhay` datetime DEFAULT NULL,
  `km_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `km_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `km_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai_sanpham`
--

CREATE TABLE `khuyenmai_sanpham` (
  `km_ma` tinyint(3) UNSIGNED NOT NULL,
  `sp_ma` bigint(20) UNSIGNED NOT NULL,
  `m_ma` tinyint(3) UNSIGNED NOT NULL,
  `kmsp_giaTri` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '100;0',
  `kmsp_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

CREATE TABLE `loai` (
  `l_ma` tinyint(3) UNSIGNED NOT NULL,
  `l_ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `l_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `l_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`l_ma`, `l_ten`, `l_taoMoi`, `l_capNhat`, `l_trangThai`) VALUES
(1, 'Bó hoa', '2017-12-21 11:51:25', '2017-12-21 11:51:25', 2),
(2, 'Giỏ hoa', '2017-12-21 11:51:25', '2017-12-21 11:51:25', 2),
(3, 'Hoa giấy', '2017-12-21 11:51:25', '2017-12-21 11:51:25', 2),
(4, 'Hoa lẻ', '2017-12-21 11:51:25', '2017-12-21 11:51:25', 2),
(5, 'Phụ liệu', '2017-12-21 11:51:25', '2017-12-21 11:51:25', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mau`
--

CREATE TABLE `mau` (
  `m_ma` tinyint(3) UNSIGNED NOT NULL,
  `m_ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `m_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `m_trangThai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mau_sanpham`
--

CREATE TABLE `mau_sanpham` (
  `sp_ma` bigint(20) UNSIGNED NOT NULL,
  `m_ma` tinyint(3) UNSIGNED NOT NULL,
  `msp_soLuong` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(51, '2014_10_12_000000_create_users_table', 1),
(52, '2014_10_12_100000_create_password_resets_table', 1),
(53, '2017_12_12_161644_create_loai_table', 1),
(54, '2017_12_12_165432_create_xuatxu_table', 1),
(55, '2017_12_12_165904_create_chude_table', 1),
(56, '2017_12_12_171313_create_nhacungcap_table', 1),
(57, '2017_12_12_174756_create_sanpham_table', 1),
(58, '2017_12_12_181759_create_quyen_table', 1),
(59, '2017_12_12_181905_create_mau_sanpham_table', 1),
(60, '2017_12_13_133328_create_hinhanh_table', 1),
(61, '2017_12_13_135131_create_mau_table', 1),
(62, '2017_12_13_154522_create_nhanvien_table', 1),
(63, '2017_12_13_161803_create_khuyenmai_table', 1),
(64, '2017_12_14_132849_create_phieunhap_table', 1),
(65, '2017_12_14_134119_create_chitietnhap_table', 1),
(66, '2017_12_14_135402_create_khuyenmai_sanpham_table', 1),
(67, '2017_12_14_212823_create_khachhang_table', 1),
(68, '2017_12_14_223952_create_gopy_table', 1),
(69, '2017_12_14_225047_create_thanhtoan_table', 1),
(70, '2017_12_14_225918_create_vanchuyen_table', 1),
(71, '2017_12_14_230605_create_donhang_table', 1),
(72, '2017_12_14_233758_create_chitietdonhang_table', 1),
(73, '2017_12_14_234810_create_hoadonle_table', 1),
(74, '2017_12_15_003520_create_hoadonsi_table', 1),
(75, '2017_12_21_181702_create_chude_sanpham_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `ncc_ma` smallint(5) UNSIGNED NOT NULL,
  `ncc_ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ncc_daiDien` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ncc_diaChi` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ncc_dienThoai` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ncc_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ncc_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ncc_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `xx_ma` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `nv_ma` tinyint(3) UNSIGNED NOT NULL,
  `nv_taiKhoan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nv_matKhau` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nv_hoTen` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nv_gioiTinh` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `nv_ngaySinh` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nv_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nv_diaChi` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nv_dienThoai` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nv_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nv_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nv_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  `q_ma` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `pn_ma` bigint(20) UNSIGNED NOT NULL,
  `pn_nguoiGiao` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pn_soHoaDon` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pn_ngayXuatHoaDon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pn_ghiChu` text COLLATE utf8mb4_unicode_ci,
  `nv_nguoiLapPhieu` tinyint(3) UNSIGNED NOT NULL,
  `pn_ngayLapPhieu` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nv_keToan` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `pn_ngayXacNhan` datetime DEFAULT NULL,
  `nv_thuKho` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `pn_ngayNhapKho` datetime DEFAULT NULL,
  `pn_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pn_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pn_trangThai` tinyint(4) NOT NULL,
  `ncc_ma` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quyen`
--

CREATE TABLE `quyen` (
  `q_ma` tinyint(3) UNSIGNED NOT NULL,
  `q_ten` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q_dienGiai` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `q_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `q_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `sp_ma` bigint(20) UNSIGNED NOT NULL,
  `sp_ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp_giaGoc` int(10) UNSIGNED NOT NULL,
  `sp_giaBan` int(10) UNSIGNED NOT NULL,
  `sp_hinh` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp_thongTin` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp_danhGia` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sp_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sp_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  `l_ma` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `tt_ma` tinyint(3) UNSIGNED NOT NULL,
  `tt_ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tt_dienGiai` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tt_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tt_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tt_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vanchuyen`
--

CREATE TABLE `vanchuyen` (
  `vc_ma` tinyint(3) UNSIGNED NOT NULL,
  `vc_ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vc_chiPhi` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `vc_dienGiai` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vc_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vc_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vc_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xuatxu`
--

CREATE TABLE `xuatxu` (
  `xx_ma` smallint(5) UNSIGNED NOT NULL,
  `xx_ten` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `xx_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `xx_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `xx_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD KEY `chitietdonhang_dh_ma_foreign` (`dh_ma`),
  ADD KEY `chitietdonhang_sp_ma_foreign` (`sp_ma`),
  ADD KEY `chitietdonhang_m_ma_foreign` (`m_ma`);

--
-- Indexes for table `chitietnhap`
--
ALTER TABLE `chitietnhap`
  ADD KEY `chitietnhap_pn_ma_foreign` (`pn_ma`),
  ADD KEY `chitietnhap_sp_ma_foreign` (`sp_ma`),
  ADD KEY `chitietnhap_m_ma_foreign` (`m_ma`);

--
-- Indexes for table `chude`
--
ALTER TABLE `chude`
  ADD PRIMARY KEY (`cd_ma`),
  ADD UNIQUE KEY `chude_cd_ten_unique` (`cd_ten`);

--
-- Indexes for table `chude_sanpham`
--
ALTER TABLE `chude_sanpham`
  ADD KEY `chude_sanpham_sp_ma_foreign` (`sp_ma`),
  ADD KEY `chude_sanpham_cd_ma_foreign` (`cd_ma`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`dh_ma`),
  ADD KEY `donhang_kh_ma_foreign` (`kh_ma`),
  ADD KEY `donhang_nv_xuly_foreign` (`nv_xuLy`),
  ADD KEY `donhang_nv_giaohang_foreign` (`nv_giaoHang`),
  ADD KEY `donhang_vc_ma_foreign` (`vc_ma`),
  ADD KEY `donhang_tt_ma_foreign` (`tt_ma`);

--
-- Indexes for table `gopy`
--
ALTER TABLE `gopy`
  ADD PRIMARY KEY (`gy_ma`);

--
-- Indexes for table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`sp_ma`);

--
-- Indexes for table `hoadonle`
--
ALTER TABLE `hoadonle`
  ADD KEY `hoadonle_nv_laphoadon_foreign` (`nv_lapHoaDon`),
  ADD KEY `hoadonle_dh_ma_foreign` (`dh_ma`);

--
-- Indexes for table `hoadonsi`
--
ALTER TABLE `hoadonsi`
  ADD PRIMARY KEY (`hds_ma`),
  ADD KEY `hoadonsi_nv_laphoadon_foreign` (`nv_lapHoaDon`),
  ADD KEY `hoadonsi_nv_thutruong_foreign` (`nv_thuTruong`),
  ADD KEY `hoadonsi_dh_ma_foreign` (`dh_ma`),
  ADD KEY `hoadonsi_tt_ma_foreign` (`tt_ma`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`kh_ma`),
  ADD UNIQUE KEY `khachhang_kh_taikhoan_unique` (`kh_taiKhoan`),
  ADD UNIQUE KEY `khachhang_kh_email_unique` (`kh_email`),
  ADD UNIQUE KEY `khachhang_kh_dienthoai_unique` (`kh_dienThoai`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`km_ma`),
  ADD KEY `khuyenmai_nv_nguoilap_foreign` (`nv_nguoiLap`),
  ADD KEY `khuyenmai_nv_kynhay_foreign` (`nv_kyNhay`),
  ADD KEY `khuyenmai_nv_kyduyet_foreign` (`nv_kyDuyet`);

--
-- Indexes for table `khuyenmai_sanpham`
--
ALTER TABLE `khuyenmai_sanpham`
  ADD KEY `khuyenmai_sanpham_km_ma_foreign` (`km_ma`),
  ADD KEY `khuyenmai_sanpham_sp_ma_foreign` (`sp_ma`),
  ADD KEY `khuyenmai_sanpham_m_ma_foreign` (`m_ma`);

--
-- Indexes for table `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`l_ma`);

--
-- Indexes for table `mau`
--
ALTER TABLE `mau`
  ADD PRIMARY KEY (`m_ma`),
  ADD UNIQUE KEY `mau_m_ten_unique` (`m_ten`);

--
-- Indexes for table `mau_sanpham`
--
ALTER TABLE `mau_sanpham`
  ADD PRIMARY KEY (`sp_ma`,`m_ma`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`ncc_ma`),
  ADD UNIQUE KEY `nhacungcap_ncc_ten_unique` (`ncc_ten`),
  ADD KEY `nhacungcap_xx_ma_foreign` (`xx_ma`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`nv_ma`),
  ADD UNIQUE KEY `nhanvien_nv_taikhoan_nv_email_nv_dienthoai_unique` (`nv_taiKhoan`,`nv_email`,`nv_dienThoai`),
  ADD KEY `nhanvien_q_ma_foreign` (`q_ma`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`pn_ma`),
  ADD UNIQUE KEY `phieunhap_pn_sohoadon_unique` (`pn_soHoaDon`),
  ADD KEY `phieunhap_nv_nguoilapphieu_foreign` (`nv_nguoiLapPhieu`),
  ADD KEY `phieunhap_nv_ketoan_foreign` (`nv_keToan`),
  ADD KEY `phieunhap_nv_thukho_foreign` (`nv_thuKho`),
  ADD KEY `phieunhap_ncc_ma_foreign` (`ncc_ma`);

--
-- Indexes for table `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`q_ma`),
  ADD UNIQUE KEY `quyen_q_ten_unique` (`q_ten`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`sp_ma`),
  ADD UNIQUE KEY `sanpham_sp_ten_unique` (`sp_ten`),
  ADD KEY `sanpham_l_ma_foreign` (`l_ma`);

--
-- Indexes for table `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`tt_ma`),
  ADD UNIQUE KEY `thanhtoan_tt_ten_unique` (`tt_ten`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vanchuyen`
--
ALTER TABLE `vanchuyen`
  ADD PRIMARY KEY (`vc_ma`),
  ADD UNIQUE KEY `vanchuyen_vc_ten_unique` (`vc_ten`);

--
-- Indexes for table `xuatxu`
--
ALTER TABLE `xuatxu`
  ADD PRIMARY KEY (`xx_ma`),
  ADD UNIQUE KEY `xuatxu_xx_ten_unique` (`xx_ten`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chude`
--
ALTER TABLE `chude`
  MODIFY `cd_ma` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `dh_ma` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gopy`
--
ALTER TABLE `gopy`
  MODIFY `gy_ma` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `sp_ma` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Vừa là khóa ngoại và khóa chính';
--
-- AUTO_INCREMENT for table `hoadonsi`
--
ALTER TABLE `hoadonsi`
  MODIFY `hds_ma` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `kh_ma` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;
--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `km_ma` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loai`
--
ALTER TABLE `loai`
  MODIFY `l_ma` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mau`
--
ALTER TABLE `mau`
  MODIFY `m_ma` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `ncc_ma` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `nv_ma` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `pn_ma` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quyen`
--
ALTER TABLE `quyen`
  MODIFY `q_ma` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `sp_ma` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thanhtoan`
--
ALTER TABLE `thanhtoan`
  MODIFY `tt_ma` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vanchuyen`
--
ALTER TABLE `vanchuyen`
  MODIFY `vc_ma` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xuatxu`
--
ALTER TABLE `xuatxu`
  MODIFY `xx_ma` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_dh_ma_foreign` FOREIGN KEY (`dh_ma`) REFERENCES `donhang` (`dh_ma`),
  ADD CONSTRAINT `chitietdonhang_m_ma_foreign` FOREIGN KEY (`m_ma`) REFERENCES `mau` (`m_ma`),
  ADD CONSTRAINT `chitietdonhang_sp_ma_foreign` FOREIGN KEY (`sp_ma`) REFERENCES `sanpham` (`sp_ma`);

--
-- Constraints for table `chitietnhap`
--
ALTER TABLE `chitietnhap`
  ADD CONSTRAINT `chitietnhap_m_ma_foreign` FOREIGN KEY (`m_ma`) REFERENCES `mau` (`m_ma`),
  ADD CONSTRAINT `chitietnhap_pn_ma_foreign` FOREIGN KEY (`pn_ma`) REFERENCES `phieunhap` (`pn_ma`),
  ADD CONSTRAINT `chitietnhap_sp_ma_foreign` FOREIGN KEY (`sp_ma`) REFERENCES `sanpham` (`sp_ma`);

--
-- Constraints for table `chude_sanpham`
--
ALTER TABLE `chude_sanpham`
  ADD CONSTRAINT `chude_sanpham_cd_ma_foreign` FOREIGN KEY (`cd_ma`) REFERENCES `chude` (`cd_ma`),
  ADD CONSTRAINT `chude_sanpham_sp_ma_foreign` FOREIGN KEY (`sp_ma`) REFERENCES `sanpham` (`sp_ma`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_kh_ma_foreign` FOREIGN KEY (`kh_ma`) REFERENCES `khachhang` (`kh_ma`),
  ADD CONSTRAINT `donhang_nv_giaohang_foreign` FOREIGN KEY (`nv_giaoHang`) REFERENCES `nhanvien` (`nv_ma`),
  ADD CONSTRAINT `donhang_nv_xuly_foreign` FOREIGN KEY (`nv_xuLy`) REFERENCES `nhanvien` (`nv_ma`),
  ADD CONSTRAINT `donhang_tt_ma_foreign` FOREIGN KEY (`tt_ma`) REFERENCES `thanhtoan` (`tt_ma`),
  ADD CONSTRAINT `donhang_vc_ma_foreign` FOREIGN KEY (`vc_ma`) REFERENCES `vanchuyen` (`vc_ma`);

--
-- Constraints for table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD CONSTRAINT `hinhanh_sp_ma_foreign` FOREIGN KEY (`sp_ma`) REFERENCES `sanpham` (`sp_ma`);

--
-- Constraints for table `hoadonle`
--
ALTER TABLE `hoadonle`
  ADD CONSTRAINT `hoadonle_dh_ma_foreign` FOREIGN KEY (`dh_ma`) REFERENCES `donhang` (`dh_ma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hoadonle_nv_laphoadon_foreign` FOREIGN KEY (`nv_lapHoaDon`) REFERENCES `nhanvien` (`nv_ma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoadonsi`
--
ALTER TABLE `hoadonsi`
  ADD CONSTRAINT `hoadonsi_dh_ma_foreign` FOREIGN KEY (`dh_ma`) REFERENCES `donhang` (`dh_ma`),
  ADD CONSTRAINT `hoadonsi_nv_laphoadon_foreign` FOREIGN KEY (`nv_lapHoaDon`) REFERENCES `nhanvien` (`nv_ma`),
  ADD CONSTRAINT `hoadonsi_nv_thutruong_foreign` FOREIGN KEY (`nv_thuTruong`) REFERENCES `nhanvien` (`nv_ma`),
  ADD CONSTRAINT `hoadonsi_tt_ma_foreign` FOREIGN KEY (`tt_ma`) REFERENCES `thanhtoan` (`tt_ma`);

--
-- Constraints for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD CONSTRAINT `khuyenmai_nv_kyduyet_foreign` FOREIGN KEY (`nv_kyDuyet`) REFERENCES `nhanvien` (`nv_ma`) ON DELETE CASCADE,
  ADD CONSTRAINT `khuyenmai_nv_kynhay_foreign` FOREIGN KEY (`nv_kyNhay`) REFERENCES `nhanvien` (`nv_ma`) ON DELETE CASCADE,
  ADD CONSTRAINT `khuyenmai_nv_nguoilap_foreign` FOREIGN KEY (`nv_nguoiLap`) REFERENCES `nhanvien` (`nv_ma`) ON DELETE CASCADE;

--
-- Constraints for table `khuyenmai_sanpham`
--
ALTER TABLE `khuyenmai_sanpham`
  ADD CONSTRAINT `khuyenmai_sanpham_km_ma_foreign` FOREIGN KEY (`km_ma`) REFERENCES `khuyenmai` (`km_ma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `khuyenmai_sanpham_m_ma_foreign` FOREIGN KEY (`m_ma`) REFERENCES `mau` (`m_ma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `khuyenmai_sanpham_sp_ma_foreign` FOREIGN KEY (`sp_ma`) REFERENCES `sanpham` (`sp_ma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mau_sanpham`
--
ALTER TABLE `mau_sanpham`
  ADD CONSTRAINT `mau_sanpham_sp_ma_foreign` FOREIGN KEY (`sp_ma`) REFERENCES `sanpham` (`sp_ma`);

--
-- Constraints for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD CONSTRAINT `nhacungcap_xx_ma_foreign` FOREIGN KEY (`xx_ma`) REFERENCES `xuatxu` (`xx_ma`);

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_q_ma_foreign` FOREIGN KEY (`q_ma`) REFERENCES `quyen` (`q_ma`);

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ncc_ma_foreign` FOREIGN KEY (`ncc_ma`) REFERENCES `nhacungcap` (`ncc_ma`) ON DELETE CASCADE,
  ADD CONSTRAINT `phieunhap_nv_ketoan_foreign` FOREIGN KEY (`nv_keToan`) REFERENCES `nhanvien` (`nv_ma`) ON DELETE CASCADE,
  ADD CONSTRAINT `phieunhap_nv_nguoilapphieu_foreign` FOREIGN KEY (`nv_nguoiLapPhieu`) REFERENCES `nhanvien` (`nv_ma`) ON DELETE CASCADE,
  ADD CONSTRAINT `phieunhap_nv_thukho_foreign` FOREIGN KEY (`nv_thuKho`) REFERENCES `nhanvien` (`nv_ma`) ON DELETE CASCADE;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_l_ma_foreign` FOREIGN KEY (`l_ma`) REFERENCES `loai` (`l_ma`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
