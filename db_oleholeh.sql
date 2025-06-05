-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2025 at 02:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bukawarung`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'kelompok1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '+6281247938644', 'kelompok1@gmail.com', 'Jayapura.Papua');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(7, 'Minuman Khas Papua'),
(9, 'Kue Kering & Camilan'),
(10, 'Olahan Ikan & Laut');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(22, 10, 'Ikan Asar', 50000, '<h3>Ikan Asar, Sajian Sederhana yang Menggugah Selera dari Papua .Ada satu hidangan laut yang selalu menjadi primadona oleh-oleh bagi para pengunjung Papua, khususnya&nbsp;<a href=\"https://indonesiakaya.com/pustaka-indonesia/jayapura-gerbang-awal-semua-petualangan-di-bumi-timur-papua/\">Jayapura</a>. Namanya adalah ikan asar, sajian ikan yang diasap hingga kering. Ikan asar telah lama menjadi bagian tak terpisahkan dari kehidupan masyarakat Jayapura. Dinikmati sebagai hidangan sehari-hari maupun oleh-oleh bagi para wisatawan, kelezatan ikan asar tidak perlu diragukan lagi.</h3>\r\n', 'produk1748872816.jpg', 1, '2025-06-02 14:00:16'),
(23, 10, 'Abon Ikan', 32000, '<p>abonatum.id Kenalkan nih, produk best seller kitong yang merupakan produk pertama dari abonatum, varian ikan cakalang tersedia rasa original dan pedas @. 100% produk lokal yang di produksi di kota Jayapura, cocok untuk oleh-oleh #oleholehkotajayapura #abonatum<br />\r\n#abonikancakaland #hroduklokaliavanura</p>\r\n', 'produk1748879428.png', 1, '2025-06-02 14:11:03'),
(24, 10, 'Sambal Udang', 50000, '<p>KBRN, Jayapura:&nbsp;Indonesia terkenal dengan bermacam-macam resep sambal yang hadir menemani dan menambah cita rasa makanan. Buat Anda penggemar sambal, Anda bisa mencoba sambal rica olahan dari Orange Kitchen Jayapura.Produk sambal olahan dari Orange Kitchen Jayapura tersedia dengan berbagai varian. Di antaranya, ada sambal udang, sambal daging rusa, dan sambal cumi. Harga dari produk olahan sambal rica Orange Kitchen untuk 200 gram yaitu Rp50.000.&nbsp;Produk sambal rica Orange Kitchen ini tanpa menggunakan bahan pengawet, jadi memiliki rasa yang lebih segar dan alami.Disarankan ketika mengonsumsi, selalu menggunakan sendok bersih agar lebih awet dan tahan lama. Jangan lupa untuk dipanaskan terlebih dahulu tanpa menggunakan minyak.</p>\r\n', 'produk1748874512.jpeg', 1, '2025-06-02 14:28:32'),
(25, 9, 'Abon Gulung', 100000, '', 'produk1748874895.jpg', 1, '2025-06-02 14:34:55'),
(26, 9, 'Bagea Sagu', 50000, '<p>Kue ini bernama bagea, dan ada juga yang menyebut kue sagu bagea. Seperti namanya, kue sagu bagea berbahan dasar sagu.Bentuknya biasa dibuat kecil-kecil dengan warna cokelat. Memiliki tekstur agak keras tapi lumer di mulut saat dimakan. Selain sagu, bahan pembuatan lainnya ada gula, biji kenari, terigu, kayu manis, cengkih, kacang tanah, dan tepung terigu. Adanya kandungan rempah pada bagea membuat rasanya khas.Kue bagea juga dibuat dengan berbagai rasa seperti manis, asin, dan juga aneka rasa lain. Kue sagu bagea juga bisa diisi dengan kacang hijau untuk menambah rasa Kue sagu bagea cocok dinikmati kala menikmati sore hari bersama keluarga.</p>\r\n', 'produk1748876198.png', 1, '2025-06-02 14:56:38'),
(27, 9, 'Keripik keladi Manis Pedas', 30000, '<p>Keripik talas atau keripik keladi adalah oleh-oleh khas Jayapura yang populer.&nbsp;Keripik ini&nbsp;terbuat dari talas atau keladi yang diiris tipis, digoreng hingga renyah, dan dibumbui dengan berbagai bumbu tradisional seperti bawang putih, garam, dan cabai rawit.&nbsp;Keripik talas biasanya dijual dalam kemasan yang menarik dan dapat ditemukan di pusat oleh-oleh di Jayapura</p>\r\n', 'produk1748876656.jpg', 1, '2025-06-02 15:04:16'),
(28, 9, 'Keripik Pisang Madu', 22000, '', 'produk1748876978.jpg', 1, '2025-06-02 15:09:38'),
(29, 9, 'Stick Sagu', 45000, '<p>Produk makanan yang ditawarkan antara lain stik rumput laut Ruiweed, madu asli Wamena, tepung sagu siap saji, aneka kue sagu, aneka kue mangrove, kopi pinang Papua, sari pinang jahe, hingga teh jerujuh. Tersedia pula minyak kayu putih dari Biak Numfor dan minyak daun gatal Papua.</p>\r\n\r\n<p><em>Best seller</em> -nya adalah madu Wamena dan minyak kayu putih. Sedangkan produk kerajinan tangan meliputi ukiran, noken, lukisan kulit kayu, dan pernak pernik khas Papua lainnya.</p>\r\n\r\n<p><strong>Alamat:</strong> Jalan Raya Abepura, Sentani, Jayapura, Papua.</p>\r\n\r\n<p><strong>Jam operasional:</strong> Senin-Sabtu, pukul 10.00 - 21.00 WIT.<br />\r\n&nbsp;</p>\r\n', 'produk1748877576.jpg', 1, '2025-06-02 15:19:36'),
(30, 7, 'Amungme Cofee Biji Kopi', 150000, '<p>Kopi Amungme memiliki struktur yang full-body, sedikit asam rasanya, beraroma manis yang sangat khas dan kuat serta memiliki after taste (rasa yang tertinggal) berupa rasa moka.Sejarah kopi Amungme mulai diperkenalkan oleh Belanda saat masih menduduki wilayah Papua Barat.Kopi Amungme bersama varian kopi lain khas Papua, saat ini bisa dengan mudah ditemukan di sejumlah coffee shop yang tumbuh subur di Sentani dan Kota Jayapura. Dalam beberapa tahun terakhir, mulai digalakkan promosi kopi khas Papua ke sejumlah negara seperti Australia, Selandia Baru dan Amerika Serikat.</p>\r\n', 'produk1748879295.jpg', 1, '2025-06-02 15:48:15'),
(31, 10, 'Ikan Asar', 50000, '<p>Ikan ASAR JAYAPURA</p>\r\n', 'produk1748913581.jpg', 1, '2025-06-03 01:19:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
