-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2023 at 12:19 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aplikasi_slb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alur`
--

CREATE TABLE `tbl_alur` (
  `kd_alur` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar_alur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_alur`
--

INSERT INTO `tbl_alur` (`kd_alur`, `judul`, `deskripsi`, `gambar_alur`) VALUES
(1, 'Registerasi hfgh', 'Sebelum Melakukan Pendaftaran silahkan Lakukan Registerasi Akun Terlebih Dahulu Supaya Memiliki Akun', 'alur-26012022da48f06eb9.png'),
(2, 'Lengkapi Berkas', 'Setelah Melengkapi Berkas Silahkan Untuk Melengkapi Berkas Yang Ada Supaya Dapat Melanjutkan Ke Proses Selanjutnya', 'alur-2601202268e28289f3.png'),
(3, 'Lengkapi berkas', 'Setelah Melengkapi Biodata Silahkan Untuk Melakukan Proses Melengkapi Berkas Yang Ada Untuk Dapat Melanjutkan Proses Pnedaftaran Yang Ada', 'alur-260120220846cd95ad.png'),
(4, 'Daftar Sekolah', 'Setelah Berkas Lengkap Silahkan Melakuka Pendaftaran dan Pilih Jurusan Yang Anda Minati, Terdapat Berbagai Jurusan Yang Dapat Anda Pilih', 'alur-26012022ae6d25274d.png'),
(5, 'Menunggu Hasil', 'Setelah Mendaftar, Tunggu Hasil dan Cek Secara Berkala Pada Menu Daftar Berkas Yang Ada Pada Sub Menu Profil', 'alur-260120227dc482823b.png'),
(6, 'Selesai', 'Semua Proses Wajib Di Ikuti Secara Urut Untuk Dapat Mendaftar Pada Sekolahan Kami, Terimakasih dan Semoga Diterima', 'alur-260120228d907c820f.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_kelas`
--

CREATE TABLE `tbl_detail_kelas` (
  `id_detail_kelas` int(11) NOT NULL,
  `id_murid` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_detail_kelas`
--

INSERT INTO `tbl_detail_kelas` (`id_detail_kelas`, `id_murid`, `id_kelas`, `id_users`) VALUES
(6, 3, 3, 1),
(7, 4, 3, 1),
(11, 7, 3, 1),
(13, 3, 4, 1),
(14, 4, 4, 1),
(15, 7, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `kd_galeri` int(11) NOT NULL,
  `galeri_gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`kd_galeri`, `galeri_gambar`) VALUES
(15, '797-back.jpg'),
(16, '889-bc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_informasi`
--

CREATE TABLE `tbl_informasi` (
  `kd_informasi` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `gambar_informasi` varchar(200) NOT NULL,
  `tgl_informasi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_informasi`
--

INSERT INTO `tbl_informasi` (`kd_informasi`, `judul`, `deskripsi`, `penulis`, `gambar_informasi`, `tgl_informasi`) VALUES
(2, 'Kunjungan Industri Anak Siswa SMA 1 Pekan Baru', 'Sebanyak 15 orang guru dari SMA NEGERI 1 mengunjungi SMA Negeri 41Pekanbaru, Rombongan ini dipimpin langsung oleh Kepala Sekolah Bapak RAFLES, S.Pd. Kunjungan ini sebagai wadah silaturrahmi dan juga berbagi informasi tentang berbagai program sekolah khususnya program LITERASI sekaligus penanda tangani perjanjian kerjasama antar sekolah tentang pengembangan Perpustakaan \"Lentera Hati\" SMA Negeri 1 Pekanbaru dengan Perpustakaan SMA Negeri 1 Dumai agar bisa saling bekerjasama dalam peningkatan mutu dan kualitas pendidikan dimasing-masing sekolah khususnya dibidang perpustakaan dan literasi sekolah.\r\n\r\nDalam kesempatan tersebut, kedatangan rombongan dari SMA Negeri 1 Dumai tersebut langsung disambut oleh kepala SMA Negeri 4 Pekanbaru bersama dengan guru, tenaga kependidikan dan beberapa orang peserta didik SMA Negeri 4 Pekanbaru dan tetap menerapkan SOP Penanganan Covid-19 dan selalu mematuhi protokol kesehatan\r\n\r\nKepala SMA Negeri 4 Pekanbaru Ibu Hj. YAN KHORIANA, M.Pd menyampaikan apresiasinya terhadap kunjungan SMA NEGERI 1 DUMAI. Beliau berharap kunjungan ini bisa membuat masing-masing sekolah termotivasi untuk meningkatkan prestasinya. “Budaya literasi harus ditanamkan sejak dini kepada peserta didik, karena dengan literasi mereka akan menguasai informasi dan ilmu pengetahuan” terangnya.\r\n\r\nPada kesempatan ini, Kepala SMA NEGERI 4 PEKANBARU juga memberikan pemaparannya terkait profil sekolah secara singkat, dan juga menampilkan berbagai prestasi peserta didik baik dibidang akademik maupun non akademik.(RP)', 'Ratih', 'informasi-270120224ac8de8527.jpg', '2022-01-27'),
(3, 'dfgfdg', '<p>dfgdfg</p>', 'dfgdfg', 'informasi-19082023c58c9ce64c.jpg', '2023-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(3, 'Tunarungu'),
(6, 'tunawicara'),
(7, 'autisme');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id_kelas` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_kelas` varchar(255) NOT NULL,
  `id_periode` int(11) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id_kelas`, `id_kategori`, `nama_kelas`, `id_periode`, `id_users`) VALUES
(3, 3, 'kelas 1', 1, 7),
(4, 6, 'kelas 2', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_konsultasi`
--

CREATE TABLE `tbl_konsultasi` (
  `id_konsultasi` int(11) NOT NULL,
  `tanggal_konsultasi` date NOT NULL,
  `jam_konsultasi` time NOT NULL,
  `konsultasi` varchar(255) NOT NULL,
  `status_konsultasi` enum('diajukan','approve','ditunda') NOT NULL,
  `jawaban_konsultasi` varchar(255) DEFAULT NULL,
  `id_users` int(11) NOT NULL,
  `id_wali_murid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_konsultasi`
--

INSERT INTO `tbl_konsultasi` (`id_konsultasi`, `tanggal_konsultasi`, `jam_konsultasi`, `konsultasi`, `status_konsultasi`, `jawaban_konsultasi`, `id_users`, `id_wali_murid`) VALUES
(3, '2023-10-06', '19:38:00', 'sdasdsad', 'approve', 'iya anaknya baik', 7, 1),
(4, '2023-10-08', '18:42:00', 'testsetestesa vdfsf', 'approve', 'dasdasdad', 7, 1),
(5, '2023-10-13', '13:39:00', 'testes acdsf dsfdsfdsf', 'approve', 'sasdasd', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_laporan_belajar`
--

CREATE TABLE `tbl_laporan_belajar` (
  `id_laporan_belajar` int(11) NOT NULL,
  `nilai_pengetahuan` int(11) NOT NULL,
  `deskripsi_pengetahuan` varchar(255) DEFAULT NULL,
  `id_murid` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `date_penilaian` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_mata_pelajaran` int(11) NOT NULL,
  `nilai_ketrampilan` int(11) NOT NULL,
  `deskripsi_ketrampilan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_laporan_belajar`
--

INSERT INTO `tbl_laporan_belajar` (`id_laporan_belajar`, `nilai_pengetahuan`, `deskripsi_pengetahuan`, `id_murid`, `id_users`, `id_kelas`, `date_penilaian`, `id_mata_pelajaran`, `nilai_ketrampilan`, `deskripsi_ketrampilan`) VALUES
(13, 90, 'dsjf', 3, 1, 3, '2023-11-12 10:13:05', 2, 70, 'jkasfhdsa'),
(14, 70, 'hfd', 3, 1, 3, '2023-11-12 10:15:53', 1, 80, 'dfgdg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mata_pelajaran`
--

CREATE TABLE `tbl_mata_pelajaran` (
  `id_mata_pelajaran` int(11) NOT NULL,
  `mata_pelajaran` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_mata_pelajaran`
--

INSERT INTO `tbl_mata_pelajaran` (`id_mata_pelajaran`, `mata_pelajaran`) VALUES
(1, 'Matematika'),
(2, 'Bahasa Infonesia');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_monitoring`
--

CREATE TABLE `tbl_monitoring` (
  `id_monitoring` int(11) NOT NULL,
  `id_murid` int(11) NOT NULL,
  `perkembangan` varchar(255) NOT NULL,
  `id_users` int(11) NOT NULL,
  `date_monitoring` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_monitoring`
--

INSERT INTO `tbl_monitoring` (`id_monitoring`, `id_murid`, `perkembangan`, `id_users`, `date_monitoring`) VALUES
(4, 3, 'gdssdg', 7, '2023-10-08 08:42:17'),
(5, 3, 'sfasfasf', 7, '2023-10-08 13:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_murid`
--

CREATE TABLE `tbl_murid` (
  `id_murid` int(11) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `agama` varchar(200) NOT NULL DEFAULT 'admin',
  `status_murid` enum('menunggu hasil','diterima','tidak') NOT NULL DEFAULT 'diterima'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_murid`
--

INSERT INTO `tbl_murid` (`id_murid`, `nik`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `gambar`, `alamat`, `agama`, `status_murid`) VALUES
(3, '324', 'sdfsdfds', 'Laki-laki', '3wsdff', '2023-09-28', '956-caravan travel.png', 'xcvdsfgdsf', 'Islam', 'diterima'),
(4, '23432', 'tewtw', 'Laki-laki', 'jakarta', '2023-10-07', '702-back.jpg', 'dsgsdg', 'Islam', 'diterima'),
(5, '4234', 'saya', 'Laki-laki', '212', '2023-10-24', '931-bc.jpg', 'rewrersfds', 'Islam', 'diterima'),
(6, '12313', 'contoh', 'Laki-laki', 'contoh', '2023-10-08', '842-background.jpeg', 'gfgh', 'Islam', 'diterima'),
(7, '12321', 'test', 'Laki-laki', 'test', '2023-10-29', '278-back.jpg', 'dsfdsf', 'Islam', 'diterima'),
(8, '423432', 'testtest', 'Laki-laki', 'testtest', '2023-10-31', '651-bc.jpg', 'testtest', 'Islam', 'diterima');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_periode`
--

CREATE TABLE `tbl_periode` (
  `id_periode` int(11) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_periode`
--

INSERT INTO `tbl_periode` (`id_periode`, `periode`) VALUES
(1, '2022-2023'),
(3, '2021-2022'),
(4, '2023-2024');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profile`
--

CREATE TABLE `tbl_profile` (
  `kd_profile_sekolah` int(11) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `id_users` int(11) NOT NULL,
  `gambar_sekolah` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_profile`
--

INSERT INTO `tbl_profile` (`kd_profile_sekolah`, `nama_sekolah`, `deskripsi`, `visi`, `misi`, `no_hp`, `facebook`, `email`, `instagram`, `id_users`, `gambar_sekolah`, `alamat`) VALUES
(1, 'SD SLB NEGERI ', 'sanagat', 'teste', 'test', '0852131231232', 'dsfdsfsdgf', 'smapekanbaru@gmail.com', 'dsfdsfds', 1, '628-sekolah.jpg', 'Jl. Sultan Syarif Qasim No.159, Rintis, Kec. Lima Puluh, Kota Pekanbaru, Riau 28156');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_users` int(11) NOT NULL,
  `nama_users` varchar(255) DEFAULT NULL,
  `alamat_users` varchar(255) DEFAULT NULL,
  `email_users` varchar(200) DEFAULT NULL,
  `no_telp_users` varchar(15) DEFAULT NULL,
  `hak_akses` enum('kepala sekolah','admin','guru') DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` enum('aktiv','non-aktiv') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id_users`, `nama_users`, `alamat_users`, `email_users`, `no_telp_users`, `hak_akses`, `username`, `password`, `status`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '56464', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'aktiv'),
(2, 'admin2 sad sadad', 'admin2', 'admin2@gmail.com', '38924829', 'admin', 'admin2', 'c84258e9c39059a89ab77d846ddab909', 'aktiv'),
(3, 'ay', 'Kepala Sekolah', 'kepalasekolah@gmail.com', '123445667788', 'kepala sekolah', 'kepalasekolah', 'ad9e9366bd65e665fa808da635512230', 'aktiv'),
(5, 'test', 'test', 'test@gmail.com', '453534345', 'admin', 'test', '098f6bcd4621d373cade4e832627b4f6', 'non-aktiv'),
(6, 'update', 'yogyakarta', 'test@gmail.com', '85912628', 'admin', 'dsfdsf', 'b0dc8efe2d5326a92982ce4e6535c97e', 'non-aktiv'),
(7, 'guru', 'teste', 'guru@gmail.com', '983243289', 'guru', 'guru', '77e69c137812518e359196bb2f5e9bb9', 'aktiv'),
(8, 'sadsa', 'Menco, Berahan Wetan, Wedung,', 'zahwatulizzah@gmail.com', '081229677253', 'guru', 'as', '4d18db80e353e526ad6d42a62aaa29be', 'non-aktiv'),
(9, 'guru 2', 'Menco, Berahan ', 'guru@gmail.com', '32423432', 'guru', 'guru2', '440a21bd2b3a7c686cf3238883dd34e9', 'aktiv');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wali_murid`
--

CREATE TABLE `tbl_wali_murid` (
  `id_wali_murid` int(11) NOT NULL,
  `nama_ayah` varchar(200) NOT NULL,
  `nama_ibu` varchar(200) NOT NULL,
  `pekerjaan_ayah` varchar(200) DEFAULT NULL,
  `pekerjaan_ibu` varchar(200) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `id_murid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_wali_murid`
--

INSERT INTO `tbl_wali_murid` (`id_wali_murid`, `nama_ayah`, `nama_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `alamat`, `no_telp`, `email`, `username`, `password`, `id_murid`) VALUES
(1, 'ayah', 'ibu', 'pekerjaan', 'gdfgfd', 'kdfjlskd', '23094832', 'walimurid@gmail.com', 'walimurid', '7881e048251930c056418ff4c64ec86f', 3),
(2, 'sayaA', 'sayaA', 'saya', 'saya', 'saya', '23423432', 'saya@gmail.com', 'saya', '7881e048251930c056418ff4c64ec86f', 5),
(3, 'sfdsf', 'sdfdsf', 'dsfdsfsdf', 'sdfdsfsd', 'dsfdsf', '324234', 'test@gmail.com', 'saya', '20c1a26a55039b30866c9d0aa51953ca', 7),
(4, 'testtest', 'testtest', 'testtest', 'testtest', 'testtest', 'testtest', 'testtest@gmail.com', 'testtest', '05a671c66aefea124cc08b76ea6d30bb', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_alur`
--
ALTER TABLE `tbl_alur`
  ADD PRIMARY KEY (`kd_alur`);

--
-- Indexes for table `tbl_detail_kelas`
--
ALTER TABLE `tbl_detail_kelas`
  ADD PRIMARY KEY (`id_detail_kelas`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_murid` (`id_murid`),
  ADD KEY `id_users` (`id_users`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`kd_galeri`);

--
-- Indexes for table `tbl_informasi`
--
ALTER TABLE `tbl_informasi`
  ADD PRIMARY KEY (`kd_informasi`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `id_periode` (`id_periode`),
  ADD KEY `id_users` (`id_users`);

--
-- Indexes for table `tbl_konsultasi`
--
ALTER TABLE `tbl_konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_wali_murid` (`id_wali_murid`);

--
-- Indexes for table `tbl_laporan_belajar`
--
ALTER TABLE `tbl_laporan_belajar`
  ADD PRIMARY KEY (`id_laporan_belajar`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_murid` (`id_murid`),
  ADD KEY `id_mata_pelajaran` (`id_mata_pelajaran`);

--
-- Indexes for table `tbl_mata_pelajaran`
--
ALTER TABLE `tbl_mata_pelajaran`
  ADD PRIMARY KEY (`id_mata_pelajaran`);

--
-- Indexes for table `tbl_monitoring`
--
ALTER TABLE `tbl_monitoring`
  ADD PRIMARY KEY (`id_monitoring`),
  ADD KEY `id_murid` (`id_murid`),
  ADD KEY `id_users` (`id_users`);

--
-- Indexes for table `tbl_murid`
--
ALTER TABLE `tbl_murid`
  ADD PRIMARY KEY (`id_murid`);

--
-- Indexes for table `tbl_periode`
--
ALTER TABLE `tbl_periode`
  ADD PRIMARY KEY (`id_periode`);

--
-- Indexes for table `tbl_profile`
--
ALTER TABLE `tbl_profile`
  ADD PRIMARY KEY (`kd_profile_sekolah`),
  ADD KEY `kd_admin` (`id_users`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_users`);

--
-- Indexes for table `tbl_wali_murid`
--
ALTER TABLE `tbl_wali_murid`
  ADD PRIMARY KEY (`id_wali_murid`),
  ADD KEY `tbl_wali_murid_ibfk_1` (`id_murid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_alur`
--
ALTER TABLE `tbl_alur`
  MODIFY `kd_alur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_detail_kelas`
--
ALTER TABLE `tbl_detail_kelas`
  MODIFY `id_detail_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `kd_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_informasi`
--
ALTER TABLE `tbl_informasi`
  MODIFY `kd_informasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_konsultasi`
--
ALTER TABLE `tbl_konsultasi`
  MODIFY `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_laporan_belajar`
--
ALTER TABLE `tbl_laporan_belajar`
  MODIFY `id_laporan_belajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_mata_pelajaran`
--
ALTER TABLE `tbl_mata_pelajaran`
  MODIFY `id_mata_pelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_monitoring`
--
ALTER TABLE `tbl_monitoring`
  MODIFY `id_monitoring` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_murid`
--
ALTER TABLE `tbl_murid`
  MODIFY `id_murid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_periode`
--
ALTER TABLE `tbl_periode`
  MODIFY `id_periode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_profile`
--
ALTER TABLE `tbl_profile`
  MODIFY `kd_profile_sekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_wali_murid`
--
ALTER TABLE `tbl_wali_murid`
  MODIFY `id_wali_murid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_detail_kelas`
--
ALTER TABLE `tbl_detail_kelas`
  ADD CONSTRAINT `tbl_detail_kelas_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `tbl_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_kelas_ibfk_2` FOREIGN KEY (`id_murid`) REFERENCES `tbl_murid` (`id_murid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_kelas_ibfk_3` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id_users`);

--
-- Constraints for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD CONSTRAINT `tbl_kelas_ibfk_1` FOREIGN KEY (`id_periode`) REFERENCES `tbl_periode` (`id_periode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_kelas_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id_users`);

--
-- Constraints for table `tbl_konsultasi`
--
ALTER TABLE `tbl_konsultasi`
  ADD CONSTRAINT `tbl_konsultasi_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_konsultasi_ibfk_2` FOREIGN KEY (`id_wali_murid`) REFERENCES `tbl_wali_murid` (`id_wali_murid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_laporan_belajar`
--
ALTER TABLE `tbl_laporan_belajar`
  ADD CONSTRAINT `tbl_laporan_belajar_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_laporan_belajar_ibfk_2` FOREIGN KEY (`id_murid`) REFERENCES `tbl_murid` (`id_murid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_laporan_belajar_ibfk_3` FOREIGN KEY (`id_mata_pelajaran`) REFERENCES `tbl_mata_pelajaran` (`id_mata_pelajaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_monitoring`
--
ALTER TABLE `tbl_monitoring`
  ADD CONSTRAINT `tbl_monitoring_ibfk_1` FOREIGN KEY (`id_murid`) REFERENCES `tbl_murid` (`id_murid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_monitoring_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_wali_murid`
--
ALTER TABLE `tbl_wali_murid`
  ADD CONSTRAINT `tbl_wali_murid_ibfk_1` FOREIGN KEY (`id_murid`) REFERENCES `tbl_murid` (`id_murid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
