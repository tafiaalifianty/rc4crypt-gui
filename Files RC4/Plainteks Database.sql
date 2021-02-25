-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2020 at 09:57 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penilaian_dosen`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `NIP` varchar(18) NOT NULL,
  `Nama_Depan` varchar(10) NOT NULL,
  `Nama_Belakang` varchar(10) NOT NULL,
  `Tgl_Lahir` date NOT NULL,
  `Alamat` varchar(60) NOT NULL,
  `No_Telp` varchar(13) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Pangkat` varchar(4) NOT NULL,
  `Bidang_Ilmu` varchar(30) NOT NULL,
  `ID_Matkul` varchar(6) NOT NULL,
  `Total_Waktu` int(3) NOT NULL,
  `Lama_Jabatan` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`NIP`, `Nama_Depan`, `Nama_Belakang`, `Tgl_Lahir`, `Alamat`, `No_Telp`, `Email`, `Pangkat`, `Bidang_Ilmu`, `ID_Matkul`, `Total_Waktu`, `Lama_Jabatan`) VALUES
('123456789012345677', 'Asher', 'Frye', '1977-06-07', 'Ap #584-8673 Tincidunt Av.', '072-301-1354', 'dictum@Aliquamadipiscinglobortis.net', 'IVc', 'Sistem dan Teknologi Informasi', 'II4021', 15, 4),
('123456789012345678', 'Daquan', 'Clayton', '1977-06-29', 'P.O. Box 322, 6252 Mi St.', '020-667-2825', 'tristique.pellentesque@eleifend.com', 'IIIb', 'Sistem dan Teknologi Informasi', 'II2130', 10, 1),
('123456789012345679', 'William', 'Rose', '1971-04-30', 'Ap #126-1116 Elit, Av.', '023-187-7324', 'mus.Proin@aliquet.net', 'IVb', 'Teknik Biomedis', 'MA1101', 15, 3),
('123456789012345680', 'Buckminste', 'Holcomb', '1974-05-19', 'Ap #788-6912 At St.', '092-575-3918', 'Ut.nec@ategestasa.net', 'IVc', 'Teknik Biomedis', 'FI1101', 15, 4),
('123456789012345681', 'Fay', 'Love', '1972-01-28', 'P.O. Box 829, 2815 Nulla St.', '037-048-1051', 'Donec.fringilla@lobortisnisinibh.org', 'IIIb', 'Teknik Elektro', 'KU1001', 10, 0),
('123456789012345682', 'Cain', 'Gutierrez', '1976-12-11', 'P.O. Box 389, 2650 Enim Ave', '004-705-5228', 'nisl@dis.org', 'IVb', 'Teknik Elektro', 'KU1102', 15, 3),
('123456789012345683', 'Brock', 'Walton', '1971-08-29', '403-8880 Lectus Road', '027-197-6601', 'vulputate.dui.nec@pedeblanditcongue.edu', 'IIIa', 'Teknik Informatika', 'IF1210', 10, 0),
('123456789012345684', 'Calvin', 'Casey', '1977-07-16', 'Ap #190-2591 Non Avenue', '004-373-3312', 'mauris@atvelit.org', 'IVa', 'Teknik Informatika', 'IF2140', 12, 3),
('123456789012345685', 'Josiah', 'Lynn', '1977-01-27', '4224 Enim, Ave', '069-063-3776', 'Fusce.diam@ideratEtiam.ca', 'IIIa', 'Teknik Tenaga Listrik', 'MA1201', 10, 0),
('123456789012345686', 'Madiha', 'Fazat', '1979-08-23', '7 Enim, Ave', '088-888-888', 'pristine.penteque@alinamed.com', 'IIIb', 'Teknik Tenaga Listrik', 'FI1201', 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_penilaian`
--

CREATE TABLE `kategori_penilaian` (
  `ID_Kategori` varchar(4) NOT NULL,
  `Penilaian` varchar(320) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_penilaian`
--

INSERT INTO `kategori_penilaian` (`ID_Kategori`, `Penilaian`) VALUES
('P001', 'Ketepatan waktu dosen dalam mengawali dan mengakhiri perkuliahan.'),
('P002', 'Ketepatan waktu dalam penyerahan nilai ke jurusan/program studi.'),
('P003', 'Ketepatan waktu pelaksaksanakan UTS dan UAS (sesuai dengan kalender akademik).'),
('P004', 'Ketepatan waktu penyerahan soal ke fakultas untuk digandakan.'),
('P005', 'Dosen menerima saran dan kritik dari mahasiswa tentang upaya-upaya perbaikan kualitas pembelajaran.'),
('P006', 'Kemampuan dosen dalam menegakkan peraturan dalam perkuliahan.'),
('P007', 'Kemampuan dosen dalam menciptakan suasana kelas yang kondusif.'),
('P008', 'Kemampuan dosen dalam menciptakan lingkungan fisik atau penataan sarana pembelajaran di kelas.'),
('P009', 'Kemampuan dalam memotivasi siswa agar aktif dalam proses belajar mengajar.'),
('P010', 'Kemampuan dosen dalam menyampaikan materi perkuliahan.'),
('P011', 'Kemampuan dosen dalam menghindari penggunaan bahasa yang bersifat menghina, melecehkan, mengejek dan menyinggung perasaan orang lain.'),
('P012', 'Kemampuan dalam penataan lingkungan fisik kampus.'),
('P013', 'Kemampuan dalam menciptakan hubungan yang harmonis dengan mahasiswa atau suasana kelas yang kondusif.'),
('P014', 'Kemampuan dalam menggunakan metode pembelajaran sesuai dengan tuntutan materi dan tujuan pembelajaran.'),
('P015', 'Kemampuan dalam menggunakan bahasa Indonesia yang baik dan benar dalam mengajar.'),
('P016', 'Kemampuan dalam menciptakan ketertiban dalam kelas.'),
('P017', 'Kemampuan dalam mengusai materi kuliah pada mata kuliah yang diampu.'),
('P018', 'Kemampuan dalam melaksaksanakan UTS dan UAS, mengumpulkan, dan menilai tugas.'),
('P019', 'Kemampuan melakukan administrasikan secara terhadap setiap komponen penilaian (UTS, UAS, Tugas, dsb.) menyampaikannya secara transparan kepada mahasiswa.'),
('P020', 'Kemampuan dalam mengolah nilai yang merupakan akumulasi dari berbagai kegiatan yang telah dilaksanakan (Tugas, UTS, UAS, dll.)'),
('P021', 'Kemampuan dosen dalam memberikan sanksi akademis dan non akademis jika tata tertib dan ketentuan akademis tidak dipenuhi mahasiswa.'),
('P022', 'Kemampuan dosen dalam menyampaikan tujuan yang akan dicapai.'),
('P023', 'Kemampuan dosen dalam memberikan tugas kepada mahasiswa seperti penyusunan makalah, praktek di laboraturium, praktek lapangan, laporan, telaah kritis, menterjemahkan, pameran sesuai dengan kebutuhan mata kuliah.'),
('P024', 'Kemampuan dosen mengawasi secara langsung pelaksanaan UTS dan UAS.'),
('P025', 'Partisipasi dosen dalam kegiatan penelitian.'),
('P026', 'Inisiasi dosen dalam kegiatan pengabdian masyarakat.'),
('P027', 'Kejelasan dan tata bahasa dosen dalam menjelaskan materi kuliah.'),
('P028', 'Keterhubungan materi yang dijelaskan dengan materi yang lain.');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` int(8) NOT NULL,
  `Nama_Depan` varchar(10) NOT NULL,
  `Nama_Belakang` varchar(10) NOT NULL,
  `Tgl_Lahir` date NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `No_Telp` varchar(16) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Fakultas` varchar(7) NOT NULL,
  `Jurusan` varchar(30) NOT NULL,
  `Semester` int(1) NOT NULL,
  `IPK` float NOT NULL,
  `NIP_Doswal` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `Nama_Depan`, `Nama_Belakang`, `Tgl_Lahir`, `Alamat`, `No_Telp`, `Email`, `Fakultas`, `Jurusan`, `Semester`, `IPK`, `NIP_Doswal`) VALUES
