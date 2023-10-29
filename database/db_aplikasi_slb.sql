-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Okt 2023 pada 06.30
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

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
-- Struktur dari tabel `tbl_alur`
--

CREATE TABLE `tbl_alur` (
  `id_alur` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar_alur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_alur`
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
-- Struktur dari tabel `tbl_detail_kelas`
--

CREATE TABLE `tbl_detail_kelas` (
  `id_detail_kelas` int(11) NOT NULL,
  `id_murid` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_detail_kelas`
--

INSERT INTO `tbl_detail_kelas` (`id_detail_kelas`, `id_murid`, `id_kelas`, `id_users`) VALUES
(6, 3, 3, 1),
(7, 4, 3, 1),
(8, 5, 5, 1),
(10, 6, 5, 1),
(11, 7, 6, 1),
(12, 8, 6, 1),
(13, 9, 6, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `id_galeri` int(11) NOT NULL,
  `galeri_gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`id_galeri`, `galeri_gambar`) VALUES
(15, '797-back.jpg'),
(16, '889-bc.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_informasi`
--

CREATE TABLE `tbl_informasi` (
  `id_informasi` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `gambar_informasi` varchar(200) NOT NULL,
  `tgl_informasi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_informasi`
--

INSERT INTO `tbl_informasi` (`id_informasi`, `judul`, `deskripsi`, `penulis`, `gambar_informasi`, `tgl_informasi`) VALUES
(5, 'Tim PKM UMK Ciptakan Pop Up Craft Huruf dan Angka ke Tunagrahita di SLB Negeri Cendono Kudus', 'cdafsdghfjg', '', '14-WhatsApp Image 2023-10-07 at 22.04.36.jpeg', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(3, 'Tunarungu'),
(6, 'tunawicara'),
(7, 'autisme'),
(8, 'Tunadaksa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id_kelas` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_kelas` varchar(255) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id_kelas`, `id_kategori`, `nama_kelas`, `id_users`) VALUES
(3, 3, 'kelas 1', 7),
(4, 2, 'kelas 2', 9),
(5, 7, 'Kelas 2', 9),
(6, 8, 'Kelas 3', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_konsultasi`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_konsultasi`
--

INSERT INTO `tbl_konsultasi` (`id_konsultasi`, `tanggal_konsultasi`, `jam_konsultasi`, `konsultasi`, `status_konsultasi`, `jawaban_konsultasi`, `id_users`, `id_wali_murid`) VALUES
(3, '2023-10-06', '19:38:00', 'sdasdsad', 'approve', 'iya anaknya baik', 7, 1),
(4, '2023-10-08', '18:42:00', 'testsetestesa vdfsf', 'approve', 'dasdasdad', 7, 1),
(5, '2023-10-13', '13:39:00', 'testes acdsf dsfdsfdsf', 'approve', 'sasdasd', 7, 1),
(6, '2023-10-19', '11:27:00', 'sdfghj', 'diajukan', NULL, 0, 3),
(7, '2023-10-24', '02:00:00', 'anak saya nilainya kenapa sangat turun nggih bu ', 'diajukan', NULL, 7, 1),
(8, '2023-10-25', '09:20:00', 'BU anak saya tantrum', 'approve', 'Lebih di perhatikan lagi', 7, 5),
(9, '2023-10-25', '09:24:00', 'BU anak saya ada masalah kesehatan suka batuk', 'approve', 'Coba diperiksakan ke dokter', 7, 5),
(10, '2023-10-25', '09:25:00', 'Anak saya mual', 'approve', 'Mungkin belum makan', 7, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_laporan_belajar`
--

CREATE TABLE `tbl_laporan_belajar` (
  `id_laporan_belajar` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `id_murid` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `date_penilaian` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_laporan_belajar`
--

INSERT INTO `tbl_laporan_belajar` (`id_laporan_belajar`, `nilai`, `keterangan`, `id_murid`, `id_users`, `date_penilaian`) VALUES
(1, 20, 'dfgsdfds', 3, 1, '2023-10-08 08:49:59'),
(2, 90, 'sdfdsf', 4, 1, '2023-10-08 08:50:04'),
(3, 80, 'sdfdsf', 3, 7, '2023-10-08 08:50:07'),
(4, 20, 'dsfdsf', 3, 7, '2023-10-08 08:50:14'),
(5, 80, 'wrwafasff', 3, 7, '2023-10-08 13:51:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_monitoring`
--

CREATE TABLE `tbl_monitoring` (
  `id_monitoring` int(11) NOT NULL,
  `id_murid` int(11) NOT NULL,
  `perkembangan` varchar(255) NOT NULL,
  `id_users` int(11) NOT NULL,
  `date_monitoring` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_monitoring`
--

INSERT INTO `tbl_monitoring` (`id_monitoring`, `id_murid`, `perkembangan`, `id_users`, `date_monitoring`) VALUES
(4, 7, 'anaknya sudah dapat memegang pulpen', 7, '2023-10-25 02:17:40'),
(5, 3, 'sfasfasf', 7, '2023-10-08 13:51:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_murid`
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
  `status_murid` enum('diterima','tidak') NOT NULL DEFAULT 'diterima'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_murid`
--

INSERT INTO `tbl_murid` (`id_murid`, `nik`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `gambar`, `alamat`, `agama`, `status_murid`) VALUES
(3, '324', 'sdfsdfds', 'Laki-laki', '3wsdff', '2023-09-28', '956-caravan travel.png', 'xcvdsfgdsf', 'Islam', 'diterima'),
(4, '23432', 'tewtw', 'Laki-laki', 'jakarta', '2023-10-07', '702-back.jpg', 'dsgsdg', 'Islam', 'diterima'),
(5, '4234', 'saya', 'Laki-laki', '212', '2023-10-24', '931-bc.jpg', 'rewrersfds', 'Islam', 'diterima'),
(6, '12313', 'contoh', 'Laki-laki', 'contoh', '2023-10-08', '842-background.jpeg', 'gfgh', 'Islam', 'diterima'),
(7, '3456789876', 'Alfin Erfendo', 'Laki-laki', 'Pekalongan', '2001-10-03', '465-ONG02217.JPG', 'BLORA', 'Kristen', 'diterima'),
(8, '123456789', 'bagas', 'Laki-laki', 'kjbca', '2023-10-19', '446-ONG02218.JPG', 'sdfghjkl', 'Hindu', 'diterima'),
(9, '1234567', 'alfin', 'Laki-laki', 'jhakjdlx', '2023-10-25', '963-SC007.jpg', 'blora', 'Kristen', 'diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_profile`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_profile`
--

INSERT INTO `tbl_profile` (`id_profile_sekolah`, `nama_sekolah`, `deskripsi`, `visi`, `misi`, `no_hp`, `facebook`, `email`, `instagram`, `id_users`, `gambar_sekolah`, `alamat`) VALUES
(1, 'SD SLB NEGERI ', 'sanagat', 'Terwujudnya SMK yang Kompetitif dan Bermutu didukung Tenaga Pendidikan yang Profesional serta Menyiapkan Lulusan Berakhlak Mulia, Berdaya Saing Tinggi, Menguasi Ilmu Pengetahuan dan Teknologi.', 'Mengingkatkan sarana dan prasarana pendidikan dengan kemajuan teknologi untuk mendukung proses pembelajaran yang optimal.', '0852131231232', 'dsfdsfsdgf', 'smapekanbaru@gmail.com', 'dsfdsfds', 3, '628-sekolah.jpg', 'Jl. Sultan Syarif Qasim No.159, Rintis, Kec. Lima Puluh, Kota Pekanbaru, Riau 28156');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_users`
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
-- Struktur dari tabel `tbl_wali_murid`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_wali_murid`
--

INSERT INTO `tbl_wali_murid` (`id_wali_murid`, `nama_ayah`, `nama_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `alamat`, `no_telp`, `email`, `username`, `password`, `id_murid`) VALUES
(1, 'Herman William Daendles', 'Wilhelmina', 'Gubernur Jendral Hindia Belanda', 'Ratu Belanda', 'Belanda', '08121212121212', 'waliamdaendles@gmail.com', 'walimurid', '7881e048251930c056418ff4c64ec86f', 3),
(2, 'sayaA', 'sayaA', 'saya', 'saya', 'saya', '23423432', 'saya@gmail.com', 'saya', '20c1a26a55039b30866c9d0aa51953ca', 5),
(3, 'sdfghjk', 'dfghjk', 'fewhj', 'sdfghj', 'wertyuj', '09876543', 'qwertyujk@gmail.com', 'bagas', 'ee776a18253721efe8a62e4abd29dc47', 8),
(4, 'Dani', 'Yuli', 'kjndknf', ',fjsdkjsdkjn', 'Blora', '0888888888', 'danidknkc@gmail.com', 'dani', '55b7e8b895d047537e672250dd781555', 9),
(5, 'alfin', 'dfghj', 'fghj', 'ghj', 'fgh', 'fgh', 'alfinerfendo@gmail.com', 'alfin', '6ff92dee2a93081f0192781f156fa0e9', 7);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_alur`
--
ALTER TABLE `tbl_alur`
  ADD PRIMARY KEY (`id_alur`);

--
-- Indeks untuk tabel `tbl_detail_kelas`
--
ALTER TABLE `tbl_detail_kelas`
  ADD PRIMARY KEY (`id_detail_kelas`);

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `tbl_informasi`
--
ALTER TABLE `tbl_informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `tbl_konsultasi`
--
ALTER TABLE `tbl_konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`);

--
-- Indeks untuk tabel `tbl_laporan_belajar`
--
ALTER TABLE `tbl_laporan_belajar`
  ADD PRIMARY KEY (`id_laporan_belajar`);

--
-- Indeks untuk tabel `tbl_monitoring`
--
ALTER TABLE `tbl_monitoring`
  ADD PRIMARY KEY (`id_monitoring`);

--
-- Indeks untuk tabel `tbl_murid`
--
ALTER TABLE `tbl_murid`
  ADD PRIMARY KEY (`id_murid`);

--
-- Indeks untuk tabel `tbl_profile`
--
ALTER TABLE `tbl_profile`
  ADD PRIMARY KEY (`id_profile_sekolah`),
  ADD KEY `kd_admin` (`id_users`);

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_users`);

--
-- Indeks untuk tabel `tbl_wali_murid`
--
ALTER TABLE `tbl_wali_murid`
  ADD PRIMARY KEY (`id_wali_murid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_alur`
--
ALTER TABLE `tbl_alur`
  MODIFY `id_alur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_detail_kelas`
--
ALTER TABLE `tbl_detail_kelas`
  MODIFY `id_detail_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_informasi`
--
ALTER TABLE `tbl_informasi`
  MODIFY `id_informasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_konsultasi`
--
ALTER TABLE `tbl_konsultasi`
  MODIFY `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_laporan_belajar`
--
ALTER TABLE `tbl_laporan_belajar`
  MODIFY `id_laporan_belajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_monitoring`
--
ALTER TABLE `tbl_monitoring`
  MODIFY `id_monitoring` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_murid`
--
ALTER TABLE `tbl_murid`
  MODIFY `id_murid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_profile`
--
ALTER TABLE `tbl_profile`
  MODIFY `id_profile_sekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_wali_murid`
--
ALTER TABLE `tbl_wali_murid`
  MODIFY `id_wali_murid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
