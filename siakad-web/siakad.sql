-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Nov 2026 pada 05.28
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siakad`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nidn` varchar(10) NOT NULL,
  `nama_dosen` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `id_prodi` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama_dosen`, `email`, `id_prodi`) VALUES
('0601018501', 'Dr. Budi Santoso, M.Kom.', 'budi.santoso@kampus.ac.id', 'SIF'),
('0605068705', 'Dimas Anggara, M.Ds.', 'dimas.anggara@kampus.ac.id', 'DKV'),
('0610099004', 'Sari Dewi Lestari, M.Ak.', 'sari.lestari@kampus.ac.id', 'AKT'),
('0612118006', 'Nur Hidayati, M.Kom.', 'nur.hidayati@kampus.ac.id', 'SIF'),
('0615058802', 'Rina Wulandari, M.T.', 'rina.wulandari@kampus.ac.id', 'TIF'),
('0620078203', 'Agus Prasetyo, M.M.', 'agus.prasetyo@kampus.ac.id', 'MNJ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` char(4) NOT NULL,
  `kode_mk` varchar(8) NOT NULL,
  `nidn` varchar(10) NOT NULL,
  `tahun_ajaran` varchar(9) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `hari` varchar(6) NOT NULL,
  `jam_mulai` time NOT NULL,
  `ruang` varchar(10) NOT NULL,
  `kuota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kode_mk`, `nidn`, `tahun_ajaran`, `semester`, `hari`, `jam_mulai`, `ruang`, `kuota`) VALUES
('K001', 'SIF101', '0601018501', '2026/2027', 'Ganjil', 'Senin', '08:00:00', 'R101', 40),
('K002', 'SIF102', '0612118006', '2026/2027', 'Ganjil', 'Selasa', '10:00:00', 'Lab1', 30),
('K003', 'TIF101', '0615058802', '2026/2027', 'Ganjil', 'Rabu', '08:00:00', 'Lab2', 30),
('K004', 'TIF102', '0615058802', '2026/2027', 'Ganjil', 'Kamis', '13:00:00', 'R102', 35),
('K005', 'MNJ101', '0620078203', '2026/2027', 'Ganjil', 'Senin', '10:00:00', 'R201', 40),
('K006', 'AKT101', '0610099004', '2026/2027', 'Ganjil', 'Jumat', '08:00:00', 'R202', 40),
('K007', 'DKV101', '0605068705', '2026/2027', 'Ganjil', 'Selasa', '13:00:00', 'StudioA', 25),
('K008', 'SIF103', '0601018501', '2026/2027', 'Ganjil', 'Rabu', '13:00:00', 'Lab1', 30);

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `id_krs` char(6) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `id_kelas` char(4) NOT NULL,
  `tgl_krs` date NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Menunggu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `krs`
--

