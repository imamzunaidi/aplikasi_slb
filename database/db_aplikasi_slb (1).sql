-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14 Nov 2023 pada 10.47
-- Versi Server: 10.1.28-MariaDB
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
<<<<<<< HEAD:database/db_aplikasi_slb.sql
(19, 12, 6, 1);
=======
(6, 3, 3, 1),
(7, 4, 3, 1),
(8, 5, 5, 1),
(10, 6, 5, 1),
(11, 7, 3, 1);
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

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

<<<<<<< HEAD:database/db_aplikasi_slb.sql
INSERT INTO `tbl_galeri` (`id_galeri`, `galeri_gambar`) VALUES
(17, '388-WhatsApp Image 2023-10-07 at 22.04.36 (1).jpeg'),
(19, '364-WEB-LIA.jpg'),
(21, '218-WhatsApp Image 2023-10-07 at 22.04.36.jpeg');
=======
INSERT INTO `tbl_galeri` (`kd_galeri`, `galeri_gambar`) VALUES
(15, '797-back.jpg'),
(16, '889-bc.jpg');
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

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
<<<<<<< HEAD:database/db_aplikasi_slb.sql
  `tgl_informasi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
=======
  `tgl_informasi` date NOT NULL
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_informasi`
--

<<<<<<< HEAD:database/db_aplikasi_slb.sql
INSERT INTO `tbl_informasi` (`id_informasi`, `judul`, `deskripsi`, `penulis`, `gambar_informasi`, `tgl_informasi`) VALUES
(4, 'Tim PKM-PM Universitas Muria Kudus Lolos Pendanaan dan Lakukan Bakti Pada Negeri di SLB Negeri Cendo', 'Program Kreativitas Mahasiswa merupakan salah satu program Merdeka Belajar yang dicanangkan oleh Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi yang terbagi menjadi 5 bidang yaitu PKM-K, PKM-KC, PKM-PM, PKM-P, dan PKM-T. Kampus yang dapat mengikuti program ini adalah kampus yang mengikuti kurikulum Merdeka Belajar yang dinaungi oleh Kemdikbudristek. Salah satunya adalah Universitas Muria Kudus (UMK).\r\n\r\nPada 16 Juni 2023 UMK dinyatakan lolos 58 judul proposal PKM 5 bidang, salah satunya adalah proposal tim PKM-PM yang berjudul â€œSex Education Anak Tunagrahita Melalui Media Pop Up Book yang Terintegrasi VR Video di SLBN Cendono Kudusâ€. Tim ini beranggotakan 5 mahasiswa yaitu Josephine Gabriella sebagai ketua tim, Isnaini Khalimatus Saâ€™diyah sebagai anggota tim 1, Diah Murtiningsih sebagai anggota tim 2, Ahmad Aufan Nur Hakim sebagai anggota tim 3, dan Clirista Trefilona Grasialika sebagai anggota tim 4, dan 1 dosen pembimbing yaitu Wiwit Ariyani S. H., M. Hum. Tim ini disebut juga sebagai tim Sewagati Cendono. Kegiatan ini akan berlangsung selama kurang lebih 4 bulan yaitu dari bulan Juni hingga Oktober 2023.\r\n\r\n\r\n\r\nRead more\r\ntanggal : 22 September 2023\r\nJudul : Tim PKM-PM Universitas Muria Kudus Lolos Pendanaan dan Lakukan Bakti Pada Negeri di SLB Negeri Cendono Kudus\r\n\r\nLAPORAN SINDO NEWS\r\n', '', '945-WhatsApp-Image-2023-09-22-at-17.02.36-1 (1).png', '2023-11-13 15:21:17'),
(5, 'hvuvjhv', 'ouuhiub', '', '6-Temari.jpg', '2023-11-13 14:45:18');
=======
INSERT INTO `tbl_informasi` (`kd_informasi`, `judul`, `deskripsi`, `penulis`, `gambar_informasi`, `tgl_informasi`) VALUES
(2, 'Kunjungan Industri Anak Siswa SMA 1 Pekan Baru', 'Sebanyak 15 orang guru dari SMA NEGERI 1 mengunjungi SMA Negeri 41Pekanbaru, Rombongan ini dipimpin langsung oleh Kepala Sekolah Bapak RAFLES, S.Pd. Kunjungan ini sebagai wadah silaturrahmi dan juga berbagi informasi tentang berbagai program sekolah khususnya program LITERASI sekaligus penanda tangani perjanjian kerjasama antar sekolah tentang pengembangan Perpustakaan \"Lentera Hati\" SMA Negeri 1 Pekanbaru dengan Perpustakaan SMA Negeri 1 Dumai agar bisa saling bekerjasama dalam peningkatan mutu dan kualitas pendidikan dimasing-masing sekolah khususnya dibidang perpustakaan dan literasi sekolah.\r\n\r\nDalam kesempatan tersebut, kedatangan rombongan dari SMA Negeri 1 Dumai tersebut langsung disambut oleh kepala SMA Negeri 4 Pekanbaru bersama dengan guru, tenaga kependidikan dan beberapa orang peserta didik SMA Negeri 4 Pekanbaru dan tetap menerapkan SOP Penanganan Covid-19 dan selalu mematuhi protokol kesehatan\r\n\r\nKepala SMA Negeri 4 Pekanbaru Ibu Hj. YAN KHORIANA, M.Pd menyampaikan apresiasinya terhadap kunjungan SMA NEGERI 1 DUMAI. Beliau berharap kunjungan ini bisa membuat masing-masing sekolah termotivasi untuk meningkatkan prestasinya. “Budaya literasi harus ditanamkan sejak dini kepada peserta didik, karena dengan literasi mereka akan menguasai informasi dan ilmu pengetahuan” terangnya.\r\n\r\nPada kesempatan ini, Kepala SMA NEGERI 4 PEKANBARU juga memberikan pemaparannya terkait profil sekolah secara singkat, dan juga menampilkan berbagai prestasi peserta didik baik dibidang akademik maupun non akademik.(RP)', 'Ratih', 'informasi-270120224ac8de8527.jpg', '2022-01-27'),
(3, 'dfgfdg', '<p>dfgdfg</p>', 'dfgdfg', 'informasi-19082023c58c9ce64c.jpg', '2023-08-16');
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

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
<<<<<<< HEAD:database/db_aplikasi_slb.sql
(7, 'Autisme'),
(8, 'Tunagrahita'),
(9, 'Tunadaksa'),
(10, 'Tunanetra');
=======
(3, 'Tunarungu'),
(6, 'tunawicara'),
(7, 'autisme');
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

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
<<<<<<< HEAD:database/db_aplikasi_slb.sql
(3, 3, 'Kelas 1', 1, 7),
(5, 6, 'Kelas 1', 1, 7),
(6, 7, 'Kelas 1', 1, 7);
=======
(3, 3, 'kelas 1', 1, 7),
(4, 2, 'kelas 2', 1, 9),
(5, 7, 'kelas 2', 1, 9);
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

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
<<<<<<< HEAD:database/db_aplikasi_slb.sql
(6, '2023-11-14', '09:32:00', 'Bu mau tanya ini anak saya memiliki gejala keluhan tidak bisa mengontrol emosi\r\nkadang meledak-ledak emosinya, bagaimana ya bu?', 'approve', 'Coba tenangkan dia pakai pancingan seperti mainan dan juga hibur dia', 7, 7);
=======
(3, '2023-10-06', '19:38:00', 'sdasdsad', 'approve', 'iya anaknya baik', 7, 1),
(4, '2023-10-08', '18:42:00', 'testsetestesa vdfsf', 'approve', 'dasdasdad', 7, 1),
(5, '2023-10-13', '13:39:00', 'testes acdsf dsfdsfdsf', 'approve', 'sasdasd', 7, 1);
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

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
<<<<<<< HEAD:database/db_aplikasi_slb.sql
  `id_kelas` int(11) DEFAULT NULL,
  `date_penilaian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
=======
  `date_penilaian` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql
  `id_mata_pelajaran` int(11) NOT NULL,
  `nilai_ketrampilan` int(11) NOT NULL,
  `deskripsi_ketrampilan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_laporan_belajar`
--

<<<<<<< HEAD:database/db_aplikasi_slb.sql
INSERT INTO `tbl_laporan_belajar` (`id_laporan_belajar`, `nilai_pengetahuan`, `deskripsi_pengetahuan`, `id_murid`, `id_users`, `id_kelas`, `date_penilaian`, `id_mata_pelajaran`, `nilai_ketrampilan`, `deskripsi_ketrampilan`) VALUES
(1, 90, 'bagus', 12, 7, 6, '2023-11-14 02:39:53', 3, 90, 'bagus'),
(2, 89, 'bagus', 12, 7, 6, '2023-11-14 02:40:23', 5, 78, 'lumayan'),
(3, 100, 'mantap', 12, 7, 6, '2023-11-14 02:40:51', 4, 90, 'mantap'),
(4, 77, 'lumayan', 12, 7, 6, '2023-11-14 02:41:12', 8, 70, 'cukup'),
(5, 80, 'lumayan', 12, 7, 6, '2023-11-14 02:41:29', 9, 90, 'hebat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mata_pelajaran`
--