(12318001, 'Adi', 'Jingga', '2000-10-04', 'Jl. Aci No. 1', '081247081234', '12318001@std.stei.itb.ac.id', 'STEI', 'Teknik Informatika', 5, 3.74, '123456789012345683'),
(12318002, 'Adrian', 'Jori', '2000-06-14', 'Jl. Aci No. 2', '085213418312', '12318002@std.stei.itb.ac.id', 'STEI', 'Sistem dan Teknologi Informasi', 3, 3.12, '123456789012345677'),
(12318003, 'Adriel', 'Kevin', '2000-05-29', 'Jl. Aci No. 3', '081232129134', '12318003@std.stei.itb.ac.id', 'STEI', 'Teknik Biomedis', 5, 3.54, '123456789012345679'),
(12318004, 'Akbar', 'Cahyadi', '2000-10-18', 'Jl. Aci No. 4', '081231043243', '12318004@std.stei.itb.ac.id', 'STEI', 'Teknik Elektro', 3, 3.76, '123456789012345681'),
(12318005, 'Alya', 'Madiha', '2000-06-13', 'Jl. Aci No. 5', '085362419213', '12318005@std.stei.itb.ac.id', 'STEI', 'Teknik Tenaga Listrik', 3, 3.84, '123456789012345685');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `ID_Matkul` varchar(6) NOT NULL,
  `Nama` varchar(60) NOT NULL,
  `Prerequisite` varchar(6) NOT NULL,
  `Fakultas` varchar(7) NOT NULL,
  `Durasi` int(4) NOT NULL,
  `Kapasitas` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`ID_Matkul`, `Nama`, `Prerequisite`, `Fakultas`, `Durasi`, `Kapasitas`) VALUES