INSERT INTO `krs` (`id_krs`, `nim`, `id_kelas`, `tgl_krs`, `status`) VALUES
('KRS001', '2023001', 'K001', '2026-08-18', 'Disetujui'),
('KRS002', '2023001', 'K002', '2026-08-19', 'Disetujui'),
('KRS003', '2023001', 'K008', '2026-08-20', 'Disetujui'),
('KRS004', '2023002', 'K001', '2026-08-21', 'Disetujui'),
('KRS005', '2023002', 'K002', '2026-08-22', 'Disetujui'),
('KRS006', '2023002', 'K008', '2026-08-23', 'Disetujui'),
('KRS007', '2023003', 'K003', '2026-08-18', 'Disetujui'),
('KRS008', '2023003', 'K004', '2026-08-19', 'Disetujui'),
('KRS009', '2023004', 'K005', '2026-08-20', 'Disetujui'),
('KRS010', '2023004', 'K001', '2026-08-21', 'Disetujui'),
('KRS011', '2023005', 'K006', '2026-08-22', 'Disetujui'),
('KRS012', '2023005', 'K005', '2026-08-23', 'Disetujui'),
('KRS013', '2024001', 'K001', '2026-08-18', 'Disetujui'),
('KRS014', '2024001', 'K002', '2026-08-19', 'Disetujui'),
('KRS015', '2024002', 'K003', '2026-08-20', 'Disetujui'),
('KRS016', '2024002', 'K004', '2026-08-21', 'Disetujui'),
('KRS017', '2024003', 'K007', '2026-08-22', 'Disetujui'),
('KRS018', '2024004', 'K005', '2026-08-23', 'Menunggu'),
('KRS019', '2024005', 'K006', '2026-08-18', 'Disetujui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama_mhs` varchar(80) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `angkatan` int(11) NOT NULL,
  `id_prodi` char(3) NOT NULL,
  `nidn_wali` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_mhs`, `jenis_kelamin`, `tgl_lahir`, `alamat`, `angkatan`, `id_prodi`, `nidn_wali`) VALUES
('2023001', 'Andi Pratama', 'L', '2005-03-14', 'Jl. Pandanaran No. 12, Semarang', 2023, 'SIF', '0601018501'),
('2023002', 'Siti Aisyah', 'P', '2005-07-21', 'Jl. Setiabudi No. 5, Semarang', 2023, 'SIF', '0601018501'),
('2023003', 'Bagus Setiawan', 'L', '2004-11-02', 'Jl. Tembalang Selatan No. 15, Semarang', 2023, 'TIF', '0615058802'),
('2023004', 'Citra Maharani', 'P', '2005-01-30', 'Jl. Kaligawe No. 21, Semarang', 2023, 'MNJ', '0620078203'),
('2023005', 'Dewi Anggraini', 'P', '2005-05-09', 'Jl. Pemuda No. 3, Semarang', 2023, 'AKT', '0610099004'),
('2024001', 'Eko Nugroho', 'L', '2006-02-17', 'Jl. Gajah Mada No. 40, Semarang', 2024, 'SIF', '0612118006'),
('2024002', 'Fitri Handayani', 'P', '2006-08-25', 'Jl. Veteran No. 9, Semarang', 2024, 'TIF', '0615058802'),
('2024003', 'Galih Permana', 'L', '2006-04-11', 'Jl. Sultan Agung No. 17, Semarang', 2024, 'DKV', '0605068705'),
('2024004', 'Hana Salsabila', 'P', '2006-10-06', 'Jl. Majapahit No. 66, Semarang', 2024, 'MNJ', '0620078203'),
('2024005', 'Irfan Maulana', 'L', '2006-12-19', 'Jl. Siliwangi No. 31, Semarang', 2024, 'AKT', '0610099004');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kode_mk` varchar(8) NOT NULL,
  `nama_mk` varchar(80) NOT NULL,
  `sks` int(11) NOT NULL,
  `semester_ke` int(11) NOT NULL,
  `id_prodi` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kode_mk`, `nama_mk`, `sks`, `semester_ke`, `id_prodi`) VALUES
('AKT101', 'Akuntansi Dasar', 3, 1, 'AKT'),
('DKV101', 'Dasar Desain Grafis', 3, 1, 'DKV'),
('MNJ101', 'Pengantar Manajemen', 3, 1, 'MNJ'),
('SIF101', 'Pengantar Sistem Informasi', 3, 1, 'SIF'),
('SIF102', 'Basis Data', 3, 2, 'SIF'),
('SIF103', 'Pemrograman Web', 3, 3, 'SIF'),
('TIF101', 'Algoritma dan Pemrograman', 4, 1, 'TIF'),
('TIF102', 'Struktur Data', 3, 2, 'TIF');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` char(6) NOT NULL,
  `id_krs` char(6) NOT NULL,
  `nilai_tugas` decimal(5,2) DEFAULT NULL,
  `nilai_uts` decimal(5,2) DEFAULT NULL,
  `nilai_uas` decimal(5,2) DEFAULT NULL,
  `nilai_akhir` decimal(5,2) DEFAULT NULL,
  `nilai_huruf` char(2) DEFAULT NULL,
  `bobot` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_krs`, `nilai_tugas`, `nilai_uts`, `nilai_uas`, `nilai_akhir`, `nilai_huruf`, `bobot`) VALUES
('NIL001', 'KRS001', 85.00, 80.00, 88.00, 84.70, 'A', 4.00),
('NIL002', 'KRS002', 90.00, 85.00, 92.00, 89.30, 'A', 4.00),
('NIL003', 'KRS003', 78.00, 75.00, 90.00, 81.90, 'A', 4.00),
('NIL004', 'KRS004', 88.00, 84.00, 90.00, 87.60, 'A', 4.00),
('NIL005', 'KRS005', 80.00, 78.00, 82.00, 80.20, 'A', 4.00),
('NIL006', 'KRS006', 70.00, 72.00, 68.00, 69.80, 'C', 2.00),
('NIL007', 'KRS007', 92.00, 88.00, 95.00, 92.00, 'A', 4.00),
('NIL008', 'KRS008', 75.00, 70.00, 72.00, 72.30, 'B', 3.00),
('NIL009', 'KRS009', 82.00, 78.00, 80.00, 80.00, 'A', 4.00),
('NIL010', 'KRS010', 65.00, 60.00, 70.00, 65.50, 'C', 2.00),
('NIL011', 'KRS011', 85.00, 82.00, 86.00, 84.50, 'A', 4.00),
('NIL012', 'KRS012', 72.00, 68.00, 75.00, 72.00, 'B', 3.00),
('NIL013', 'KRS013', 60.00, 58.00, 62.00, 60.20, 'C', 2.00),
('NIL014', 'KRS014', 55.00, 50.00, 58.00, 54.70, 'D', 1.00),
('NIL015', 'KRS015', 80.00, 85.00, 78.00, 80.70, 'A', 4.00),
('NIL016', 'KRS016', 68.00, 65.00, 60.00, 63.90, 'C', 2.00),
('NIL017', 'KRS017', 90.00, 88.00, 92.00, 90.20, 'A', 4.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` char(3) NOT NULL,
  `nama_prodi` varchar(60) NOT NULL,
  `jenjang` varchar(5) NOT NULL,
  `fakultas` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`, `jenjang`, `fakultas`) VALUES
('AKT', 'Akuntansi', 'S1', 'Fakultas Ekonomi dan Bisnis'),
('DKV', 'Desain Komunikasi Visual', 'S1', 'Fakultas Desain'),
('MNJ', 'Manajemen', 'S1', 'Fakultas Ekonomi dan Bisnis'),
('SIF', 'Sistem Informasi', 'S1', 'Fakultas Teknologi Informasi'),
('TIF', 'Teknik Informatika', 'S1', 'Fakultas Teknologi Informasi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `kode_mk` (`kode_mk`),
  ADD KEY `nidn` (`nidn`);

--
-- Indeks untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD UNIQUE KEY `nim` (`nim`,`id_kelas`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `nidn_wali` (`nidn_wali`);

--
-- Indeks untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`kode_mk`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD UNIQUE KEY `id_krs` (`id_krs`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id_prodi`);

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`kode_mk`) REFERENCES `mata_kuliah` (`kode_mk`),
  ADD CONSTRAINT `kelas_ibfk_2` FOREIGN KEY (`nidn`) REFERENCES `dosen` (`nidn`);

--
-- Ketidakleluasaan untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`),
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id_prodi`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`nidn_wali`) REFERENCES `dosen` (`nidn`);

--
-- Ketidakleluasaan untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD CONSTRAINT `mata_kuliah_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id_prodi`);

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_krs`) REFERENCES `krs` (`id_krs`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