CREATE TABLE `tbl_mata_pelajaran` (
  `id_mata_pelajaran` int(11) NOT NULL,
  `mata_pelajaran` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_mata_pelajaran`
--

INSERT INTO `tbl_mata_pelajaran` (`id_mata_pelajaran`, `mata_pelajaran`) VALUES
(3, 'Pendidikan Agama dan Budi Pekerti'),
(4, 'Pendidikan Pancasila dan Kewarganegaraan'),
(5, 'Seni Budaya'),
(6, 'Bahasa Indonesia'),
(7, 'Bahasa Indonesia'),
(8, 'Matematika'),
(9, 'Pendidikan Jasmani, Olahraga dam Kesehatan');
=======
INSERT INTO `tbl_laporan_belajar` (`id_laporan_belajar`, `nilai_pengetahuan`, `deskripsi_pengetahuan`, `id_murid`, `id_users`, `date_penilaian`, `id_mata_pelajaran`, `nilai_ketrampilan`, `deskripsi_ketrampilan`) VALUES
(8, 80, 'fdsfds', 3, 7, '2023-10-29 12:31:00', 2, 70, 'fsdfdsfdsf'),
(9, 90, 'ryrdfvdf', 7, 1, '2023-10-30 06:41:10', 1, 90, 'tes');
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

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
<<<<<<< HEAD:database/db_aplikasi_slb.sql
  `date_monitoring` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
=======
  `date_monitoring` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_monitoring`
--

INSERT INTO `tbl_monitoring` (`id_monitoring`, `id_murid`, `perkembangan`, `id_users`, `date_monitoring`) VALUES
<<<<<<< HEAD:database/db_aplikasi_slb.sql
(2, 12, 'anaknya sudah dapat memegang pulpen', 1, '2023-11-14 02:59:41');
=======
(4, 3, 'gdssdg', 7, '2023-10-08 08:42:17'),
(5, 3, 'sfasfasf', 7, '2023-10-08 13:51:07');
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

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
<<<<<<< HEAD:database/db_aplikasi_slb.sql
(12, '567890', 'Alfin Erfendo', 'Laki-laki', 'Pekalongan', '2023-11-14', '137-Rock Lee.jpg', 'Blora', 'Kristen', 'diterima');
=======
(3, '324', 'sdfsdfds', 'Laki-laki', '3wsdff', '2023-09-28', '956-caravan travel.png', 'xcvdsfgdsf', 'Islam', 'diterima'),
(4, '23432', 'tewtw', 'Laki-laki', 'jakarta', '2023-10-07', '702-back.jpg', 'dsgsdg', 'Islam', 'diterima'),
(5, '4234', 'saya', 'Laki-laki', '212', '2023-10-24', '931-bc.jpg', 'rewrersfds', 'Islam', 'diterima'),
(6, '12313', 'contoh', 'Laki-laki', 'contoh', '2023-10-08', '842-background.jpeg', 'gfgh', 'Islam', 'diterima'),
(7, '12321', 'test', 'Laki-laki', 'test', '2023-10-29', '278-back.jpg', 'dsfdsf', 'Islam', 'diterima');
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

-- --------------------------------------------------------

--
<<<<<<< HEAD:database/db_aplikasi_slb.sql
-- Struktur dari tabel `tbl_periode`
--

CREATE TABLE `tbl_periode` (
  `id_periode` int(11) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_periode`
--

INSERT INTO `tbl_periode` (`id_periode`, `periode`) VALUES
(1, '2022-2023'),
(3, '2021-2022'),
(4, '2023-2024');
=======
-- Table structure for table `tbl_pelamar`
--

CREATE TABLE `tbl_pelamar` (
  `id_pelamar` int(11) NOT NULL,
  `nama_pelamar` varchar(200) DEFAULT NULL,
  `username_pelamar` varchar(200) DEFAULT NULL,
  `password_pelamar` varchar(255) DEFAULT NULL,
  `no_telp_pelamar` varchar(15) DEFAULT NULL,
  `alamat_pelamar` varchar(255) DEFAULT NULL,
  `status_pelamar` enum('aktiv','non-aktiv') NOT NULL,
  `email_pelamar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pelamar`
--

INSERT INTO `tbl_pelamar` (`id_pelamar`, `nama_pelamar`, `username_pelamar`, `password_pelamar`, `no_telp_pelamar`, `alamat_pelamar`, `status_pelamar`, `email_pelamar`) VALUES
(1, 'saya', 'saya', '20c1a26a55039b30866c9d0aa51953ca', '3244234324', 'saya update alamar', 'aktiv', '201653001@std.umk.ac.id'),
(5, 'pelamar', 'pelamar', 'd106cd9e18dab5c9bce2b1b7c9a17d2b', '34242432', 'alamat sana sini', 'aktiv', 'pelamar@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `kd_pengumuman` int(11) NOT NULL,
  `subyek_pengumuman` text NOT NULL,
  `isi_pengumuman` text NOT NULL,
  `kd_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

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
(3, '2021-2022');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesan`
--

CREATE TABLE `tbl_pesan` (
  `kd_pesan` int(11) NOT NULL,
  `subyek` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pesan`
--

INSERT INTO `tbl_pesan` (`kd_pesan`, `subyek`, `pesan`, `email`, `nama`) VALUES
(1, 'ban bocor', 'safsd', 'imam12@gmail.com', 'haha'),
(2, 'sd', 'sadsa', 'sdsa@gmail.com', 'sad'),
(3, 'ban bocorfd', 'hfhgjh', 'saya@gmail.com', 'ahha'),
(4, 'dsf', 'dsf', 'saya@gmail.com', 'imam zunaidi'),
(5, 'sad', 'sadsa', 'sad@gmail.com', 'imam zunaidi'),
(6, 'sad', 'sad', 'sad@gmail.com', 'imam zunaidi'),
(7, 'ban bocor', 'saf', 'restikadian00@gmail.com', 'imam zunaidi'),
(8, 'sad', 'dfsdsf', 'sad@gmail.com', 'asad'),
(9, '', '', '', '');

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

<<<<<<< HEAD:database/db_aplikasi_slb.sql
INSERT INTO `tbl_profile` (`id_profile_sekolah`, `nama_sekolah`, `deskripsi`, `visi`, `misi`, `no_hp`, `facebook`, `email`, `instagram`, `id_users`, `gambar_sekolah`, `alamat`) VALUES
(1, 'SLB NEGERI CENDONO KUDUS', 'SLB Negeri Cendono Kudus merupakan salah satu lembaga pendidikan khusus negeri yang berdomisili di kota Kudus.', 'Terwujudnya Pelayanan Bagi Peserta Didik Berkebutuhan Khusus Mencapai Profil Pelajar Pancasila Yang Beriman, Bertakwa, Berakhlak Mulia, Terampil dan Mandiri.', 'Menanamkan dan mengamalkan ajaran agama yang dianutnya, agar bijaksana dalam bersikap dan bertindak.\r\n\r\nMelaksanakan pembelajaran dan keterampilan sesuai dengan potensi peserta didik berkebutuhan khusus agar berkembang secara optimal.\r\n\r\nMenumbuhkan rasa percaya diri peserta didik dengan pembelajaran yang menyenangkan.\r\n\r\nMenumbuhkembangkan kecintaan terhadap wawasan budaya nasional.', '0852131231232', 'dsfdsfsdgf', 'slbnegericendonokudus@gmail.com', 'dsfdsfds', 1, '628-sekolah.jpg', 'Jl. Madu No 01 RT 05 RW 01 , Cendono, Kec. Dawe, Kab. Kudus Prov. Jawa Tengah');
=======
INSERT INTO `tbl_profile` (`kd_profile_sekolah`, `nama_sekolah`, `deskripsi`, `visi`, `misi`, `no_hp`, `facebook`, `email`, `instagram`, `id_users`, `gambar_sekolah`, `alamat`) VALUES
(1, 'SD SLB NEGERI ', 'sanagat', 'Terwujudnya SMK yang Kompetitif dan Bermutu didukung Tenaga Pendidikan yang Profesional serta Menyiapkan Lulusan Berakhlak Mulia, Berdaya Saing Tinggi, Menguasi Ilmu Pengetahuan dan Teknologi.', 'Mengingkatkan sarana dan prasarana pendidikan dengan kemajuan teknologi untuk mendukung proses pembelajaran yang optimal.', '0852131231232', 'dsfdsfsdgf', 'smapekanbaru@gmail.com', 'dsfdsfds', 3, '628-sekolah.jpg', 'Jl. Sultan Syarif Qasim No.159, Rintis, Kec. Lima Puluh, Kota Pekanbaru, Riau 28156');
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

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
(3, 'Kepala sekolah', 'Kepala Sekolah', 'kepalasekolah@gmail.com', '08888838383393', 'kepala sekolah', 'kepalasekolah', 'ad9e9366bd65e665fa808da635512230', 'aktiv'),
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
<<<<<<< HEAD:database/db_aplikasi_slb.sql
(7, 'Tommy', 'Yuli', 'Gubernur', 'Ibu rumah tangga', 'Blora', '082227168317', 'alfinerfendo@gmail.com', 'alfin', '6ff92dee2a93081f0192781f156fa0e9', 12);
=======
(1, 'ayah', 'ibu', 'pekerjaan', 'gdfgfd', 'kdfjlskd', '23094832', 'walimurid@gmail.com', 'walimurid', '7881e048251930c056418ff4c64ec86f', 3),
(2, 'sayaA', 'sayaA', 'saya', 'saya', 'saya', '23423432', 'saya@gmail.com', 'saya', '7881e048251930c056418ff4c64ec86f', 5),
(3, 'sfdsf', 'sdfdsf', 'dsfdsfsdf', 'sdfdsfsd', 'dsfdsf', '324234', 'test@gmail.com', 'saya', '20c1a26a55039b30866c9d0aa51953ca', 7);
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

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
<<<<<<< HEAD:database/db_aplikasi_slb.sql
=======
-- Indexes for table `tbl_mata_pelajaran`
--
ALTER TABLE `tbl_mata_pelajaran`
  ADD PRIMARY KEY (`id_mata_pelajaran`);

--
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql
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
<<<<<<< HEAD:database/db_aplikasi_slb.sql
=======
-- Indexes for table `tbl_pelamar`
--
ALTER TABLE `tbl_pelamar`
  ADD PRIMARY KEY (`id_pelamar`);

--
-- Indexes for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`kd_pengumuman`),
  ADD KEY `tbl_pengumuman_ibfk_1` (`kd_admin`);

--
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql
-- Indexes for table `tbl_periode`
--
ALTER TABLE `tbl_periode`
  ADD PRIMARY KEY (`id_periode`);

--
<<<<<<< HEAD:database/db_aplikasi_slb.sql
=======
-- Indexes for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  ADD PRIMARY KEY (`kd_pesan`);

--
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql
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
<<<<<<< HEAD:database/db_aplikasi_slb.sql
  MODIFY `id_alur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
=======
  MODIFY `kd_alur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

--
-- AUTO_INCREMENT for table `tbl_detail_kelas`
--
ALTER TABLE `tbl_detail_kelas`
<<<<<<< HEAD:database/db_aplikasi_slb.sql
  MODIFY `id_detail_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
=======
  MODIFY `id_detail_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
<<<<<<< HEAD:database/db_aplikasi_slb.sql
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
=======
  MODIFY `kd_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

--
-- AUTO_INCREMENT for table `tbl_informasi`
--
ALTER TABLE `tbl_informasi`
  MODIFY `kd_informasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
<<<<<<< HEAD:database/db_aplikasi_slb.sql
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
=======
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_konsultasi`
--
ALTER TABLE `tbl_konsultasi`
<<<<<<< HEAD:database/db_aplikasi_slb.sql
  MODIFY `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
=======
  MODIFY `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

--
-- AUTO_INCREMENT for table `tbl_laporan_belajar`
--
ALTER TABLE `tbl_laporan_belajar`
  MODIFY `id_laporan_belajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_mata_pelajaran`
--
ALTER TABLE `tbl_mata_pelajaran`
<<<<<<< HEAD:database/db_aplikasi_slb.sql
  MODIFY `id_mata_pelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
=======
  MODIFY `id_mata_pelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

--
-- AUTO_INCREMENT for table `tbl_monitoring`
--
ALTER TABLE `tbl_monitoring`
  MODIFY `id_monitoring` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_murid`
--
ALTER TABLE `tbl_murid`
<<<<<<< HEAD:database/db_aplikasi_slb.sql
  MODIFY `id_murid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_periode`
--
ALTER TABLE `tbl_periode`
  MODIFY `id_periode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
=======
  MODIFY `id_murid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_pelamar`
--
ALTER TABLE `tbl_pelamar`
  MODIFY `id_pelamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `kd_pengumuman` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_periode`
--
ALTER TABLE `tbl_periode`
  MODIFY `id_periode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  MODIFY `kd_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql

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
<<<<<<< HEAD:database/db_aplikasi_slb.sql
--
ALTER TABLE `tbl_wali_murid`
  MODIFY `id_wali_murid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_detail_kelas`
--
ALTER TABLE `tbl_detail_kelas`
  ADD CONSTRAINT `tbl_detail_kelas_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `tbl_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_kelas_ibfk_2` FOREIGN KEY (`id_murid`) REFERENCES `tbl_murid` (`id_murid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_kelas_ibfk_3` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id_users`);

--
-- Ketidakleluasaan untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD CONSTRAINT `tbl_kelas_ibfk_1` FOREIGN KEY (`id_periode`) REFERENCES `tbl_periode` (`id_periode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_kelas_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id_users`);

--
-- Ketidakleluasaan untuk tabel `tbl_konsultasi`
--
ALTER TABLE `tbl_konsultasi`
  ADD CONSTRAINT `tbl_konsultasi_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_konsultasi_ibfk_2` FOREIGN KEY (`id_wali_murid`) REFERENCES `tbl_wali_murid` (`id_wali_murid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_laporan_belajar`
--
ALTER TABLE `tbl_laporan_belajar`
  ADD CONSTRAINT `tbl_laporan_belajar_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_laporan_belajar_ibfk_2` FOREIGN KEY (`id_murid`) REFERENCES `tbl_murid` (`id_murid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_laporan_belajar_ibfk_3` FOREIGN KEY (`id_mata_pelajaran`) REFERENCES `tbl_mata_pelajaran` (`id_mata_pelajaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_monitoring`
--
ALTER TABLE `tbl_monitoring`
  ADD CONSTRAINT `tbl_monitoring_ibfk_1` FOREIGN KEY (`id_murid`) REFERENCES `tbl_murid` (`id_murid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_monitoring_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_wali_murid`
--
ALTER TABLE `tbl_wali_murid`
  ADD CONSTRAINT `tbl_wali_murid_ibfk_1` FOREIGN KEY (`id_murid`) REFERENCES `tbl_murid` (`id_murid`) ON DELETE CASCADE ON UPDATE CASCADE;
=======
--
ALTER TABLE `tbl_wali_murid`
  MODIFY `id_wali_murid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD CONSTRAINT `tbl_pengumuman_ibfk_1` FOREIGN KEY (`kd_admin`) REFERENCES `tbl_murid` (`id_murid`);
>>>>>>> 9fcb03808b39ca3acddd807d84ce40b7fb95e527:database/db_aplikasi_slb (1).sql
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