('EL1200', 'Pengantar Analisis Rangkaian', '', 'STEI', 90, 60),
('FI1101', 'Fisika Dasar IA', '', 'FMIPA', 180, 70),
('FI1201', 'Fisika Dasar IIA', 'FI1101', 'FMIPA', 180, 70),
('IF1210', 'Dasar Pemrograman', 'KU1102', 'STEI', 90, 60),
('IF2111', 'Algoritma dan Struktur Data STI', 'IF1210', 'STEI', 135, 60),
('IF2140', 'Pemodelan Basis Data', '', 'STEI', 135, 120),
('IF2212', 'Pemrograman Berbasis Objek STI', 'IF2111', 'STEI', 135, 60),
('II2110', 'Matematika STI', '', 'STEI', 135, 60),
('II2111', 'Probabilitas dan Statistik', '', 'STEI', 135, 120),
('II2130', 'Sistem dan Arsitektur Komputer', '', 'STEI', 135, 60),
('II2220', 'Manajemen Sumber Daya STI', '', 'STEI', 135, 60),
('II2230', 'Jaringan Komputer', 'II2130', 'STEI', 135, 60),
('II2240', 'Analisis Kebutuhan Sistem', '', 'STEI', 135, 60),
('II2250', 'Manajemen Basis Data', 'IF2140', 'STEI', 90, 60),
('II2260', 'Sistem Embedded', '', 'STEI', 135, 60),
('II3120', 'Layanan Sisten dan Teknologi Informasi', 'II2220', 'STEI', 135, 60),
('II3131', 'Interaksi Manusia Komputer', '', 'STEI', 135, 80),
('II3150', 'Sistem Multimedia', '', 'STEI', 135, 60),
('II3160', 'Teknologi Sistem Terintegrasi', 'II2230', 'STEI', 135, 60),
('II4021', 'Sistem Pendukung Pengambil Keputusan', '', 'STEI', 90, 50),
('KI1002', 'Kimia Dasar B', '', 'FMIPA', 180, 70),
('KU1001', 'Olahraga', '', 'SF', 90, 70),
('KU1011', 'Tata Tulis Karya Ilmiah', '', 'FSRD', 90, 70),
('KU1024', 'Bahasa Inggris', '', 'FSRD', 90, 70),
('KU1102', 'Pengenalan Komputasi', '', 'STEI', 135, 70),
('KU1202', 'Pengantar Rekayasa dan Desain', '', 'FTMD', 135, 70),
('MA1101', 'Matematika IA', '', 'FMIPA', 180, 120),
('MA1201', 'Matematika IIA', 'MA1101', 'FMIPA', 180, 120),
('TI3005', 'Organisasi dan Manajemen Perusahaan Industri', '', 'FTI', 90, 70);

