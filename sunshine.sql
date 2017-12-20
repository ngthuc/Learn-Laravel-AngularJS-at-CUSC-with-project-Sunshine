-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2017 at 02:35 PM
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
(1, 'Provident nesciunt aut vero ut nulla velit aut.', '2017-12-18 04:45:10', '2017-12-18 12:50:10', 2),
(2, 'Dolores rerum et iure reprehenderit id.', '2017-12-15 20:05:57', '2017-12-16 21:41:54', 2),
(3, 'Natus at quaerat eveniet at et veritatis tempore.', '2017-12-18 15:42:08', '2017-12-17 03:54:02', 2),
(4, 'Quod dolorum aut et animi et.', '2017-12-16 11:48:26', '2017-12-17 11:00:37', 2),
(5, 'Magni reiciendis odio nihil quia rem error.', '2017-12-18 04:30:48', '2017-12-18 08:21:30', 2),
(6, 'Eos temporibus expedita sit aliquam at id cumque.', '2017-12-15 23:00:46', '2017-12-16 04:46:06', 2),
(7, 'Quia dolorem quis ut consequatur.', '2017-12-17 00:06:22', '2017-12-18 08:03:24', 2),
(8, 'Accusantium et a laudantium.', '2017-12-18 14:07:17', '2017-12-16 08:09:45', 2),
(9, 'Explicabo amet ab accusantium eveniet in.', '2017-12-17 17:22:56', '2017-12-16 07:32:54', 2),
(10, 'Inventore suscipit qui quia ipsam.', '2017-12-17 18:43:50', '2017-12-18 01:03:09', 2);

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
  `nv_xuLy` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `dh_ngayXuLy` datetime DEFAULT NULL,
  `nv_giaoHang` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
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
  `nv_lapHoaDon` smallint(5) UNSIGNED NOT NULL,
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
  `nv_lapHoaDon` smallint(5) UNSIGNED NOT NULL,
  `hds_ngayXuatHoaDon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nv_thuTruong` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
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
(1, 'LANTRUCNGUYEN35', 'c7e50f2475f16aa7c4cdbad9ecc13d0f', 'Nguyễn Trúc Lan\r\n', 0, 'n_t.lan-1935_02_21@yahoo.com.vn', '1935-02-21 00:00:00', '198 Trần Hưng Đạo, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01249924830', '2010-01-01 01:00:00', '2010-01-01 01:00:00', 2),
(2, 'DANH1994', 'e16a0a865c50fcf2647a41de7c49f2fc', 'Lê Huỳnh Danh', 1, 'danh0903@yahoo.com', '1994-03-09 00:00:00', '164/36 Nguyễn Đệ, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01289254782', '2010-01-02 01:00:00', '2010-01-02 01:00:00', 2),
(3, 'nhngoc22121985', '0d2c9696e49a7547285508cd49319f29', 'Nguyễn Huyền Ngọc\r\n', 0, 'huyenngoc19851222@yahoo.com.vn', '1985-12-22 00:00:00', '120 QL91, P. Long Hưng, Q. Ô Môn, TP. Cần Thơ', '09963111878', '2010-01-02 03:38:57', '2010-01-02 03:38:57', 2),
(4, 'nm_hoan1964_09_17', '2c399368e482e0994bb5ecbd09b1133b', 'Nguyễn Mộng Hoàn\r\n', 1, 'HOAN_MONG-NGUYEN.1964@gmail.com', '1964-09-17 00:00:00', '104 Võ Nguyên Giáp, P. Phú Thứ, Q. Cái Răng, TP. Cần Thơ', '0888150243', '2010-01-11 03:38:57', '2010-01-11 03:38:57', 2),
(5, 'T.T-MKieu20041126', '66820ec554df12757f3af31a0b19564d', 'Trần Thị Mỹ Kiều\r\n', 0, 'T_T.M.Kieu-2004@gmail.com.vn', '2004-11-26 00:00:00', '37 Trần Ngọc Quế, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01240840189', '2010-01-14 03:38:57', '2010-01-14 03:38:57', 2),
(6, 'PhanLien-Nhu-1509', '98aa68a43fece6c5305f456b47d2f46f', 'Phan Liên Như\r\n', 0, 'PLNhu15091997@outlook.com', '1997-09-15 00:00:00', '11 Nguyễn Trãi, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01249253991', '2010-01-14 03:38:57', '2010-01-14 03:38:57', 2),
(7, 'MANHTAN2408', '8bddbfdc65dc0f60ad2243ce331e9018', 'Nguyễn Mã Mạnh Tấn\r\n', 1, 'NMMTAN030824@hotmail.com', '2003-08-24 00:00:00', '243 Phan Đình Phùng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0908373383', '2010-01-14 03:38:57', '2010-01-14 03:38:57', 2),
(8, 'MY_LAN\r\n_04_02_89', 'fd4e865461c05891cbd6689a9d75c0da', 'Phạm Mỹ Lan\r\n', 0, 'PHAMMYLAN04021989@gmail.com.vn', '1989-02-04 00:00:00', '66/72 Nguyễn Văn Linh, P. An Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01670118713', '2010-01-14 03:38:57', '2010-01-14 03:38:57', 2),
(9, 'T.T.M_Chi03_04_86', '364b5547fd3be25c62a9b9b74f2cd19b', 'Trần Thị Mai Chi\r\n', 0, 'ChiMaiThiTran860403@ymail.com', '1986-04-03 00:00:00', '37/308 Nguyễn An Ninh, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01252882438', '2010-01-29 03:38:57', '2010-01-29 03:38:57', 2),
(10, 'thanhcong\r\n_04', '4f340392c6de232ad51d7e36f180b9fb', 'Nguyễn Thành Công\r\n', 1, 'ntcong210804@yahoo.com', '2004-08-21 00:00:00', '15/152/73 Nguyễn Thị Minh Khai, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0966549625', '2010-02-06 03:38:57', '2010-02-06 03:38:57', 2),
(11, 'TIEN-TRANNGUYENQUYNH-13.09.2004', 'e194d94dbfc8d63adb303a77394a88fe', 'Trần Nguyễn Quỳnh Tiên\r\n', 0, 'TIEN-04@outlook.com', '2004-09-13 00:00:00', '7A/362 QL91, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '0961329835', '2010-02-07 01:20:20', '2010-02-07 01:20:20', 2),
(12, 'Tuonglan\r\n.020502', 'a59db960ab709f88f4771e13310aaf21', 'Đỗ Lê Tường Lân\r\n', 1, 'lan_tuongle-do_0205@gmail.com.vn', '2002-05-02 00:00:00', '175 Nguyễn An Ninh, An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01681329141', '2010-02-12 01:20:20', '2010-02-12 01:20:20', 2),
(13, 'Dieu_loan\r\n_18_12', '50474163d14fb15f74e2f5690ee8609a', 'Nguyễn Thị Diệu Loan\r\n', 0, 'loan-nguyen-thidieu1991@yahoo.com.vn', '1991-12-18 00:00:00', '310 Trần Kiết Tường, P. Thới Hòa, Q. Ô Môn, TP. Cần Thơ', '0939138793', '2010-02-24 01:20:20', '2010-02-24 01:20:20', 2),
(14, 'cthtien11091980', 'a36fd77f5b357ff99c3afbe5b0419500', 'Cù Thị Hạ Tiên\r\n', 0, 'c-th-tien_19800911@yahoo.com', '1980-09-11 00:00:00', '232 Phan Đình Phùng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0939289248', '2010-02-27 01:20:20', '2010-02-27 01:20:20', 2),
(15, 'LanHuynh19970904', '1c5d0e252b5e46e4c097c58fa79dd9cf', 'Huỳnh Lân', 1, 'LANHUYNH1997@gmail.com.vn', '1997-09-04 00:00:00', '178 QL91B, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '0892924015', '2010-03-02 01:20:20', '2010-03-02 01:20:20', 2),
(16, 'bongnguyen-tran_van19831006', 'd300989eee621a6e3d2c27293dfab1ae', 'Nguyễn Trần Văn Bổng\r\n', 1, 'BONG-1983@yahoo.com.vn', '1983-10-06 00:00:00', '265 Phan Văn Trị, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '0891325951', '2010-03-04 01:20:20', '2010-03-04 01:20:20', 2),
(17, 'DangThanhHai.1985', 'f52c05dd2a535bea21cd4b05a01e32a8', 'Đặng Thanh Hải\r\n', 1, 'HAI.1985.07.01@gmail.com', '1985-07-01 00:00:00', '312 Nguyễn Văn Linh, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01257967111', '2010-03-04 04:19:17', '2010-03-04 04:19:17', 2),
(18, 'thaomai1989', '9d41bd850168039a18905921ec65593b', 'Nguyễn Thảo Mai\r\n', 0, 'n-tmai1989@gmail.com', '1989-05-26 00:00:00', '74 Nguyễn Đệ, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01648328397', '2010-03-05 02:27:49', '2010-03-05 02:27:49', 2),
(19, 'AN-TA_XUAN.1994-03-06', '7245d86bdbb77f9ec33c209a6b36b056', 'Tạ Xuân An\r\n', 1, 'Xuanan\r\n_94@yahoo.com.vn', '1994-03-06 00:00:00', '38 Nguyễn An Ninh, An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '09988077749', '2010-03-05 02:27:49', '2010-03-05 02:27:49', 2),
(20, 'Maithanh1991', '1f58be26fc9462bd1128a83b8cc95914', 'Nguyễn Thị Mai Thanh\r\n', 0, 'NGUYEN-THI-MAI-THANH91-07-13@gmail.com', '1991-07-13 00:00:00', '75D/319 3/2, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01227984407', '2010-03-12 02:27:49', '2010-03-12 02:27:49', 2),
(21, 'hvly0803', 'd87ee8a1e2460c781c50f3616f2b4f3a', 'Huỳnh Vạn Lý\r\n', 1, 'van.ly08.03.94@gmail.com', '1994-03-08 00:00:00', '376 Nguyễn Văn Linh, P. An Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01205857620', '2010-03-13 02:25:17', '2010-03-13 02:25:17', 2),
(22, 'Nhu_Hong_Nguyen_190584', '3200a0189c55f0c726f7666c5aa9a61c', 'Nguyễn Hồng Như\r\n', 0, 'N.HNhu.190584@hotmail.com', '1984-05-19 00:00:00', '58 Nguyễn An Ninh, An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '0960135285', '2010-03-22 02:25:17', '2010-03-22 02:25:17', 2),
(23, 'DungPhanPham19991029', '087026eb7d3700a24b73f12544183b01', 'Phan Phạm Dũng', 1, 'phan.pham.dung1999@ymail.com', '1999-10-29 00:00:00', '24 Hòa Bình, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '0921820070', '2010-03-31 02:25:17', '2010-03-31 02:25:17', 2),
(24, 'ht.hduyen_86.04.06', '3b527a7c37b128b73f84753e7d28af59', 'Huỳnh Thị Hải Duyên\r\n', 0, 'duyenhaithihuynh86@gmail.com', '1986-04-06 00:00:00', '185 Ngô Quyền, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '09966272322', '2010-04-05 02:25:17', '2010-04-05 02:25:17', 2),
(25, 'NTK_Diem2001', '17f4243bfa36ea6a39f032a40431be54', 'Nguyễn Thị Kiều Diễm\r\n', 0, 'KIEU_DIEM\r\n.02.05.01@hotmail.com', '2001-05-02 00:00:00', '279 QL91, P. Long Hưng, Q. Ô Môn, TP. Cần Thơ', '0895908172', '2010-04-05 02:25:17', '2010-04-05 02:25:17', 2),
(26, 'Thihuong1984', 'be8227a31df1e5dfc3905d2b7b5e0d97', 'Nguyễn Tạ Thị Hương\r\n', 0, 'thihuong030484@ymail.com', '1984-04-03 00:00:00', '52 Võ Văn Kiệt, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '09982759951', '2010-04-23 02:25:17', '2010-04-23 02:25:17', 2),
(27, 'thanh-1991', 'd86f98023a7a70d38cce0f9e1f885a2c', 'Phan Xuân Thanh\r\n', 0, 'THANHXUANPHAN_1991@gmail.com', '1991-04-14 00:00:00', '94 Lê Hồng Phong, P. Trà An , Q. Bình Thủy, TP. Cần Thơ', '01260848024', '2010-04-23 03:35:50', '2010-04-23 03:35:50', 2),
(28, 'TRAM-1979', 'b19dbb0a858dbf87757bd06bb6dc87fa', 'Huỳnh Thị Trâm\r\n', 0, 'thitram19790106@yahoo.com.vn', '1979-01-06 00:00:00', '184/72 Phan Đình Phùng, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '0970296476', '2010-04-25 03:35:50', '2010-04-25 03:35:50', 2),
(29, 'ANHKIMTHITRAN_01052005', 'ab60f2976a9747cd77da86fceed3fe9a', 'Trần Thị Kim Anh\r\n', 0, 'TRANTHIKIMANH05@yahoo.com.vn', '2005-05-01 00:00:00', '157A/349 Mậu Thân, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01249672067', '2010-04-29 03:35:50', '2010-04-29 03:35:50', 2),
(30, 'nguyen.quochiep_09-02-85', '76c9142e92abb43ccb4327635351a313', 'Nguyễn Quốc Hiệp\r\n', 1, 'NguyenQuocHiep090285@gmail.com', '1985-02-09 00:00:00', '309 Trần Hưng Đạo, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01889310106', '2010-05-03 03:35:50', '2010-05-03 03:35:50', 2),
(31, 'Long-Bao.Nhat.Phan.89', '8afb448484ca13adf093bd8d4ae19298', 'Phan Nhật Bảo Long\r\n', 1, 'P_N_B_LONG_1989_07_26@hotmail.com', '1989-07-26 00:00:00', '359 Phan Đình Phùng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0900724961', '2010-05-19 03:35:50', '2010-05-19 03:35:50', 2),
(32, 'yen.binhdang_02-04-04', 'fbcd5ea999f3ab1cc6277e0974fb413b', 'Đặng Bình Yên\r\n', 1, 'd-b-yen-02-04@hotmail.com', '2004-04-02 00:00:00', '45 Nguyễn Chí Thanh, P. Thới An Đông, Q. Bình Thủy, TP. Cần Thơ', '01673836205', '2010-05-19 03:35:50', '2010-05-19 03:35:50', 2),
(33, 'Dung82', '05abedcbd103c5433d7fac9916aa73f0', 'Trần Minh Dũng\r\n', 1, 'minhdung020282@yahoo.com.vn', '1982-02-02 00:00:00', '204 QL1, P. Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01252236795', '2010-05-19 14:17:23', '2010-05-19 14:17:23', 2),
(34, 'bdtam030877', 'c4c4e80ea2c6d8bf8faa34d80874ff13', 'Bành Dương Tâm', 1, 'B.D_TAM.77@yahoo.com', '1977-08-03 00:00:00', '266 Nguyễn Trãi, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01623680259', '2010-05-19 14:17:23', '2010-05-19 14:17:23', 2),
(35, 'HA2005-10-14', 'f49c5172ee189225a1e39de2e5322654', 'Nguyễn Nguyệt Hà\r\n', 0, 'Nguyet.ha\r\n-14.10@yahoo.com.vn', '2005-10-14 00:00:00', '114/14 Nguyễn Văn Cừ, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '0976790135', '2010-05-19 14:17:23', '2010-05-19 14:17:23', 2),
(36, 'Thithy1987_04_27', '0f4b77867fec8a1a08e7b4a23f3f9856', 'Nguyễn Đặng Thị Thy\r\n', 0, 'Thi-thy\r\n_27_04_1987@yahoo.com', '1987-04-27 00:00:00', '348 Nguyễn An Ninh, An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '0973738681', '2010-06-01 14:17:23', '2010-06-01 14:17:23', 2),
(37, 'Vanthuc\r\n_020689', 'e45cf745caa4a60482db6b1061e6602b', 'Lương Văn Thực\r\n', 1, 'thucluong-van0206@hotmail.com', '1989-06-02 00:00:00', '40 Ngô Quyền, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0985107265', '2010-06-03 14:17:23', '2010-06-03 14:17:23', 2),
(38, 'NguyenPham-PhuongUyen25-10', 'f0852d926cb0509cf0fe4d6d14e52611', 'Nguyễn Phạm Phượng Uyên\r\n', 0, 'phuonguyen\r\n.1977.10.25@ymail.com', '1977-10-25 00:00:00', '86 Trần Văn Khéo, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01246749983', '2010-06-03 16:39:53', '2010-06-03 16:39:53', 2),
(39, 'huynh_lethingocai-15_11', '70c0367845541f69c67d2b4c7faa0798', 'Huỳnh Lê Thị Ngọc Ái\r\n', 0, 'ngoc-ai\r\n-15.11@gmail.com.vn', '2005-11-15 00:00:00', '384 Hùng Vương, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '09939766072', '2010-06-04 16:39:53', '2010-06-04 16:39:53', 2),
(40, 'DanVan_Vuong.040186', '9774f75989531da14508b8af4e3d129c', 'Vương Văn Dân\r\n', 1, 'Dan.04011986@hotmail.com', '1986-01-04 00:00:00', '3D/296 QL91, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01236147519', '2010-06-05 16:39:53', '2010-06-05 16:39:53', 2),
(41, 'TP_Hien_30_09', 'e57291ff789dc6ee861c38f2d12e4ce8', 'Trần Phương Hiền\r\n', 0, 'tran-phuonghien-30_09_1989@outlook.com', '1989-09-30 00:00:00', '111 Thái Thị Hạnh, P. Long Hưng, Q. Ô Môn, TP. Cần Thơ', '01240523994', '2010-06-05 17:48:46', '2010-06-05 17:48:46', 2),
(42, 'NGO-BACH.QUYNH1306', '518c625ac641d8635aa87edfc5f4e065', 'Ngô Bạch Quỳnh\r\n', 0, 'bach-quynh\r\n-1306@yahoo.com.vn', '1993-06-13 00:00:00', '66 Nguyễn Trãi, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01655436811', '2010-06-05 19:14:40', '2010-06-05 19:14:40', 2),
(43, 'Tran.Van-Nguyen-1993', '7dea5da1e41bf7cbb09e1a94e26d06fe', 'Nguyễn Văn Trân\r\n', 1, 'tran_930410@outlook.com', '1993-04-10 00:00:00', '33 Nguyễn Truyền Thanh, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '0912966613', '2010-06-06 19:14:40', '2010-06-06 19:14:40', 2),
(44, 'T.NTTHanh-17.03.1978', 'f2e2351d6b5d456bf9deddbb047e21a1', 'Trần Nguyễn Thị Thúy Hạnh\r\n', 0, 'Tran.Nguyen_ThiThuyHanh.17.03@yahoo.com', '1978-03-17 00:00:00', '126 Võ Văn Kiệt, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01862465002', '2010-06-15 19:14:40', '2010-06-15 19:14:40', 2),
(45, 'theunguyen.thi1004', 'aeb2508154b7a10c1f0ae82bee80430e', 'Nguyễn Thị Thêu\r\n', 0, 'nguyen.thitheu_1004@yahoo.com', '1981-04-10 00:00:00', '93/38 Huỳnh Phan Hộ, P. Bình Thủy , Q. Bình Thủy, TP. Cần Thơ', '0968231176', '2010-06-15 21:36:35', '2010-06-15 21:36:35', 2),
(46, 'LongBao_Nguyen1961', '6dcc729d9630bf0f605be3069ebd38ae', 'Nguyễn Bảo Long\r\n', 1, 'NGUYENBAOLONG1961@yahoo.com', '1961-05-15 00:00:00', '248 Đinh Công Chánh, P. Long Tuyền , Q. Bình Thủy, TP. Cần Thơ', '01208213284', '2010-06-19 21:36:35', '2010-06-19 21:36:35', 2),
(47, 'NhiNguyenThiTo19770928', '94e80300389fd78bd2217154e0af22e2', 'Nguyễn Thị Tố Nhi\r\n', 0, 'NhiTo-ThiNguyen1977@gmail.com.vn', '1977-09-28 00:00:00', '37 CMT8, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '0971284774', '2010-06-19 21:36:35', '2010-06-19 21:36:35', 2),
(48, 'TRANXUAN03', 'd42281a2d26e8dc7311947fbc2cde0f3', 'Trần Xuân', 1, 'XUANTRAN2003@yahoo.com.vn', '2003-01-12 00:00:00', '79A/131 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '0898720465', '2010-06-20 01:54:23', '2010-06-20 01:54:23', 2),
(49, 'Son_1978_05_05', '4296e281d53541dfd9b9cdc6271801f4', 'Lý Nguyễn Hải Sơn\r\n', 1, 'SON.LYNGUYENHAI_1978.05.05@yahoo.com', '1978-05-05 00:00:00', '292 Trần Văn Khéo, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01284439539', '2010-06-27 01:54:23', '2010-06-27 01:54:23', 2),
(50, 'n.tn.quyen27081982', '5bf5a522ac06812cfdb3972da28faa04', 'Nguyễn Trần Nghị Quyền\r\n', 1, 'n.t.n.quyen27.08@ymail.com', '1982-08-27 00:00:00', '348 QL91, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01622805344', '2010-07-01 01:54:23', '2010-07-01 01:54:23', 2),
(51, 'n_p-tho70', '47cec90612376989b420e022d8649dc0', 'Nguyễn Phú Thọ\r\n', 1, 'THO-0402@yahoo.com.vn', '1970-02-04 00:00:00', '177 Châu Văn Liêm, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01209290870', '2010-07-02 01:54:23', '2010-07-02 01:54:23', 2),
(52, 'TUANTA.KHAI.1989', '61a00bb316af0f41db62521ed6fd088b', 'Tạ Khải Tuấn\r\n', 1, 'ta.khai.tuan03_02@gmail.com', '1989-02-03 00:00:00', '127 Trần Kiết Tường, P. Thới Hòa, Q. Ô Môn, TP. Cần Thơ', '0946012475', '2010-07-09 01:54:23', '2010-07-09 01:54:23', 2),
(53, 'HUYNHLUCBINH08042004', '95a96f7e119eef3939d26590587b0f04', 'Huỳnh Lục Bình\r\n', 0, 'binh04@yahoo.com.vn', '2004-04-08 00:00:00', '181 Nguyễn An Ninh, An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '0968620956', '2010-07-10 01:54:23', '2010-07-10 01:54:23', 2),
(54, 'CAO-NGHIEP\r\n-59.10.20', '676ca8cd35874cecc08fd73734ea18c4', 'Nguyễn Cao Nghiệp\r\n', 1, 'NCNGHIEP59@gmail.com', '1959-10-20 00:00:00', '321 Hòa Bình, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01668090639', '2010-07-14 01:54:23', '2010-07-14 01:54:23', 2),
(55, 'Cu_Hoang_Lan-80_07_05', 'aa935c3aec7a174d494167f7be7d9d1f', 'Cù Hoàng Lân\r\n', 1, 'LANHOANGCU19800705@gmail.com', '1980-07-05 00:00:00', '154 Hòa Bình, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01999485229', '2010-07-29 01:54:23', '2010-07-29 01:54:23', 2),
(56, 'lbmvu1981', '84b55ebaf22cc1df2ad142c7dfe619dc', 'Lê Bùi Minh Vũ\r\n', 1, 'lebuiminhvu181281@ymail.com', '1981-12-18 00:00:00', '81/164 Trần Hưng Đạo, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01860866178', '2010-08-05 01:54:23', '2010-08-05 01:54:23', 2),
(57, 'T.NA.Di.231068', 'f593870e39926a736cd067333da8cf50', 'Trần Nguyễn An Di\r\n', 0, 'ANDI1968@yahoo.com.vn', '1968-10-23 00:00:00', '174 Võ Văn Kiệt, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '08688001524', '2010-08-06 01:54:23', '2010-08-06 01:54:23', 2),
(58, 'luan_tranle82', 'bc51f0451a5fddb24b7e0cfd69381369', 'Lê Trần Luân', 1, 'Luan-Tran_Le_241282@outlook.com', '1982-12-24 00:00:00', '32 Nguyễn Thái Học, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01862048016', '2010-08-11 01:54:23', '2010-08-11 01:54:23', 2),
(59, 'sa.truong_huynh.19870127', 'af39e8b40c7ed860b26bc06f7cfa9192', 'Huỳnh Trường Sa\r\n', 1, 'Huynh-TruongSa1987-01-27@gmail.com', '1987-01-27 00:00:00', '212 Phan Đình Phùng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01867764871', '2010-08-16 01:54:23', '2010-08-16 01:54:23', 2),
(60, 'lai.ton_le-23.10.1991', 'c21c3f3e0eeb796488f7e1e6608c1b4e', 'Lại Tôn Lễ\r\n', 1, 'L_T_Le_23_10_1991@yahoo.com.vn', '1991-10-23 00:00:00', '214 Bùi Hữu Nghĩa, P. Long Hòa , Q. Bình Thủy, TP. Cần Thơ', '01648958776', '2010-08-16 07:18:58', '2010-08-16 07:18:58', 2),
(61, 'Huynh_Thi-BichHao-39_02_28', '169db9d8e6203d25d4d85297f141323e', 'Huỳnh Thị Bích Hảo\r\n', 0, 'bich.hao\r\n_28_02@outlook.com', '1939-02-28 00:00:00', '338 Hòa Bình, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0904485570', '2010-08-16 12:04:29', '2010-08-16 12:04:29', 2),
(62, 'TUYETLOAN1702', '52ba3dc0da7ab1fb9a45a313f9f0e638', 'Trịnh Thị Tuyết Loan\r\n', 0, 'Trinh_Thi-Tuyet-Loan-17021998@outlook.com', '1998-02-17 00:00:00', '167/349 CMT8, P. Bùi Hữu Nghĩa, Q. Bình Thủy, TP. Cần Thơ', '0965432834', '2010-08-31 12:04:29', '2010-08-31 12:04:29', 2),
(63, 'mi-nguyen-le-thihoa-2004', 'fac0794e29d8379a548489de2e4858a6', 'Nguyễn Lê Thị Họa Mi\r\n', 0, 'nlt-h.mi.2004@yahoo.com.vn', '2004-07-26 00:00:00', '212 Quang Trung, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '0902529388', '2010-08-31 21:35:37', '2010-08-31 21:35:37', 2),
(64, 'PHUNGNGOC-NGUYEN-PHAM-87', 'f1bcc88f824df0b10fd0ebd86c472e4a', 'Phạm Nguyễn Ngọc Phụng\r\n', 0, 'PNNPHUNG19870407@hotmail.com', '1987-04-07 00:00:00', '3/31 Nguyễn Đệ, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01631002673', '2010-09-20 21:35:37', '2010-09-20 21:35:37', 2),
(65, 'phuong-nguyen.thuy07.10.64', 'd4fa22805456b7f043ad97bb5464245d', 'Nguyễn Thúy Phượng\r\n', 0, 'phuongnguyen_thuy.07.10@gmail.com.vn', '1964-10-07 00:00:00', '184D/287 Nguyễn Văn Linh, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '09941940622', '2010-09-21 05:23:50', '2010-09-21 05:23:50', 2),
(66, 'HuynhNhan77', '29b754d033c011e5c82834b25aec3f6e', 'Huỳnh Nhân', 1, 'huynhnhan170677@yahoo.com.vn', '1977-06-17 00:00:00', '336 Bùi Hữu Nghĩa, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01230326028', '2010-10-03 05:23:50', '2010-10-03 05:23:50', 2),
(67, 'chi.tran_phan_thai83', 'e508dbec1337c103683d00c04a353d6a', 'Trần Phan Thái Chi\r\n', 0, 'Tran-Phan_Thai.Chi83_09_09@yahoo.com.vn', '1983-09-09 00:00:00', '278 Hoàng Văn Thụ, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01220911744', '2010-10-26 05:23:50', '2010-10-26 05:23:50', 2),
(68, 'DINHCHIEN96', 'a3f80efac1bec605a7f8f27cb6b89c98', 'Nguyễn Đình Chiến\r\n', 1, 'Dinhchien01041996@hotmail.com', '1996-04-01 00:00:00', '165 Đinh Tiên Hoàng, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01652724758', '2010-11-03 05:23:50', '2010-11-03 05:23:50', 2),
(69, 'mai48', 'd8310fe3e0fcbe847044fbe40853e1d8', 'Nguyễn Xuân Mai\r\n', 0, 'mai_19480419@hotmail.com', '1948-04-19 00:00:00', '355 Trần Hưng Đạo, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01693324876', '2010-11-23 05:23:50', '2010-11-23 05:23:50', 2),
(70, 'PHANVANCAN2001', 'b2c6a6b6d1b8a4789384b5c153c71190', 'Phan Văn Cẩn\r\n', 1, 'PhanVan-Can-2001@yahoo.com.vn', '2001-11-15 00:00:00', '218 Hùng Vương, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01292035794', '2010-11-23 07:56:39', '2010-11-23 07:56:39', 2),
(71, 'huyen_ngoc1993', 'e40e3a27cdc1d7fd55ccd6b87b6c27f5', 'Nguyễn Lê Huyền Ngọc\r\n', 0, 'nguyenlehuyenngoc01041993@ymail.com', '1993-04-01 00:00:00', '142/83 Lý Tự Trọng, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01640130615', '2010-11-23 10:02:15', '2010-11-23 10:02:15', 2),
(72, 'NAM56', '5fb9ac965d2cc02b5a3a87519521dca3', 'Lâm Nam', 1, 'Lam_Nam07051956@yahoo.com.vn', '1956-05-07 00:00:00', '172/295 Trần Ngọc Quế, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0914013411', '2010-12-01 10:02:15', '2010-12-01 10:02:15', 2),
(73, 'Duong_ThiMong-Thu.1973', 'f0bb778afb529ba4e1d651845e9076e3', 'Dương Thị Mộng Thu\r\n', 0, 'DUONG.THI.MONG-THU.24.02.1973@gmail.com', '1973-02-24 00:00:00', '381 Hòa Bình, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01212474364', '2010-12-01 15:54:32', '2010-12-01 15:54:32', 2),
(74, 'NT-SSuong1946', '0f2e1141932a45733f01708f4555b205', 'Nguyễn Trần Sương Sương\r\n', 0, 'Suong.NguyenTran.Suong-23.05.46@gmail.com.vn', '1946-05-23 00:00:00', '382 Võ Nguyên Giáp, P. Phú Thứ, Q. Cái Răng, TP. Cần Thơ', '01638418750', '2010-12-13 15:54:32', '2010-12-13 15:54:32', 2),
(75, 'huynh_quynh-van-10_05_86', '885d9a7f835edc065b74e295a06a491d', 'Huỳnh Quỳnh Vân\r\n', 0, 'Quynhvan10051986@hotmail.com', '1986-05-10 00:00:00', '125 Tỉnh lộ 922, P. Châu Văn Liêm, Q. Ô Môn, TP. Cần Thơ', '0930244131', '2010-12-17 15:54:32', '2010-12-17 15:54:32', 2),
(76, 'dung-kieule99-05-13', 'dee2361b790101030faa2943003d91b7', 'Lê Kiều Dung\r\n', 0, 'dungkieule1305@yahoo.com.vn', '1999-05-13 00:00:00', '268 30/4, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '0962920825', '2010-12-17 23:17:58', '2010-12-17 23:17:58', 2),
(77, 'NHIEMTRANTHOI1804', '86eaab0b67c622812c543bfb9cdbca90', 'Trần Thời Nhiệm\r\n', 1, 'Thoinhiem18042002@gmail.com', '2002-04-18 00:00:00', '158 Trần Quang Diệu, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01237476540', '2010-12-30 23:17:58', '2010-12-30 23:17:58', 2),
(78, 'truclam42', '7da5580165dd8c7daa003372fcf8963a', 'Nguyễn Trúc Lâm\r\n', 0, 'LAM_NGUYENTRUC42@hotmail.com', '1942-08-14 00:00:00', '281 Bùi Minh Trực, P. Long Tuyền, Q. Bình Thủy, TP. Cần Thơ', '01265599920', '2010-12-31 02:14:25', '2010-12-31 02:14:25', 2),
(79, 'NDDUONG980319', 'ee9011716fcc0b7328c72d36a646e625', 'Nguyễn Ðại Dương\r\n', 1, 'DUONG19031998@gmail.com', '1998-03-19 00:00:00', '15 Nguyễn Văn Cừ, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '01699424371', '2010-12-31 11:09:10', '2010-12-31 11:09:10', 2),
(80, 'duckien001011', '7dec87ecae429f08693de9dd6ba13385', 'Đỗ Ðức Kiên\r\n', 1, 'kien.11.10.2000@gmail.com', '2000-10-11 00:00:00', '103A/369 Ngô Quyền, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01639800520', '2011-01-15 11:09:10', '2011-01-15 11:09:10', 2),
(81, 'vanmongluongphan780428', '1b891ab05310b09cc374c717a2e0bd7a', 'Phan Lương Mộng Vân\r\n', 0, 'PhanLuong.Mong-Van_280478@gmail.com', '1978-04-28 00:00:00', '284 Đinh Tiên Hoàng, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01641295961', '2011-01-26 11:09:10', '2011-01-26 11:09:10', 2),
(82, 'THU-HANG17-03-81', '71c4b16d7cd7d711b57a0ff31b677002', 'Nguyễn Thu Hằng\r\n', 0, 'N-T_HANG-1981_03_17@yahoo.com', '1981-03-17 00:00:00', '47 Trần Phú, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '0977312374', '2011-02-19 11:09:10', '2011-02-19 11:09:10', 2),
(83, 'Tam.Luong-Duc-25_11_86', '541d5551a30414242f064363e2390537', 'Lương Ðức Tâm\r\n', 1, 'TamLuongDuc19861125@gmail.com.vn', '1986-11-25 00:00:00', '132 Nguyễn Truyền Thanh, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '0940279282', '2011-02-19 11:09:10', '2011-02-19 11:09:10', 2),
(84, 'VanNguyenBich12112004', '4a98884cde028ea75d0a3011699abf01', 'Nguyễn Bích Vân\r\n', 0, 'VANBICHNGUYEN041112@yahoo.com.vn', '2004-11-12 00:00:00', '208 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '0888606887', '2011-02-19 15:35:58', '2011-02-19 15:35:58', 2),
(85, 'LV_Hung_86', '36bde833102ae103c748d818f3e3c5aa', 'Lâm Vĩnh Hưng\r\n', 1, 'hung26061986@yahoo.com', '1986-06-26 00:00:00', '153 Nguyễn Truyền Thanh, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01640071905', '2011-02-20 15:35:58', '2011-02-20 15:35:58', 2),
(86, 'NguyenTranThanh790803', '45fd03f9e748d79b47733ab96b501f7f', 'Nguyễn Trần Thanh', 1, 'N-TTHANH03-08@ymail.com', '1979-08-03 00:00:00', '53/220 Lý Tự Trọng, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01642297607', '2011-02-20 16:38:52', '2011-02-20 16:38:52', 2),
(87, 'phuongdotranyen60', 'b1efe247b197f6ae1f52d7f811394f4d', 'Đỗ Trần Yến Phượng\r\n', 0, 'do.tranyen.phuong.23.11.1960@ymail.com', '1960-11-23 00:00:00', '228 Thái Thị Hạnh, P. Long Hưng, Q. Ô Môn, TP. Cần Thơ', '01242074572', '2011-02-20 18:57:47', '2011-02-20 18:57:47', 2),
(88, 'NGUYENTHI-THIEN-TRANG-1202', '2f9c10807d7262fc9306deafb945f153', 'Nguyễn Thị Thiên Trang\r\n', 0, 'TRANGNGUYENTHITHIEN1981@yahoo.com.vn', '1981-02-12 00:00:00', '193 Trần Phú, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01642628385', '2011-02-20 22:20:33', '2011-02-20 22:20:33', 2),
(89, 'nguyen.phong\r\n.11.02.94', '23498d2b535b85dc89007be1740a0779', 'Đỗ Lê Nguyên Phong\r\n', 1, 'Phong_Nguyen_LeDo_1102@gmail.com.vn', '1994-02-11 00:00:00', '108/81 CMT8, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01283699831', '2011-02-22 22:20:33', '2011-02-22 22:20:33', 2),
(90, 'VIET-DUNGDOKHUU-29041995', '9f31136bee03b1459fd9de93c771bdfc', 'Khưu Đỗ Dũng Việt\r\n', 1, 'KhuuDoDung_Viet_95_04_29@yahoo.com', '1995-04-29 00:00:00', '347 Nguyễn An Ninh, An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01284095502', '2011-03-11 22:20:33', '2011-03-11 22:20:33', 2),
(91, 'p-dthanh-48', '6aab3daad8b085bf2ad277b7d28b27d9', 'Phan Danh Thành\r\n', 1, 'DANHTHANH240348@outlook.com', '1948-03-24 00:00:00', '250 Hòa Bình, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01695176047', '2011-03-11 22:20:33', '2011-03-11 22:20:33', 2),
(92, 'lan19830406', '49891c199cb70505af680e72db383e00', 'Nguyễn Lân', 1, 'NguyenLan83@yahoo.com', '1983-04-06 00:00:00', '133 Võ Văn Kiệt, P. Bình Thủy , Q. Bình Thủy, TP. Cần Thơ', '01650275642', '2011-04-03 22:20:33', '2011-04-03 22:20:33', 2),
(93, 'si88-08-18', '481b65e632c2a456f287a63d60569bce', 'Lê Văn Sĩ\r\n', 1, 'SI.VANLE.1988.08.18@gmail.com', '1988-08-18 00:00:00', '336 Lê Hồng Phong, P. Trà An , Q. Bình Thủy, TP. Cần Thơ', '0927437178', '2011-04-08 22:20:33', '2011-04-08 22:20:33', 2),
(94, 'LT-Giang050415', '8fa174e696487085c316a28e12d360a9', 'Lâm Thiện Giang\r\n', 1, 'GIANG-LAM-THIEN20050415@yahoo.com', '2005-04-15 00:00:00', '289 QL1, P. Lê Bình, Q. Cái Răng, TP. Cần Thơ', '0886044805', '2011-04-09 02:57:30', '2011-04-09 02:57:30', 2),
(95, 'Hoaitrang1977', '680e224363725a5be0e475491886d977', 'Phạm Hoài Trang\r\n', 0, 'Trang-13.03@ymail.com', '1977-03-13 00:00:00', '193/53 Hai Bà Trưng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0925897798', '2011-04-13 02:57:30', '2011-04-13 02:57:30', 2),
(96, 'nhan-sam170683', '6febbdb847d2a07fee33989635142ae6', 'Nguyễn Nhân Sâm\r\n', 1, 'NNSam83@gmail.com', '1983-06-17 00:00:00', '50 Châu Văn Liêm, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0926308235', '2011-05-02 02:57:30', '2011-05-02 02:57:30', 2),
(97, 'quoc.bao23.01.1983', 'bb09c2d2a891238fe3b9878f7cda0ce1', 'Lê Quốc Bảo\r\n', 1, 'bao-23-01-1983@yahoo.com.vn', '1983-01-23 00:00:00', '138 Nguyễn Chí Thanh, P. Thới An Đông, Q. Bình Thủy, TP. Cần Thơ', '09989356643', '2011-05-02 06:06:49', '2011-05-02 06:06:49', 2),
(98, 'san951017', '9cf4dbd411dafb29c535b437c7c0d74b', 'Phan Thái San\r\n', 1, 'phanthai-san_1995_10_17@gmail.com', '1995-10-17 00:00:00', '155C/267 Trần Phú, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01261990833', '2011-05-03 06:06:49', '2011-05-03 06:06:49', 2),
(99, 'DuPham_Thi.30_06_95', 'c3c2f9ec39ea9a0116f9679278168228', 'Phạm Thị Du\r\n', 0, 'PHAMTHIDU300695@hotmail.com', '1995-06-30 00:00:00', '366 Mậu Thân, P. An Nghiệp, Q. Ninh Kiều, TP. Cần Thơ', '0986242336', '2011-05-22 06:06:49', '2011-05-22 06:06:49', 2),
(100, 'n.t_lthu.18.09', '74b48ed351fd8508545597463440cf2b', 'Nguyễn Thị Lệ Thu\r\n', 0, 'NguyenThiLeThu2003@outlook.com', '2003-09-18 00:00:00', '328 QL91, P. Long Hưng, Q. Ô Môn, TP. Cần Thơ', '01659388862', '2011-06-09 06:06:49', '2011-06-09 06:06:49', 2),
(101, 'Nguyenminh990803', 'dc48144d81df9ddf6ff5db57cc6e2b60', 'Nguyễn Minh', 1, 'NMINH1999@ymail.com', '1999-08-03 00:00:00', '169 Nguyễn Trãi, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01693664937', '2011-06-09 06:06:49', '2011-06-09 06:06:49', 2),
(102, 'HOANGUYENBAO.30_11', '40f2bfd3a08c8d8e98652be1877c6632', 'Nguyễn Bảo Hòa\r\n', 1, 'hoa-bao-nguyen-301197@gmail.com.vn', '1997-11-30 00:00:00', '393 Hùng Vương, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01860573760', '2011-06-17 06:06:49', '2011-06-17 06:06:49', 2),
(103, 'phung_kien-trung77', 'ba3c0338b31e63c9992fe5bdee8e667e', 'Phùng Kiên Trung\r\n', 1, 'Kientrung\r\n.1112@yahoo.com', '1977-12-11 00:00:00', '356 Trần Hưng Đạo, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01657560370', '2011-06-17 12:06:28', '2011-06-17 12:06:28', 2),
(104, 'Nguyen.Thi.Tuyet_1995', '51cfff243d202f20948bb21e3504df2f', 'Nguyễn Thị Tuyết\r\n', 0, 'tuyet.thi.nguyen.06_06_95@ymail.com', '1995-06-06 00:00:00', '237 30/4, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0967176820', '2011-06-17 12:06:28', '2011-06-17 12:06:28', 2),
(105, 'sangphungquang.93', '468eef1fb1b7f00ff85e963737859a32', 'Phùng Quang Sáng\r\n', 1, 'Quang.sang04.02.93@hotmail.com', '1993-02-04 00:00:00', '78 Nguyễn Văn Cừ, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '0909933982', '2011-06-21 12:06:28', '2011-06-21 12:06:28', 2),
(106, 'TheuThienThiDuongTran540917', 'cff2e3154a7a674b4d4e80022834a3cc', 'Trần Dương Thị Thiên Thêu\r\n', 0, 'TheuTranDuongThiThien1709@hotmail.com', '1954-09-17 00:00:00', '390 Nguyễn Văn Linh, P. Thới An Đông, Q. Bình Thủy, TP. Cần Thơ', '01626491293', '2011-06-21 22:17:27', '2011-06-21 22:17:27', 2),
(107, 'VANCONG830831', '697a19d575739fb5ffcc43ad05e106c6', 'Trần Văn Công\r\n', 1, 'CongTranVan_1983_08_31@outlook.com', '1983-08-31 00:00:00', '97 Huỳnh Phan Hộ, P. Bình Thủy , Q. Bình Thủy, TP. Cần Thơ', '0926511728', '2011-06-23 22:17:27', '2011-06-23 22:17:27', 2),
(108, 'tok-thinh07-09-1992', 'e5295933b3dc9905de369bf2b055cd9d', 'Trần Ông Kim Thịnh\r\n', 1, 'TRANONGKIMTHINH1992@outlook.com', '1992-09-07 00:00:00', '197 CMT8, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01216112921', '2011-06-24 02:48:44', '2011-06-24 02:48:44', 2),
(109, 'loan-tran.thi-dieu.19111993', 'd1c7133bedb9821729c85a5c47e515c9', 'Trần Thị Diệu Loan\r\n', 0, 'TRANTHIDIEULOAN1993@hotmail.com', '1993-11-19 00:00:00', '159 CMT8, P. Bùi Hữu Nghĩa, Q. Bình Thủy, TP. Cần Thơ', '01662131778', '2011-06-24 03:10:58', '2011-06-24 03:10:58', 2),
(110, 'Vi_Hoan_ThiLe_2006', 'ebfc000f628e1e7c7bb439ccf3870be1', 'Lê Thị Hoàn Vi\r\n', 0, 'LT_HVi20_06_1991@gmail.com.vn', '1991-06-20 00:00:00', '153/314 CMT8, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01254752321', '2011-06-24 03:10:58', '2011-06-24 03:10:58', 2),
(111, 'Lan_Bao_ThiPham.1997.06.23', '4d60c6b929d23546774678a21c2603fe', 'Phạm Thị Bảo Lan\r\n', 0, 'LAN230697@gmail.com.vn', '1997-06-23 00:00:00', '155D/13 Đinh Công Chánh, P. Long Tuyền , Q. Bình Thủy, TP. Cần Thơ', '01207563575', '2011-06-25 03:10:58', '2011-06-25 03:10:58', 2),
(112, 'NDLinh19770227', 'ce1dfb8a925d4bb58490c6488c791f07', 'Nguyễn Diệu Linh\r\n', 0, 'NGUYEN-DIEULINH77@outlook.com', '1977-02-27 00:00:00', '55/389 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01679299364', '2011-06-25 03:10:58', '2011-06-25 03:10:58', 2),
(113, 'CHIEN02-04-99', 'c18f576e98b268b168fd8d5ca6829815', 'Trần Hữu Chiến\r\n', 1, 'T-H.Chien.99-04-02@yahoo.com.vn', '1999-04-02 00:00:00', '48 Lý Tự Trọng, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01862416557', '2011-06-25 07:46:49', '2011-06-25 07:46:49', 2),
(114, 'duong170498', '91848eda858c690b9f7dc37703f4a6be', 'Nguyễn Ðình Dương\r\n', 1, 'DUONG.17041998@hotmail.com', '1998-04-17 00:00:00', '187C/179 Nguyễn Trãi, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01668784882', '2011-06-25 17:49:41', '2011-06-25 17:49:41', 2),
(115, 'UYEN_BAO-THI-DANG_NGUYEN22-04', '7fee268209df858a440d3cd22f77e9b7', 'Nguyễn Đặng Thị Bảo Uyên\r\n', 0, 'UYEN.BAO_THIDANGNGUYEN78_04_22@outlook.com', '1978-04-22 00:00:00', '123 Nguyễn An Ninh, An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01271276747', '2011-06-26 09:35:13', '2011-06-26 09:35:13', 2),
(116, 'vanbichpham970227', '11a30c08c68f29e89065ace25a125a2f', 'Phạm Bích Vân\r\n', 0, 'Van-Bich-Pham1997@gmail.com.vn', '1997-02-27 00:00:00', '35D/324 Trần Kiết Tường, P. Thới An, Q. Ô Môn, TP. Cần Thơ', '09974025425', '2011-07-08 09:35:13', '2011-07-08 09:35:13', 2),
(117, 'NVKHANG1981', 'a022318e6d454866305c61bd1858de82', 'Nguyễn Văn Khang\r\n', 1, 'nguyen-van-khang_30_01_81@yahoo.com', '1981-01-30 00:00:00', '98 Phan Văn Trị, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '0886108226', '2011-07-18 09:35:13', '2011-07-18 09:35:13', 2),
(118, 'N-T-VAnh-02111985', 'bc710c410f002ad8aad90278d4ff0b2a', 'Nguyễn Thị Vân Anh\r\n', 0, 'NT-V-ANH-85.11.02@hotmail.com', '1985-11-02 00:00:00', '285 Nguyễn An Ninh, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '08684581251', '2011-07-18 10:56:58', '2011-07-18 10:56:58', 2),
(119, 'DNT-MHa1997-10-28', '5f187a6eb35d877090f3aec8420a69c5', 'Đỗ Nguyễn Thị Mai Hạ\r\n', 0, 'D-N-T_MHa_281097@hotmail.com', '1997-10-28 00:00:00', '177 Mậu Thân, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '0987192024', '2011-07-20 10:56:58', '2011-07-20 10:56:58', 2),
(120, 'Tu.1986', '6c35c52752196e59a840c0770a16cad0', 'Nguyễn Thị Cẩm Tú\r\n', 0, 'camtu24011986@gmail.com.vn', '1986-01-24 00:00:00', '331 CMT8, P. Bùi Hữu Nghĩa, Q. Bình Thủy, TP. Cần Thơ', '01255806139', '2011-08-05 10:56:58', '2011-08-05 10:56:58', 2),
(121, 'TV-Phung-88', 'dcf47fcb739b556a9157d9a9fb7d0855', 'Trần Văn Phụng\r\n', 1, 't.vphung.1709@yahoo.com', '1988-09-17 00:00:00', '144 Hòa Bình, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0942175226', '2011-08-15 10:56:58', '2011-08-15 10:56:58', 2),
(122, 'hhbac291104', '55d29db57f85d8e9da4f8620c7d8e05c', 'Huỳnh Hồ Bắc\r\n', 1, 'Bac_Ho_Huynh20041129@ymail.com', '2004-11-29 00:00:00', '263 Lộ Vòng Cung, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '0968763028', '2011-08-15 12:33:14', '2011-08-15 12:33:14', 2),
(123, 'lan77', 'b26e535f9854755f01aeea886bd54457', 'Nguyễn Hương Lan\r\n', 0, 'NGUYEN.HUONG.LAN.13.09.1977@outlook.com', '1977-09-13 00:00:00', '142/317 Châu Văn Liêm, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0883409337', '2011-08-17 12:33:14', '2011-08-17 12:33:14', 2),
(124, 'dang-nguyennguyen-151187', '0c2c7b46a8972ce0c5861f6914c25f30', 'Đặng Nguyễn Nguyên', 1, 'NguyenDang.Nguyen.15_11_87@yahoo.com', '1987-11-15 00:00:00', '189 QL1, P. Lê Bình, Q. Cái Răng, TP. Cần Thơ', '0989098068', '2011-08-18 00:41:29', '2011-08-18 00:41:29', 2),
(125, 'dung09.02.1984', 'e112e4d7012e1fb5d669dd4cc7889809', 'Cù Trọng Dũng\r\n', 1, 'DUNG1984@yahoo.com.vn', '1984-02-09 00:00:00', '104/132 Bùi Hữu Nghĩa, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01229501471', '2011-08-19 00:41:29', '2011-08-19 00:41:29', 2),
(126, 'QUANG-THONG\r\n-1988.10.20', '2b0992797134b6c21cf17d561a518c45', 'Nguyễn Quảng Thông\r\n', 1, 'thong_nguyen.quang.20_10_1988@yahoo.com.vn', '1988-10-20 00:00:00', '357 Trần Ngọc Quế, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01885218809', '2011-08-19 00:41:29', '2011-08-19 00:41:29', 2),
(127, 'DINHANH.THAO.11082002', 'ef2fa06608641bd8cef3f6b1c6329ac7', 'Đinh Anh Thảo\r\n', 0, 'ANH-THAO\r\n-02_08_11@yahoo.com', '2002-08-11 00:00:00', '122/97 Nguyễn Thị Minh Khai, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0901864077', '2011-08-19 01:19:36', '2011-08-19 01:19:36', 2),
(128, 'Trinh_Nguyen.Tan88_05_17', '5556021ceda7c43b663a13297b2ddda8', 'Nguyễn Tấn Trình\r\n', 1, 'trinh_1988@yahoo.com.vn', '1988-05-17 00:00:00', '177 Huỳnh Phan Hộ, P. Trà An, Q. Bình Thủy, TP. Cần Thơ', '01288783161', '2011-09-03 01:19:36', '2011-09-03 01:19:36', 2),
(129, 'tranquoc81', '4988363362a062237ce2e23256b4c856', 'Trần Quốc', 1, 'QUOC14061981@yahoo.com', '1981-06-14 00:00:00', '259 3/2, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '01888347202', '2011-09-14 01:19:36', '2011-09-14 01:19:36', 2),
(130, 'THOATHIHUYNH-04-11-98', 'abed3d9b50161c9fab27a3e9fc93d190', 'Huỳnh Thị Thoa\r\n', 0, 'THOATHI_HUYNH_98_11_04@ymail.com', '1998-11-04 00:00:00', '67C/286 Bùi Hữu Nghĩa, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01283586612', '2011-09-21 01:19:36', '2011-09-21 01:19:36', 2),
(131, 'NHILETHILINH19901230', 'b76b72e5973192b73509facdf5fb8495', 'Lê Thị Linh Nhi\r\n', 0, 'nhi_le.thi_linh.1990@gmail.com.vn', '1990-12-30 00:00:00', '72 Trần Hưng Đạo, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01695865464', '2011-09-21 03:03:33', '2011-09-21 03:03:33', 2),
(132, 'NGUYENLAMTHIMINHHONG91', '38a2f684a84c4000539314b53dca7957', 'Nguyễn Lâm Thị Minh Hồng\r\n', 0, 'MINHHONG91@hotmail.com', '1991-07-17 00:00:00', '254 Lê Hồng Phong, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01647145119', '2011-09-21 07:40:03', '2011-09-21 07:40:03', 2),
(133, 'Nga94.04.11', '1a452208000d2cefd7695b89d4241c27', 'Lê Nguyễn Thị Việt Nga\r\n', 0, 'LeNguyenThiVietNga11041994@ymail.com', '1994-04-11 00:00:00', '270 Đặng Thanh Sử, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '0895555781', '2011-09-21 13:02:26', '2011-09-21 13:02:26', 2),
(134, 'phamhoangkhang1951', 'c06dd8678c71a643eeb480a63d00d2a6', 'Phạm Hoàng Khang\r\n', 1, 'Khang.Pham.Hoang1951@ymail.com', '1951-12-25 00:00:00', '2 Lý Tự Trọng, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01673899552', '2011-09-21 13:02:26', '2011-09-21 13:02:26', 2),
(135, 'htthoai2910', 'f112910aadd406baf6d8fce310b159aa', 'Huỳnh Thị Thoại\r\n', 0, 'H.T_THOAI.1983@yahoo.com.vn', '1983-10-29 00:00:00', '387 Trần Hưng Đạo, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '09941329636', '2011-09-22 13:02:26', '2011-09-22 13:02:26', 2),
(136, 'LAN20.05.04', 'db516726ba4b4838bfedfa58c3b7dcdf', 'Nguyễn Thị Khúc Lan\r\n', 0, 'NguyenThi_Khuc_Lan_20040520@gmail.com', '2004-05-20 00:00:00', '238 30/4, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01255552277', '2011-09-25 13:02:26', '2011-09-25 13:02:26', 2),
(137, 'long.1999_12_13', 'fe875bbe3676d6ab36655d318afb5967', 'Nguyễn Phan Thăng Long\r\n', 1, 'npt.long.13_12@yahoo.com.vn', '1999-12-13 00:00:00', '326 Võ Văn Tần, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01861716096', '2011-09-25 15:32:04', '2011-09-25 15:32:04', 2),
(138, 'PHUONGTIEN\r\n_15_10_04', 'a26054d302e8b38d74ff82a743026624', 'Nguyễn Mai Phượng Tiên\r\n', 0, 'nguyenmaiphuong_tien_15_10@yahoo.com', '2004-10-15 00:00:00', '133 Võ Nguyên Giáp, P. Phú Thứ, Q. Cái Răng, TP. Cần Thơ', '01681382398', '2011-10-10 15:32:04', '2011-10-10 15:32:04', 2),
(139, 'NVDung92', 'b6d06056a313082ea40c00adb05a8f73', 'Nguyễn Văn Dũng\r\n', 1, 'DUNG92@outlook.com', '1992-09-14 00:00:00', '342 3/2, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '01210909108', '2011-10-15 15:32:04', '2011-10-15 15:32:04', 2),
(140, 'DungBui-Van-1969', 'f49b122d415f850cfc111da1047dc3b0', 'Bùi Văn Dũng\r\n', 1, 'DUNG-VAN.BUI2104@gmail.com.vn', '1969-04-21 00:00:00', '158 Xô Viết Nghệ Tĩnh, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01298222014', '2011-10-15 18:00:44', '2011-10-15 18:00:44', 2),
(141, 'T_V.VY_24.04.2004', '79eba73f86cadbfc55f71c8a558fcd76', 'Trần Văn Vỹ\r\n', 1, 'vytranvan2004@hotmail.com', '2004-04-24 00:00:00', '194D/225 Ngô Quyền, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01246206238', '2011-10-15 18:55:53', '2011-10-15 18:55:53', 2),
(142, 'Huynhtruc2204', 'cee1dac27d06edb4b3531b2bd305d93d', 'Huỳnh Trực', 1, 'Huynh_truc-79@yahoo.com', '1979-04-22 00:00:00', '140/59 Ngô Quyền, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01239701790', '2011-10-16 18:55:53', '2011-10-16 18:55:53', 2),
(143, 'quynhmong_thi.phandang1996-08-15', '25cafd985148558824a4195f91cf2295', 'Đặng Phan Thị Mộng Quỳnh\r\n', 0, 'MONGQUYNH\r\n_1996_08_15@gmail.com', '1996-08-15 00:00:00', '320 Quang Trung, P.  Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01862150982', '2011-10-16 18:55:53', '2011-10-16 18:55:53', 2),
(144, 'NGUYEN-KHANH40', 'c8dfdf563166810ae51fbd910fb628ee', 'Nguyễn Khánh', 1, 'nkhanh1940@gmail.com', '1940-09-25 00:00:00', '73/80 Trần Văn Hoài, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0905701236', '2011-10-27 18:55:53', '2011-10-27 18:55:53', 2),
(145, 'n.g.hoa.04.10', 'd9cd16cda1eac64a4711de85a1e69ff9', 'Nguyễn Gia Hòa\r\n', 1, 'n-g-hoa-94@gmail.com', '1994-10-04 00:00:00', '129A/387 Hòa Bình, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01206076387', '2011-11-01 18:55:53', '2011-11-01 18:55:53', 2),
(146, 'VIEN.LAMNGUYEN.130503', '03d1d4684970adc55e951129a60e954e', 'Nguyễn Lâm Viên\r\n', 1, 'VIENNGUYEN-LAM030513@yahoo.com.vn', '2003-05-13 00:00:00', '138 CMT8, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '0900125443', '2011-11-17 18:55:53', '2011-11-17 18:55:53', 2),
(147, 'thinh.nguyen.van25-10', 'c62c8650da96c21433a224b6a51f6592', 'Nguyễn Văn Thịnh\r\n', 1, 'N_V.THINH25-10@hotmail.com', '1998-10-25 00:00:00', '102/363 CMT8, P. An Thới , Q. Bình Thủy, TP. Cần Thơ', '09962509714', '2011-11-20 18:55:53', '2011-11-20 18:55:53', 2),
(148, 'n.h_ha-19840611', 'de0a5ab2bcb7939359398edd2f1d84cc', 'Ngô Hoàng Hà\r\n', 0, 'ha110684@gmail.com.vn', '1984-06-11 00:00:00', '282 Mậu Thân, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01257294173', '2011-11-20 21:08:33', '2011-11-20 21:08:33', 2),
(149, 'ND-Chinh10.06.95', '616322a3ed6534e88f87397bdf0e51de', 'Nguyễn Ðức Chính\r\n', 1, 'NDChinh1995@ymail.com', '1995-06-10 00:00:00', '200 Võ Văn Kiệt, P. Bình Thủy , Q. Bình Thủy, TP. Cần Thơ', '0898336530', '2011-11-23 21:08:33', '2011-11-23 21:08:33', 2),
(150, 'Vu.VanTran.950316', '7f746e6da13a013d0366f1f8d79f1106', 'Trần Văn Vũ\r\n', 1, 'Tran.Van_Vu.160395@gmail.com.vn', '1995-03-16 00:00:00', '221 Nguyễn Văn Linh, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '01290507281', '2011-11-24 07:48:45', '2011-11-24 07:48:45', 2),
(151, 'CUONG_NGUYEN_THAT1982', '27d2646ef77aeccef50d949bea31c974', 'Nguyễn Thất Cương\r\n', 1, 'CUONG-19051982@yahoo.com.vn', '1982-05-19 00:00:00', '295 Nguyễn Thái Học, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01210796615', '2011-11-27 07:48:45', '2011-11-27 07:48:45', 2),
(152, 'chibao030906', '69f76ac758537456e01422c5ed3122ab', 'Huỳnh Chí Bảo\r\n', 1, 'CHIBAO06092003@hotmail.com', '2003-09-06 00:00:00', '246 QL91, P. Long Hưng, Q. Ô Môn, TP. Cần Thơ', '01867369244', '2011-11-29 07:48:45', '2011-11-29 07:48:45', 2),
(153, 'TANNAM\r\n-25-04-2004', '7377c12c9a1a2827f891e1d50c644c78', 'Nguyễn Tấn Nam\r\n', 1, 'NamTanNguyen040425@yahoo.com', '2004-04-25 00:00:00', '68C/68 Lý Tự Trọng, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01276602830', '2011-11-29 10:33:29', '2011-11-29 10:33:29', 2),
(154, 'QUYENNGUYENBUITHIBAO05092003', 'ce3d560c9325842f71c3c14613d79fc3', 'Nguyễn Bùi Thị Bảo Quyên\r\n', 0, 'nb.t.b.quyen030905@ymail.com', '2003-09-05 00:00:00', '61A/88 Châu Văn Liêm, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01688865015', '2011-11-29 10:33:29', '2011-11-29 10:33:29', 2),
(155, 'AnPhanBao20010909', '5d17dc6fc919960c6e324d1987266d9c', 'Phan Bảo An\r\n', 1, 'pban20010909@gmail.com.vn', '2001-09-09 00:00:00', '13/13 Thái Thị Hạnh, P. Thới Long, Q. Ô Môn, TP. Cần Thơ', '0944357164', '2011-12-02 10:33:29', '2011-12-02 10:33:29', 2),
(156, 'NT-T_LAM08-04-1997', '66ca96fa3bcaa2503ef2090613798bd1', 'Nguyễn Thị Thanh Lam\r\n', 0, 'LamThanhThiNguyen19970408@outlook.com', '1997-04-08 00:00:00', '75 CMT8, P. An Thới , Q. Bình Thủy, TP. Cần Thơ', '09950793695', '2011-12-16 10:33:29', '2011-12-16 10:33:29', 2),
(157, 'Xuan1968', '9e91575f0265f7441e8e9507262bbf6f', 'Nguyễn Phạm Ánh Xuân\r\n', 0, 'nguyen_phamanhxuan-23-07@gmail.com', '1968-07-23 00:00:00', '21A/56 Nguyễn Truyền Thanh, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01629453647', '2012-01-05 10:33:29', '2012-01-05 10:33:29', 2),
(158, 'DO.HONGANH-86_05_03', '1f51864c2a5ff6247d64b78d2bd42bcd', 'Đỗ Hồng Anh\r\n', 0, 'DoHongAnh860503@hotmail.com', '1986-05-03 00:00:00', '111 CMT8, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '09979787321', '2012-01-22 10:33:29', '2012-01-22 10:33:29', 2),
(159, 'van2002', '8c40f36931cf01728b4a161291cbd6cf', 'Bùi Mộng Vân\r\n', 0, 'MONGVAN\r\n.02_10_2002@hotmail.com', '2002-10-02 00:00:00', '335 CMT8, P. Bùi Hữu Nghĩa, Q. Bình Thủy, TP. Cần Thơ', '01650313912', '2012-01-22 11:17:20', '2012-01-22 11:17:20', 2),
(160, 'NTTNHU81', '9445ac45882c1cfd8da2b8c72a0d2bb7', 'Nguyễn Trần Thị Như\r\n', 0, 'Nhu_22.10.1981@outlook.com', '1981-10-22 00:00:00', '129 Trần Kiết Tường, P. Thới Hòa, Q. Ô Môn, TP. Cần Thơ', '01243409822', '2012-01-24 11:17:20', '2012-01-24 11:17:20', 2),
(161, 'NGUYEN_TUAN_THANH_97_02_14', '4ca8f77f2f10976ffd8a321e6b665e07', 'Nguyễn Tuấn Thành\r\n', 1, 'tuanthanh14.02@outlook.com', '1997-02-14 00:00:00', '121 QL1, P. Ba Láng, Q. Cái Răng, TP. Cần Thơ', '0967439495', '2012-01-31 11:17:20', '2012-01-31 11:17:20', 2),
(162, 'SY_THUC1978-08-27', 'fa9e0c9d52247f4adfd06f60f8f75ca4', 'Nguyễn Sỹ Thực\r\n', 1, 'THUC.NGUYEN-SY-1978@gmail.com.vn', '1978-08-27 00:00:00', '88/16 Bùi Minh Trực, P. Long Tuyền, Q. Bình Thủy, TP. Cần Thơ', '0908425092', '2012-02-05 11:17:20', '2012-02-05 11:17:20', 2),
(163, 'Hop_Phan-TranHoa.1981', '3ec55b7d342c360e1cc454eda016a1b0', 'Phan Trần Hòa Hợp\r\n', 1, 'HOA-HOP\r\n-1111@gmail.com', '1981-11-11 00:00:00', '18 Phan Đình Phùng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01206811349', '2012-02-06 11:17:20', '2012-02-06 11:17:20', 2),
(164, 'bao-laithigia_16-03-00', '37a4472872a9601d4b1bddd68643ee46', 'Lại Thị Gia Bảo\r\n', 0, 'bao-2000@ymail.com', '2000-03-16 00:00:00', '5 CMT8, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01672289925', '2012-02-19 11:17:20', '2012-02-19 11:17:20', 2),
(165, 'MAI_KHANHTHI_VO_1007', '7b81174601e584e099145e496fc2d788', 'Võ Thị Khánh Mai\r\n', 0, 'MaiVoThiKhanh04@outlook.com', '2004-07-10 00:00:00', '321 Nguyễn Văn Linh, P. Long Tuyền , Q. Bình Thủy, TP. Cần Thơ', '0985194091', '2012-03-02 11:17:20', '2012-03-02 11:17:20', 2),
(166, 'bui-trongkhanh-0601', '45a8f26ff0d439e1da30b9ec06e9c159', 'Bùi Trọng Khánh\r\n', 1, 'khanh-77@outlook.com', '1977-01-06 00:00:00', '165 30/4, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01644346977', '2012-03-20 11:17:20', '2012-03-20 11:17:20', 2),
(167, 'Hien.thuc\r\n.01-02-75', 'dfab564f62b6ab9eef1759f28ed1d561', 'Phạm Hiền Thục\r\n', 0, 'hien_thuc\r\n.010275@ymail.com', '1975-02-01 00:00:00', '18 Mậu Thân, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01201803406', '2012-03-27 11:17:20', '2012-03-27 11:17:20', 2),
(168, 'Dung-92', '29941fb994f1310d4482d2c449d50fb3', 'Bùi Thất Dũng\r\n', 1, 'Dung92@yahoo.com', '1992-05-27 00:00:00', '219 Mậu Thân, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '09977795561', '2012-04-06 11:17:20', '2012-04-06 11:17:20', 2),
(169, 'NTTrinh1986', '55879959181a9dd4b47ee38cb7940e1d', 'Nguyễn Thụy Trinh\r\n', 0, 'nt-trinh-05-07@ymail.com', '1986-07-05 00:00:00', '103C/252 QL1, P. Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01646369942', '2012-04-28 11:17:20', '2012-04-28 11:17:20', 2),
(170, 'thu0505', '90d7ab77194f9a1feedabf960bb19414', 'Nguyễn Mai Thu\r\n', 0, 'THUNGUYENMAI05051979@gmail.com', '1979-05-05 00:00:00', '123/299 Võ Văn Kiệt, P. Bình Thủy , Q. Bình Thủy, TP. Cần Thơ', '0986495662', '2012-04-30 11:17:20', '2012-04-30 11:17:20', 2),
(171, 'DNTKHUYEN251081', '96831e658c2788aa1975e22fd1888395', 'Đỗ Nguyễn Thị Khánh Huyền\r\n', 0, 'Huyen-1981@gmail.com', '1981-10-25 00:00:00', '68 CMT8, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '0891436354', '2012-04-30 12:11:59', '2012-04-30 12:11:59', 2),
(172, 'BANHYEN.SON_12021982', '837fe557c8693358de74a4c8d59a53a3', 'Bành Yên Sơn', 1, 'b.yson-19820212@gmail.com', '1982-02-12 00:00:00', '322 Võ Văn Kiệt, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01660704882', '2012-05-22 12:11:59', '2012-05-22 12:11:59', 2),
(173, 'ntbkim00', '163b4ba6f26d791bc3dce7b45faa7ab2', 'Nguyễn Thị Bạch Kim\r\n', 0, 'KimNguyenThiBach250900@ymail.com', '2000-09-25 00:00:00', '59 Hùng Vương, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01690248391', '2012-05-22 14:55:28', '2012-05-22 14:55:28', 2),
(174, 'HOC-78', '4187dc425f0b61e6d0465b9c18591133', 'Phạm Lý Hiếu Học\r\n', 1, 'hoc15_09_1978@gmail.com', '1978-09-15 00:00:00', '57 Nguyễn Đệ, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01223033456', '2012-05-22 17:24:07', '2012-05-22 17:24:07', 2),
(175, 'L_Q_Trong190980', 'cd1f63b6e36decbcdec42567b85f3072', 'Lê Quang Trọng\r\n', 1, 'tronglequang1909@outlook.com', '1980-09-19 00:00:00', '372 Huỳnh Phan Hộ, P. Bình Thủy , Q. Bình Thủy, TP. Cần Thơ', '01670749700', '2012-05-22 20:58:53', '2012-05-22 20:58:53', 2),
(176, 'lai231195', 'e75c5cf1276d2ad97dc9ce8f91b7e0ab', 'Nguyễn Hà Ân Lai\r\n', 1, 'laianhanguyen19951123@gmail.com.vn', '1995-11-23 00:00:00', '47 Bùi Hữu Nghĩa, P. Long Tuyền, Q. Bình Thủy, TP. Cần Thơ', '01660866730', '2012-05-22 21:26:44', '2012-05-22 21:26:44', 2),
(177, 'n.t.khanh.01051996', '063d3b8763b11e169410b18920f7fcd4', 'Nguyễn Thụy Khanh\r\n', 0, 'KhanhNguyenThuy1996@gmail.com', '1996-05-01 00:00:00', '107 QL1, P. Hưng Thạnh, Q. Cái Răng, TP. Cần Thơ', '01266817159', '2012-05-25 21:26:44', '2012-05-25 21:26:44', 2),
(178, 'LuanPham28_09_95', '0a26490d6b1940ca48bfb2a27118d710', 'Phạm Luận', 1, 'PHAM-LUAN1995@gmail.com', '1995-09-28 00:00:00', '132 CMT8, P. An Thới , Q. Bình Thủy, TP. Cần Thơ', '09988403626', '2012-05-26 21:26:44', '2012-05-26 21:26:44', 2),
(179, 'PHUONG.BAO_PHAM2003', 'f84ef5928e33a6a0ae0c40e0a6b99ea0', 'Phạm Bảo Phương\r\n', 0, 'Phuong-Pham_Bao_2003-05-22@outlook.com', '2003-05-22 00:00:00', '84A/339 Nguyễn Chí Thanh, P. Trà Nóc , Q. Bình Thủy, TP. Cần Thơ', '01204169740', '2012-05-26 21:26:44', '2012-05-26 21:26:44', 2),
(180, 'duong_cuan_nhan.11_07_2000', 'e308b6d31d87dd6ae1a3d842bda4769e', 'Dương Cù An Nhàn\r\n', 0, 'AN_NHAN11072000@ymail.com', '2000-07-11 00:00:00', '65 Ngô Gia Tự, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01863560355', '2012-05-26 22:20:43', '2012-05-26 22:20:43', 2),
(181, 'volynguyenkiet200254', 'e46e1d915e004622e1865e6864e8fb28', 'Lý Nguyễn Kiệt Võ\r\n', 1, 'VoKietNguyenLy20021954@yahoo.com.vn', '1954-02-20 00:00:00', '154 Trần Phú, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01298056374', '2012-05-27 03:28:49', '2012-05-27 03:28:49', 2),
(182, 'PhamDongQuan1412', '3663410a35b4494b140f609f4e386a00', 'Phạm Ðông Quân\r\n', 1, 'QUAN.14.12@yahoo.com.vn', '1980-12-14 00:00:00', '134 Nguyễn Thị Minh Khai, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01652979795', '2012-05-27 12:11:25', '2012-05-27 12:11:25', 2),
(183, 'tuan_2003', '0a05c48ed61422cdd5409f779f2c0b29', 'Lê Tuấn', 1, 'Tuan-2003-11-25@ymail.com', '2003-11-25 00:00:00', '237 Trần Kiết Tường, P. Thới An, Q. Ô Môn, TP. Cần Thơ', '01205390374', '2012-06-10 12:11:25', '2012-06-10 12:11:25', 2),
(184, 'BVCONG87', '4505186cf06b44c8bc73b5b33b55cc9c', 'Bùi Văn Công\r\n', 1, 'CONG01.01.1987@yahoo.com', '1987-01-01 00:00:00', '393 Mậu Thân, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '0887580459', '2012-06-10 13:07:08', '2012-06-10 13:07:08', 2),
(185, 'thuynga20041027', '6c4d4e57d07aff014fe04796e3a37792', 'Nguyễn Đoàn Thị Thúy Nga\r\n', 0, 'ngathuythidoannguyen271004@hotmail.com', '2004-10-27 00:00:00', '27A/349 Nguyễn Chí Thanh, P. Trà Nóc , Q. Bình Thủy, TP. Cần Thơ', '0948081930', '2012-06-20 13:07:08', '2012-06-20 13:07:08', 2),
(186, 'HOANDOVAN09022002', 'a90cbad303f1f4c6d3f9de05c139d4a2', 'Đỗ Văn Hoán\r\n', 1, 'DVHoan0902@hotmail.com', '2002-02-09 00:00:00', '128 Nguyễn Trãi, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01241704679', '2012-06-24 13:07:08', '2012-06-24 13:07:08', 2),
(187, 'HocDang.Nguyen_Khuyen1995', '0ba5e06fe5a9d6f71699268cf2eb3c12', 'Đặng Nguyễn Khuyến Học\r\n', 1, 'dnkhoc05101995@yahoo.com.vn', '1995-10-05 00:00:00', '245 QL1, P. Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01863295053', '2012-06-24 13:07:08', '2012-06-24 13:07:08', 2);
INSERT INTO `khachhang` (`kh_ma`, `kh_taiKhoan`, `kh_matKhau`, `kh_hoTen`, `kh_gioiTinh`, `kh_email`, `kh_ngaySinh`, `kh_diaChi`, `kh_dienThoai`, `kh_taoMoi`, `kh_capNhat`, `kh_trangThai`) VALUES
(188, 'phuoc.thien\r\n_1977.09.05', '636d549022c5683aff3167467e4b9995', 'Huỳnh Phước Thiện\r\n', 1, 'huynh.phuoc-thien77@ymail.com', '1977-09-05 00:00:00', '87 Nguyễn Thị Minh Khai, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0930483128', '2012-06-25 13:07:08', '2012-06-25 13:07:08', 2),
(189, 'pham.tiep.2003.07.02', 'e445cc949f9ca130ce1c44415335e9dc', 'Phạm Tiếp', 1, 'tieppham0207@yahoo.com', '2003-07-02 00:00:00', '81 Bùi Hữu Nghĩa, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '0986989861', '2012-06-25 17:09:08', '2012-06-25 17:09:08', 2),
(190, 'DUNGNGUYENTHITU19910227', 'b39a6ce3dee8928735823cc86dfd6d63', 'Nguyễn Thị Từ Dung\r\n', 0, 'dungnguyenthitu19910227@yahoo.com.vn', '1991-02-27 00:00:00', '362 Trương Văn Diễn, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '0973789872', '2012-07-20 17:09:08', '2012-07-20 17:09:08', 2),
(191, 'Nguyet-que\r\n-19960521', 'a797e8ce6d07716a1abc4a7c08d888cf', 'Nguyễn Nguyệt Quế\r\n', 0, 'Que96@outlook.com', '1996-05-21 00:00:00', '394 Ngô Quyền, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01267847091', '2012-07-24 17:09:08', '2012-07-24 17:09:08', 2),
(192, 'nmthao01', '3fd6778ef4ee6c369d0d23c71bc2aa87', 'Nguyễn Minh Thảo\r\n', 0, 'Thao.2001@yahoo.com.vn', '2001-12-18 00:00:00', '318 Nguyễn Văn Cừ, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '0929598050', '2012-07-28 17:09:08', '2012-07-28 17:09:08', 2),
(193, 'Nguyen_Nguyet_Hong.2000', 'b15b66d25442e70bffccf9fad779ff47', 'Nguyễn Nguyệt Hồng\r\n', 0, 'HONG00@yahoo.com', '2000-05-02 00:00:00', '351 CMT8, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '0898095767', '2012-07-28 17:09:08', '2012-07-28 17:09:08', 2),
(194, 'HUONG_XUAN\r\n-05', 'f041a24797e9da9895804159046e6685', 'Huỳnh Thị Hương Xuân\r\n', 0, 'XUANHUONGTHIHUYNH05@outlook.com', '2005-06-13 00:00:00', '97/337 QL91B, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01888296767', '2012-08-12 17:09:08', '2012-08-12 17:09:08', 2),
(195, 'tai.tran-luong99', '33acce2461fd527c48885957a6bdcc29', 'Trần Lương Tài\r\n', 1, 't-l-tai17_12@gmail.com.vn', '1999-12-17 00:00:00', '276 Hùng Vương, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '0989489904', '2012-08-12 19:37:22', '2012-08-12 19:37:22', 2),
(196, 'KhanhKimThiDang_0511', 'bdff03f2f1595c4e28acdeb68bba9517', 'Đặng Thị Kim Khánh\r\n', 0, 'KHANH_1985@gmail.com', '1985-11-05 00:00:00', '91 Trần Kiết Tường, P. Thới An, Q. Ô Môn, TP. Cần Thơ', '01279727531', '2012-08-25 19:37:22', '2012-08-25 19:37:22', 2),
(197, 'MyHaThiNguyen14071979', '59f6bc5a0f86ea8ea1a159e4477c7dc3', 'Nguyễn Thị Hà My\r\n', 0, 'nguyenthi-ha-my-1979@ymail.com', '1979-07-14 00:00:00', '19A/91 Trần Quang Diệu, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01633121101', '2012-08-25 22:37:19', '2012-08-25 22:37:19', 2),
(198, 'chi.tuyet.thi.nguyen_1996-09-17', 'b03e231097849ef459b86206964b526f', 'Nguyễn Thị Tuyết Chi\r\n', 0, 'NT.T_Chi1996@gmail.com', '1996-09-17 00:00:00', '110 QL1, P. Hưng Thạnh, Q. Cái Răng, TP. Cần Thơ', '01253837784', '2012-08-25 22:37:19', '2012-08-25 22:37:19', 2),
(199, 'hai251282', '5daed09f26890d30afe866326f0df698', 'Nguyễn Lý Thanh Hải\r\n', 1, 'hai_nguyen-ly.thanh_1982@yahoo.com', '1982-12-25 00:00:00', '297 Hòa Bình, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01257661614', '2012-08-26 20:34:23', '2012-08-26 20:34:23', 2),
(200, 'my_nguyen_phanthi_hai20050404', '3ad70af84eacca19cf9e75fa8b038ab6', 'Nguyễn Phan Thị Hải My\r\n', 0, 'haimy\r\n_04_04@gmail.com.vn', '2005-04-04 00:00:00', '368 CMT8, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01635736439', '2012-08-26 20:34:23', '2012-08-26 20:34:23', 2),
(201, 'minh19860808', '6947da2dbebe7977729ea11de1ccfc9a', 'Hứa Nguyễn Thị Nguyệt Minh\r\n', 0, 'minh.1986.08.08@hotmail.com', '1986-08-08 00:00:00', '383 Lê Hồng Phong, P. Trà An , Q. Bình Thủy, TP. Cần Thơ', '01695697342', '2012-09-15 20:34:23', '2012-09-15 20:34:23', 2),
(202, 'NguyenHoHuuBao.20021957', '3b8ae5dffffe996d76f32152b4148fe2', 'Nguyễn Hồ Hữu Bảo\r\n', 1, 'Bao570220@hotmail.com', '1957-02-20 00:00:00', '244 QL91, P. Châu Văn Liêm, Q. Ô Môn, TP. Cần Thơ', '01694223020', '2012-09-27 20:34:23', '2012-09-27 20:34:23', 2),
(203, 'TRIEU96', '0a16d8f227254c7898ed5b28d31096f3', 'Phan Trần Vương Triều\r\n', 1, 'PhanTranVuongTrieu130396@yahoo.com', '1996-03-13 00:00:00', '180/122 Trần Hưng Đạo, P. An Nghiệp, Q. Ninh Kiều, TP. Cần Thơ', '01238465848', '2012-09-28 01:56:02', '2012-09-28 01:56:02', 2),
(204, 'tiep1999', 'b3688a851b755a12dfe40a24a49e11d6', 'Nguyễn Duy Tiếp\r\n', 1, 'tiep.nguyen.duy99-05-25@ymail.com', '1999-05-25 00:00:00', '77 Tỉnh lộ 923, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01699005395', '2012-10-05 01:56:02', '2012-10-05 01:56:02', 2),
(205, 'le.phuoc_thien_2004.07.30', '34e963245adfee035c40dcc9500d0d0c', 'Lê Phước Thiện\r\n', 1, 'thien.le.phuoc-20040730@ymail.com', '2004-07-30 00:00:00', '254 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '0927213982', '2012-10-05 02:44:02', '2012-10-05 02:44:02', 2),
(206, 'CUONGVODUC78', 'd8902ac69f16e9c938dc2ea42aa360a2', 'Võ Ðức Cường\r\n', 1, 'cuong_ducvo_1978@yahoo.com', '1978-11-28 00:00:00', '193 Võ Văn Kiệt, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '01240775066', '2012-10-05 12:42:28', '2012-10-05 12:42:28', 2),
(207, 'khoat-bui_van_22_05_81', '62607e73d36dde9659dab7e27ff5ba67', 'Bùi Văn Khoát\r\n', 1, 'bv.khoat2205@yahoo.com.vn', '1981-05-22 00:00:00', '334 Bùi Minh Trực, P. Long Tuyền, Q. Bình Thủy, TP. Cần Thơ', '01244396503', '2012-10-06 12:42:28', '2012-10-06 12:42:28', 2),
(208, 'LE.SON28.05.1996', '9c7698918e83bff7fb122138186e30c4', 'Phan Lê Sơn', 1, 'SON-LE-PHAN-1996@outlook.com', '1996-05-28 00:00:00', '342 Đinh Công Chánh, P. Long Tuyền , Q. Bình Thủy, TP. Cần Thơ', '01263476701', '2012-10-07 12:42:28', '2012-10-07 12:42:28', 2),
(209, 'LHGIANG_14102003', 'd795a0cf21618b98e827a2a95e37df3f', 'Lê Hà Giang\r\n', 0, 'giang_leha_03@yahoo.com.vn', '2003-10-14 00:00:00', '19 Lộ Vòng Cung, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '0984786717', '2012-10-07 15:07:55', '2012-10-07 15:07:55', 2),
(210, 'N_T_V-Loi_78', 'a8f025e300cda27ce69f622d3cd85d89', 'Nguyễn Trần Văn Lợi\r\n', 1, 'Van_loi\r\n-78@outlook.com', '1978-05-29 00:00:00', '323 Võ Nguyên Giáp, P. Phú Thứ, Q. Cái Răng, TP. Cần Thơ', '09982321272', '2012-10-07 15:07:55', '2012-10-07 15:07:55', 2),
(211, 'NguyenVanTho90', 'df782071e29efe62a0f0485d4b3dddae', 'Nguyễn Văn Thọ\r\n', 1, 'Tho1990_05_01@gmail.com.vn', '1990-05-01 00:00:00', '62 Phan Đình Phùng, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01203544402', '2012-10-12 15:07:55', '2012-10-12 15:07:55', 2),
(212, 'THAONGUYEN\r\n.1988_11_22', '7eea50e52a14a8dad272178427446e63', 'Nguyễn Thị Thảo Nguyên\r\n', 0, 'NGUYEN1988@yahoo.com', '1988-11-22 00:00:00', '111/237 Lộ Vòng Cung, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '01675477037', '2012-10-18 15:07:55', '2012-10-18 15:07:55', 2),
(213, 'NguyenHuynhThiQuynhAnh0609', '0473d35c4fad63d7c16bc8fdfb5f13d0', 'Nguyễn Huỳnh Thị Quỳnh Anh\r\n', 0, 'anhquynh_thi-huynh_nguyen-1980@yahoo.com', '1980-09-06 00:00:00', '245 Huỳnh Phan Hộ, P. Bình Thủy , Q. Bình Thủy, TP. Cần Thơ', '01277957265', '2012-10-19 06:17:01', '2012-10-19 06:17:01', 2),
(214, 'CONGTUAN12.11.89', '4b4d1bc42e0f036afae89cbb643859cb', 'Trần Công Tuấn\r\n', 1, 'Congtuan891112@gmail.com', '1989-11-12 00:00:00', '102 Nguyễn An Ninh, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01202722854', '2012-11-13 06:17:01', '2012-11-13 06:17:01', 2),
(215, 'phuoc.son03.01', '36ea359547084b595812261b576dcc7a', 'Phạm Huỳnh Phước Sơn\r\n', 1, 'PHAMHUYNHPHUOC-SON03011982@gmail.com', '1982-01-03 00:00:00', '4E/282 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01281023058', '2012-11-21 06:17:01', '2012-11-21 06:17:01', 2),
(216, 'canhdaohuu911122', 'a0f564b47be11e90edfd0db27d7b7f84', 'Đào Hữu Canh\r\n', 1, 'Huucanh\r\n-91@hotmail.com', '1991-11-22 00:00:00', '124/257 Hòa Bình, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01277159056', '2012-11-22 06:17:01', '2012-11-22 06:17:01', 2),
(217, 'TRAN.LE.KIEU_THU08.09.29', 'c4d047274dbb157cfc02efd294a4cb5d', 'Trần Lê Kiều Thu\r\n', 0, 'thutran.lekieu.080929@hotmail.com', '1929-09-08 00:00:00', '82/296 Võ Nguyên Giáp, P. Phú Thứ, Q. Cái Răng, TP. Cần Thơ', '01691215349', '2012-11-22 06:17:01', '2012-11-22 06:17:01', 2),
(218, 'CHINH_VO-15_10', '1eac852ed1278b8423a670b46e7d9c6c', 'Võ Chính', 1, 'Vo-Chinh19981015@gmail.com', '1998-10-15 00:00:00', '330 QL1, P. Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01247741982', '2012-11-22 09:42:06', '2012-11-22 09:42:06', 2),
(219, 'THEUNGUYENTHIEN0111', '095c4c9dccacb6e01313442a42ac7bf5', 'Nguyễn Thiên Thêu\r\n', 0, 'Thien-theu\r\n.19791101@gmail.com', '1979-11-01 00:00:00', '288 Hoàng Văn Thụ, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01640462601', '2012-12-07 09:42:06', '2012-12-07 09:42:06', 2),
(220, 'PHAMTHANH-TU-610726', '40187498d120ddcbdcf3028566501baf', 'Phạm Thanh Tú\r\n', 1, 'tu260761@hotmail.com', '1961-07-26 00:00:00', '182/254 Võ Nguyên Giáp, P. Tân Phú, Q. Cái Răng, TP. Cần Thơ', '01228814019', '2012-12-11 09:42:06', '2012-12-11 09:42:06', 2),
(221, 'Nhu_bao\r\n.16-05', '6adb9f14fa9a7d3ec436ee59d8c9558e', 'Nguyễn Đàm Như Bảo\r\n', 0, 'NHUBAO1605@yahoo.com.vn', '1942-05-16 00:00:00', '13 Nguyễn Trãi, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01621886832', '2012-12-11 16:26:43', '2012-12-11 16:26:43', 2),
(222, 'UYEN99', '2b59ef7207beef3d4911decc1ef04eab', 'Phạm Bùi Thị Tú Uyên\r\n', 0, 'P-B-T-T-UYEN-02-08-1999@gmail.com.vn', '1999-08-02 00:00:00', '8 QL91, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '0986289189', '2012-12-26 16:26:43', '2012-12-26 16:26:43', 2),
(223, 'BNLONG231298', '544ce8cfec1ca07c33466bc7dd5d26b7', 'Bùi Nguyễn Long', 1, 'NGUYEN.LONG-981223@ymail.com', '1998-12-23 00:00:00', '154/300 Hoàng Văn Thụ, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01629538760', '2012-12-31 16:26:43', '2012-12-31 16:26:43', 2),
(224, 'MAI20040623', 'a9068ecee7ac81ea18ed29b362d75203', 'Võ Thị Mai\r\n', 0, 'VoThiMai040623@ymail.com', '2004-06-23 00:00:00', '210 Hai Bà Trưng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0962698674', '2013-01-09 16:26:43', '2013-01-09 16:26:43', 2),
(225, 'Vankhai180495', '0896a6aad796e464eac332285abd21c7', 'Nguyễn Bùi Văn Khải\r\n', 1, 'Khai1995@yahoo.com', '1995-04-18 00:00:00', '63 Tỉnh lộ 923, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01205248555', '2013-01-29 16:26:43', '2013-01-29 16:26:43', 2),
(226, 'VANPHU1985', '38ea4b3347fe393bed83edd233b12e46', 'Lê Đỗ Văn Phu\r\n', 1, 'LDVPhu130285@outlook.com', '1985-02-13 00:00:00', '266 Võ Văn Kiệt, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01211737930', '2013-01-29 22:33:02', '2013-01-29 22:33:02', 2),
(227, 'Quan1212', 'dd4cce6fcc76b0d2e6beab9b84860f2e', 'Nguyễn Thị Trúc Quân\r\n', 0, 'NGUYENTHI_TRUC-QUAN-12121990@gmail.com', '1990-12-12 00:00:00', '111/91 CMT8, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01889804205', '2013-02-13 22:33:02', '2013-02-13 22:33:02', 2),
(228, 'Thien_minh\r\n_15091998', '31eedc6e364f2bda1f49048e5eaa4718', 'Lại Thiện Minh\r\n', 1, 'minh15091998@yahoo.com', '1998-09-15 00:00:00', '223 Lộ Vòng Cung, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '0925180006', '2013-02-17 22:33:02', '2013-02-17 22:33:02', 2),
(229, 'p.csbang1954', '6b42f6d01cf81aae21689bab27750c34', 'Phạm Cao Sao Băng\r\n', 0, 'bang_pham_cao_sao.1954@ymail.com', '1954-07-15 00:00:00', '225 Trần Ngọc Quế, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '0885769638', '2013-03-08 22:33:02', '2013-03-08 22:33:02', 2),
(230, 'quy.lehong_04-03-84', '93040d681d0d744e26d8cfa8cb2cf9f0', 'Lê Hồng Quý\r\n', 1, 'QuyHongLe-1984@gmail.com.vn', '1984-03-04 00:00:00', '144 Hai Bà Trưng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0972813034', '2013-03-09 16:41:21', '2013-03-09 16:41:21', 2),
(231, 'TranNguyenDuc2907', 'd07bc01dff5a165c2e77314f7f26d4fb', 'Trần Nguyễn Ðức', 1, 'TN.DUC29.07.94@hotmail.com', '1994-07-29 00:00:00', '32 Nguyễn Trãi, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '0889155705', '2013-03-13 16:41:21', '2013-03-13 16:41:21', 2),
(232, 'Van_nhan\r\n.77', '1c6c9e37e4a1254ecbcd731f75d084bf', 'Vũ Văn Nhạn\r\n', 1, 'nhanvu-van-271177@gmail.com', '1977-11-27 00:00:00', '49/153 Huỳnh Phan Hộ, P. Trà An, Q. Bình Thủy, TP. Cần Thơ', '01887025381', '2013-03-13 17:48:53', '2013-03-13 17:48:53', 2),
(233, 'PHUONG.BICHNGUYEN-19770202', '341366b3d43614c2ec23014da3d502a7', 'Nguyễn Bích Phượng\r\n', 0, 'PhuongNguyenBich-02-02-77@gmail.com', '1977-02-02 00:00:00', '216 Lộ Vòng Cung, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '01230403854', '2013-03-14 04:06:29', '2013-03-14 04:06:29', 2),
(234, 'N_Tri20011105', 'f400fb53085cbef9cf6a8ba99edcfad5', 'Nguyễn Trí', 1, 'N-Tri05-11@outlook.com', '2001-11-05 00:00:00', '269 Nguyễn An Ninh, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01207839589', '2013-03-15 04:06:29', '2013-03-15 04:06:29', 2),
(235, 'L-T.NAM_2001', 'f9d0040dd324f455e65f52f29b03eaac', 'Lê Trần Nam', 1, 'tran_nam02092001@yahoo.com.vn', '2001-09-02 00:00:00', '57 QL91, P. Thới Hòa, Q. Ô Môn, TP. Cần Thơ', '01888209932', '2013-04-08 04:06:29', '2013-04-08 04:06:29', 2),
(236, 'VANNGUYENTHITUYET300882', '6f2a2ce0354945cb5d2a3b46c6a34c96', 'Nguyễn Thị Tuyết Vân\r\n', 0, 'nttvan1982@ymail.com', '1982-08-30 00:00:00', '151 QL91, P. Long Hưng, Q. Ô Môn, TP. Cần Thơ', '01244729370', '2013-04-08 06:28:32', '2013-04-08 06:28:32', 2),
(237, 'tramphuongnguyen-1995', 'c575f9d1635112578ef462faa38d473b', 'Nguyễn Phương Trâm\r\n', 0, 'tram_phuong_nguyen14_05_95@hotmail.com', '1995-05-14 00:00:00', '166D/9 QL91, P. Thới Hòa, Q. Ô Môn, TP. Cần Thơ', '01688816669', '2013-04-14 06:28:32', '2013-04-14 06:28:32', 2),
(238, 'Khai.01_09_03', '2c9b7de69d430c9593f709c8a8e0519c', 'Lý Thị Khai\r\n', 0, 'THI_KHAI\r\n_01@gmail.com.vn', '2001-09-03 00:00:00', '115 Trần Hưng Đạo, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '0917090842', '2013-04-14 12:04:25', '2013-04-14 12:04:25', 2),
(239, 'Nguyen-Tran_Phuong-Phi-30_04_2003', 'a3a16c3eef2eea5b0906f45673c776a0', 'Nguyễn Trần Phương Phi\r\n', 1, 'PHIPHUONG_TRANNGUYEN_03@yahoo.com.vn', '2003-04-30 00:00:00', '368 CMT8, P. An Thới , Q. Bình Thủy, TP. Cần Thơ', '01869059696', '2013-04-14 12:04:25', '2013-04-14 12:04:25', 2),
(240, 'chinhvannguyen271097', '8503d5e59755da5e8545ff2fbf471dfc', 'Nguyễn Văn Chinh\r\n', 1, 'CHINH97@hotmail.com', '1997-10-27 00:00:00', '324 Xô Viết Nghệ Tĩnh, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '0920451077', '2013-04-26 12:04:25', '2013-04-26 12:04:25', 2),
(241, 'MY_LOAN31_12', '5697eb961df98ad9692ec04cd889cc48', 'Nguyễn Đỗ Mỹ Loan\r\n', 0, 'LOANNGUYEN-DO-MY3112@yahoo.com.vn', '1945-12-31 00:00:00', '61 Nguyễn Văn Linh, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01869303558', '2013-05-01 12:04:25', '2013-05-01 12:04:25', 2),
(242, 'Dung_Tuan_Do01.08', 'b669e9ac92476469a4dd2f7edf2a1ffa', 'Đỗ Tuấn Dũng\r\n', 1, 'DUNG.98_08_01@outlook.com', '1998-08-01 00:00:00', '189 Nguyễn Trãi, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01213565751', '2013-05-03 12:04:25', '2013-05-03 12:04:25', 2),
(243, 'BINHNGUYEN_XUAN.86_08_20', 'aab95b022bdeb08ee6edb0b6a37cbfaf', 'Nguyễn Xuân Bình\r\n', 1, 'xuanbinh86@yahoo.com', '1986-08-20 00:00:00', '313 Võ Văn Kiệt, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01869748038', '2013-05-04 12:04:25', '2013-05-04 12:04:25', 2),
(244, 'VO_NGUYENNGHI_LUC-1993', '3a5aee675836fe079e0f71f2ddc88186', 'Võ Nguyễn Nghị Lực\r\n', 1, 'VONGUYENNGHI.LUC.930420@yahoo.com', '1993-04-20 00:00:00', '181A/2 CMT8, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '0961507387', '2013-05-08 12:04:25', '2013-05-08 12:04:25', 2),
(245, 'VY210642', '42051ab2e72246f58a6cd0630c8859b1', 'Trần Thị Ðông Vy\r\n', 0, 'TRAN.THIDONGVY-21.06.1942@gmail.com', '1942-06-21 00:00:00', '284 QL91B, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01665925846', '2013-05-08 12:35:00', '2013-05-08 12:35:00', 2),
(246, 'V-TP-THUY.2000.01.26', '4899882da58a4512d3bd8d4529d87fc9', 'Võ Thị Phương Thủy\r\n', 0, 'THUYVO.THI.PHUONG26.01.00@yahoo.com.vn', '2000-01-26 00:00:00', '22 Huỳnh Phan Hộ, P. Trà An, Q. Bình Thủy, TP. Cần Thơ', '0931403641', '2013-05-20 12:35:00', '2013-05-20 12:35:00', 2),
(247, 'PHANLUCBINH1982', '218d6c3a076f3194fbbbc7e42c7bc16f', 'Phan Lục Bình\r\n', 0, 'plbinh-03_01_1982@yahoo.com', '1982-01-03 00:00:00', '60 Lê Hồng Phong, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '0937182787', '2013-05-23 12:35:00', '2013-05-23 12:35:00', 2),
(248, 'N-T.Quyen12.12.1946', '6217b1760c54ba6bd7351d80366c0b26', 'Ngô Thị Quyên\r\n', 0, 'NgoThiQuyen461212@hotmail.com', '1946-12-12 00:00:00', '10/236 Nguyễn Văn Linh, P. Long Tuyền , Q. Bình Thủy, TP. Cần Thơ', '01654035076', '2013-05-23 12:35:00', '2013-05-23 12:35:00', 2),
(249, 'NguyenSon_Lam_18_08_2004', '3134283941aefca8982d8638cd949568', 'Nguyễn Sơn Lâm\r\n', 1, 'n_s.lam.04_08_18@outlook.com', '2004-08-18 00:00:00', '146 QL91, P. Châu Văn Liêm, Q. Ô Môn, TP. Cần Thơ', '01245553630', '2013-06-11 12:35:00', '2013-06-11 12:35:00', 2),
(250, 'Vi.Le-Huynh.Khoi-86-01-04', '10ed9bcacb442f9592c4b4d68c7fe0ae', 'Lê Huỳnh Khôi Vĩ\r\n', 1, 'VILE.HUYNHKHOI860104@gmail.com.vn', '1986-01-04 00:00:00', '49 Trần Phú, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '0963342990', '2013-06-13 12:35:00', '2013-06-13 12:35:00', 2),
(251, 'l-t_tminh-1992', 'd360f7c58684791917ea14b90be694c3', 'Lê Trần Trí Minh\r\n', 1, 'LTTMINH19920617@yahoo.com', '1992-06-17 00:00:00', '330 3/2, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01998926401', '2013-06-15 12:35:00', '2013-06-15 12:35:00', 2),
(252, 'tnt-dnuong900716', '311e2b79b3e7ab9b66bd34306b20d922', 'Trịnh Nguyễn Thị Duyên Nương\r\n', 0, 'nuongduyenthinguyentrinh1990@yahoo.com.vn', '1990-07-16 00:00:00', '173 Lê Hồng Phong, P. Trà Nóc, Q. Bình Thủy, TP. Cần Thơ', '01233753914', '2013-06-15 18:22:43', '2013-06-15 18:22:43', 2),
(253, 'dinh.nguyen-tuong_linh.77', '3dd94a7f6f3ebb9272f207839cc36a7c', 'Đinh Nguyễn Tường Lĩnh\r\n', 1, 'D.N_T_Linh-19770807@yahoo.com.vn', '1977-08-07 00:00:00', '81A/96 Ngô Quyền, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01883061002', '2013-06-15 19:07:35', '2013-06-15 19:07:35', 2),
(254, 'binhtattran_nguyen1992', '77b4debda5a7d584d09bd790b89c9c74', 'Nguyễn Trần Tất Bình\r\n', 1, 'N.T.TBinh.92@yahoo.com', '1992-12-22 00:00:00', '208 Lê Lợi, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '0927182513', '2013-06-15 22:47:59', '2013-06-15 22:47:59', 2),
(255, 'nguyenthien.manh.97', 'f355658afb7540728de98162d48e6bfe', 'Nguyễn Thiên Mạnh\r\n', 1, 'thien_manh\r\n-0810@yahoo.com', '1997-10-08 00:00:00', '69 Nguyễn An Ninh, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0984083827', '2013-06-18 22:47:59', '2013-06-18 22:47:59', 2),
(256, 'TU64', 'f17496aee27e6f19d01c3a85f673e6b7', 'Nguyễn Nhân Từ\r\n', 1, 'Tu-Nguyen-Nhan1964_02_10@ymail.com', '1964-02-10 00:00:00', '141 QL1, P. Hưng Thạnh, Q. Cái Răng, TP. Cần Thơ', '0983199355', '2013-06-23 22:47:59', '2013-06-23 22:47:59', 2),
(257, 'nk.thinh880124', '5c6effc9895cdc33345108e7d5940eb4', 'Nguyễn Kim Thịnh\r\n', 1, 'N_K_THINH_880124@hotmail.com', '1988-01-24 00:00:00', '228 Nguyễn An Ninh, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01886870120', '2013-06-24 22:47:59', '2013-06-24 22:47:59', 2),
(258, 'Hongchau27_08_1984', '5469219a6a3bb2f89a0ddce8bc1f1e0d', 'Đặng Nguyễn Hồng Châu\r\n', 0, 'DangNguyenHongChau1984@outlook.com', '1984-08-27 00:00:00', '350 Hoàng Văn Thụ, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01226620469', '2013-06-28 22:47:59', '2013-06-28 22:47:59', 2),
(259, 'Duy_hung1984_10_29', '75725c3400f32b5bb2355e12c5a874b5', 'Võ Duy Hùng\r\n', 1, 'VO_DUY_HUNG_29_10@yahoo.com', '1984-10-29 00:00:00', '43 30/4, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01261468891', '2013-06-28 22:47:59', '2013-06-28 22:47:59', 2),
(260, 'Hongquang02-01-14', '91acddf7c735c4386549be1f0f62fcc4', 'Vũ Hồng Quang\r\n', 1, 'QUANG02@outlook.com', '2002-01-14 00:00:00', '2 Võ Văn Kiệt, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01206444818', '2013-06-29 22:47:59', '2013-06-29 22:47:59', 2),
(261, 'pdtdtrang05', '6db57caf4d0e2ac9cf60818dbfc3bade', 'Phạm Đặng Thị Đoan Trang\r\n', 0, 'PHAMDANG_THI.DOAN-TRANG_2005@gmail.com.vn', '2005-12-26 00:00:00', '150 Nguyễn Truyền Thanh, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '0915307391', '2013-07-04 22:47:59', '2013-07-04 22:47:59', 2),
(262, 'PHANTHIBACHCUC1997', 'eb9d1babf44b107e8815f2dab16f7bad', 'Phan Thị Bạch Cúc\r\n', 0, 'bach.cuc\r\n.16-11-1997@hotmail.com', '1997-11-16 00:00:00', '85 QL1, P. Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01864122403', '2013-07-05 22:47:59', '2013-07-05 22:47:59', 2),
(263, 'Quang_12.04.40', 'd2f7d97b38acfa5148747fc9988fc6ce', 'Nguyễn Nhật Quang\r\n', 1, 'quang40@gmail.com', '1940-04-12 00:00:00', '388 Nguyễn Văn Cừ, P. An Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0938186258', '2013-07-21 22:47:59', '2013-07-21 22:47:59', 2),
(264, 'HD.SON03', '772d7c165a45d3531cd7dd6666755516', 'Hứa Ðông Sơn\r\n', 1, 'Son-Hua_Dong2003@hotmail.com', '2003-09-04 00:00:00', '375 Nguyễn Chí Thanh, P. Thới An Đông, Q. Bình Thủy, TP. Cần Thơ', '01289645891', '2013-08-12 22:47:59', '2013-08-12 22:47:59', 2),
(265, 'Dang.dat\r\n_88', '303422f52dbdafb8c7ae6e3675d08b60', 'Trần Ðăng Ðạt\r\n', 1, 'datdangtran88@hotmail.com', '1988-04-10 00:00:00', '135 Xô Viết Nghệ Tĩnh, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '0921391774', '2013-08-19 22:47:59', '2013-08-19 22:47:59', 2),
(266, 'KYTRUONG-NGUYEN19910507', '62d741a98c0503412e4aea3ef61aa9cf', 'Nguyễn Trường Kỳ\r\n', 1, 'Nguyen_Truong-Ky19910507@outlook.com', '1991-05-07 00:00:00', '56 Lý Tự Trọng, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01231239203', '2013-08-23 22:47:59', '2013-08-23 22:47:59', 2),
(267, 'TDTKThu28061983', '704fdf78c1b63bd89bafb43496174f41', 'Trần Đỗ Thị Kim Thu\r\n', 0, 'ThuKimThiDoTran830628@yahoo.com.vn', '1983-06-28 00:00:00', '31/141 Hai Bà Trưng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01277402511', '2013-08-25 22:47:59', '2013-08-25 22:47:59', 2),
(268, 'vankhanh20030211', '608772ba663b9737362d3a4c914f151c', 'Võ Văn Khanh\r\n', 1, 'vvkhanh11022003@gmail.com.vn', '2003-02-11 00:00:00', '194 Nguyễn Văn Cừ, P. An Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0976977995', '2013-08-26 01:51:03', '2013-08-26 01:51:03', 2),
(269, 'ta_hien99.07.01', '2369b1b81835c2cd59f482efd2e19c3f', 'Trần Phan Tạ Hiền\r\n', 1, 'Hien_19990701@ymail.com', '1999-07-01 00:00:00', '113 Võ Văn Kiệt, P. Bình Thủy , Q. Bình Thủy, TP. Cần Thơ', '01699017097', '2013-08-26 05:29:06', '2013-08-26 05:29:06', 2),
(270, 'thainguyen\r\n_1980.05.03', '2f4db8a2c3e23f54ddeb8ea4b327c74f', 'Nguyễn Thái Nguyên\r\n', 1, 'nguyenthainguyen80@hotmail.com', '1980-05-03 00:00:00', '53 Mậu Thân, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01620063284', '2013-08-26 07:25:51', '2013-08-26 07:25:51', 2),
(271, 'Nga-Nguyen_Bich-92', '1a64ddaec1be5ccd96b6549feddbe5ad', 'Nguyễn Bích Nga\r\n', 0, 'nganguyen-bich1992-09-14@ymail.com', '1992-09-14 00:00:00', '189 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01666181420', '2013-09-12 07:25:51', '2013-09-12 07:25:51', 2),
(272, 'THANH140881', '1b44dfefee583348b8d6b2836a3d8fd8', 'Mã Nhã Thanh\r\n', 0, 'ma.nha_thanh_1981_08_14@hotmail.com', '1981-08-14 00:00:00', '292 Bùi Hữu Nghĩa, P. Long Hòa , Q. Bình Thủy, TP. Cần Thơ', '0976469611', '2013-09-12 11:39:09', '2013-09-12 11:39:09', 2),
(273, 'NGUYEN_VIETKHANG.0502', '3212bcb85467f4eb7c555f20d69d900e', 'Nguyễn Việt Khang\r\n', 1, 'KhangViet_Nguyen-05_02_1941@gmail.com.vn', '1941-02-05 00:00:00', '323 Nguyễn Trãi, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01265536773', '2013-10-07 11:39:09', '2013-10-07 11:39:09', 2),
(274, 'TienHaThiDang0707', 'c7b174eaafd0ecf321e92b9f097520b8', 'Đặng Thị Hạ Tiên\r\n', 0, 'TIEN.07071996@yahoo.com.vn', '1996-07-07 00:00:00', '387 Xô Viết Nghệ Tĩnh, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '09989698506', '2013-10-07 11:39:09', '2013-10-07 11:39:09', 2),
(275, 'PhamThanhTung0508', '4922b45dc10830dbac71342d9d4e41a1', 'Phạm Thanh Tùng\r\n', 1, 'PT.Tung.0508@hotmail.com', '2004-08-05 00:00:00', '254 Trần Kiết Tường, P. Thới An, Q. Ô Môn, TP. Cần Thơ', '01631785215', '2013-10-12 11:39:09', '2013-10-12 11:39:09', 2),
(276, 'NguyenChung-Thuy.930224', '70e7a469e71a703524c096d829900604', 'Nguyễn Chung Thủy\r\n', 1, 'Thuy_24021993@hotmail.com', '1993-02-24 00:00:00', '116 Nguyễn Trãi, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01668103968', '2013-10-12 11:39:09', '2013-10-12 11:39:09', 2),
(277, 'VYPHUONGPHAM-2303', 'c2fb204dff3b57dd0b1e447fb86b6a61', 'Phạm Phượng Vy\r\n', 0, 'VY44@ymail.com', '1944-03-23 00:00:00', '12 Võ Văn Tần, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01662659271', '2013-10-13 11:39:09', '2013-10-13 11:39:09', 2),
(278, 'bui.huongbinh.81', '1c0cb41ab4302cef5f460b232d2b6d35', 'Bùi Hướng Bình\r\n', 1, 'B.H.Binh.19-10-81@yahoo.com', '1981-10-19 00:00:00', '48 Nguyễn Thị Minh Khai, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01635544295', '2013-10-13 14:38:33', '2013-10-13 14:38:33', 2),
(279, 'nbloan74', 'f7322dfaa529de8be57de782ddb87977', 'Nguyễn Bích Loan\r\n', 0, 'LOANBICHNGUYEN74.09.22@yahoo.com', '1974-09-22 00:00:00', '302 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01264116225', '2013-10-28 14:38:33', '2013-10-28 14:38:33', 2),
(280, 'htsinh-03', '21b5df1e59aa949db999d89383edf388', 'Hồ Triển Sinh\r\n', 1, 'ht-sinh.10.03.2003@gmail.com', '2003-03-10 00:00:00', '112B/233 Nguyễn Thị Minh Khai, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01271060264', '2013-10-30 14:38:33', '2013-10-30 14:38:33', 2),
(281, 'VTBPHUONG050818', '5b750ef7b5a68873fdf8cc9f3b4cc5be', 'Vũ Thị Bích Phượng\r\n', 0, 'PHUONGVU-THIBICH18082005@gmail.com', '2005-08-18 00:00:00', '273 QL1, P. Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '0918784020', '2013-11-16 14:38:33', '2013-11-16 14:38:33', 2),
(282, 'nam-vohuu1801', '55035deab8760d6dfd35c1aa39384115', 'Võ Hữu Nam\r\n', 1, 'nam_vo_huu93@ymail.com', '1993-01-18 00:00:00', '10/323 Quang Trung, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01863244509', '2013-11-17 14:38:33', '2013-11-17 14:38:33', 2),
(283, 'D.T.L.Nhi.2001.05.25', '9d08ab9b9997e41cd75fa39218b9c2f5', 'Đào Thị Lệ Nhi\r\n', 0, 'Nhi_Le_Thi_Dao-2001@hotmail.com', '2001-05-25 00:00:00', '318 30/4, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '0965697872', '2013-11-18 00:54:55', '2013-11-18 00:54:55', 2),
(284, 'PHUONGNGO_QUOC.85', 'bbd2f4e3017238b150286fb0fe9b601f', 'Ngô Quốc Phương\r\n', 1, 'phuongngoquoc28111985@hotmail.com', '1985-11-28 00:00:00', '26A/333 CMT8, P. Bùi Hữu Nghĩa, Q. Bình Thủy, TP. Cần Thơ', '0960073346', '2013-11-18 00:54:55', '2013-11-18 00:54:55', 2),
(285, 'HONG26111986', '103ca7d6dc40a0fc39fb894d1fa0a154', 'Trần Như Hồng\r\n', 0, 'HongTran.Nhu1986@gmail.com', '1986-11-26 00:00:00', '145/397 Nguyễn Trãi, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01633795114', '2013-11-18 00:54:55', '2013-11-18 00:54:55', 2),
(286, 'THUHOAI0609', 'd2e99f91ad09aba7f74f71b6bf0871dd', 'Trần Thị Thu Hoài\r\n', 0, 'HOAI-06-09-40@outlook.com', '1940-09-06 00:00:00', '262 Nguyễn Văn Linh, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01245290064', '2013-12-11 00:54:55', '2013-12-11 00:54:55', 2),
(287, 'hoa_78', '41a8e2f4068ed59f35db53a01474de89', 'Nguyễn Phan Ðức Hòa\r\n', 1, 'NPDHoa78@ymail.com', '1978-06-14 00:00:00', '345 Nguyễn An Ninh, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01627965987', '2013-12-11 03:47:11', '2013-12-11 03:47:11', 2),
(288, 'TRIEUTU99', 'ae970d6546cc42ad8e0938c6a8fc7f59', 'Vũ Triệu Tú', 1, 'tu-trieu-vu_02_10@yahoo.com', '1999-10-02 00:00:00', '379 Tỉnh lộ 923, P. Trường Lạc, Q. Ô Môn, TP. Cần Thơ', '01288821531', '2013-12-11 04:13:10', '2013-12-11 04:13:10', 2),
(289, 'Xuan-quy\r\n.2003-08-19', '0a4300810f984964a1b68ee4ca1c86bf', 'Nguyễn Xuân Quý\r\n', 1, 'N.XQuy.2003@hotmail.com', '2003-08-19 00:00:00', '183/45 Võ Văn Kiệt, P. Bình Thủy , Q. Bình Thủy, TP. Cần Thơ', '01645350679', '2014-01-05 04:13:10', '2014-01-05 04:13:10', 2),
(290, 'HIEU_57', '67e179215b32b3afcfb8c88d432e248e', 'Huỳnh Thị Thanh Hiếu\r\n', 0, 'Hieu.57-01-05@yahoo.com', '1957-01-05 00:00:00', '78 Lộ Vòng Cung, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '0989527374', '2014-01-23 04:13:10', '2014-01-23 04:13:10', 2),
(291, 'DIEP-BUUNGUYEN-1978', '036c91940a1032224216ebed1f81675c', 'Nguyễn Bửu Diệp\r\n', 1, 'N.B_Diep_78-01-10@gmail.com.vn', '1978-01-10 00:00:00', '35A/237 Bùi Hữu Nghĩa, P. Long Hòa , Q. Bình Thủy, TP. Cần Thơ', '0945806982', '2014-02-09 04:13:10', '2014-02-09 04:13:10', 2),
(292, 'QUANBICH_THICU_97', 'd980377460b88cafd47529f1db89c197', 'Cù Thị Bích Quân\r\n', 0, 'quan_97@yahoo.com', '1997-09-24 00:00:00', '321 Xô Viết Nghệ Tĩnh, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01209923966', '2014-02-12 04:13:10', '2014-02-12 04:13:10', 2),
(293, 'Le_01.11', '1bb10b9d56a3b8a817c669e59f8e6911', 'Phạm Đoàn Văn Lễ\r\n', 1, 'LE.VAN_DOAN_PHAM.1996.11.01@ymail.com', '1996-11-01 00:00:00', '109H/262 Mậu Thân, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '0978328802', '2014-02-18 04:13:10', '2014-02-18 04:13:10', 2),
(294, 'doantu19740205', 'f06ae4c737f7a991ca3abf966d3c9f6a', 'Nguyễn Ðoàn Tụ\r\n', 1, 'DOAN_TU\r\n_74@outlook.com', '1974-02-05 00:00:00', '237 Bùi Hữu Nghĩa, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01202003460', '2014-02-18 17:27:04', '2014-02-18 17:27:04', 2),
(295, 'HIEUMINH20031121', '3434d6ec3a21114f47c85a51f1ddc4b4', 'Nguyễn Thị Hiếu Minh\r\n', 0, 'MINH-NGUYEN.THI.HIEU_21_11@gmail.com', '2003-11-21 00:00:00', '197 Ngô Gia Tự, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '0919502851', '2014-02-18 17:27:04', '2014-02-18 17:27:04', 2),
(296, 'h_lnhi26.09.2004', 'df01e9e320d6032286fbf059786612c2', 'Huỳnh Linh Nhi\r\n', 0, 'nhilinh_huynh-04_09_26@yahoo.com', '2004-09-26 00:00:00', '314 Nguyễn Trãi, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01649227770', '2014-02-19 00:18:38', '2014-02-19 00:18:38', 2),
(297, 'HOA_82', 'e0423a782ad967e1a1f158e788d450e1', 'Phạm Phúc Hòa\r\n', 1, 'HOA-19820519@hotmail.com', '1982-05-19 00:00:00', '195 Lê Hồng Phong, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01202048731', '2014-03-11 00:18:38', '2014-03-11 00:18:38', 2),
(298, 'nhuhao\r\n_170398', 'c7ea4a99e8db3e3f1c0d2a266ebba223', 'Phan Như Hảo\r\n', 0, 'PhanNhu_Hao19980317@gmail.com.vn', '1998-03-17 00:00:00', '128 Bùi Minh Trực, P. Long Tuyền, Q. Bình Thủy, TP. Cần Thơ', '0894249035', '2014-03-18 00:18:38', '2014-03-18 00:18:38', 2),
(299, 'Van1998', 'e19fdfbb01b57609eea4fb3aaea73b8a', 'Võ Thúy Vân\r\n', 0, 'Thuy-van\r\n_98@ymail.com', '1998-07-26 00:00:00', '66/397 QL1, P. Hưng Thạnh, Q. Cái Răng, TP. Cần Thơ', '0979636384', '2014-03-18 00:18:38', '2014-03-18 00:18:38', 2),
(300, 'hai-2005-09-14', 'ff046a34a014a47f262b0c963d8f38e6', 'Trần Quang Hải\r\n', 1, 'tranquanghai140905@yahoo.com', '2005-09-14 00:00:00', '191 Đinh Công Chánh, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '0923640891', '2014-03-18 05:12:04', '2014-03-18 05:12:04', 2),
(301, 'Nguyen_Khoat.2911', 'da34279c1957748908e2c91cba7a8ac7', 'Nguyễn Khoát', 1, 'KHOATNGUYEN29.11.92@yahoo.com.vn', '1992-11-29 00:00:00', '81/203 Phan Đình Phùng, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01205795901', '2014-03-18 07:33:37', '2014-03-18 07:33:37', 2),
(302, 'vu-1981-12-08', '84b55ebaf22cc1df2ad142c7dfe619dc', 'Phạm Minh Vu\r\n', 1, 'VuPhamMinh1981.12.08@yahoo.com', '1981-12-08 00:00:00', '399 Mậu Thân, P. An Nghiệp, Q. Ninh Kiều, TP. Cần Thơ', '01204880354', '2014-03-18 09:48:16', '2014-03-18 09:48:16', 2),
(303, 'NTGIANG2708', '5e3683a1697268b4b455fa5cef6bf4f2', 'Nguyễn Thiên Giang\r\n', 0, 'GIANG19880827@gmail.com.vn', '1988-08-27 00:00:00', '384 Thái Thị Hạnh, P. Long Hưng, Q. Ô Môn, TP. Cần Thơ', '0977731450', '2014-03-18 11:30:42', '2014-03-18 11:30:42', 2),
(304, 'NVDAN87', '53dbbd39bb54964cc3b2be0abc77e5f7', 'Nguyễn Vũ Dân', 1, 'DanVu-Nguyen870602@outlook.com', '1987-06-02 00:00:00', '63/3/385 Quang Trung, P.  Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01693752409', '2014-04-06 11:30:42', '2014-04-06 11:30:42', 2),
(305, 'PHAMGIA.HUNG.13051950', 'de757bf200343f13a4ea6ccfc0be4b8c', 'Phạm Gia Hùng\r\n', 1, 'PHAM.GIA.HUNG_50.05.13@ymail.com', '1950-05-13 00:00:00', '217 Huỳnh Phan Hộ, P. Bình Thủy , Q. Bình Thủy, TP. Cần Thơ', '01203469289', '2014-04-06 11:30:42', '2014-04-06 11:30:42', 2),
(306, 'THINHNGUYENBA2004', '1d681758e2d0c38864c8399f08aaf023', 'Nguyễn Bá Thịnh\r\n', 1, 'Thinh14-06@gmail.com', '2004-06-14 00:00:00', '15 Mậu Thân, P. An Nghiệp, Q. Ninh Kiều, TP. Cần Thơ', '01880532026', '2014-04-21 11:30:42', '2014-04-21 11:30:42', 2),
(307, 'Viet.Nguyen_TranHoai_03081977', '1dcfe059b44ba6f0470ad4c7b4910c75', 'Nguyễn Trần Hoài Việt\r\n', 1, 'Nguyen_TranHoai-Viet.1977@gmail.com.vn', '1977-08-03 00:00:00', '339 Bùi Hữu Nghĩa, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '0896199723', '2014-04-21 11:30:42', '2014-04-21 11:30:42', 2),
(308, 'PhuDuong-Le-2004', '0bd69417765c496f27a41546cb5348cc', 'Dương Lê Phu', 1, 'phu.le.duong-2004@gmail.com', '2004-05-11 00:00:00', '9B/247 Trần Hưng Đạo, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '09951862280', '2014-05-16 11:30:42', '2014-05-16 11:30:42', 2),
(309, 'thynguyen_thi-ai-12041979', '0ea3515e4a3a67f73f28ec62cb0138ff', 'Nguyễn Thị Ái Thy\r\n', 0, 'Thy-Ai-ThiNguyen12041979@yahoo.com.vn', '1979-04-12 00:00:00', '14A/154 30/4, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01656504023', '2014-05-19 11:30:42', '2014-05-19 11:30:42', 2),
(310, 'Toan-Phan73', '56be241628b8cfdfdd89e87b0696e677', 'Phan Toàn', 1, 'toan_phan-1973@hotmail.com', '1973-11-26 00:00:00', '320 QL1, P. Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01686034294', '2014-05-20 11:30:42', '2014-05-20 11:30:42', 2),
(311, 'Du-Van.Thi-Dang.Tran-1988.11.25', '56383623b0697f65439322ac00de365d', 'Trần Đặng Thị Vân Du\r\n', 0, 'Du251188@yahoo.com.vn', '1988-11-25 00:00:00', '71 Mậu Thân, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01275191303', '2014-05-20 12:09:30', '2014-05-20 12:09:30', 2),
(312, 'DAO91.09.18', '4dcd9d66d94b5256336dbd922f221467', 'Trần Nguyễn Ðạo', 1, 'nguyen-dao-1809@yahoo.com', '1991-09-18 00:00:00', '384 Phan Văn Trị, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01629430243', '2014-05-20 14:32:28', '2014-05-20 14:32:28', 2),
(313, 'phuongnguyenlan021186', '2b6258d50158bf29051a6c9a4aeb0185', 'Nguyễn Lan Phương\r\n', 0, 'phuongnguyen_lan86@yahoo.com', '1986-11-02 00:00:00', '49 Võ Nguyên Giáp, P. Phú Thứ, Q. Cái Răng, TP. Cần Thơ', '01886570638', '2014-06-14 14:32:28', '2014-06-14 14:32:28', 2),
(314, 'DuongTran-Binh_07.12', '79aa0e1c3797e188c14c00f9cd8183c4', 'Trần Bình Dương\r\n', 1, 'DUONG1993@gmail.com', '1993-12-07 00:00:00', '198/107 QL1, P. Thường Thạnh, Q. Cái Răng, TP. Cần Thơ', '09942232700', '2014-06-14 16:18:23', '2014-06-14 16:18:23', 2),
(315, 'Thinh.Pham.Gia.19011999', 'be788d8dff8f531318e9813709f0bd98', 'Phạm Gia Thịnh\r\n', 1, 'thinh-pham-gia-19011999@yahoo.com', '1999-01-19 00:00:00', '38/2 Trần Phú, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '0898392876', '2014-06-14 20:34:49', '2014-06-14 20:34:49', 2),
(316, 'NGUYENNGUYENHONG20010611', '553b361bd7823ffc2c00a7536a526d9f', 'Nguyễn Nguyên Hồng\r\n', 0, 'hong-2001-06-11@ymail.com', '2001-06-11 00:00:00', '47/258 Lý Tự Trọng, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '0976875258', '2014-07-06 20:34:49', '2014-07-06 20:34:49', 2),
(317, 'LIEMCAO2004', '1012d79f1d6990445352a02fb8428c8b', 'Cao Liêm', 1, 'liem2004@outlook.com', '2004-11-02 00:00:00', '88 Nguyễn Thị Minh Khai, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01237860475', '2014-07-12 20:34:49', '2014-07-12 20:34:49', 2),
(318, 'HUYNHBINHDINH10051992', '60a6b8dde9dfcf09b70fb65d23c1579f', 'Huỳnh Bình Ðịnh\r\n', 1, 'dinhhuynh.binh920510@gmail.com.vn', '1992-05-10 00:00:00', '208 30/4, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01204944775', '2014-07-13 05:18:15', '2014-07-13 05:18:15', 2),
(319, 'danpham-linh-2004', '23dd1eb99ea7d27f78caaff940b8db19', 'Phạm Linh Ðan\r\n', 0, 'phamlinhdan18042004@hotmail.com', '2004-04-18 00:00:00', '217 Nguyễn Văn Cừ, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01699562641', '2014-07-14 05:18:15', '2014-07-14 05:18:15', 2),
(320, 'LE16122005', 'b9b26306af17f00d0d7f01d9c5a47528', 'Nguyễn Thị Phượng Lệ\r\n', 0, 'NT.P_LE-16-12-05@ymail.com', '2005-12-16 00:00:00', '63/130 Quang Trung, P.  Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '09981608416', '2014-07-14 21:01:29', '2014-07-14 21:01:29', 2),
(321, 'TruongMinhThai230792', '75d364ed69adcc68347cf9da7ee13b3f', 'Trương Minh Thái\r\n', 1, 'truong-minhthai23.07.92@yahoo.com', '1992-07-23 00:00:00', '15/15 CMT8, P. Bùi Hữu Nghĩa, Q. Bình Thủy, TP. Cần Thơ', '0987232196', '2014-07-15 21:01:29', '2014-07-15 21:01:29', 2),
(322, 'Lam_Da.Yen-78', '83ba3dafa6a6cb6e0cae2412a50c2328', 'Lâm Dạ Yến\r\n', 0, 'lamda_yen15.05@gmail.com', '1978-05-15 00:00:00', '73/276 Quang Trung, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01863031015', '2014-07-26 21:01:29', '2014-07-26 21:01:29', 2),
(323, 'dlthtran120283', 'dc383dbbdc3ebef9ae04983a7dc21dda', 'Đàm Lâm Thị Huyền Trân\r\n', 0, 'Tran1202@ymail.com', '1983-02-12 00:00:00', '386 3/2, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01272496678', '2014-08-01 21:01:29', '2014-08-01 21:01:29', 2),
(324, 'NGAMY-THILE-1106', '67d25c5956350650a4760bf0e5f95a4c', 'Lê Thị Mỹ Nga\r\n', 0, 'Le.Thi.My-Nga-38-06-11@gmail.com.vn', '1938-06-11 00:00:00', '152 QL91, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01674575565', '2014-08-01 23:13:45', '2014-08-01 23:13:45', 2),
(325, 'PHAN_DAM.THANH-MINH-19.08.77', 'ab238643eb9e6095c44f9413694f38a2', 'Phan Đàm Thanh Minh\r\n', 1, 'Phan-DamThanhMinh-770819@hotmail.com', '1977-08-19 00:00:00', '49D/9 Đinh Tiên Hoàng, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01228739896', '2014-08-07 23:13:45', '2014-08-07 23:13:45', 2),
(326, 'DaoHungHo94', 'a80fcc4347da4ae288c2b35ee4d67477', 'Hồ Hưng Ðạo\r\n', 1, 'H_HDAO.03.06@yahoo.com', '1994-06-03 00:00:00', '59 Xô Viết Nghệ Tĩnh, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01260809445', '2014-08-16 23:13:45', '2014-08-16 23:13:45', 2),
(327, 'Tuyet_hoa1999_08_27', '859782086424a918473e82660a12d31b', 'Trần Thị Tuyết Hoa\r\n', 0, 'TRAN_THI_TUYET-HOA27-08-99@gmail.com', '1999-08-27 00:00:00', '214 Trần Phú, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '0972429009', '2014-08-17 23:13:45', '2014-08-17 23:13:45', 2),
(328, 'thu.hong.lamnguyen030804', '7e470a2bfadc613800d77977f6ce0e14', 'Nguyễn Lâm Hồng Thu\r\n', 0, 'THU2004@hotmail.com', '2004-08-03 00:00:00', '30 Trần Phú, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01881927433', '2014-08-17 23:13:45', '2014-08-17 23:13:45', 2),
(329, 'v.pkninh.04-08-87', 'eaf3feb89be5c5648af39bdf44c8bc19', 'Vũ Phan Khắc Ninh\r\n', 1, 'NINHVUPHAN_KHAC_87_08_04@yahoo.com.vn', '1987-08-04 00:00:00', '194 Đinh Công Chánh, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '0909670427', '2014-08-18 08:38:12', '2014-08-18 08:38:12', 2),
(330, 'TRAN.NGUYEN.NHATNAM59.07.19', 'bf1f4c80aaa2a2b78cce3cb7fad5d793', 'Trần Nguyễn Nhật Nam\r\n', 1, 'tran.nguyennhat.nam_59_07_19@yahoo.com.vn', '1959-07-19 00:00:00', '187/305 Phan Đình Phùng, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01201832258', '2014-08-18 08:38:12', '2014-08-18 08:38:12', 2),
(331, 'NGUYEN_QUANG_DAT_2004_01_09', 'ef6ad4013606846b30f15a607b2d2d81', 'Nguyễn Quảng Ðạt\r\n', 1, 'Quang.dat\r\n.20040109@gmail.com.vn', '2004-01-09 00:00:00', '13C/343 3/2, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '01860166650', '2014-09-11 08:38:12', '2014-09-11 08:38:12', 2),
(332, 'NGHI-TRAN_GIA160603', '0a8ebc76e0a4c122755ab3f4645a02ea', 'Trần Gia Nghị\r\n', 1, 'nghi.trangia.03@yahoo.com', '2003-06-16 00:00:00', '18 Võ Văn Kiệt, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '09974442401', '2014-09-11 12:28:40', '2014-09-11 12:28:40', 2),
(333, 'b-tpnghi19811002', 'a6a5506dd493a8dfd07be5aa4b4704ca', 'Bùi Thị Phương Nghi\r\n', 0, 'BTPNGHI0210@hotmail.com', '1981-10-02 00:00:00', '213 Nguyễn Chí Thanh, P. Trà Nóc , Q. Bình Thủy, TP. Cần Thơ', '01203293549', '2014-09-11 23:45:22', '2014-09-11 23:45:22', 2),
(334, 'LAMTRANQUANG87', '7f48f7224227b5aea29dc63ecb5ebce1', 'Trần Quang Lâm\r\n', 1, 'quang.lam\r\n.030287@hotmail.com', '1987-02-03 00:00:00', '92/162/158 Hòa Bình, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0924498599', '2014-09-12 23:45:22', '2014-09-12 23:45:22', 2),
(335, 'HOA_QUYNH-NGUYEN-15_10_2000', '31d4d23acc076d54d563e15fcb6a6831', 'Nguyễn Quỳnh Hoa\r\n', 0, 'NQHOA-15-10@yahoo.com.vn', '2000-10-15 00:00:00', '389 Phan Đình Phùng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01263689294', '2014-09-13 01:40:17', '2014-09-13 01:40:17', 2),
(336, 'ngan13_05_1947', '5bfb5d9554a495e9d9e42d754afd71b9', 'Trần Thị Thanh Ngân\r\n', 0, 'TTTNGAN130547@yahoo.com', '1947-05-13 00:00:00', '398 Trần Văn Khéo, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '09947430350', '2014-09-15 01:40:17', '2014-09-15 01:40:17', 2),
(337, 'PHBNga2003', 'ba726b00f33e28950ba197ab9812f6d5', 'Phạm Huỳnh Bích Nga\r\n', 0, 'bichnga\r\n.2003@yahoo.com', '2003-01-03 00:00:00', '346 Nguyễn Đệ, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01667883674', '2014-09-21 01:40:17', '2014-09-21 01:40:17', 2),
(338, 'Nguyen_PhuongMai-90', 'aef0174657fc78fb8c44fdb89cde8821', 'Nguyễn Phương Mai\r\n', 0, 'Mai-Phuong.Nguyen_1990@hotmail.com', '1990-11-18 00:00:00', '77/391 Thái Thị Hạnh, P. Thới Long, Q. Ô Môn, TP. Cần Thơ', '01654950953', '2014-10-02 01:40:17', '2014-10-02 01:40:17', 2),
(339, 'LE-VAN-TU-86', '9b69d4e6d72daa571755d0cea678931a', 'Lê Văn Tụ\r\n', 1, 'L_V_Tu_26_02_1986@gmail.com.vn', '1986-02-26 00:00:00', '82 30/4, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01660895409', '2014-10-18 01:40:17', '2014-10-18 01:40:17', 2),
(340, 'mien-1932', 'd1134f31cb4580b775e49309621134ed', 'Vũ Mộc Miên\r\n', 0, 'VU.MOCMIEN_1932_09_11@hotmail.com', '1932-09-11 00:00:00', '191/371 Huỳnh Phan Hộ, P. Bình Thủy , Q. Bình Thủy, TP. Cần Thơ', '0936015564', '2014-10-30 01:40:17', '2014-10-30 01:40:17', 2),
(341, 'n_k_ngoc_871030', '1867ebd765590631b59a033ed082f6ee', 'Nguyễn Kim Ngọc\r\n', 0, 'Ngoc_Nguyen.Kim.1987.10.30@yahoo.com.vn', '1987-10-30 00:00:00', '154 Võ Văn Kiệt, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '0895836223', '2014-11-04 01:40:17', '2014-11-04 01:40:17', 2),
(342, 'le_vuthihai_840817', 'b773bab1e9c22ba72be98f0a0d54b090', 'Lê Vũ Thị Hải\r\n', 0, 'thihai1984_08_17@gmail.com', '1984-08-17 00:00:00', '339 Mậu Thân, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01265904204', '2014-11-04 01:40:17', '2014-11-04 01:40:17', 2),
(343, 'lmhuy_27_08_1951', '735bb74d20bb93b353ea9c8e1894c236', 'Lý Minh Huy\r\n', 1, 'LMHuy19510827@outlook.com', '1951-08-27 00:00:00', '175A/101 Nguyễn Văn Cừ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '09988658664', '2014-11-09 01:40:17', '2014-11-09 01:40:17', 2),
(344, 'HOANGNGUYENMINH140191', '0c5176fd1532a02c42a0620c37ec9638', 'Nguyễn Minh Hoàng\r\n', 1, 'NguyenMinh.Hoang1991@outlook.com', '1991-01-14 00:00:00', '18A/143 Nguyễn Đệ, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01993275595', '2014-11-09 04:52:57', '2014-11-09 04:52:57', 2),
(345, 'TAM_2312', 'c594c4f0c1d119d8924e320e5c5d674e', 'Nguyễn Văn Tâm\r\n', 1, 'TAM_23_12_2004@yahoo.com.vn', '2004-12-23 00:00:00', '136 Hoàng Văn Thụ, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '0885519391', '2014-11-09 07:30:25', '2014-11-09 07:30:25', 2),
(346, 'Nga.Tuyet-Le16.04.77', '6b883dccfe27c4c6a0a2162d6cd5b37c', 'Lê Tuyết Nga\r\n', 0, 'Le.Tuyet.Nga.19770416@gmail.com', '1977-04-16 00:00:00', '159/333 Trần Văn Khéo, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01637429980', '2014-11-11 07:30:25', '2014-11-11 07:30:25', 2),
(347, 'TRAN.NGUYEN_CHI.THANH.141097', 'e97667f34bc7e3cafc68235286b035a6', 'Trần Nguyễn Chí Thanh\r\n', 1, 'ThanhTranNguyenChi141097@ymail.com', '1997-10-14 00:00:00', '34/114 Mậu Thân, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01676064499', '2014-11-17 07:30:25', '2014-11-17 07:30:25', 2),
(348, 'vo_tran_dang_tien_08_03_02', 'b4417943704b8ab4d07119316faef031', 'Trần Đặng Tiến Võ\r\n', 1, 'TDTVO-02@ymail.com', '2002-03-08 00:00:00', '377 3/2, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '01290422168', '2014-11-17 07:30:25', '2014-11-17 07:30:25', 2),
(349, 'n_m-vy_09_12', '5d58707ddb46ecd64273a00f0179b4f7', 'Ngô Mộng Vy\r\n', 0, 'VYNGO_MONG-0912@gmail.com.vn', '1990-12-09 00:00:00', '21 30/4, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '09982914998', '2014-11-20 07:30:25', '2014-11-20 07:30:25', 2),
(350, 'Tuyen951119', '3a0fa36072339708b59f2807e37cd5a6', 'Trịnh Thị Sơn Tuyền\r\n', 0, 'tuyen.trinhthison19.11.1995@ymail.com', '1995-11-19 00:00:00', '120/140 QL91, P. Long Hưng, Q. Ô Môn, TP. Cần Thơ', '01660200683', '2014-12-12 07:30:25', '2014-12-12 07:30:25', 2),
(351, 'bao-nguyenthi19970624', '283fe8fceba506352d26477e1ec9e366', 'Nguyễn Thị Bảo\r\n', 0, 'THI-BAO1997-06-24@outlook.com', '1997-06-24 00:00:00', '57E/101 Châu Văn Liêm, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01287224179', '2014-12-12 18:30:57', '2014-12-12 18:30:57', 2),
(352, 'huy.nguyen-duc.91', 'd533c580effb4ae0c56923ba4ba998c1', 'Nguyễn Ðức Huy\r\n', 1, 'huy-1991@yahoo.com', '1991-05-17 00:00:00', '59/25 Nguyễn Thị Minh Khai, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0922506357', '2014-12-21 18:30:57', '2014-12-21 18:30:57', 2),
(353, 'trinh0512', '4438f140b4ab76cc99df222b360f6db9', 'Lý Thị Phương Trinh\r\n', 0, 'TRINH98-12-05@yahoo.com', '1998-12-05 00:00:00', '299 Nguyễn Đệ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01634202498', '2014-12-21 18:30:57', '2014-12-21 18:30:57', 2),
(354, 'T_TN_Hue80', '25485e548986f1f70a2b4297e16c7b96', 'Trần Thị Ngọc Huệ\r\n', 0, 'hue-12101980@gmail.com.vn', '1980-10-12 00:00:00', '297 Phan Văn Trị, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01240210700', '2015-01-07 18:30:57', '2015-01-07 18:30:57', 2),
(355, 'pham-phanthien-941220', '26d02c3c172b3559385354ced3025ece', 'Phạm Phan Thiện', 1, 'THIEN1994@yahoo.com', '1994-12-20 00:00:00', '331 Nguyễn Thị Minh Khai, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0894460439', '2015-01-11 18:30:57', '2015-01-11 18:30:57', 2),
(356, 'Ly-Pham.Ta-Hien18.08.02', 'a50d5cfae87dbbaf6b3f673fd20403ee', 'Lý Phạm Tạ Hiền\r\n', 1, 'LYPHAM-TA-HIEN020818@yahoo.com', '2002-08-18 00:00:00', '396 QL1, P. Thường Thạnh, Q. Cái Răng, TP. Cần Thơ', '0972924208', '2015-01-24 18:30:57', '2015-01-24 18:30:57', 2),
(357, 'thien-24-06-2000', '6add9bf3fbbbf534ca5c798e800cd288', 'Trần Tích Thiện\r\n', 1, 'T.T_THIEN.00@gmail.com.vn', '2000-06-24 00:00:00', '21/3/158/170 Bùi Minh Trực, P. Long Tuyền, Q. Bình Thủy, TP. Cần Thơ', '01697727028', '2015-02-18 18:30:57', '2015-02-18 18:30:57', 2),
(358, 'phi_trannguyen-thi.280889', '344728d128d7cc44f022fd88218dbcd8', 'Trần Nguyễn Thị Phi\r\n', 0, 'PHI280889@hotmail.com', '1989-08-28 00:00:00', '180/280 Quang Trung, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01681865794', '2015-03-02 18:30:57', '2015-03-02 18:30:57', 2),
(359, 'Phap_Nguyen.Bao-00', '2acad7bc3129ba74c189115313de14d4', 'Nguyễn Bảo Pháp\r\n', 1, 'phapnguyenbao19082000@outlook.com', '2000-08-19 00:00:00', '139/123 30/4, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '09956691308', '2015-03-02 20:55:57', '2015-03-02 20:55:57', 2),
(360, 'Quang-Tran-Dang-0705', '5082d47d69a51b6942077b5f5057d117', 'Trần Đăng Quang\r\n', 1, 'quang07_05_1992@outlook.com', '1992-05-07 00:00:00', '380 Đinh Tiên Hoàng, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01672479004', '2015-03-04 20:55:57', '2015-03-04 20:55:57', 2),
(361, 'DONG_TRA\r\n_1984', 'd5fd8a238e6abbf5f3123870599cde7f', 'Trần Thị Ðông Trà\r\n', 0, 'TraTranThiDong17081984@hotmail.com', '1984-08-17 00:00:00', '97/165 Hòa Bình, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01286888127', '2015-03-04 21:59:56', '2015-03-04 21:59:56', 2),
(362, 'NguyenTranHaiNguyen1408', '07d8430373ae676b60ffed43258cb1e8', 'Nguyễn Trần Hải Nguyên\r\n', 1, 'NGUYEN.900814@hotmail.com', '1990-08-14 00:00:00', '68/8 CMT8, P. An Thới , Q. Bình Thủy, TP. Cần Thơ', '01863228105', '2015-03-08 21:59:56', '2015-03-08 21:59:56', 2),
(363, 'Thu-hong\r\n.38', 'a0ec47edcb2f410ea6bd8d810af4b038', 'Võ Thu Hồng\r\n', 0, 'VTHong19381114@hotmail.com', '1938-11-14 00:00:00', '54/169 Nguyễn Văn Cừ, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01649521550', '2015-03-12 21:59:56', '2015-03-12 21:59:56', 2),
(364, 'AnhNguyetThi.Tran_02', '58dc40fdbadf8a315b6f55fbf17814b0', 'Trần Thị Nguyết Ánh\r\n', 0, 'ANHNGUYET.THI.TRAN.05072002@outlook.com', '2002-07-05 00:00:00', '146 Võ Nguyên Giáp, P. Phú Thứ, Q. Cái Răng, TP. Cần Thơ', '0908763780', '2015-03-13 01:42:04', '2015-03-13 01:42:04', 2),
(365, 'QUYENTRAN_THI.THUC_040422', '7ee3dc756e7d589905840003c1ddcca2', 'Trần Thị Thục Quyên\r\n', 0, 'QUYENTHUC.THI.TRAN2004@yahoo.com.vn', '2004-04-22 00:00:00', '50 Nguyễn An Ninh, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0902679450', '2015-03-14 01:42:04', '2015-03-14 01:42:04', 2),
(366, 't_tydan-2004', 'e77003842821818c311d94c3a0726863', 'Trần Thị Yên Ðan\r\n', 0, 'T.TYDAN07-05@hotmail.com', '2004-05-07 00:00:00', '316 Thái Thị Hạnh, P. Thới Long, Q. Ô Môn, TP. Cần Thơ', '01207043972', '2015-03-14 01:42:04', '2015-03-14 01:42:04', 2),
(367, 'thuy-60', 'e9dd3d8758363a92bc6c1c96c0d058f0', 'Lê Cẩm Thúy\r\n', 0, 'THUY-CAM.LE-01-04@outlook.com', '1960-04-01 00:00:00', '283 Nguyễn Văn Cừ, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01643573775', '2015-04-02 01:42:04', '2015-04-02 01:42:04', 2),
(368, 'khanhduy\r\n.22-03', '71e982228698235b24b478dbacd0fb44', 'Huỳnh Lê Khánh Duy\r\n', 1, 'Duy03@yahoo.com.vn', '2003-03-22 00:00:00', '146 Đinh Công Chánh, P. Long Tuyền , Q. Bình Thủy, TP. Cần Thơ', '01634137911', '2015-04-05 01:42:04', '2015-04-05 01:42:04', 2),
(369, 'TangGiaKien290478', '672071ac9fd52d517b09162697fe1fb3', 'Tăng Gia Kiên\r\n', 1, 'T.G-KIEN-29-04@hotmail.com', '1978-04-29 00:00:00', '274 CMT8, P. An Thới , Q. Bình Thủy, TP. Cần Thơ', '01664896189', '2015-04-05 03:45:58', '2015-04-05 03:45:58', 2),
(370, 'phuoc-nguyen-gia81-09-09', 'c878648f934fc0f9356bf91c13173086', 'Nguyễn Gia Phước\r\n', 1, 'Giaphuoc09091981@outlook.com', '1981-09-09 00:00:00', '372 Trần Kiết Tường, P. Thới An, Q. Ô Môn, TP. Cần Thơ', '01290256328', '2015-04-29 03:45:58', '2015-04-29 03:45:58', 2),
(371, 'PTTHCuc1943', '6b9c052b3ac409cd46962aa932589779', 'Phạm Trần Thị Hạc Cúc\r\n', 0, 'Hac.cuc\r\n_31_07_43@ymail.com', '1943-07-31 00:00:00', '175 Nguyễn Văn Linh, P. Long Tuyền , Q. Bình Thủy, TP. Cần Thơ', '01239521258', '2015-05-03 03:45:58', '2015-05-03 03:45:58', 2),
(372, 'hieu-03_07', '3cf333b63b0a26118ed8675c8996a71d', 'Nguyễn Chí Hiếu\r\n', 1, 'NguyenChiHieu20050703@outlook.com', '2005-07-03 00:00:00', '322 Lê Hồng Phong, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01995297107', '2015-05-19 03:45:58', '2015-05-19 03:45:58', 2),
(373, 'ngan-1983.12.18', '68ff109443fd527b2f583f220ec14437', 'Nguyễn Hải Ngân\r\n', 0, 'nganhainguyen1983@outlook.com', '1983-12-18 00:00:00', '347 3/2, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '0927567845', '2015-05-19 03:45:58', '2015-05-19 03:45:58', 2),
(374, 'TA_DUC_1990', '307e7f09518f62936e1d7052c20edb72', 'Trần Anh Ðức\r\n', 1, 'tran_anh_duc_16-09-90@yahoo.com', '1990-09-16 00:00:00', '140/30 Xô Viết Nghệ Tĩnh, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01295679645', '2015-05-21 03:45:58', '2015-05-21 03:45:58', 2);
INSERT INTO `khachhang` (`kh_ma`, `kh_taiKhoan`, `kh_matKhau`, `kh_hoTen`, `kh_gioiTinh`, `kh_email`, `kh_ngaySinh`, `kh_diaChi`, `kh_dienThoai`, `kh_taoMoi`, `kh_capNhat`, `kh_trangThai`) VALUES
(375, 'Long19751025', '6d5314dafe8ea74c1f742879ca1e907e', 'Đỗ Tuấn Long\r\n', 1, 'long-do-tuan.1975@yahoo.com.vn', '1975-10-25 00:00:00', '18D/26 30/4, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01991733817', '2015-05-22 03:45:58', '2015-05-22 03:45:58', 2),
(376, 'TRAN_THI_VANKHANH97', 'd7c3f64c5eb246fc91b68b6d5a5d7b3c', 'Trần Thị Vân Khanh\r\n', 0, 'TRANTHIVANKHANH97@outlook.com', '1997-01-15 00:00:00', '29 CMT8, P. An Thới , Q. Bình Thủy, TP. Cần Thơ', '0961176509', '2015-06-02 03:45:58', '2015-06-02 03:45:58', 2),
(377, 'PHAM-PHU-HIEP.18.02.1980', 'de680aabc03a651fedc2c62af75b5f31', 'Phạm Phú Hiệp\r\n', 1, 'hieppham-phu_18-02-80@yahoo.com', '1980-02-18 00:00:00', '78 Trần Văn Hoài, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01672061730', '2015-06-02 06:35:10', '2015-06-02 06:35:10', 2),
(378, 'binh.tranvo08.03', '4ed52817aacd982048d32e1b09fc6abd', 'Trần Võ Bình', 1, 'TranVo.Binh08.03.03@hotmail.com', '2003-03-08 00:00:00', '89A/91/75 Võ Văn Tần, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01260286977', '2015-06-17 06:35:10', '2015-06-17 06:35:10', 2),
(379, 'THUANQUANG-NGUYEN250194', 'c6eabbbeb1f677c0a9e7f841a655c3c8', 'Nguyễn Quang Thuận\r\n', 1, 'nq-thuan-94@gmail.com', '1994-01-25 00:00:00', '213 CMT8, P. An Thới , Q. Bình Thủy, TP. Cần Thơ', '01251679175', '2015-06-21 06:35:10', '2015-06-21 06:35:10', 2),
(380, 'HiepQuoc-Pham_98', '7878d7a4d5b9cf6a71f7e45bafd6e9a7', 'Phạm Quốc Hiệp\r\n', 1, 'p-q-hiep_1998-05-18@gmail.com.vn', '1998-05-18 00:00:00', '211 QL1, P. Thường Thạnh, Q. Cái Răng, TP. Cần Thơ', '09942778454', '2015-06-24 06:35:10', '2015-06-24 06:35:10', 2),
(381, 'Dan-19801022', '6b08bbbb774e401352ee5ee12e610987', 'Nguyễn Trần Yến Ðan\r\n', 0, 'ntydan-1980@outlook.com', '1980-10-22 00:00:00', '125 3/2, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '0891768505', '2015-06-24 09:02:56', '2015-06-24 09:02:56', 2),
(382, 'Xuan_Minh_Bui_1987.02.13', '89dc0669babdda57df7b3e82179a13fb', 'Bùi Minh Xuân\r\n', 1, 'bui.minh.xuan13-02@gmail.com.vn', '1987-02-13 00:00:00', '158C/376 Lê Hồng Phong, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '0885418774', '2015-06-24 20:18:04', '2015-06-24 20:18:04', 2),
(383, 'DAI1978', '5f767bf14fcc1fddecd6276cc0aaf3cb', 'Lâm Ðại', 1, 'DAI-10.07.78@gmail.com', '1978-07-10 00:00:00', '65 Nguyễn Văn Linh, P. An Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0963719321', '2015-06-25 04:43:29', '2015-06-25 04:43:29', 2),
(384, 'lyan79', 'e62c0cd4812010b3e8da27041e9b9a4f', 'Lý Ân', 1, 'anly1979@gmail.com.vn', '1979-09-05 00:00:00', '69A/171 Nguyễn An Ninh, An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01643929957', '2015-06-25 17:39:22', '2015-06-25 17:39:22', 2),
(385, 'linhsan03', '0f27fd7b9a5a5f6684bd3014a2a6d9c0', 'Lê Thị Linh San\r\n', 0, 'San-031224@ymail.com', '2003-12-24 00:00:00', '227 3/2, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '01259342453', '2015-06-26 17:39:22', '2015-06-26 17:39:22', 2),
(386, 'thanh-tranduy-30-04', '2b3c167125e5acbce8fb1209fcfc03c3', 'Trần Duy Thanh\r\n', 1, 'THANHDUYTRAN890430@gmail.com', '1989-04-30 00:00:00', '394 Xô Viết Nghệ Tĩnh, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '09994632590', '2015-06-26 21:52:01', '2015-06-26 21:52:01', 2),
(387, 'levietquoc19981025', 'c7bbaa1d44fe9a72c3b21bcd8298fc0b', 'Lê Việt Quốc\r\n', 1, 'L.VQUOC25-10@ymail.com', '1998-10-25 00:00:00', '200 QL1, P. Hưng Thạnh, Q. Cái Răng, TP. Cần Thơ', '01299186733', '2015-06-29 21:52:01', '2015-06-29 21:52:01', 2),
(388, 'duynguyen840218', '48026795e0d87cf05410f23d43100428', 'Nguyễn Duy', 1, 'NGUYEN_DUY18.02@outlook.com', '1984-02-18 00:00:00', '173/174 Nguyễn Văn Linh, P. An Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01687256950', '2015-07-03 21:52:01', '2015-07-03 21:52:01', 2),
(389, 'Thiyen190478', 'c4fb09e5583a00746a5a830a13dd5e48', 'Phan Thị Yên\r\n', 0, 'YEN-PHANTHI-78-04-19@yahoo.com', '1978-04-19 00:00:00', '227 Lộ Vòng Cung, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '09999507989', '2015-07-04 21:52:01', '2015-07-04 21:52:01', 2),
(390, 'ANH-DANG_LENGUYET_79', 'f429d576a207a190b580199f7788b476', 'Đặng Lê Nguyệt Ánh\r\n', 0, 'Anh_Nguyet-LeDang-79-08-20@gmail.com', '1979-08-20 00:00:00', '300 CMT8, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '0942183126', '2015-07-05 01:18:19', '2015-07-05 01:18:19', 2),
(391, 'N_T.Mai_19781213', 'ee4461bb06cd97f4a4ee70944d600bf1', 'Nguyễn Thúy Mai\r\n', 0, 'mai-thuy-nguyen78-12-13@yahoo.com', '1978-12-13 00:00:00', '35 Nguyễn Chí Thanh, P. Trà Nóc , Q. Bình Thủy, TP. Cần Thơ', '01239091879', '2015-07-05 21:22:06', '2015-07-05 21:22:06', 2),
(392, 'son-90-09-07', 'a5ac6c69cf4e756674c8ecc6d421b55f', 'Nguyễn Danh Sơn\r\n', 1, 'danhson19900907@gmail.com.vn', '1990-09-07 00:00:00', '38 Hòa Bình, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01625687710', '2015-07-06 07:15:49', '2015-07-06 07:15:49', 2),
(393, 'Trang.1970', '8fa26854980142b5516d7c3c8e3c202d', 'Trần Kim Trang\r\n', 0, 't.k-trang_20.09.1970@yahoo.com', '1970-09-20 00:00:00', '292 Hòa Bình, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01885878584', '2015-07-31 07:15:49', '2015-07-31 07:15:49', 2),
(394, 'L.THOA.1983', '25c24f29ee234c18e11799da4a8b5ce7', 'Lê Thuận Hòa\r\n', 1, 'Hoa.Le-Thuan.15-09-83@hotmail.com', '1983-09-15 00:00:00', '233 Trần Kiết Tường, P. Thới Hòa, Q. Ô Môn, TP. Cần Thơ', '0979369127', '2015-08-02 07:15:49', '2015-08-02 07:15:49', 2),
(395, 'vong.thu.thi.vu-nguyen-46', 'ab1ae66aa9ac97b2842ff05641c9c831', 'Nguyễn Vũ Thị Thu Vọng\r\n', 0, 'NVT_T_Vong1003@hotmail.com', '1946-03-10 00:00:00', '195 Nguyễn An Ninh, An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '0913744517', '2015-08-02 12:43:42', '2015-08-02 12:43:42', 2),
(396, 'DANG-DO_THILANANH-1996', '1d37b3a3077135a25ff0b10c83be51fc', 'Đặng Đỗ Thị Lan Anh\r\n', 0, 'DD.T.L.Anh.96@ymail.com', '1996-10-31 00:00:00', '51/247 CMT8, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01233535720', '2015-08-04 12:43:42', '2015-08-04 12:43:42', 2),
(397, 'oanhthucnguyen091293', 'e3a4395b5144a3068ce3bd4878ae1200', 'Nguyễn Thục Oanh\r\n', 0, 'Nguyen-ThucOanh-93@yahoo.com', '1993-12-09 00:00:00', '220 Nguyễn Trãi, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01218219656', '2015-08-05 12:43:42', '2015-08-05 12:43:42', 2),
(398, 'Vo-PhiPhi-19-01-1974', 'eefae9cd1c966d475b5d6e01bd3861db', 'Võ Phi Phi\r\n', 0, 'PHI.PHI1901@gmail.com.vn', '1974-01-19 00:00:00', '192 Nguyễn Trãi, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '0963730770', '2015-08-05 12:43:42', '2015-08-05 12:43:42', 2),
(399, 'QUANPHAMTHIBICH0406', '29006613a47667db16d49843621de044', 'Phạm Thị Bích Quân\r\n', 0, 'Quan0406@gmail.com.vn', '1937-06-04 00:00:00', '304 Ngô Quyền, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '0985743436', '2015-08-11 12:43:42', '2015-08-11 12:43:42', 2),
(400, 'Loi10.05', 'd8cf686efda86d3d3fcaffe03876c3b4', 'Triệu Văn Lợi\r\n', 1, 'trieu-vanloi-10.05.99@yahoo.com.vn', '1999-05-10 00:00:00', '354 Trần Kiết Tường, P. Thới Hòa, Q. Ô Môn, TP. Cần Thơ', '0935960766', '2015-08-18 12:43:42', '2015-08-18 12:43:42', 2),
(401, 'NHINGUYEN_THI-GIA.90', 'e5389dfbce627c36d619188bd30fc462', 'Nguyễn Thị Gia Nhi\r\n', 0, 'N_T-G_NHI1990@hotmail.com', '1990-05-20 00:00:00', '59/16 CMT8, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01251899679', '2015-08-23 12:43:42', '2015-08-23 12:43:42', 2),
(402, 'DungVanVu-Ly890710', 'cb2639a4ae3904003d6f1c596c5589d9', 'Lý Vũ Văn Dụng\r\n', 1, 'lv.v.dung.89.07.10@hotmail.com', '1989-07-10 00:00:00', '132 Nguyễn Văn Cừ, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '01261619137', '2015-08-23 13:26:25', '2015-08-23 13:26:25', 2),
(403, 'VanTranKhuuThuy2005', 'dbf0b2fdaccc04dc815dd21d5e0ccce4', 'Trần Khưu Thúy Vân\r\n', 0, 'thuy.van2005@gmail.com', '2005-11-16 00:00:00', '18 CMT8, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01673267983', '2015-08-30 13:26:25', '2015-08-30 13:26:25', 2),
(404, 'Khiem26-03-39', '42b0f9023fcd73cc8e9cb8af2ba4e5d3', 'Trần Phạm Thành Khiêm\r\n', 1, 'KhiemTran_PhamThanh39@yahoo.com', '1939-03-26 00:00:00', '78 QL1, P. Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01698188329', '2015-08-30 13:26:25', '2015-08-30 13:26:25', 2),
(405, 'L.TT.GIANG.1977', 'd59386bbb88441ac495e94596c95e9c4', 'Lê Trần Thùy Giang\r\n', 0, 'giang.77@ymail.com', '1977-01-06 00:00:00', '367 Lý Tự Trọng, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01623377592', '2015-09-19 13:26:25', '2015-09-19 13:26:25', 2),
(406, 'LINHVUTHIXUAN1203', '18fbe900c42633de7cfb3ad80dac3efb', 'Vũ Thị Xuân Linh\r\n', 0, 'XUANLINH\r\n.19570312@yahoo.com', '1957-03-12 00:00:00', '44/256 Nguyễn Trãi, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '0923080226', '2015-09-19 15:05:05', '2015-09-19 15:05:05', 2),
(407, 'DTLDUYEN030910', '3bf9a1346d7fa402a7e772eaf0725077', 'Đặng Thị Linh Duyên\r\n', 0, 'DTLDuyen.2003@outlook.com', '2003-09-10 00:00:00', '174 Nguyễn Văn Linh, P. Long Tuyền , Q. Bình Thủy, TP. Cần Thơ', '01670887170', '2015-09-27 15:05:05', '2015-09-27 15:05:05', 2),
(408, 'Thu19880128', '560002bf2135f3c0934cbe78d8722b4e', 'Nguyễn Thị Hoàng Thư\r\n', 0, 'THU.88.01.28@hotmail.com', '1988-01-28 00:00:00', '149 QL1, P. Ba Láng, Q. Cái Răng, TP. Cần Thơ', '01652274293', '2015-09-30 15:05:05', '2015-09-30 15:05:05', 2),
(409, 'thonghuubanh04', '9e6aeaea3e3ae6f024b78122df8cf083', 'Bành Hữu Thống\r\n', 1, 'Thong_Banh-Huu-2203@hotmail.com', '2004-03-22 00:00:00', '123 Nguyễn Thị Minh Khai, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01242528939', '2015-09-30 15:05:05', '2015-09-30 15:05:05', 2),
(410, 'lien1991.07.15', 'a7c679d0c46d3c19ad174d184b008878', 'Vũ Nguyễn Thị Hương Liên\r\n', 0, 'HUONGLIEN\r\n.15.07@outlook.com', '1991-07-15 00:00:00', '150 30/4, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01656338383', '2015-09-30 23:39:34', '2015-09-30 23:39:34', 2),
(411, 'tien1986', '7f39d9ad0a2890f33e6814ded69abb06', 'Đoàn Việt Tiến\r\n', 1, 'doan-viet.tien.260486@hotmail.com', '1986-04-26 00:00:00', '76/325 Nguyễn Văn Cừ, P. An Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01663185212', '2015-10-18 23:39:34', '2015-10-18 23:39:34', 2),
(412, 'NTNHAN1974_09_01', '9946dad95d295b22bccad0c19c622e1c', 'Nguyễn Trọng Nhân\r\n', 1, 'NTNHAN01.09.74@hotmail.com', '1974-09-01 00:00:00', '349 Võ Văn Kiệt, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '09936540680', '2015-10-18 23:39:34', '2015-10-18 23:39:34', 2),
(413, 'TRONG-20.09', 'c8ddd0db86e19757084ecf10ef0a95aa', 'Đỗ Ðắc Trọng\r\n', 1, 'DO_DAC-TRONG_20_09@gmail.com.vn', '1960-09-20 00:00:00', '319 Bùi Hữu Nghĩa, P. Long Hòa , Q. Bình Thủy, TP. Cần Thơ', '0933661240', '2015-10-27 23:39:34', '2015-10-27 23:39:34', 2),
(414, 'le.nguyen-the_tuong-1982', '823f1fab53f395080c8df4b7fb8d4780', 'Lê Nguyễn Thế Tường\r\n', 1, 'l.n.t.tuong2604@gmail.com.vn', '1982-04-26 00:00:00', '257 Nguyễn Trãi, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01696129964', '2015-10-27 23:39:34', '2015-10-27 23:39:34', 2),
(415, 'Gialinh15041994', 'b087ecb4e0539f15e50d49ca97107a35', 'Nguyễn Thị Gia Linh\r\n', 0, 'nguyen.thi.gia.linh94@hotmail.com', '1994-04-15 00:00:00', '52/66 Tỉnh lộ 922, P. Châu Văn Liêm, Q. Ô Môn, TP. Cần Thơ', '01282204434', '2015-10-28 02:05:36', '2015-10-28 02:05:36', 2),
(416, 'PHAM-VAN.KHANH.2003', '608772ba663b9737362d3a4c914f151c', 'Phạm Văn Khánh\r\n', 1, 'khanh_06-09-2003@gmail.com.vn', '2003-09-06 00:00:00', '48 Nguyễn An Ninh, An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01880784428', '2015-10-28 03:32:39', '2015-10-28 03:32:39', 2),
(417, 'nguyenphuongnga1982', '092dca44a8068fbe1ddc4f17bdd40d4e', 'Nguyễn Phượng Nga\r\n', 0, 'NGA-NGUYEN_PHUONG820704@yahoo.com', '1982-07-04 00:00:00', '101 Lê Lợi, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01655348513', '2015-10-29 02:57:54', '2015-10-29 02:57:54', 2),
(418, 'DKHA770112', 'da9c7e9c90042e8c14ba2ea0d85a9d88', 'Đặng Khải Hà\r\n', 0, 'HAKHAIDANG19770112@gmail.com', '1977-01-12 00:00:00', '178/148 Ngô Quyền, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01691316513', '2015-11-01 02:57:54', '2015-11-01 02:57:54', 2),
(419, 'NTMTuyen130898', '6af2809ef2a78dc2f98fd84485e352d9', 'Nguyễn Thị Mộng Tuyền\r\n', 0, 'NGUYENTHI_MONGTUYEN_1998@gmail.com.vn', '1998-08-13 00:00:00', '13 Lý Tự Trọng, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '0913240318', '2015-11-25 02:57:54', '2015-11-25 02:57:54', 2),
(420, 'DIEUHANG\r\n.1977-03-10', '2cd13540c2df64728f2765e31849b9c5', 'Nguyễn Phạm Thị Diệu Hằng\r\n', 0, 'dieuhang1977@gmail.com.vn', '1977-03-10 00:00:00', '68 Tỉnh lộ 923, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '0988398617', '2015-11-28 02:57:54', '2015-11-28 02:57:54', 2),
(421, 'LINHNGOCNGUYEN19450823', '777f1ec67d1bd2d359988c51c57b1e7b', 'Nguyễn Ngọc Linh\r\n', 0, 'linh.ngocnguyen1945@yahoo.com', '1945-08-23 00:00:00', '69 Võ Văn Kiệt, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '0885862627', '2015-11-30 02:57:54', '2015-11-30 02:57:54', 2),
(422, 'tn_hlien_18_02_95', 'a960be58eabf96ca0b7f1b6704c89882', 'Trần Nguyễn Hà Liên\r\n', 0, 'LIENTRANNGUYENHA18021995@hotmail.com', '1995-02-18 00:00:00', '196A/220 Nguyễn Văn Cừ, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01864403018', '2015-11-30 04:07:59', '2015-11-30 04:07:59', 2),
(423, 'pt_n_ai_1996-02-27', 'ae41773fdd6f3d250bad54365c97f9b7', 'Phan Thị Ngọc Ái\r\n', 0, 'ai27_02_96@outlook.com', '1996-02-27 00:00:00', '166 Hoàng Văn Thụ, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01247474615', '2015-12-02 04:07:59', '2015-12-02 04:07:59', 2),
(424, 'lam-thanh_nguyen23_07', '39519fb1e73adcc1ebcd7429a1f53622', 'Nguyễn Thanh Lam\r\n', 0, 'lam_nguyenthanh_030723@outlook.com', '2003-07-23 00:00:00', '324 Hòa Bình, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01214763333', '2015-12-12 04:07:59', '2015-12-12 04:07:59', 2),
(425, 'LIENTRAN\r\n_06031993', '1666dc645f84700dfda78ad50577e33d', 'Lâm Thị Liên Trân\r\n', 0, 'TranLam-Thi.Lien.1993_03_06@hotmail.com', '1993-03-06 00:00:00', '367 Lê Hồng Phong, P. Trà An , Q. Bình Thủy, TP. Cần Thơ', '0978946589', '2015-12-29 04:07:59', '2015-12-29 04:07:59', 2),
(426, 'TIEN-CATTHIHUYNHNGUYEN2311', 'fd1452d8d5d73a24679cf58f72bac10c', 'Nguyễn Huỳnh Thị Cát Tiên\r\n', 0, 'Tien-Cat_ThiHuynh_Nguyen.1995@gmail.com', '1995-11-23 00:00:00', '319 Trần Ngọc Quế, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '0949012144', '2015-12-29 04:07:59', '2015-12-29 04:07:59', 2),
(427, 'NguyenThi.Linh-Phuong1978', '74190d38067dd267ab8aa553c753141c', 'Nguyễn Thị Linh Phượng\r\n', 0, 'phuonglinhthi_nguyen_1978@gmail.com', '1978-04-06 00:00:00', '122 Nguyễn Truyền Thanh, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01279562593', '2015-12-29 11:57:18', '2015-12-29 11:57:18', 2),
(428, 'viettuyet2000', 'ca5988a1b1409f3faee2cd8ec213e186', 'Nguyễn Việt Tuyết\r\n', 0, 'NGUYEN.VIET.TUYET00@outlook.com', '2000-12-07 00:00:00', '234 3/2, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '01209522030', '2016-01-02 11:57:18', '2016-01-02 11:57:18', 2),
(429, 'diemphamhong11041990', '6e24daaac74a02454e061f5ed5f2ee38', 'Phạm Hồng Diễm\r\n', 0, 'DIEM19900411@gmail.com', '1990-04-11 00:00:00', '18 Bùi Hữu Nghĩa, P. Long Hòa , Q. Bình Thủy, TP. Cần Thơ', '01680618987', '2016-01-02 11:57:18', '2016-01-02 11:57:18', 2),
(430, 'TAM1309', '9db5c4c0f8f17bd33c6c0a89255d4335', 'Đặng Tố Tâm\r\n', 0, 'TAMTODANG1982@yahoo.com.vn', '1982-09-13 00:00:00', '152 Trần Hưng Đạo, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '0974543338', '2016-01-02 16:19:03', '2016-01-02 16:19:03', 2),
(431, 'DuongNguyenThuy1984', 'a2bbb3775c2ec8ab9d5decadbd7d1c9b', 'Nguyễn Thùy Dương\r\n', 0, 'nguyenthuyduong1984@outlook.com', '1984-04-07 00:00:00', '143 Nguyễn Văn Linh, P. Long Tuyền , Q. Bình Thủy, TP. Cần Thơ', '0890625409', '2016-01-16 16:19:03', '2016-01-16 16:19:03', 2),
(432, 'Anh_hoa\r\n.2002-12-28', 'c480a231321cf84e737206640356ccb0', 'Trần Ánh Hoa\r\n', 0, 'Tran-Anh.Hoa_02@gmail.com.vn', '2002-12-28 00:00:00', '109/184 Võ Văn Tần, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01640816968', '2016-02-03 16:19:03', '2016-02-03 16:19:03', 2),
(433, 'sanngothi1303', 'b113a4c96e3e555e122cb66bfe05010e', 'Ngô Thị San\r\n', 0, 'SAN91@yahoo.com', '1991-03-13 00:00:00', '117C/179 Đinh Công Chánh, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '0919385919', '2016-02-08 16:19:03', '2016-02-08 16:19:03', 2),
(434, 'T.T-An80', '588563d63b9b63b229243898d5121d95', 'Trần Từ Ân\r\n', 0, 'ANTRANTU-1980@ymail.com', '1980-04-22 00:00:00', '192 Lê Hồng Phong, P. Trà Nóc, Q. Bình Thủy, TP. Cần Thơ', '01635277381', '2016-02-10 16:19:03', '2016-02-10 16:19:03', 2),
(435, 'LE.NGO.MY1906', 'fd30fd7de343696f3b3669c38beb9382', 'Ngô Mỹ Lệ\r\n', 0, 'LENGO-MY82@ymail.com', '1982-06-19 00:00:00', '348 QL1, P. Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '0890523170', '2016-02-24 16:19:03', '2016-02-24 16:19:03', 2),
(436, 'P-T-HDIEU1945.04.26', '7b819eace3775eea6d4a818a28543771', 'Phan Thị Huyền Diệu\r\n', 0, 'huyendieu\r\n.26_04_1945@gmail.com', '1945-04-26 00:00:00', '251 Tỉnh lộ 923, P. Trường Lạc, Q. Ô Môn, TP. Cần Thơ', '0898643630', '2016-02-24 19:40:14', '2016-02-24 19:40:14', 2),
(437, 'ly290985', 'fd2308fa764b5790c5b7e220b38ff34f', 'Đường Ngọc Ly\r\n', 0, 'LY_NGOC-DUONG_85@yahoo.com', '1985-09-29 00:00:00', '100/172 Trần Phú, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '0896063065', '2016-03-08 19:40:14', '2016-03-08 19:40:14', 2),
(438, 'Nguyen_ThiDoan_Thanh98', 'd817af1ca1d95d3695189fa284ee978c', 'Nguyễn Thị Ðoan Thanh\r\n', 0, 'doan-thanh22.10@ymail.com', '1998-10-22 00:00:00', '39/97 CMT8, P. Bùi Hữu Nghĩa, Q. Bình Thủy, TP. Cần Thơ', '01682298562', '2016-03-29 19:40:14', '2016-03-29 19:40:14', 2),
(439, 'NTKHANG.29011980', 'ef3b6ee6368fe753fc1183af65ea378b', 'Nguyễn Thị Khánh Hằng\r\n', 0, 'HANG.NGUYENTHI-KHANH1980.01.29@yahoo.com', '1980-01-29 00:00:00', '85 Bùi Hữu Nghĩa, P. Long Tuyền, Q. Bình Thủy, TP. Cần Thơ', '0974895663', '2016-03-30 06:37:33', '2016-03-30 06:37:33', 2),
(440, 'LienHoaThi-Nguyen0802', '05af0ac105ed9df7369886708877a788', 'Nguyễn Thị Hoa Liên\r\n', 0, 'LIENNGUYENTHIHOA2000@yahoo.com.vn', '2000-02-08 00:00:00', '187A/121 Ngô Quyền, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '0921330673', '2016-04-04 06:37:33', '2016-04-04 06:37:33', 2),
(441, 'Dinh-Thuc-Thi_Ho_2004', '2c2d850ea5c2941af5b1653f54f4185e', 'Hồ Thị Thục Ðình\r\n', 0, 'HoThi_Thuc-Dinh_17022004@gmail.com.vn', '2004-02-17 00:00:00', '349 Bùi Hữu Nghĩa, P. Long Hòa , Q. Bình Thủy, TP. Cần Thơ', '0984170642', '2016-04-04 11:20:19', '2016-04-04 11:20:19', 2),
(442, 'Dai-TrangThi.Huynh-Nguyen080492', '23228fbef4b9df06b8266ee1ac029e6b', 'Nguyễn Huỳnh Thị Trang Ðài\r\n', 0, 'Dai.TrangThi.HuynhNguyen_1992.04.08@gmail.com.vn', '1992-04-08 00:00:00', '282 CMT8, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01673804253', '2016-04-24 11:20:19', '2016-04-24 11:20:19', 2),
(443, 'THUYUYEN03081977', 'bbbb94a81977abe4e822a661a705a779', 'Phan Thị Thùy Uyên\r\n', 0, 'THUY_UYEN\r\n-77-08-03@yahoo.com', '1977-08-03 00:00:00', '197 QL91, P. Châu Văn Liêm, Q. Ô Môn, TP. Cần Thơ', '01257220687', '2016-04-26 11:20:19', '2016-04-26 11:20:19', 2),
(444, 'HA2003', 'ec685fe906fcf937c75248db2a087bfc', 'Trần Thanh Hà\r\n', 0, 'Ha.TranThanh16_12_03@ymail.com', '2003-12-16 00:00:00', '67/276 Trần Hưng Đạo, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01882779824', '2016-05-13 11:20:19', '2016-05-13 11:20:19', 2),
(445, 'NGOCLE-THI_1997', 'b6dfd4d9dfe82578d81c2afe8ca4b93e', 'Lê Thị Ngọc\r\n', 0, 'ngoc08-11-1997@yahoo.com', '1997-11-08 00:00:00', '64/313 QL1, P. Ba Láng, Q. Cái Răng, TP. Cần Thơ', '09954824734', '2016-05-18 11:20:19', '2016-05-18 11:20:19', 2),
(446, 'linh011219', '3b58f6daad4f9a502f60d6b9f19dd3a2', 'Phan Nguyễn Thị Ái Linh\r\n', 0, 'LINHPHANNGUYENTHIAI011219@yahoo.com.vn', '1919-12-01 00:00:00', '105/23 Đặng Thanh Sử, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '0921747956', '2016-05-21 11:20:19', '2016-05-21 11:20:19', 2),
(447, 'hannguyenphangia80', '9091f963494af136c5fd84a0dc79453d', 'Nguyễn Phan Gia Hân\r\n', 0, 'NP_GHan1810@yahoo.com', '1980-10-18 00:00:00', '246 Võ Văn Kiệt, P. An Hòa, Q. Ninh Kiều, TP. Cần Thơ', '01621687040', '2016-06-14 11:20:19', '2016-06-14 11:20:19', 2),
(448, 'HoanNguyen-Thi.Ngoc-22-09-1986', '0be34ea6268a5d6847043606f7b78b42', 'Nguyễn Thị Ngọc Hoan\r\n', 0, 'hoan-ngoc.thi.nguyen.22.09@hotmail.com', '1986-09-22 00:00:00', '326 Nguyễn Trãi, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01242666209', '2016-06-27 11:20:19', '2016-06-27 11:20:19', 2),
(449, 'THUCPHUNGTHI_02_09_19', 'b7fe13e1cbe1c64f206300c7a823b39b', 'Phùng Thị Thục\r\n', 0, 'Phung-ThiThuc-19-09-02@hotmail.com', '2002-09-19 00:00:00', '26/207 Đinh Công Chánh, P. Long Tuyền , Q. Bình Thủy, TP. Cần Thơ', '01296825970', '2016-07-21 11:20:19', '2016-07-21 11:20:19', 2),
(450, 'HIEPLETHIMY78', '20329b0223ff442c368e6a497377fa62', 'Lê Thị Mỹ Hiệp\r\n', 0, 'LT-MHiep78-05-03@yahoo.com', '1978-05-03 00:00:00', '147 Trần Quang Diệu, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '0967926683', '2016-07-21 13:40:17', '2016-07-21 13:40:17', 2),
(451, 'ntt_thu_03042003', 'b886b1a85faef8e3c3577a577c0213e4', 'Nguyễn Thị Thanh Thu\r\n', 0, 'thu-03@gmail.com.vn', '2003-04-03 00:00:00', '319 Lý Tự Trọng, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01643584487', '2016-07-24 13:40:17', '2016-07-24 13:40:17', 2),
(452, 'PHUONG2412', '6bbcfcb4b67aa0965fb34d391aa29c0b', 'Trần Mỹ Phượng\r\n', 0, 'PhuongTranMy.24.12.82@gmail.com', '1982-12-24 00:00:00', '134 Nguyễn Văn Linh, P. Long Tuyền , Q. Bình Thủy, TP. Cần Thơ', '01219928711', '2016-07-29 13:40:17', '2016-07-29 13:40:17', 2),
(453, 'MATHI_THAI-HA_2101', '885115032badf699384b868b4dd40cb6', 'Mã Thị Thái Hà\r\n', 0, 'mttha210105@yahoo.com.vn', '2005-01-21 00:00:00', '129 Bùi Hữu Nghĩa, P. Long Tuyền, Q. Bình Thủy, TP. Cần Thơ', '01282885458', '2016-07-29 17:54:44', '2016-07-29 17:54:44', 2),
(454, 'van_13-05', '9a051500d6b968b5376a2b9e1e24c98c', 'Bành Ngọc Vân\r\n', 0, 'ngocvan850513@hotmail.com', '1985-05-13 00:00:00', '36 Ngô Quyền, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '0976193617', '2016-08-09 17:54:44', '2016-08-09 17:54:44', 2),
(455, 'Hieu.giang861016', 'f260b2347366b8509da86f7cd8195ad0', 'Trần Thị Hiếu Giang\r\n', 0, 'giangtranthihieu861016@yahoo.com', '1986-10-16 00:00:00', '25 Nguyễn Văn Cừ, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '0939975237', '2016-09-02 17:54:44', '2016-09-02 17:54:44', 2),
(456, 'tuyendong_thinguyen_21_02_68', '59b9955ab9eb91369af9fb7d7334a4c6', 'Nguyễn Thị Ðông Tuyền\r\n', 0, 'TUYENNGUYEN.THI.DONG.68.02.21@yahoo.com.vn', '1968-02-21 00:00:00', '231 Hòa Bình, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01632751570', '2016-09-02 21:52:04', '2016-09-02 21:52:04', 2),
(457, 'nhi19780524', '01add8fa2fd08a0df248fa292641226a', 'Hồ Phạm Thị Hảo Nhi\r\n', 0, 'nhi2405@gmail.com.vn', '1978-05-24 00:00:00', '346 QL91, P. Phước Thới, Q. Ô Môn, TP. Cần Thơ', '01646785828', '2016-09-03 01:09:45', '2016-09-03 01:09:45', 2),
(458, 'Thuy23-10-86', 'e0f5f1050896e83a4a05cb975f1c74a8', 'Nguyễn Thị Diễm Thúy\r\n', 0, 'Diem_thuy\r\n_86.10.23@ymail.com', '1986-10-23 00:00:00', '362 Ngô Quyền, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01882197735', '2016-09-03 10:03:41', '2016-09-03 10:03:41', 2),
(459, 'Quynh_Diem.Thi-Nguyen30-12-00', '680a57c1e2b86da748e545ca613832ec', 'Nguyễn Thị Diễm Quỳnh\r\n', 0, 'Quynh30.12@yahoo.com.vn', '2000-12-30 00:00:00', '275 Võ Nguyên Giáp, P. Tân Phú, Q. Cái Răng, TP. Cần Thơ', '0911182436', '2016-09-05 10:03:41', '2016-09-05 10:03:41', 2),
(460, 'Quan_PhuongThiTran_87_07_03', 'f8bfa9a27c108f207b1277ad06f1569e', 'Trần Thị Phương Quân\r\n', 0, 'TT-PQuan-1987-07-03@hotmail.com', '1987-07-03 00:00:00', '257 Xô Viết Nghệ Tĩnh, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01241033367', '2016-09-05 12:56:53', '2016-09-05 12:56:53', 2),
(461, 'quan08-11-78', '3475e67df3debe2476f02ee66399993f', 'Huỳnh Trần Bích Quân\r\n', 0, 'HUYNH.TRANBICHQUAN78@gmail.com', '1978-11-08 00:00:00', '61 Huỳnh Phan Hộ, P. Bình Thủy , Q. Bình Thủy, TP. Cần Thơ', '01628702411', '2016-09-26 12:56:53', '2016-09-26 12:56:53', 2),
(462, 'MAI_NGUYEN-THI-THAO28-02-81', '1c0f4cdacb89b6dbb4c2001ce0d9d37b', 'Nguyễn Thị Thảo Mai\r\n', 0, 'Mai_81@ymail.com', '1981-02-28 00:00:00', '3/198 Tỉnh lộ 922, P. Châu Văn Liêm, Q. Ô Môn, TP. Cần Thơ', '01636120308', '2016-09-26 12:56:53', '2016-09-26 12:56:53', 2),
(463, 'ltssan09011997', '09a5074efdd8e5641c688354a0f7b762', 'Lê Thị San San\r\n', 0, 'SANLETHISAN-97-01-09@hotmail.com', '1997-01-09 00:00:00', '387 Nguyễn Văn Linh, P. An Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01625208586', '2016-09-28 12:56:53', '2016-09-28 12:56:53', 2),
(464, 'nguyenthithuyhuyen2809', '15c44f42eab0db45e3b865fd6bb24de6', 'Nguyễn Thị Thúy Huyền\r\n', 0, 'thuyhuyen1978.09.28@yahoo.com', '1978-09-28 00:00:00', '21D/376 Nguyễn Thị Minh Khai, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '01663564445', '2016-10-02 12:56:53', '2016-10-02 12:56:53', 2),
(465, 'Thaiyen\r\n.63', 'e6bd592b6e81cc85c6d5551470f8bbf6', 'Hồ Thái Yên\r\n', 0, 'thai-yen\r\n-19630825@outlook.com', '1963-08-25 00:00:00', '324 Hai Bà Trưng, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '0978909736', '2016-10-02 15:14:48', '2016-10-02 15:14:48', 2),
(466, 'PK_Khuyen2109', 'daa91ddff7097425fdc3b807b1162f27', 'Phan Kim Khuyên\r\n', 0, 'Khuyen_1997@outlook.com', '1997-09-21 00:00:00', '94 Nguyễn Đệ, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01280586932', '2016-10-02 19:47:16', '2016-10-02 19:47:16', 2),
(467, 'LE-THI_NHI_21.08.02', '3d17c67f2048d4b3c48da8d55e0aaa45', 'Lê Thị Nhi\r\n', 0, 'NhiLe-Thi-02-08-21@outlook.com', '2002-08-21 00:00:00', '57/32 CMT8, P. An Thới , Q. Bình Thủy, TP. Cần Thơ', '09973033656', '2016-10-03 00:11:11', '2016-10-03 00:11:11', 2),
(468, 'THI19860919', 'e5c9b473287d41cb94546bbc4b980e7e', 'Nguyễn Thị Ngọc Thi\r\n', 0, 'thi860919@ymail.com', '1986-09-19 00:00:00', '341 Ngô Quyền, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01222296922', '2016-10-06 00:11:11', '2016-10-06 00:11:11', 2),
(469, 'HaiNguyenThi890410', '11fe2b6a58b2c6a640bbc65ff86128a0', 'Nguyễn Thị Hải\r\n', 0, 'NTHai10041989@yahoo.com', '1989-04-10 00:00:00', '369 30/4, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '0892861504', '2016-10-16 00:11:11', '2016-10-16 00:11:11', 2),
(470, 'oanhtramquach030129', '1a26ea7b0582c550a03bfd08d441cfc1', 'Quách Trâm Oanh\r\n', 0, 'Oanh.Tram.Quach.2003@yahoo.com.vn', '2003-01-29 00:00:00', '134 CMT8, P. Thới Bình, Q. Ninh Kiều, TP. Cần Thơ', '01676608670', '2016-10-16 02:20:42', '2016-10-16 02:20:42', 2),
(471, 'NTHSAN19850522', '7c8cca26d7046fa7e6c20ec7b39927ac', 'Nguyễn Thị Hải San\r\n', 0, 'SAN-HAI-THINGUYEN1985-05-22@hotmail.com', '1985-05-22 00:00:00', '152 Trần Văn Khéo, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01236423523', '2016-10-16 02:20:42', '2016-10-16 02:20:42', 2),
(472, 'huong_0508', '6016a7486d57f48113758ae1d93ad800', 'Lâm Thị Tuyết Hương\r\n', 0, 'HUONGLAMTHITUYET.05_08_05@hotmail.com', '2005-08-05 00:00:00', '71 Võ Văn Kiệt, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '01680784497', '2016-11-10 02:20:42', '2016-11-10 02:20:42', 2),
(473, 'vydien-thitran-05-05-00', 'c0b89016d4386d1079ec2b130f2296ce', 'Trần Thị Diên Vỹ\r\n', 0, 'Dienvy20000505@gmail.com.vn', '2000-05-05 00:00:00', '343 Võ Văn Kiệt, P. Bình Thủy , Q. Bình Thủy, TP. Cần Thơ', '0988136668', '2016-12-05 02:20:42', '2016-12-05 02:20:42', 2),
(474, 'diemhanh90', '558a314a9accfea17497ebebb8a32b7b', 'Nguyễn Diễm Hạnh\r\n', 0, 'hanhdiemnguyen1701@yahoo.com', '1990-01-17 00:00:00', '357 Nguyễn Truyền Thanh, P. Bình Thủy, Q. Bình Thủy, TP. Cần Thơ', '01682741116', '2016-12-18 02:20:42', '2016-12-18 02:20:42', 2),
(475, 'N.H-SINH-48_02_16', '3ff804a0d87d053d12592723daf4d9b0', 'Nguyễn Hải Sinh\r\n', 0, 'Sinh_16_02_48@gmail.com.vn', '1948-02-16 00:00:00', '25/296 Trần Ngọc Quế, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '0903420850', '2016-12-18 03:02:02', '2016-12-18 03:02:02', 2),
(476, 'TRAN-BAOTHINGUYEN20041120', 'b502b147f4bebf5d97c2bd01fbf521d0', 'Nguyễn Thị Bảo Trân\r\n', 0, 'trannguyenthi-bao-2011@yahoo.com.vn', '2004-11-20 00:00:00', '265 Hòa Bình, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01229033786', '2017-01-01 03:02:02', '2017-01-01 03:02:02', 2),
(477, 'NGUYETTHILE-NGUYEN-21091993', 'b2c6ffd4fbb4d0b87c1ed3003af6977e', 'Nguyễn Lê Thị Nguyệt\r\n', 0, 'thi.nguyet93@yahoo.com.vn', '1993-09-21 00:00:00', '385 Châu Văn Liêm, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01665376873', '2017-01-06 03:02:02', '2017-01-06 03:02:02', 2),
(478, 'nt-lam-86_10_09', 'd0f11257b322b8031c1e86d904d3ea1f', 'Nguyễn Thư Lâm\r\n', 0, 'LAMNGUYEN.THU-86@ymail.com', '1986-10-09 00:00:00', '69/64 3/2, P. An Bình, Q. Ninh Kiều, TP. Cần Thơ', '09932295057', '2017-01-06 08:25:25', '2017-01-06 08:25:25', 2),
(479, 'l_n_dao17041957', '9a3c997bba29ea7213346c8234919caf', 'Lê Ngọc Ðào\r\n', 0, 'LENGOCDAO_17.04@gmail.com', '1957-04-17 00:00:00', '278 Trần Hưng Đạo, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01688701604', '2017-01-15 08:25:25', '2017-01-15 08:25:25', 2),
(480, 'HUONG_NGUYENTHI.NHA_98_11_28', '08f32c292aeb1d6f1068d6813f342d30', 'Nguyễn Thị Nhã Hương\r\n', 0, 'NGUYEN.THI-NHAHUONG1998@hotmail.com', '1998-11-28 00:00:00', '285 QL91, P. Châu Văn Liêm, Q. Ô Môn, TP. Cần Thơ', '09925182388', '2017-01-18 08:25:25', '2017-01-18 08:25:25', 2),
(481, 'nguyentranthanhhuong.20.03.31', '5a8e526ecfecada06597106f9ec988f9', 'Nguyễn Trần Thanh Hương\r\n', 0, 'n-t.thuong.31-03-20@outlook.com', '1931-03-20 00:00:00', '277 Mậu Thân, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01679646546', '2017-01-23 08:25:25', '2017-01-23 08:25:25', 2),
(482, 'thuong-thuongluong78', '57f0e8021dce8494482e7cb1f01afef2', 'Lương Thương Thương\r\n', 0, 'luong-thuong-thuong09-08-1978@outlook.com', '1978-08-09 00:00:00', '207 Hòa Bình, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01652689477', '2017-01-23 08:25:25', '2017-01-23 08:25:25', 2),
(483, 'NguyenPhamThi_Ngoc-Lien78', '0292eee5a397271f11ee30edda15a6ac', 'Nguyễn Phạm Thị Ngọc Liên\r\n', 0, 'LIENNGOC_THIPHAMNGUYEN78_01_30@gmail.com', '1978-01-30 00:00:00', '31 Phan Đình Phùng, P. An Lạc, Q. Ninh Kiều, TP. Cần Thơ', '0971935900', '2017-02-16 08:25:25', '2017-02-16 08:25:25', 2),
(484, 'LanNguyen-ThiXuan.100904', 'cadb7883cd4a1bb034ebe0587104954e', 'Nguyễn Thị Xuân Lan\r\n', 0, 'lan-xuan.thi.nguyen_2004@outlook.com', '2004-09-10 00:00:00', '139 Châu Văn Liêm, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', '01283004115', '2017-02-16 08:25:25', '2017-02-16 08:25:25', 2),
(485, 'ngoc-thuthi-nguyen09-03-92', '1a27522e75b7d16f2e279baf2f9a532a', 'Nguyễn Thị Thu Ngọc\r\n', 0, 'ngoc_09.03@hotmail.com', '1992-03-09 00:00:00', '171 Lê Hồng Phong, P. Trà Nóc, Q. Bình Thủy, TP. Cần Thơ', '0935476667', '2017-02-16 08:25:25', '2017-02-16 08:25:25', 2),
(486, 'Lien-Diem_Thi.Duong.2005', '34a7359c9438647676c9328e42c5d164', 'Dương Thị Diễm Liên\r\n', 0, 'Diemlien\r\n.131005@ymail.com', '2005-10-13 00:00:00', '201 Xô Viết Nghệ Tĩnh, P. An Hội, Q. Ninh Kiều, TP. Cần Thơ', '01650709584', '2017-02-17 08:25:25', '2017-02-17 08:25:25', 2),
(487, 'PHUONGDANG-THI-DIEM1995', 'b1b17e6758a9c3a5330ccdac97e8d029', 'Đặng Thị Diễm Phượng\r\n', 0, 'PHUONGDIEMTHIDANG950630@ymail.com', '1995-06-30 00:00:00', '246 30/4, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ', '01678983518', '2017-02-17 09:04:10', '2017-02-17 09:04:10', 2),
(488, 'PHAM.THI-XUAN-DUNG-27.01', 'baaa3f2b96ee7a42278323423e4cb36f', 'Phạm Thị Xuân Dung\r\n', 0, 'PhamThi.Xuan-Dung.270184@gmail.com.vn', '1984-01-27 00:00:00', '197 Nguyễn Văn Linh, P. Long Tuyền , Q. Bình Thủy, TP. Cần Thơ', '01627065140', '2017-02-17 10:50:41', '2017-02-17 10:50:41', 2),
(489, 'THAO-UYEN26_08_1983', '54db99265ae25b7599c5a4177caa5329', 'Võ Thảo Uyên\r\n', 0, 'uyenvothao83@gmail.com', '1983-08-26 00:00:00', '299 Nguyễn Đệ, P. An Thới, Q. Bình Thủy, TP. Cần Thơ', '0899533400', '2017-03-08 10:50:41', '2017-03-08 10:50:41', 2),
(490, 'H.T.LOAN11.01.95', '417c370ebbbc2f95da3cacd9a60d2777', 'Hồ Túy Loan\r\n', 0, 'HOTUYLOAN1995@outlook.com', '1995-01-11 00:00:00', '225 Lý Tự Trọng, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '0967974149', '2017-03-18 10:50:41', '2017-03-18 10:50:41', 2),
(491, 'phuongtrang63.04.10', '73c896ef20d360695fe7b24ddc223f7f', 'Võ Phương Trang\r\n', 0, 'VoPhuongTrang63@yahoo.com', '1963-04-10 00:00:00', '206 30/4, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '0981160742', '2017-04-09 10:50:41', '2017-04-09 10:50:41', 2),
(492, 'hai_phuong05', '52218c3e320dbbe1987d5b9a21f13f1d', 'Trần Thị Hải Phương\r\n', 0, 'PHUONG.TRAN.THI_HAI-22.07.2005@ymail.com', '2005-07-22 00:00:00', '147 3/2, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ', '0885810182', '2017-04-23 10:50:41', '2017-04-23 10:50:41', 2),
(493, 'PBYEN2502', 'aa16e11649e884d3b4cc2925805e6ab0', 'Phùng Bạch Yến\r\n', 0, 'pb_yen.25-02-1978@yahoo.com', '1978-02-25 00:00:00', '111A/248 Quang Trung, P.  Hưng Phú, Q. Cái Răng, TP. Cần Thơ', '01203204241', '2017-04-23 15:06:10', '2017-04-23 15:06:10', 2),
(494, 'Mytram\r\n.30031938', '51527a06d391862988fb683aa34919a0', 'Võ Hà Thị Mỹ Trâm\r\n', 0, 'tram-38-03-30@hotmail.com', '1938-03-30 00:00:00', '148 Phan Văn Trị, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ', '01200131194', '2017-04-28 15:06:10', '2017-04-28 15:06:10', 2),
(495, 'AnhThuy.Tran_27.05', '2a5ff66a105668c9805afecb03ee6325', 'Trần Thùy Anh\r\n', 0, 'ANH.THUY.TRAN.1993.05.27@hotmail.com', '1993-05-27 00:00:00', '48E/31 Trần Hưng Đạo, P. An Cư, Q. Ninh Kiều, TP. Cần Thơ', '01297383898', '2017-04-28 17:23:06', '2017-04-28 17:23:06', 2),
(496, 'c.p-linh82-12-08', '5bf6cf645da29b0d21b9c8a67fb67a74', 'Cù Phương Linh\r\n', 0, 'CUPHUONGLINH82@gmail.com.vn', '1982-12-08 00:00:00', '34 Nguyễn Văn Linh, P. Long Hòa, Q. Bình Thủy, TP. Cần Thơ', '01644231911', '2017-04-29 17:23:06', '2017-04-29 17:23:06', 2),
(497, 'LE.NGUYENTHI_PHUC_97', '7108383f0ff3f32974831c06170734a2', 'Lê Nguyễn Thị Phúc\r\n', 0, 'thiphuc\r\n_1997@gmail.com.vn', '1997-06-03 00:00:00', '336 Võ Văn Kiệt, P. Bình Thủy , Q. Bình Thủy, TP. Cần Thơ', '0983292684', '2017-05-03 17:23:06', '2017-05-03 17:23:06', 2),
(498, 'nhung.131004', 'e749e4089c5965ca4b277aad9cf01c64', 'Trần Thị Tuyết Nhung\r\n', 0, 'NHUNGTUYETTHI_TRAN04@gmail.com', '2004-10-13 00:00:00', '94B/211 Trần Phú, P. Cái Khế, Q. Ninh Kiều, TP. Cần Thơ', '01270640716', '2017-05-10 17:23:06', '2017-05-10 17:23:06', 3),
(499, 'tram.nguyenthi.tuyet-84', 'c07d4733a6f97a246483a77e0d3b4423', 'Nguyễn Thị Tuyết Trầm\r\n', 0, 'Tram.TuyetThiNguyen.84@yahoo.com', '1984-06-28 00:00:00', '115/107 QL1, P. Lê Bình, Q. Cái Răng, TP. Cần Thơ', '01652310573', '2017-05-11 01:18:12', '2017-05-11 01:18:12', 3),
(500, 'KHANHLY\r\n.160281', '9ccfcb967f70264899c2ff65fb071cfe', 'Nguyễn Thị Khánh Ly\r\n', 0, 'Ly-NguyenThiKhanh16-02-1981@yahoo.com', '1981-02-16 00:00:00', '258 Đinh Công Chánh, P. Long Tuyền , Q. Bình Thủy, TP. Cần Thơ', '01889920962', '2017-05-12 01:18:12', '2017-05-12 01:18:12', 3);

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
  `nv_nguoiLap` smallint(5) UNSIGNED NOT NULL,
  `km_ngayLap` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nv_kyNhay` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `nv_kyDuyet` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
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
(1, 'Bó hoa', '2017-12-14 14:19:44', '2017-12-14 14:19:44', 2),
(2, 'Giỏ hoa', '2017-12-14 14:19:44', '2017-12-14 14:19:44', 2),
(3, 'Hoa giấy', '2017-12-14 14:19:44', '2017-12-14 14:19:44', 2),
(4, 'Hoa lẻ', '2017-12-14 14:19:44', '2017-12-14 14:19:44', 2),
(5, 'Phụ liệu', '2017-12-14 14:19:44', '2017-12-14 14:19:44', 2);

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2017_12_12_161644_create_loai_table', 1),
(8, '2017_12_12_165432_create_xuatxu_table', 2),
(15, '2017_12_12_165904_create_chude_table', 3),
(16, '2017_12_12_171313_create_nhacungcap_table', 3),
(17, '2017_12_12_174756_create_sanpham_table', 4),
(18, '2017_12_13_133328_create_hinhanh_table', 5),
(19, '2017_12_13_135131_create_mau_table', 6),
(21, '2017_12_13_141617_create_mau_sanpham_table', 7),
(22, '2017_12_13_144729_create_mau_chude_table', 8),
(23, '2017_12_13_145204_create_mau_chude_sanpham_table', 9),
(24, '2017_12_13_151453_create_mau_quyen_table', 10),
(27, '2017_12_13_154522_create_nhanvien_table', 11),
(28, '2017_12_13_161803_create_khuyenmai_table', 12),
(29, '2017_12_14_131055_create_khuyenmai_sanpham_table', 13),
(30, '2017_12_14_132849_create_phieunhap_sanpham_table', 14),
(31, '2017_12_14_134119_create_chitietnhap_sanpham_table', 15),
(32, '2017_12_14_134937_drop_khuyenmai_sanpham_table', 16),
(33, '2017_12_14_135402_create_khuyenmai_sanpham_table', 17),
(35, '2017_12_14_212823_create_khachhang_table', 18),
(36, '2017_12_14_223952_create_gopy_table', 19),
(38, '2017_12_14_225047_create_thanhtoan_table', 20),
(39, '2017_12_14_225918_create_vanchuyen_table', 21),
(40, '2017_12_14_230605_create_donhang_table', 22),
(42, '2017_12_14_233758_create_chitietdonhang_table', 23),
(43, '2017_12_14_234810_create_hoadonle_table', 24),
(44, '2017_12_15_003520_create_hoadonsi_table', 25);

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
  `nv_ma` smallint(3) UNSIGNED NOT NULL,
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
  `nv_nguoiLapPhieu` smallint(5) UNSIGNED NOT NULL,
  `pn_ngayLapPhieu` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nv_keToan` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `pn_ngayXacNhan` datetime DEFAULT NULL,
  `nv_thuKho` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
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
  ADD PRIMARY KEY (`sp_ma`,`cd_ma`),
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
  ADD UNIQUE KEY `khachhang_email_unique` (`kh_email`),
  ADD UNIQUE KEY `khachhang_dienthoai_unique` (`kh_dienThoai`);

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
  ADD UNIQUE KEY `q_ten` (`q_ten`),
  ADD UNIQUE KEY `q_taoMoi` (`q_taoMoi`);

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
  MODIFY `cd_ma` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `ncc_ma` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `nv_ma` smallint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
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
