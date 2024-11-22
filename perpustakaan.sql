-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2024 at 04:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(120) DEFAULT NULL,
  `no_telepon` varchar(20) DEFAULT NULL,
  `tgl_gabung` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `alamat`, `no_telepon`, `tgl_gabung`) VALUES
(1100000001, 'Ali Ahmad', 'Jakarta', '081234567890', '2022-01-15'),
(1100000002, 'Budi Santoso', 'Bandung', '081234567891', '2023-03-10'),
(1100000003, 'Citra Dewi', 'Surabaya', '081234567892', '2021-11-25'),
(1100000004, 'Diana Kusuma', 'Yogyakarta', '081234567893', '2024-05-05'),
(1100000005, 'Eko Pratama', 'Medan', '081234567894', '2020-07-17'),
(1100000006, 'Farah Lestari', 'Makassar', '081234567895', '2019-09-30'),
(1100000007, 'Gilang Rahmat', 'Semarang', '081234567896', '2023-02-14'),
(1100000008, 'Hana Setiawan', 'Denpasar', '081234567897', '2021-08-20'),
(1100000009, 'Ivan Kurnia', 'Palembang', '081234567898', '2022-06-12'),
(1100000010, 'Joko Sutrisno', 'Balikpapan', '081234567899', '2023-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `pengarang` varchar(100) DEFAULT NULL,
  `penerbit` varchar(100) DEFAULT NULL,
  `tahun_terbit` year(4) DEFAULT NULL,
  `genre` varchar(20) DEFAULT NULL,
  `jml_stok` int(11) DEFAULT NULL,
  `lokasi_rak` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `genre`, `jml_stok`, `lokasi_rak`) VALUES
(1000000001, 'Pemrograman PHP', 'John Doe', 'TechBooks', '2020', 'Teknologi', 5, 'Ra'),
(1000000002, 'Belajar MySQL', 'Jane Smith', 'DBPublish', '2021', 'Teknologi', 3, 'Ra'),
(1000000003, 'Matematika Dasar', 'Albert Newton', 'EduBooks', '2019', 'Edukasi', 7, 'Ra'),
(1000000004, 'Fisika Modern', 'Marie Curie', 'SciencePress', '2022', 'Sains', 4, 'Ra'),
(1000000005, 'Sejarah Dunia', 'Howard Stark', 'Histories', '2018', 'Sejarah', 6, 'Ra'),
(1000000006, 'Panduan Fotografi', 'Ansel Adams', 'ArtBooks', '2017', 'Seni', 2, 'Ra'),
(1000000007, 'Novel Misteri', 'Agatha Christie', 'FictionHouse', '2023', 'Fiksi', 10, 'Ra'),
(1000000008, 'Psikologi Praktis', 'Sigmund Freud', 'MindPublish', '2020', 'Psikologi', 3, 'Ra'),
(1000000009, 'Ekonomi Global', 'Adam Smith', 'EconoBooks', '2021', 'Ekonomi', 5, 'Ra'),
(1000000010, 'Pemrograman Python', 'Guido van Rossum', 'TechBooks', '2022', 'Teknologi', 8, 'Ra');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL,
  `deskripsi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_buku`
--

INSERT INTO `kategori_buku` (`id_kategori`, `nama_kategori`, `deskripsi`) VALUES
(1500000001, 'Teknologi', 'Buku tentang teknologi dan pemrograman.'),
(1500000002, 'Edukasi', 'Buku pembelajaran dan pendidikan.'),
(1500000003, 'Sains', 'Buku terkait ilmu pengetahuan.'),
(1500000004, 'Sejarah', 'Buku tentang peristiwa sejarah dunia.'),
(1500000005, 'Seni', 'Buku seni dan kreativitas.'),
(1500000006, 'Fiksi', 'Novel dan cerita fiksi.'),
(1500000007, 'Psikologi', 'Buku psikologi dan pengembangan diri.'),
(1500000008, 'Ekonomi', 'Buku tentang ekonomi dan bisnis.'),
(1500000009, 'Hukum', 'Buku hukum dan peraturan.'),
(1500000010, 'Kesehatan', 'Buku kesehatan dan kedokteran.');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_buku`, `id_anggota`, `tanggal_pinjam`, `tanggal_kembali`) VALUES
(1300000001, 1000000001, 1100000001, '2024-11-01', '2024-11-08'),
(1300000002, 1000000002, 1100000002, '2024-11-02', '2024-11-09'),
(1300000003, 1000000003, 1100000003, '2024-11-03', '2024-11-10'),
(1300000004, 1000000004, 1100000004, '2024-11-04', NULL),
(1300000005, 1000000005, 1100000005, '2024-11-05', '2024-11-12'),
(1300000006, 1000000006, 1100000006, '2024-11-06', '2024-11-13'),
(1300000007, 1000000007, 1100000007, '2024-11-07', NULL),
(1300000008, 1000000008, 1100000008, '2024-11-08', '2024-11-15'),
(1300000009, 1000000009, 1100000009, '2024-11-09', '2024-11-16'),
(1300000010, 1000000010, 1100000010, '2024-11-10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `password`) VALUES
(1400000001, 'Admin1', 'hashed_password1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `fk_idbuku` (`id_buku`),
  ADD KEY `fk_idpeminjaman` (`id_anggota`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1500000011;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1300000011;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1400000002;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `fk_idbuku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `fk_idpeminjaman` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