-- --------------------------------------------------------

--
-- Table structure for table `matriks_nilai`
--

CREATE TABLE `matriks_nilai` (
  `ID_PenAkhir` int(8) NOT NULL,
  `NIP` varchar(18) NOT NULL,
  `Kualitas_Hasil_Kerja` char(1) NOT NULL,
  `Kemampuan` char(1) NOT NULL,
  `Partisipasi_dan_Inisiasi` char(1) NOT NULL,
  `Komunikasi` char(1) NOT NULL,
  `Ketepatan_Waktu` char(1) NOT NULL,
  `Indeks` char(1) NOT NULL,
  `Tindakan` varchar(45) NOT NULL,
  `Honor` int(7) NOT NULL,
  `Pangkat` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `peer_assessment`
--

CREATE TABLE `peer_assessment` (
  `ID_PenDosen` int(10) NOT NULL,
  `NIP_Penilai` varchar(18) NOT NULL,
  `NIP_Dinilai` varchar(18) NOT NULL,
  `ID_Kategori` varchar(4) NOT NULL,
  `Nilai` int(1) NOT NULL,
  `Ket` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengmas_penelitian`
--

CREATE TABLE `pengmas_penelitian` (
  `No_Kegiatan` varchar(20) NOT NULL,
  `Tgl` date NOT NULL,
  `NIP` varchar(18) NOT NULL,
  `Nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengmas_penelitian`
--

INSERT INTO `pengmas_penelitian` (`No_Kegiatan`, `Tgl`, `NIP`, `Nama`) VALUES
('B/1135/E3/RA.00/2020', '2020-11-15', '123456789012345686', 'Madiha Fazat'),
('B/1136/E3/RA.00/2020', '2020-03-23', '123456789012345677', 'Asher Frye'),
('B/1137/E3/RA.00/2020', '2020-04-04', '123456789012345678', 'Daquan Clayton'),
('B/1138/E3/RA.00/2020', '2020-04-10', '123456789012345679', 'William Rose'),
('B/1139/E3/RA.00/2020', '2020-05-27', '123456789012345680', 'Buckminster Holcomb'),
('B/1140/E3/RA.00/2020', '2020-05-27', '123456789012345681', 'Fay Love'),
('B/1141/E3/RA.00/2020', '2020-06-01', '123456789012345682', 'Cain Gutierrez'),
('B/1142/E3/RA.00/2020', '2020-07-09', '123456789012345683', 'Brock Walton'),
('B/1143/E3/RA.00/2020', '2020-07-20', '123456789012345684', 'Calvin Casey'),
('B/1144/E3/RA.00/2020', '2020-08-03', '123456789012345685', 'Josiah Lynn'),
('B/1145/E3/RA.00/2020', '2020-08-23', '123456789012345686', 'Madiha Fazat'),
('B/1146/E3/RA.00/2020', '2020-08-25', '123456789012345677', 'Asher Frye'),
('B/1147/E3/RA.00/2020', '2020-09-07', '123456789012345678', 'Daquan Clayton'),
('B/1148/E3/RA.00/2020', '2020-09-11', '123456789012345679', 'William Rose'),
('B/1149/E3/RA.00/2020', '2020-09-24', '123456789012345680', 'Buckminster Holcomb'),
('B/1150/E3/RA.00/2020', '2020-10-02', '123456789012345681', 'Fay Love'),
('B/1151/E3/RA.00/2020', '2020-10-03', '123456789012345682', 'Cain Gutierrez'),
('B/1152/E3/RA.00/2020', '2020-10-03', '123456789012345683', 'Brock Walton'),
('B/1153/E3/RA.00/2020', '2020-10-19', '123456789012345684', 'Calvin Casey'),
('B/1154/E3/RA.00/2020', '2020-11-04', '123456789012345685', 'Josiah Lynn');

-- --------------------------------------------------------

--
-- Table structure for table `penilaian_mahasiswa`
--

CREATE TABLE `penilaian_mahasiswa` (
  `ID_Eval` int(10) NOT NULL,
  `NIM` int(8) NOT NULL,
  `ID_Kategori` varchar(4) NOT NULL,
  `NIP` varchar(18) NOT NULL,
  `Nilai` int(1) NOT NULL,
  `Ket` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `self_assessment`
--

CREATE TABLE `self_assessment` (
  `ID_PenMandiri` int(10) NOT NULL,
  `NIP` varchar(18) NOT NULL,
  `ID_Kategori` varchar(4) NOT NULL,
  `Nilai` int(1) NOT NULL,
  `Bukti` int(1) NOT NULL,
  `Ket` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`NIP`),
  ADD KEY `ID_Matkul` (`ID_Matkul`);

--
-- Indexes for table `kategori_penilaian`
--
ALTER TABLE `kategori_penilaian`
  ADD PRIMARY KEY (`ID_Kategori`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`),
  ADD KEY `NIP_Doswal` (`NIP_Doswal`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`ID_Matkul`),
  ADD KEY `Prerequisite` (`Prerequisite`);

--
-- Indexes for table `matriks_nilai`
--
ALTER TABLE `matriks_nilai`
  ADD PRIMARY KEY (`ID_PenAkhir`),
  ADD KEY `NIP` (`NIP`);

--
-- Indexes for table `peer_assessment`
--
ALTER TABLE `peer_assessment`
  ADD PRIMARY KEY (`ID_PenDosen`),
  ADD KEY `NIP_Penilai` (`NIP_Penilai`),
  ADD KEY `NIP_Dinilai` (`NIP_Dinilai`),
  ADD KEY `ID_Kategori` (`ID_Kategori`);

--
-- Indexes for table `pengmas_penelitian`
--
ALTER TABLE `pengmas_penelitian`
  ADD PRIMARY KEY (`No_Kegiatan`);

--
-- Indexes for table `penilaian_mahasiswa`
--
ALTER TABLE `penilaian_mahasiswa`
  ADD PRIMARY KEY (`ID_Eval`),
  ADD KEY `NIM` (`NIM`),
  ADD KEY `ID_Kategori` (`ID_Kategori`),
  ADD KEY `NIP` (`NIP`);

--
-- Indexes for table `self_assessment`
--
ALTER TABLE `self_assessment`
  ADD PRIMARY KEY (`ID_PenMandiri`),
  ADD KEY `NIP` (`NIP`),
  ADD KEY `ID_Kategori` (`ID_Kategori`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`ID_Matkul`) REFERENCES `mata_kuliah` (`ID_Matkul`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`NIP_Doswal`) REFERENCES `dosen` (`NIP`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matriks_nilai`
--
ALTER TABLE `matriks_nilai`
  ADD CONSTRAINT `matriks_nilai_ibfk_1` FOREIGN KEY (`NIP`) REFERENCES `dosen` (`NIP`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `peer_assessment`
--
ALTER TABLE `peer_assessment`
  ADD CONSTRAINT `peer_assessment_ibfk_1` FOREIGN KEY (`NIP_Penilai`) REFERENCES `dosen` (`NIP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peer_assessment_ibfk_2` FOREIGN KEY (`NIP_Dinilai`) REFERENCES `dosen` (`NIP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peer_assessment_ibfk_3` FOREIGN KEY (`ID_Kategori`) REFERENCES `kategori_penilaian` (`ID_Kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penilaian_mahasiswa`
--
ALTER TABLE `penilaian_mahasiswa`
  ADD CONSTRAINT `penilaian_mahasiswa_ibfk_1` FOREIGN KEY (`NIP`) REFERENCES `dosen` (`NIP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_mahasiswa_ibfk_2` FOREIGN KEY (`ID_Kategori`) REFERENCES `kategori_penilaian` (`ID_Kategori`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_mahasiswa_ibfk_3` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `self_assessment`
--
ALTER TABLE `self_assessment`
  ADD CONSTRAINT `self_assessment_ibfk_1` FOREIGN KEY (`NIP`) REFERENCES `dosen` (`NIP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `self_assessment_ibfk_2` FOREIGN KEY (`ID_Kategori`) REFERENCES `kategori_penilaian` (`ID_Kategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
