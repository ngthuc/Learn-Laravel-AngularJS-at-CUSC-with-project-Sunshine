-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2018 at 03:22 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sunshine3`
--
CREATE DATABASE IF NOT EXISTS `sunshine3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `sunshine3`;

-- --------------------------------------------------------

--
-- Table structure for table `cusc_chitietdonhang`
--

CREATE TABLE `cusc_chitietdonhang` (
  `dh_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Đơn hàng # dh_ma # dh_ma # Mã đơn hàng',
  `sp_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Sản phẩm # sp_ma # sp_ten # Mã sản phẩm',
  `m_ma` tinyint(3) UNSIGNED NOT NULL COMMENT 'Màu sắc # m_ma # m_ten # Mã màu sản phẩm, 1-Phối màu (đỏ, vàng, ...)',
  `ctdh_soLuong` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Số lượng # Số lượng sản phẩm đặt mua',
  `ctdh_donGia` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Đơn giá # Giá bán'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Chi tiết đơn hàng # Chi tiết đơn hàng: sản phẩm, màu, số lượng, đơn giá, đơn hàng';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_chitietnhap`
--

CREATE TABLE `cusc_chitietnhap` (
  `pn_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Phiếu nhập # pn_ma # pn_ma # Mã phiếu nhập',
  `sp_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Sản phẩm # sp_ma # sp_ten # Mã sản phẩm',
  `m_ma` tinyint(3) UNSIGNED NOT NULL COMMENT 'Màu sắc # m_ma # m_ten # Mã màu sản phẩm, 1-Phối màu (đỏ, vàng, ...)',
  `ctn_soLuong` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Số lượng # Số lượng sản phẩm nhập kho',
  `ctn_donGia` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Đơng giá nhập # Giá nhập kho của sản phẩm'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Chi tiết nhập # Chi tiết phiếu nhập: sản phẩm, màu, số lượng, đơn giá, phiếu nhập';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_chude`
--

CREATE TABLE `cusc_chude` (
  `cd_ma` tinyint(3) UNSIGNED NOT NULL COMMENT 'Mã chủ đề',
  `cd_ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên chủ đề # Tên chủ đề',
  `cd_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm tạo # Thời điểm đầu tiên tạo chủ đề',
  `cd_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm cập nhật # Thời điểm cập nhật chủ đề gần nhất',
  `cd_trangThai` tinyint(4) NOT NULL DEFAULT '2' COMMENT 'Trạng thái # Trạng thái chủ đề: 1-khóa, 2-khả dụng'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Chủ đề # Chủ đề: cưới, sinh nhật, chúc mừng, chia buồn, ...';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_chude_sanpham`
--

CREATE TABLE `cusc_chude_sanpham` (
  `sp_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Sản phẩm # sp_ma # sp_ten # Mã sản phẩm',
  `cd_ma` tinyint(3) UNSIGNED NOT NULL COMMENT 'Chủ để # cd_ma # cd_ten # Mã chủ đề'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Chủ đề sản phẩm # Sản phầm thuộc các chủ đề';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_donhang`
--

CREATE TABLE `cusc_donhang` (
  `dh_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Mã đơn hàng, 1-Không xuất hóa đơn',
  `kh_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Khách hàng # kh_ma # kh_hoTen # Mã khách hàng',
  `dh_thoiGianDatHang` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm đặt hàng # Thời điểm đặt hàng',
  `dh_thoiGianNhanHang` datetime NOT NULL COMMENT 'Thời điểm giao hàng # Thời điểm giao hàng theo yêu cầu của khách hàng',
  `dh_nguoiNhan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Người nhận quà # Họ tên người nhận (tên hiển thị)',
  `dh_diaChi` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Địa chỉ người nhận # Địa chỉ người nhận',
  `dh_dienThoai` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Điện thoại người nhận # Điện thoại người nhận',
  `dh_nguoiGui` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Người tặng quà # Người tặng (tên hiển thị)',
  `dh_loiChuc` text COLLATE utf8mb4_unicode_ci COMMENT 'Lời chúc # Lời chúc ghi trên thiệp',
  `dh_daThanhToan` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Đã thanh toán # Đã thanh toán tiền (trường hợp tặng quà)',
  `nv_xuLy` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Xử lý đơn hàng # nv_ma # nv_hoTen # Mã nhân viên (người xử lý đơn hàng), 1-chưa phân công',
  `dh_ngayXuLy` datetime DEFAULT NULL COMMENT 'Thời điểm xử lý # Thời điểm xử lý đơn hàng',
  `nv_giaoHang` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Giao hàng # nv_ma # nv_hoTen # Mã nhân viên (người lập phiếu giao hàng và giao hàng), 1-chưa phân công',
  `dh_ngayLapPhieuGiao` datetime DEFAULT NULL COMMENT 'Thời điểm lập phiếu giao # Thời điểm lập phiếu giao',
  `dh_ngayGiaoHang` datetime DEFAULT NULL COMMENT 'Thời điểm khách nhận được hàng # Thời điểm khách nhận được hàng',
  `dh_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm tạo # Thời điểm đầu tiên tạo đơn hàng',
  `dh_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm cập nhật # Thời điểm cập nhật đơn hàng gần nhất',
  `dh_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Trạng thái # Trạng thái đơn hàng: 1-nhận đơn, 2-xử lý đơn, 3-giao hàng, 4-hoàn tất, 5-đổi trả, 6-hủy',
  `vc_ma` tinyint(3) UNSIGNED NOT NULL COMMENT 'Dịch vụ giao hàng # vc_ma # vc_ten # Mã dịch vụ giao hàng',
  `tt_ma` tinyint(3) UNSIGNED NOT NULL COMMENT 'Phương thức thanh toán # tt_ma # tt_ten # Mã phương thức thanh toán'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Đơn hàng # Đơn hàng';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_gopy`
--

CREATE TABLE `cusc_gopy` (
  `gy_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Mã góp ý',
  `gy_thoiGian` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm góp ý # Thời điểm góp ý',
  `gy_noiDung` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Góp ý # Nội dung góp ý',
  `kh_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Khách hàng # kh_ma # kh_hoTen # Mã khách hàng',
  `sp_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Sản phẩm # sp_ma # sp_ten # Mã sản phẩm',
  `gy_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '3' COMMENT 'Trạng thái # Trạng thái góp ý: 1-khóa, 2-hiển thị, 3-chờ duyệt'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Góp ý # Góp ý';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_hinhanh`
--

CREATE TABLE `cusc_hinhanh` (
  `sp_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Sản phẩm # sp_ma # sp_ten # Mã sản phẩm',
  `ha_stt` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Số thứ tự # Số thứ tự hình ảnh của mỗi sản phẩm',
  `ha_ten` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên hình ảnh # Tên hình ảnh (không bao gồm đường dẫn)'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Hình ảnh sản phẩm # Các hình ảnh chi tiết của sản phẩm';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_hoadonle`
--

CREATE TABLE `cusc_hoadonle` (
  `hdl_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Mã hóa đơn bán lẻ',
  `hdl_nguoiMuaHang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Người mua hàng # Họ tên người mua hàng',
  `hdl_dienThoai` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Điện thoại # Điện thoại',
  `hdl_diaChi` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Địa chỉ # Địa chỉ',
  `nv_lapHoaDon` smallint(5) UNSIGNED NOT NULL COMMENT 'Lập hóa đơn # nv_ma # nv_hoTen # Mã nhân viên (người lập hóa đơn)',
  `hdl_ngayXuatHoaDon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm xuất # Thời điểm xuất hóa đơn',
  `dh_ma` bigint(20) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Đơn hàng # dh_ma # dh_ma # Mã đơn hàng, 1-Không xuất hóa đơn'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Hóa đơn bán lẻ # Hóa đơn bán lẻ: sản phẩm, màu, số lượng, đơn giá, đơn hàng';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_hoadonsi`
--

CREATE TABLE `cusc_hoadonsi` (
  `hds_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Mã hóa đơn bán sỉ',
  `hds_nguoiMuaHang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Người mua hàng # Họ tên người mua hàng',
  `hds_tenDonVi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Đơn vị # Tên đơn vị',
  `hds_diaChi` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Địa chỉ # Địa chỉ đơn vị',
  `hds_maSoThue` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Mã số thuế # Mã số thuế đơn vị',
  `hds_soTaiKhoan` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL' COMMENT 'Số tài khoản # Số tài khoản',
  `nv_lapHoaDon` smallint(5) UNSIGNED NOT NULL COMMENT 'Lập hóa đơn # nv_ma # nv_hoTen # Mã nhân viên (người lập hóa đơn)',
  `hds_ngayXuatHoaDon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm xuất # Thời điểm xuất hóa đơn',
  `nv_thuTruong` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Thủ trưởng # nv_ma # nv_hoTen # Mã nhân viên (thủ trưởng), 1-chưa phân công',
  `hds_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm tạo # Thời điểm đầu tiên tạo hóa đơn',
  `hds_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm cập nhật # Thời điểm cập nhật hóa đơn gần nhất',
  `hds_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Trạng thái # Trạng thái hóa đơn: 1-lập hóa đơn, 2-xuất hóa đơn, 3-hủy',
  `dh_ma` bigint(20) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Đơn hàng # dh_ma # dh_ma # Mã đơn hàng, 1-Không xuất hóa đơn',
  `tt_ma` tinyint(3) UNSIGNED NOT NULL COMMENT 'Phương thức thanh toán # tt_ma # tt_ten # Mã phương thức thanh toán'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Hóa đơn bán sỉ # Hóa đơn bán sỉ: sản phẩm, màu, số lượng, đơn giá, đơn hàng';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_khachhang`
--

CREATE TABLE `cusc_khachhang` (
  `kh_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Mã khách hàng',
  `kh_taiKhoan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tài khoản # Tài khoản',
  `kh_matKhau` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Mật khẩu # Mật khẩu',
  `kh_hoTen` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Họ tên # Họ tên',
  `kh_gioiTinh` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Giới tính # Giới tính: 0-Nữ, 1-Nam, 2-Khác',
  `kh_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email # Email',
  `kh_ngaySinh` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sinh # Ngày sinh',
  `kh_diaChi` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL' COMMENT 'Địa chỉ # Địa chỉ',
  `kh_dienThoai` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT 'NULL' COMMENT 'Điện thoại # Điện thoại',
  `kh_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm tạo # Thời điểm đầu tiên tạo khách hàng',
  `kh_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm cập nhật # Thời điểm cập nhật khách hàng gần nhất',
  `kh_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '3' COMMENT 'Trạng thái # Trạng thái khách hàng: 1-khóa, 2-khả dụng, 3-chưa kích hoạt'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Khách hàng # Khách hàng';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_khuyenmai`
--

CREATE TABLE `cusc_khuyenmai` (
  `km_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Mã chương trình khuyến mãi',
  `km_ten` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên chương trình # Tên chương trình khuyến mãi',
  `km_noiDung` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Thông tin chi tiết # Nội dung chi tiết chương trình khuyến mãi',
  `km_batDau` datetime NOT NULL COMMENT 'Thời điểm bắt đầu # Thời điểm bắt đầu khuyến mãi',
  `km_ketThuc` datetime DEFAULT NULL COMMENT 'Thời điểm kết thúc # Thời điểm kết thúc khuyến mãi',
  `km_giaTri` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '100;100' COMMENT 'Giá trị khuyến mãi # Giá trị khuyến mãi trên tổng hóa đơn (giảm tiền/giảm % tiền, giảm % vận chuyển), định dạng: tien;VanChuyen',
  `nv_nguoiLap` smallint(5) UNSIGNED NOT NULL COMMENT 'Lập kế hoạch # nv_ma # nv_hoTen # Mã nhân viên (người lập chương trình khuyến mãi)',
  `km_ngayLap` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm lập # Thời điểm lập kế hoạch khuyến mãi',
  `nv_kyNhay` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Kế toán # nv_ma # nv_hoTen # Mã nhân viên (kế toán ký nháy), 1-chưa phân công',
  `km_ngayKyNhay` datetime DEFAULT NULL COMMENT 'Thời điểm ký nháy # Thời điểm ký nháy kế hoạch khuyến mãi',
  `nv_kyDuyet` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Duyệt kế hoạch # nv_ma # nv_hoTen # Mã nhân viên (thủ kho/giám đốc), 1-chưa phân công',
  `km_ngayDuyet` datetime DEFAULT NULL COMMENT 'Thời điểm duyệt # Ngày duyệt chương trình khuyến mãi',
  `km_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm tạo # Thời điểm đầu tiên tạo chương trình khuyến mãi',
  `km_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm cập nhật # Thời điểm cập nhật chương trình khuyến mãi gần nhất',
  `km_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '2' COMMENT 'Trạng thái # Trạng thái chương trình khuyến mãi: 1-ngưng khuyến mãi, 2-lập kế hoạch, 3-ký nháy, 4-duyệt kế hoạch'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Chương trình khuyến mãi # Chương trình khuyến mãi';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_khuyenmai_sanpham`
--

CREATE TABLE `cusc_khuyenmai_sanpham` (
  `km_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Chương trình # km_ma # km_ten # Mã chương trình khuyến mãi',
  `sp_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Sản phẩm # sp_ma # sp_ten # Mã sản phẩm',
  `m_ma` tinyint(3) UNSIGNED NOT NULL COMMENT 'Màu sắc # m_ma # m_ten # Mã màu sản phẩm, 1-Phối màu (đỏ, vàng, ...)',
  `kmsp_giaTri` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '100;0' COMMENT 'Giá trị khuyến mãi # Giá trị khuyến mãi (giảm tiền/giảm % tiền, số lượng), định dạng: tien;soLuong (soLuong = 0, không giới hạn số lượng)',
  `kmsp_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '2' COMMENT 'Trạng thái # Trạng thái khuyến mãi: 1-ngưng khuyến mãi, 2-có hiệu lực'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Thông tin khuyến mãi sản phẩm # Chi tiết về chương trình khuyến mãi';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_loai`
--

CREATE TABLE `cusc_loai` (
  `l_ma` tinyint(3) UNSIGNED NOT NULL COMMENT 'Mã loại sản phẩm',
  `l_ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên loại # Tên loại sản phẩm',
  `l_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm tạo # Thời điểm đầu tiên tạo loại sản phẩm',
  `l_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm cập nhật # Thời điểm cập nhật loại sản phẩm gần nhất',
  `l_trangThai` tinyint(4) NOT NULL DEFAULT '2' COMMENT 'Trạng thái # Trạng thái loại sản phẩm: 1-khóa, 2-khả dụng'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Loại sản phẩm # Loại sản phẩm';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_mau`
--

CREATE TABLE `cusc_mau` (
  `m_ma` tinyint(3) UNSIGNED NOT NULL COMMENT 'Mã màu sản phẩm, 1-Phối màu (đỏ, vàng, ...)',
  `m_ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên màu # Tên màu sản phẩm',
  `m_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm tạo # Thời điểm đầu tiên tạo màu',
  `m_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm cập nhật # Thời điểm cập nhật màu gần nhất',
  `m_trangThai` tinyint(4) NOT NULL DEFAULT '2' COMMENT 'Trạng thái # Trạng thái màu sản phẩm: 1-khóa, 2-khả dụng'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Màu sắc # Màu sản phẩm';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_mau_sanpham`
--

CREATE TABLE `cusc_mau_sanpham` (
  `sp_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Màu sắc # m_ma # m_ten # Mã sản phẩm',
  `m_ma` tinyint(3) UNSIGNED NOT NULL COMMENT 'Sản phẩm # sp_ma # sp_ten # Mã màu sản phẩm',
  `msp_soluong` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Số lượng # Số lượng sản phẩm tương ứng với màu'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Số lượng sản phẩm theo màu # Số lượng sản phẩm tương ứng với các màu';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_nhacungcap`
--

CREATE TABLE `cusc_nhacungcap` (
  `ncc_ma` smallint(5) UNSIGNED NOT NULL COMMENT 'Mã nhà cung cấp, 1-Tự tạo',
  `ncc_ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên nhà cung cấp # Tên nhà cung cấp',
  `ncc_daiDien` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Đại diện # Người đại diện',
  `ncc_diaChi` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Địa chỉ # Địa chỉ',
  `ncc_dienThoai` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Điện thoại # Điện thoại',
  `ncc_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email # Email',
  `ncc_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm tạo # Thời điểm đầu tiên tạo nhà cung cấp',
  `ncc_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm cập nhật # Thời điểm cập nhật nhà cung cấp gần nhất',
  `ncc_trangThai` tinyint(4) NOT NULL DEFAULT '2' COMMENT 'Trạng thái # Trạng thái nhà cung cấp: 1-khóa, 2-khả dụng',
  `xx_ma` smallint(5) UNSIGNED NOT NULL COMMENT 'Xuất xứ # xx_ma # xx_ten # Mã xuất xứ'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Nhà cung cấp # Nhà cung cấp hoa';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_nhanvien`
--

CREATE TABLE `cusc_nhanvien` (
  `nv_ma` smallint(5) UNSIGNED NOT NULL COMMENT 'Mã nhân viên, 1-chưa phân công',
  `nv_taiKhoan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tài khoản # Tài khoản',
  `nv_matKhau` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Mật khẩu # Mật khẩu',
  `nv_hoTen` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Họ tên # Họ tên',
  `nv_gioiTinh` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Giới tính # Giới tính: 0-Nữ, 1-Nam, 2-Khác',
  `nv_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email # Email',
  `nv_ngaySinh` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sinh # Ngày sinh',
  `nv_diaChi` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Địa chỉ # Địa chỉ',
  `nv_dienThoai` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Điện thoại # Điện thoại',
  `nv_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm tạo # Thời điểm đầu tiên tạo nhân viên',
  `nv_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm cập nhật # Thời điểm cập nhật nhân viên gần nhất',
  `nv_trangThai` tinyint(4) NOT NULL DEFAULT '2' COMMENT 'Trạng thái # Trạng thái nhân viên: 1-khóa, 2-khả dụng',
  `q_ma` tinyint(3) UNSIGNED NOT NULL COMMENT 'Quyền # Mã quyền: 1-Giám đốc, 2-Quản trị, 3-Quản lý kho, 4-Kế toán, 5-Nhân viên bán hàng, 6-Nhân viên giao hàng'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Nhân viên # Nhân viên';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_phieunhap`
--

CREATE TABLE `cusc_phieunhap` (
  `pn_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Mã phiếu nhập',
  `pn_nguoiGiao` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Người giao hàng # Người giao hàng',
  `pn_soHoaDon` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Số hóa đơn # Số hóa đơn',
  `pn_ngayXuatHoaDon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày xuất hóa đơn # Ngày xuất hóa đơn',
  `pn_ghiChu` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ghi chú # Ghi chú phiếu nhập',
  `nv_nguoiLapPhieu` smallint(5) UNSIGNED NOT NULL COMMENT 'Lập phiếu # Mã nhân viên (người lập phiếu nhập)',
  `pn_ngayLapPhieu` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm lập phiếu # Thời điểm lập phiếu nhập kho',
  `nv_keToan` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Xác nhận # Mã nhân viên (kế toán trưởng), 1-chưa phân công',
  `pn_ngayXacNhan` datetime DEFAULT NULL COMMENT 'Thời điểm xác nhận # Thời điểm xác nhận thanh toán phiếu nhập kho',
  `nv_thuKho` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Thủ kho # Mã nhân viên (thủ kho/giám đốc), 1-chưa phân công',
  `pn_ngayNhapKho` datetime DEFAULT NULL COMMENT 'Ngày nhập kho # Ngày nhập kho',
  `pn_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm tạo # Thời điểm đầu tiên tạo phiếu nhập',
  `pn_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm cập nhật # Thời điểm cập nhật phiếu nhập gần nhất',
  `pn_trangThai` tinyint(4) NOT NULL DEFAULT '2' COMMENT 'Trạng thái # Trạng thái phiếu nhập sản phẩm: 1-khóa, 2-lập phiếu, 3-thanh toán, 4-nhập kho',
  `ncc_ma` smallint(5) UNSIGNED NOT NULL COMMENT 'Nhà cung cấp # ncc_ma # ncc_ten # Mã nhà cung cấp'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Phiếu nhập # Phiếu nhập';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_quyen`
--

CREATE TABLE `cusc_quyen` (
  `q_ma` tinyint(3) UNSIGNED NOT NULL COMMENT 'Mã quyền: 1-Giám đốc, 2-Quản trị, 3-Quản lý kho, 4-Kế toán, 5-Nhân viên bán hàng, 6-Nhân viên giao hàng',
  `q_ten` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên quyền # Tên quyền',
  `q_dienGiai` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Diễn giải # Diễn giải về quyền',
  `q_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm tạo # Thời điểm đầu tiên tạo quyền',
  `q_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm cập nhật # Thời điểm cập nhật quyền gần nhất',
  `q_trangThai` tinyint(4) NOT NULL DEFAULT '2' COMMENT 'Trạng thái # Trạng thái quyền: 1-khóa, 2-khả dụng'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Quyền # Các quyền quản lý';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_sanpham`
--

CREATE TABLE `cusc_sanpham` (
  `sp_ma` bigint(20) UNSIGNED NOT NULL COMMENT 'Mã sản phẩm',
  `sp_ten` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên sản phẩm # Tên sản phẩm',
  `sp_giaGoc` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Giá gốc # Giá gốc của sản phẩm',
  `sp_giaBan` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Giá bán # Giá bán hiện tại của sản phẩm',
  `sp_hinh` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Hình đại diện # Hình đại diện của sản phẩm',
  `sp_thongTin` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Thông tin # Thông tin về sản phẩm',
  `sp_danhGia` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0;0;0;0;0' COMMENT 'Chất lượng # Chất lượng của sản phẩm (1-5 sao), định dạng: 1;2;3;4;5',
  `sp_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm tạo # Thời điểm đầu tiên tạo sản phẩm',
  `sp_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm cập nhật # Thời điểm cập nhật sản phẩm gần nhất',
  `sp_trangThai` tinyint(4) NOT NULL DEFAULT '2' COMMENT 'Trạng thái # Trạng thái sản phẩm: 1-khóa, 2-khả dụng',
  `l_ma` tinyint(3) UNSIGNED NOT NULL COMMENT 'Loại sản phẩm # l_ma # l_ten # Mã loại sản phẩm'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Sản phẩm # Sản phẩm: hoa, giỏ hoa, vòng hoa, ...';

--
-- Dumping data for table `cusc_sanpham`
--

INSERT INTO `cusc_sanpham` (`sp_ma`, `sp_ten`, `sp_giaGoc`, `sp_giaBan`, `sp_hinh`, `sp_thongTin`, `sp_danhGia`, `sp_taoMoi`, `sp_capNhat`, `sp_trangThai`, `l_ma`) VALUES
(1, 'aaa', 200, 300, '', '', '0;0;0;0;0', '2018-01-20 14:02:14', '2018-01-20 14:02:14', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cusc_thanhtoan`
--

CREATE TABLE `cusc_thanhtoan` (
  `tt_ma` tinyint(3) UNSIGNED NOT NULL COMMENT 'Mã phương thức thanh toán',
  `tt_ten` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên phương thức # Tên phương thức thanh toán',
  `tt_dienGiai` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Thông tin # Thông tin về phương thức thanh toán',
  `tt_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm tạo # Thời điểm đầu tiên tạo phương thức thanh toán',
  `tt_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm cập nhật # Thời điểm cập nhật phương thức thanh toán gần nhất',
  `tt_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '2' COMMENT 'Trạng thái # Trạng thái phương thức thanh toán: 1-khóa, 2-hiển thị'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Phương thức thanh toán # Phương thức thanh toán';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_vanchuyen`
--

CREATE TABLE `cusc_vanchuyen` (
  `vc_ma` tinyint(3) UNSIGNED NOT NULL COMMENT 'Mã dịch vụ giao hàng',
  `vc_ten` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên dịch vụ # Tên dịch vụ giao hàng',
  `vc_chiPhi` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Phí giao hàng # Phí giao hàng',
  `vc_dienGiai` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Thông tin # Thông tin về dịch vụ giao hàng',
  `vc_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm tạo # Thời điểm đầu tiên tạo dịch vụ giao hàng',
  `vc_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm cập nhật # Thời điểm cập nhật dịch vụ giao hàng gần nhất',
  `vc_trangThai` tinyint(3) UNSIGNED NOT NULL DEFAULT '2' COMMENT 'Trạng thái # Trạng thái dịch vụ giao hàng: 1-khóa, 2-hiển thị'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Dịch vụ giao hàng # Dịch vụ giao hàng';

-- --------------------------------------------------------

--
-- Table structure for table `cusc_xuatxu`
--

CREATE TABLE `cusc_xuatxu` (
  `xx_ma` smallint(5) UNSIGNED NOT NULL COMMENT 'Mã xuất xứ',
  `xx_ten` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Xuất xứ # Xuất xứ của sản phẩm',
  `xx_taoMoi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm tạo # Thời điểm đầu tiên tạo xuất xứ',
  `xx_capNhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời điểm cập nhật # Thời điểm cập nhật xuất xứ gần nhất',
  `xx_trangThai` tinyint(4) NOT NULL DEFAULT '2' COMMENT 'Trạng thái # Trạng thái xuất xứ: 1-khóa, 2-khả dụng'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Xuất xứ # Xuất xứ của sản phẩm';

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_05_17_043800_create_chude_table', 1),
(4, '2017_05_17_043801_create_khachhang_table', 1),
(5, '2017_05_17_043802_create_loai_table', 1),
(6, '2017_05_17_043803_create_mau_table', 1),
(7, '2017_05_17_043804_create_quyen_table', 1),
(8, '2017_05_17_043805_create_thanhtoan_table', 1),
(9, '2017_05_17_043806_create_vanchuyen_table', 1),
(10, '2017_05_17_043807_create_xuatxu_table', 1),
(11, '2017_05_17_043808_create_sanpham_table', 1),
(12, '2017_05_17_043809_create_hinhanh_table', 1),
(13, '2017_05_17_043810_create_nhanvien_table', 1),
(14, '2017_05_17_043811_create_nhacungcap_table', 1),
(15, '2017_05_17_043812_create_khuyenmai_table', 1),
(16, '2017_05_17_043813_create_gopy_table', 1),
(17, '2017_05_17_043814_create_mau_sanpham_table', 1),
(18, '2017_05_17_043815_create_chude_sanpham_table', 1),
(19, '2017_05_17_043816_create_donhang_table', 1),
(20, '2017_05_17_043817_create_phieunhap_table', 1),
(21, '2017_05_17_043818_create_khuyenmai_sanpham_table', 1),
(22, '2017_05_17_043819_create_hoadonsi_table', 1),
(23, '2017_05_17_043820_create_chitietnhap_table', 1),
(24, '2017_05_17_043821_create_chitietdonhang_table', 1),
(25, '2017_05_17_043822_create_hoadonle_table', 1);

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cusc_chitietdonhang`
--
ALTER TABLE `cusc_chitietdonhang`
  ADD PRIMARY KEY (`dh_ma`,`sp_ma`,`m_ma`),
  ADD KEY `cusc_chitietdonhang_m_ma_foreign` (`m_ma`),
  ADD KEY `cusc_chitietdonhang_sp_ma_foreign` (`sp_ma`);

--
-- Indexes for table `cusc_chitietnhap`
--
ALTER TABLE `cusc_chitietnhap`
  ADD PRIMARY KEY (`pn_ma`,`sp_ma`,`m_ma`),
  ADD KEY `cusc_chitietnhap_m_ma_foreign` (`m_ma`),
  ADD KEY `cusc_chitietnhap_sp_ma_foreign` (`sp_ma`);

--
-- Indexes for table `cusc_chude`
--
ALTER TABLE `cusc_chude`
  ADD PRIMARY KEY (`cd_ma`),
  ADD UNIQUE KEY `cusc_chude_cd_ma_cd_ten_unique` (`cd_ma`,`cd_ten`);

--
-- Indexes for table `cusc_chude_sanpham`
--
ALTER TABLE `cusc_chude_sanpham`
  ADD PRIMARY KEY (`sp_ma`,`cd_ma`),
  ADD KEY `cusc_chude_sanpham_cd_ma_foreign` (`cd_ma`);

--
-- Indexes for table `cusc_donhang`
--
ALTER TABLE `cusc_donhang`
  ADD PRIMARY KEY (`dh_ma`),
  ADD KEY `cusc_donhang_kh_ma_foreign` (`kh_ma`),
  ADD KEY `cusc_donhang_nv_giaohang_foreign` (`nv_giaoHang`),
  ADD KEY `cusc_donhang_nv_xuly_foreign` (`nv_xuLy`),
  ADD KEY `cusc_donhang_tt_ma_foreign` (`tt_ma`),
  ADD KEY `cusc_donhang_vc_ma_foreign` (`vc_ma`);

--
-- Indexes for table `cusc_gopy`
--
ALTER TABLE `cusc_gopy`
  ADD PRIMARY KEY (`gy_ma`),
  ADD KEY `cusc_gopy_kh_ma_foreign` (`kh_ma`),
  ADD KEY `cusc_gopy_sp_ma_foreign` (`sp_ma`);

--
-- Indexes for table `cusc_hinhanh`
--
ALTER TABLE `cusc_hinhanh`
  ADD PRIMARY KEY (`sp_ma`,`ha_stt`);

--
-- Indexes for table `cusc_hoadonle`
--
ALTER TABLE `cusc_hoadonle`
  ADD PRIMARY KEY (`hdl_ma`),
  ADD KEY `cusc_hoadonle_dh_ma_foreign` (`dh_ma`),
  ADD KEY `cusc_hoadonle_nv_laphoadon_foreign` (`nv_lapHoaDon`);

--
-- Indexes for table `cusc_hoadonsi`
--
ALTER TABLE `cusc_hoadonsi`
  ADD PRIMARY KEY (`hds_ma`),
  ADD KEY `cusc_hoadonsi_dh_ma_foreign` (`dh_ma`),
  ADD KEY `cusc_hoadonsi_nv_laphoadon_foreign` (`nv_lapHoaDon`),
  ADD KEY `cusc_hoadonsi_nv_thutruong_foreign` (`nv_thuTruong`),
  ADD KEY `cusc_hoadonsi_tt_ma_foreign` (`tt_ma`);

--
-- Indexes for table `cusc_khachhang`
--
ALTER TABLE `cusc_khachhang`
  ADD PRIMARY KEY (`kh_ma`),
  ADD UNIQUE KEY `cusc_khachhang_kh_taikhoan_kh_email_kh_dienthoai_unique` (`kh_taiKhoan`,`kh_email`,`kh_dienThoai`);

--
-- Indexes for table `cusc_khuyenmai`
--
ALTER TABLE `cusc_khuyenmai`
  ADD PRIMARY KEY (`km_ma`),
  ADD UNIQUE KEY `cusc_khuyenmai_km_ten_unique` (`km_ten`),
  ADD KEY `cusc_khuyenmai_nv_kyduyet_foreign` (`nv_kyDuyet`),
  ADD KEY `cusc_khuyenmai_nv_kynhay_foreign` (`nv_kyNhay`),
  ADD KEY `cusc_khuyenmai_nv_nguoilap_foreign` (`nv_nguoiLap`);

--
-- Indexes for table `cusc_khuyenmai_sanpham`
--
ALTER TABLE `cusc_khuyenmai_sanpham`
  ADD PRIMARY KEY (`km_ma`,`sp_ma`,`m_ma`),
  ADD KEY `cusc_khuyenmai_sanpham_m_ma_foreign` (`m_ma`),
  ADD KEY `cusc_khuyenmai_sanpham_sp_ma_foreign` (`sp_ma`);

--
-- Indexes for table `cusc_loai`
--
ALTER TABLE `cusc_loai`
  ADD PRIMARY KEY (`l_ma`),
  ADD UNIQUE KEY `cusc_loai_l_ten_unique` (`l_ten`);

--
-- Indexes for table `cusc_mau`
--
ALTER TABLE `cusc_mau`
  ADD PRIMARY KEY (`m_ma`),
  ADD UNIQUE KEY `cusc_mau_m_ten_unique` (`m_ten`);

--
-- Indexes for table `cusc_mau_sanpham`
--
ALTER TABLE `cusc_mau_sanpham`
  ADD PRIMARY KEY (`sp_ma`,`m_ma`),
  ADD KEY `cusc_mau_sanpham_m_ma_foreign` (`m_ma`);

--
-- Indexes for table `cusc_nhacungcap`
--
ALTER TABLE `cusc_nhacungcap`
  ADD PRIMARY KEY (`ncc_ma`),
  ADD UNIQUE KEY `cusc_nhacungcap_ncc_ten_ncc_dienthoai_ncc_email_unique` (`ncc_ten`,`ncc_dienThoai`,`ncc_email`),
  ADD KEY `cusc_nhacungcap_xx_ma_foreign` (`xx_ma`);

--
-- Indexes for table `cusc_nhanvien`
--
ALTER TABLE `cusc_nhanvien`
  ADD PRIMARY KEY (`nv_ma`),
  ADD UNIQUE KEY `cusc_nhanvien_nv_taikhoan_nv_email_nv_dienthoai_unique` (`nv_taiKhoan`,`nv_email`,`nv_dienThoai`),
  ADD KEY `cusc_nhanvien_q_ma_foreign` (`q_ma`);

--
-- Indexes for table `cusc_phieunhap`
--
ALTER TABLE `cusc_phieunhap`
  ADD PRIMARY KEY (`pn_ma`),
  ADD UNIQUE KEY `cusc_phieunhap_pn_sohoadon_unique` (`pn_soHoaDon`),
  ADD KEY `cusc_phieunhap_ncc_ma_foreign` (`ncc_ma`),
  ADD KEY `cusc_phieunhap_nv_ketoan_foreign` (`nv_keToan`),
  ADD KEY `cusc_phieunhap_nv_nguoilapphieu_foreign` (`nv_nguoiLapPhieu`),
  ADD KEY `cusc_phieunhap_nv_thukho_foreign` (`nv_thuKho`);

--
-- Indexes for table `cusc_quyen`
--
ALTER TABLE `cusc_quyen`
  ADD PRIMARY KEY (`q_ma`),
  ADD UNIQUE KEY `cusc_quyen_q_ten_unique` (`q_ten`);

--
-- Indexes for table `cusc_sanpham`
--
ALTER TABLE `cusc_sanpham`
  ADD PRIMARY KEY (`sp_ma`),
  ADD UNIQUE KEY `cusc_sanpham_sp_ten_unique` (`sp_ten`),
  ADD KEY `cusc_sanpham_l_ma_foreign` (`l_ma`);

--
-- Indexes for table `cusc_thanhtoan`
--
ALTER TABLE `cusc_thanhtoan`
  ADD PRIMARY KEY (`tt_ma`),
  ADD UNIQUE KEY `cusc_thanhtoan_tt_ten_unique` (`tt_ten`);

--
-- Indexes for table `cusc_vanchuyen`
--
ALTER TABLE `cusc_vanchuyen`
  ADD PRIMARY KEY (`vc_ma`),
  ADD UNIQUE KEY `cusc_vanchuyen_vc_ten_unique` (`vc_ten`);

--
-- Indexes for table `cusc_xuatxu`
--
ALTER TABLE `cusc_xuatxu`
  ADD PRIMARY KEY (`xx_ma`),
  ADD UNIQUE KEY `cusc_xuatxu_xx_ten_unique` (`xx_ten`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `cusc_chude`
--
ALTER TABLE `cusc_chude`
  MODIFY `cd_ma` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã chủ đề';

--
-- AUTO_INCREMENT for table `cusc_donhang`
--
ALTER TABLE `cusc_donhang`
  MODIFY `dh_ma` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã đơn hàng, 1-Không xuất hóa đơn';

--
-- AUTO_INCREMENT for table `cusc_gopy`
--
ALTER TABLE `cusc_gopy`
  MODIFY `gy_ma` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã góp ý';

--
-- AUTO_INCREMENT for table `cusc_hoadonle`
--
ALTER TABLE `cusc_hoadonle`
  MODIFY `hdl_ma` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã hóa đơn bán lẻ';

--
-- AUTO_INCREMENT for table `cusc_hoadonsi`
--
ALTER TABLE `cusc_hoadonsi`
  MODIFY `hds_ma` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã hóa đơn bán sỉ';

--
-- AUTO_INCREMENT for table `cusc_khachhang`
--
ALTER TABLE `cusc_khachhang`
  MODIFY `kh_ma` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã khách hàng';

--
-- AUTO_INCREMENT for table `cusc_khuyenmai`
--
ALTER TABLE `cusc_khuyenmai`
  MODIFY `km_ma` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã chương trình khuyến mãi';

--
-- AUTO_INCREMENT for table `cusc_loai`
--
ALTER TABLE `cusc_loai`
  MODIFY `l_ma` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã loại sản phẩm';

--
-- AUTO_INCREMENT for table `cusc_mau`
--
ALTER TABLE `cusc_mau`
  MODIFY `m_ma` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã màu sản phẩm, 1-Phối màu (đỏ, vàng, ...)';

--
-- AUTO_INCREMENT for table `cusc_nhacungcap`
--
ALTER TABLE `cusc_nhacungcap`
  MODIFY `ncc_ma` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã nhà cung cấp, 1-Tự tạo';

--
-- AUTO_INCREMENT for table `cusc_nhanvien`
--
ALTER TABLE `cusc_nhanvien`
  MODIFY `nv_ma` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã nhân viên, 1-chưa phân công';

--
-- AUTO_INCREMENT for table `cusc_phieunhap`
--
ALTER TABLE `cusc_phieunhap`
  MODIFY `pn_ma` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã phiếu nhập';

--
-- AUTO_INCREMENT for table `cusc_quyen`
--
ALTER TABLE `cusc_quyen`
  MODIFY `q_ma` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã quyền: 1-Giám đốc, 2-Quản trị, 3-Quản lý kho, 4-Kế toán, 5-Nhân viên bán hàng, 6-Nhân viên giao hàng';

--
-- AUTO_INCREMENT for table `cusc_sanpham`
--
ALTER TABLE `cusc_sanpham`
  MODIFY `sp_ma` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã sản phẩm', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cusc_thanhtoan`
--
ALTER TABLE `cusc_thanhtoan`
  MODIFY `tt_ma` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã phương thức thanh toán';

--
-- AUTO_INCREMENT for table `cusc_vanchuyen`
--
ALTER TABLE `cusc_vanchuyen`
  MODIFY `vc_ma` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã dịch vụ giao hàng';

--
-- AUTO_INCREMENT for table `cusc_xuatxu`
--
ALTER TABLE `cusc_xuatxu`
  MODIFY `xx_ma` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã xuất xứ';

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
