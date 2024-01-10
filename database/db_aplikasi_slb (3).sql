-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2023 at 10:00 AM
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
  `id_alur` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar_alur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_alur`
--

INSERT INTO `tbl_alur` (`id_alur`, `judul`, `deskripsi`, `gambar_alur`) VALUES
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
(22, 12, 6, 1),
(23, 13, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `id_galeri` int(11) NOT NULL,
  `galeri_gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`id_galeri`, `galeri_gambar`) VALUES
(17, '388-WhatsApp Image 2023-10-07 at 22.04.36 (1).jpeg'),
(19, '364-WEB-LIA.jpg'),
(21, '218-WhatsApp Image 2023-10-07 at 22.04.36.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_informasi`
--

CREATE TABLE `tbl_informasi` (
  `id_informasi` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `gambar_informasi` varchar(200) NOT NULL,
  `tgl_informasi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_informasi`
--

INSERT INTO `tbl_informasi` (`id_informasi`, `judul`, `deskripsi`, `penulis`, `gambar_informasi`, `tgl_informasi`) VALUES
(4, 'Tim PKM-PM Universitas Muria Kudus Lolos Pendanaan dan Lakukan Bakti Pada Negeri di SLB Negeri Cendo', 'Program Kreativitas Mahasiswa merupakan salah satu program Merdeka Belajar yang dicanangkan oleh Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi yang terbagi menjadi 5 bidang yaitu PKM-K, PKM-KC, PKM-PM, PKM-P, dan PKM-T. Kampus yang dapat mengikuti program ini adalah kampus yang mengikuti kurikulum Merdeka Belajar yang dinaungi oleh Kemdikbudristek. Salah satunya adalah Universitas Muria Kudus (UMK).\r\n\r\nPada 16 Juni 2023 UMK dinyatakan lolos 58 judul proposal PKM 5 bidang, salah satunya adalah proposal tim PKM-PM yang berjudul â€œSex Education Anak Tunagrahita Melalui Media Pop Up Book yang Terintegrasi VR Video di SLBN Cendono Kudusâ€. Tim ini beranggotakan 5 mahasiswa yaitu Josephine Gabriella sebagai ketua tim, Isnaini Khalimatus Saâ€™diyah sebagai anggota tim 1, Diah Murtiningsih sebagai anggota tim 2, Ahmad Aufan Nur Hakim sebagai anggota tim 3, dan Clirista Trefilona Grasialika sebagai anggota tim 4, dan 1 dosen pembimbing yaitu Wiwit Ariyani S. H., M. Hum. Tim ini disebut juga sebagai tim Sewagati Cendono. Kegiatan ini akan berlangsung selama kurang lebih 4 bulan yaitu dari bulan Juni hingga Oktober 2023.\r\n\r\n\r\n\r\nRead more\r\ntanggal : 22 September 2023\r\nJudul : Tim PKM-PM Universitas Muria Kudus Lolos Pendanaan dan Lakukan Bakti Pada Negeri di SLB Negeri Cendono Kudus\r\n\r\nLAPORAN SINDO NEWS\r\n', '', '945-WhatsApp-Image-2023-09-22-at-17.02.36-1 (1).png', '2023-11-13 15:21:17'),
(5, 'hvuvjhv', 'ouuhiub', '', '6-Temari.jpg', '2023-11-13 14:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jawaban`
--

CREATE TABLE `tbl_jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `id_pertanyaan` int(11) NOT NULL,
  `jawaban` varchar(200) NOT NULL,
  `id_wali_murid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_jawaban`
--

INSERT INTO `tbl_jawaban` (`id_jawaban`, `id_pertanyaan`, `jawaban`, `id_wali_murid`) VALUES
(7, 1, '1', 8),
(8, 2, '2', 8),
(9, 3, '3', 8),
(10, 4, '4', 8),
(11, 5, '5', 8),
(12, 1, '4', 8),
(13, 2, '5', 8),
(14, 3, '2', 8),
(15, 4, '2', 8),
(16, 5, '4', 8),
(17, 1, '2', 8),
(18, 2, '3', 8),
(19, 3, '4', 8),
(20, 4, '5', 8),
(21, 5, '4', 8),
(22, 1, '4', 8),
(23, 2, '5', 8),
(24, 3, '3', 8),
(25, 4, '5', 8),
(26, 5, '4', 8),
(32, 1, '1', 8),
(33, 2, '2', 8),
(34, 3, '1', 8),
(35, 4, '1', 8),
(36, 5, '1', 8),
(37, 1, '5', 8),
(38, 2, '2', 8),
(39, 3, '3', 8),
(40, 4, '4', 8),
(41, 5, '5', 8),
(42, 1, '4', 8),
(43, 2, '5', 8),
(44, 3, '2', 8),
(45, 4, '1', 8),
(46, 5, '5', 8);

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
(7, 'Autisme'),
(8, 'Tunagrahita'),
(9, 'Tunadaksa'),
(10, 'Tunanetra');

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
(3, 3, 'Kelas 1', 1, 7),
(5, 6, 'Kelas 1', 1, 7),
(6, 7, 'Kelas 1', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_keterampilan`
--

CREATE TABLE `tbl_keterampilan` (
  `id_keterampilan` int(11) NOT NULL,
  `nama_keterampilan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_keterampilan`
--

INSERT INTO `tbl_keterampilan` (`id_keterampilan`, `nama_keterampilan`) VALUES
(5, 'tes'),
(6, 'hbjhvkhvkh');

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
(8, '2023-11-25', '21:15:00', 'sadsd', 'approve', 'sadsdadasd', 7, 8),
(9, '2023-11-27', '01:07:00', 'ga tau pengen beli truk\r\n', 'approve', 'Oke beli', 7, 9),
(10, '2023-11-27', '20:34:00', 'Apa makanan yang bergizi tinggi ya bu?\r\n', 'approve', 'Makan seperti sop dan sayuran hijau dan juga jangan lupa makan buah\r\n', 7, 8);

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
(7, 80, 'test', 12, 7, 6, '2023-09-25 13:21:44', 3, 70, 'test'),
(8, 90, 'hebat', 12, 1, 6, '2023-11-26 17:57:30', 4, 89, 'mantap'),
(9, 90, 'mantap', 12, 7, 6, '2023-11-28 03:34:08', 8, 89, 'hebat');

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
(3, 'Pendidikan Agama dan Budi Pekerti'),
(4, 'Pendidikan Pancasila dan Kewarganegaraan'),
(5, 'Seni Budaya'),
(6, 'Bahasa Indonesia'),
(7, 'Bahasa Indonesia'),
(8, 'Matematika'),
(9, 'Pendidikan Jasmani, Olahraga dam Kesehatan');

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
(4, 12, 'anaknya sudah dapat memegang pulpen', 7, '2023-11-26 17:49:59'),
(5, 12, 'anaknya sudah dapat memegang pulpen', 1, '2023-11-26 17:52:17'),
(6, 12, 'hebat', 1, '2023-11-26 18:04:12'),
(7, 12, 'jfglh[l', 1, '2023-11-27 04:06:40'),
(8, 12, 'test', 1, '2023-11-27 14:20:15'),
(9, 12, 'fdsfsdf', 1, '2023-11-28 03:31:10'),
(10, 12, 'tes', 1, '2023-11-28 03:31:37'),
(11, 12, 'anaknya hebat', 7, '2023-11-28 03:34:32'),
(12, 12, 'anaknya hebat', 7, '2023-12-06 04:42:51');

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
(12, '567890', 'Alfin Erfendo', 'Laki-laki', 'Pekalongan', '2023-11-14', '137-Rock Lee.jpg', 'Blora', 'Kristen', 'diterima'),
(13, '201953017', 'Intan Siti Muani', 'Perempuan', 'Sebelat', '2023-11-27', '529-Hinata.jpg', 'Sebelat, Begkulu', 'Islam', 'diterima');

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
(1, 'Semester Gasal 2022/2023'),
(3, 'Semester Genap 2023/2024');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pertanyaan`
--

CREATE TABLE `tbl_pertanyaan` (
  `id_pertanyaan` int(11) NOT NULL,
  `pertanyaan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pertanyaan`
--

INSERT INTO `tbl_pertanyaan` (`id_pertanyaan`, `pertanyaan`) VALUES
(1, 'Apakah sistem monitoring sangat berguna untuk memantau perkembangan belajar ABK?'),
(2, 'Apakah sistem ini membantu memberikan informasi mengenai SLB N Cendono?'),
(3, 'Bagaimana dengan desain dari sistemnya apakah mudah dipahami?'),
(4, 'Seberapa setuju mengenai pentingnya konsultasi pada sistem?'),
(5, 'Bagaimana penerapan sistem ini pada SLB apakah sangat membantu?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profile`
--

CREATE TABLE `tbl_profile` (
  `id_profile_sekolah` int(11) NOT NULL,
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

INSERT INTO `tbl_profile` (`id_profile_sekolah`, `nama_sekolah`, `deskripsi`, `visi`, `misi`, `no_hp`, `facebook`, `email`, `instagram`, `id_users`, `gambar_sekolah`, `alamat`) VALUES
(1, 'SLB NEGERI CENDONO KUDUS', 'SLB Negeri Cendono Kudus merupakan salah satu lembaga pendidikan khusus negeri yang berdomisili di kota Kudus.', 'Terwujudnya Pelayanan Bagi Peserta Didik Berkebutuhan Khusus Mencapai Profil Pelajar Pancasila Yang Beriman, Bertakwa, Berakhlak Mulia, Terampil dan Mandiri.', '<p>Menanamkan dan mengamalkan ajaran agama yang dianutnya, agar bijaksana dalam bersikap dan bertindak.\r\n\r\nMelaksanakan pembelajaran dan keterampilan sesuai dengan potensi peserta didik berkebutuhan khusus agar berkembang secara optimal.\r\n\r\nMenumbuhkan rasa percaya diri peserta didik dengan pembelajaran yang menyenangkan.\r\n</p><p>\r\nMenumbuhkembangkan kecintaan terhadap wawasan budaya nasional.</p>', '0852131231232', 'dsfdsfsdgf', 'slbnegericendonokudus@gmail.com', 'dsfdsfds', 1, '628-sekolah.jpg', 'Jl. Madu No 01 RT 05 RW 01 , Cendono, Kec. Dawe, Kab. Kudus Prov. Jawa Tengah');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quisioner`
--

CREATE TABLE `tbl_quisioner` (
  `id_quisioner` int(11) NOT NULL,
  `q1` int(11) NOT NULL,
  `q2` int(11) NOT NULL,
  `q3` int(11) NOT NULL,
  `q4` int(11) NOT NULL,
  `q5` int(11) NOT NULL,
  `id_wali_murid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_quisioner`
--

INSERT INTO `tbl_quisioner` (`id_quisioner`, `q1`, `q2`, `q3`, `q4`, `q5`, `id_wali_murid`) VALUES
(8, 5, 4, 4, 3, 2, 8),
(9, 5, 5, 5, 5, 5, 9),
(10, 5, 5, 5, 5, 4, 9),
(11, 4, 5, 5, 4, 5, 8),
(12, 4, 5, 5, 5, 5, 8),
(13, 5, 5, 5, 5, 5, 8),
(14, 5, 5, 5, 5, 5, 8),
(15, 5, 5, 5, 5, 5, 8),
(16, 4, 4, 3, 4, 5, 8),
(17, 4, 1, 5, 2, 4, 8),
(18, 5, 3, 5, 5, 3, 8),
(19, 4, 4, 4, 4, 4, 8),
(20, 5, 1, 4, 3, 3, 8),
(21, 5, 3, 5, 4, 5, 8);

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
(2, 'admin2 sad sadad', 'admin2', 'admin2@gmail.com', '38924829', 'admin', 'admin2', 'c84258e9c39059a89ab77d846ddab909', 'non-aktiv'),
(3, 'Kepala sekolah', 'Kepala Sekolah', 'kepalasekolah@gmail.com', '08888838383393', 'kepala sekolah', 'kepalasekolah', 'ad9e9366bd65e665fa808da635512230', 'aktiv'),
(5, 'test', 'test', 'test@gmail.com', '453534345', 'admin', 'test', '098f6bcd4621d373cade4e832627b4f6', 'non-aktiv'),
(6, 'update', 'yogyakarta', 'test@gmail.com', '85912628', 'admin', 'dsfdsf', 'b0dc8efe2d5326a92982ce4e6535c97e', 'non-aktiv'),
(7, 'guru', 'teste', 'guru@gmail.com', '983243289', 'guru', 'guru', '77e69c137812518e359196bb2f5e9bb9', 'aktiv'),
(8, 'sadsa', 'Menco, Berahan Wetan, Wedung,', 'zahwatulizzah@gmail.com', '081229677253', 'guru', 'as', '4d18db80e353e526ad6d42a62aaa29be', 'non-aktiv'),
(9, 'guru 2', 'Indonesia', 'guru@gmail.com', '32423432', 'guru', 'guru2', '7fa8282ad93047a4d6fe6111c93b308a', 'aktiv');

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
(8, 'sayaA', 'saya', 'saya', 'saya', 'saya', '082227168317', 'saya@gmail.com', 'saya', '20c1a26a55039b30866c9d0aa51953ca', 12),
(9, 'Sutisno', 'Wilhelmina', 'Gubernur Jendral Hindia Belanda', 'Ratu Belanda', 'Bengkulu', '082134804688', 'intansm@gmail.com', 'intan', 'b1098cab9c2db3eb9f576eb66c33449c', 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_alur`
--
ALTER TABLE `tbl_alur`
  ADD PRIMARY KEY (`id_alur`);

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
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `tbl_informasi`
--
ALTER TABLE `tbl_informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indexes for table `tbl_jawaban`
--
ALTER TABLE `tbl_jawaban`
  ADD PRIMARY KEY (`id_jawaban`);

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
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `tbl_keterampilan`
--
ALTER TABLE `tbl_keterampilan`
  ADD PRIMARY KEY (`id_keterampilan`);

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
-- Indexes for table `tbl_pertanyaan`
--
ALTER TABLE `tbl_pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indexes for table `tbl_profile`
--
ALTER TABLE `tbl_profile`
  ADD PRIMARY KEY (`id_profile_sekolah`),
  ADD KEY `kd_admin` (`id_users`);

--
-- Indexes for table `tbl_quisioner`
--
ALTER TABLE `tbl_quisioner`
  ADD PRIMARY KEY (`id_quisioner`);

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
  MODIFY `id_alur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_detail_kelas`
--
ALTER TABLE `tbl_detail_kelas`
  MODIFY `id_detail_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_informasi`
--
ALTER TABLE `tbl_informasi`
  MODIFY `id_informasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_jawaban`
--
ALTER TABLE `tbl_jawaban`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_keterampilan`
--
ALTER TABLE `tbl_keterampilan`
  MODIFY `id_keterampilan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_konsultasi`
--
ALTER TABLE `tbl_konsultasi`
  MODIFY `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_laporan_belajar`
--
ALTER TABLE `tbl_laporan_belajar`
  MODIFY `id_laporan_belajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_mata_pelajaran`
--
ALTER TABLE `tbl_mata_pelajaran`
  MODIFY `id_mata_pelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_monitoring`
--
ALTER TABLE `tbl_monitoring`
  MODIFY `id_monitoring` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_murid`
--
ALTER TABLE `tbl_murid`
  MODIFY `id_murid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_periode`
--
ALTER TABLE `tbl_periode`
  MODIFY `id_periode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_pertanyaan`
--
ALTER TABLE `tbl_pertanyaan`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_profile`
--
ALTER TABLE `tbl_profile`
  MODIFY `id_profile_sekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_quisioner`
--
ALTER TABLE `tbl_quisioner`
  MODIFY `id_quisioner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_wali_murid`
--
ALTER TABLE `tbl_wali_murid`
  MODIFY `id_wali_murid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- Constraints for table `tbl_profile`
--
ALTER TABLE `tbl_profile`
  ADD CONSTRAINT `tbl_profile_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id_users`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_wali_murid`
--
ALTER TABLE `tbl_wali_murid`
  ADD CONSTRAINT `tbl_wali_murid_ibfk_1` FOREIGN KEY (`id_murid`) REFERENCES `tbl_murid` (`id_murid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
