-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2019 at 10:03 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_crud`
--
CREATE DATABASE IF NOT EXISTS `db_crud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_crud`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_10_01_163610_create_siswa_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_depan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_belakang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `agama`, `alamat`, `created_at`, `updated_at`) VALUES
(2, 'Kevin', 'Kamaluddin', 'L', 'Islam', 'Bogor', NULL, NULL),
(3, 'Ferial', 'Fahlevi', 'L', 'Islam', 'Bekasi Barat', '2019-10-01 21:39:47', '2019-10-01 21:39:47'),
(4, 'Faradilla', 'Mahardi', 'P', 'Islam', 'Jakarta', '2019-10-01 21:47:17', '2019-10-01 22:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `db_stres`
--
CREATE DATABASE IF NOT EXISTS `db_stres` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_stres`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id` int(3) NOT NULL,
  `kategori` varchar(15) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `gambar` text NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id`, `kategori`, `judul`, `gambar`, `isi`) VALUES
(1, '1', 'Pengertian Stress: Jenis, Penyebab dan Faktor Yang Mempengaruhi', 'https://jagad.id/wp-content/uploads/2018/03/Pengertian-Stress-Jenis-Faktor-Penyebab-dan-Faktor-Yang-Mempengaruhi.jpg', '<h5>Pengertian Stres</h5>\r\n<br>\r\nSecara klinis, stress adalah bentuk ketegangan fisik, psikis, emosi dan mental. Yang dalam bentuk respon dari dalam tubuh dapat sangat mengganggu aktifitas seseorang, yang pada kadar jumlah ketegangan yang tinggi dapat mengakibatkan rasa sakit dan gangguan mental.\r\n<br>\r\nMenurut para ahli, seperti Robbins (2001) menjelaskan bahwa strees dapat pula diartikan sebagai sebuah kondisi yang menekan psikis seseorang dalam mecapai suatu kesempatan dimana untuk mencapai kesempatan tersebut terdapat batasan atau penghalang. Dan apabila pengertian stress ini dikaitkan dengan system kognitif manusia seperti penjelasan Woolfolk dan Richardsno (1979) mengartikan bahwa stress dapat menyebabkan segala peristiwa yang terjadi sebagai interpretasi yang diberikan terhadap peristiwa tersebut, layaknya sebuah ancaman suatu bayangan akan adanya ketidaksenangan suatu bentuk perilaku.\r\n<br>\r\n\r\n<h5>Jenis-jenis Stres</h5>\r\n<br>\r\nSeringkali anda dilanda sesuatu yang dinamakan stress, secara sadar maupun tidak. Perlu anda ketahui jenis – jenis yang menjangkit kedalam tubuh anda, berikut ini merupakan jenis stress yang ditinjau dari penyebab terjadinya:\r\n<br>\r\n<li>Stres Fisik</li>\r\nMerupakan sebuah efek yang terjadi terhadap lingkungan diluar kendali dan kehendak manusia, seperti : suhu yang terlalu tinggi atu rendah, suara bising, sinar matahari yang terlalu menyengat dan sebagainya.\r\n<br>\r\n<li>Stres Kimiawi</li>\r\n<br>\r\nMerupakan stress yang disebabkan oleh pengaruh dari obat – obatan maupun zat kimiawi yang terkandung dalam sebuah makanan, zat ataupun bisa disebabkan faktor hormone.\r\n<br>\r\n<li>Stres Mikrobiologis</li>\r\n<br>\r\nMerupakan stress yang disebabkan oleh pengaruh bakteri dan parasite yang menjangkiti tubuh manusia, baik secara langsung di dalam tubuh maupun dipermukaan kulit.\r\n<br>\r\n<li>Stres Fisiologis</li>\r\n<br>\r\nMerupakan stress yang disebabkan oleh disfungsinya organ tubuh, seperti keseleo/terkilir, terluka, hal – hal yang menyebabkan tubuh fisik menjadi tidak dapat menerima sebuah keadaan yang terjadi.\r\n<br>\r\n<li>Stres Proses Tumbuh Kembang</li>\r\n<br>\r\nYakni sebuah kejadian jenis stress yang paling banyak terjadi ketika melalui sebuah proses fase baru dalam kehidupan yang berdampak pada emosional psikologis manusia, hal ini dapat terjadi karena ketidaksiapan dan kurangnya pengalaman akan sesuatu hal yang baru, sebagai contoh : pubertas, hari pertama masuk sekolah, hari pertama diterima kerja, hari pertama setelah menikah, memiliki anak, dan lain sebagainya'),
(2, '2', 'Perbedaan Stres Dan Depresi', 'https://hellosehat.com/wp-content/uploads/2016/09/kenali-perbedaan-stres-depresi.jpg?x35866', 'Apa bedanya stres dan depresi?\r\nStres biasanya dimulai dari rasa kewalahan akibat banyaknya tekanan dari luar dan dalam diri seseorang yang telah berlangsung cukup lama. Stres bisa mendorong Anda untuk semakin bersemangat menghadapi tantangan, tapi juga bisa mematahkan semangat Anda. Ini karena setiap orang memiliki mekanisme yang berbeda-beda dalam menghadapi stres.\r\n\r\nKetika Anda dilanda stres, tubuh Anda membaca adanya serangan atau ancaman. Sebagai mekanisme perlindungan diri, tubuh akan memproduksi berbagai hormon dan zat-zat kimia seperti adrenalin, kortisol, dan norepinefrin. Akibatnya, Anda akan merasakan dorongan energi dan peningkatan konsentrasi supaya Anda bisa merespon sumber tekanan secara efektif. Tubuh juga akan secara otomatis mematikan fungsi-fungsi tubuh yang sedang tidak diperlukan, misalnya pencernaan. Namun, apabila stres muncul pada saat-saat yang tidak diinginkan, darah akan mengalir ke bagian-bagian tubuh yang berguna untuk merespon secara fisik seperti kaki dan tangan sehingga fungsi otak menurun. Inilah sebabnya banyak orang yang justru sulit berpikir jernih saat diserang stres.\r\n\r\nBerbeda dengan stres, depresi adalah sebuah penyakit mental yang berdampak buruk pada suasana hati, perasaan, stamina, selera makan, pola tidur, dan tingkat konsentrasi penderitanya. Depresi bukan tanda ketidakbahagiaan atau cacat karakter. Depresi bukanlah keadaan yang wajar ditemui seperti stres atau panik. Orang yang terserang depresi biasanya akan merasa hilang semangat atau motivasi, terus-menerus merasa sedih dan gagal, dan mudah lelah. Kondisi ini bisa berlangsung selama enam bulan atau lebih. Maka, orang yang menderita depresi biasanya jadi sulit menjalani kegiatan sehari-sehari seperti bekerja, makan, bersosialisasi, belajar, atau berkendara secara normal. Siapa pun bisa terserang depresi, terutama jika ada riwayat depresi dalam keluarga terdekat Anda. Penelitian juga menunjukkan bahwa wanita lebih berisiko terserang depresi daripada pria.\r\n\r\nGejala stres\r\nStres bisa terjadi pada siapa saja, termasuk anak-anak usia sekolah. Perhatikan gejala-gejala depresi berikut ini untuk mencari tahu apakah Anda mengalami stres atau depresi.\r\n\r\nSulit tidur\r\nGangguan daya ingat\r\nGangguan berkonsentrasi\r\nPerubahan pola makan\r\nMudah marah dan tersinggung\r\nSering gugup atau gelisah\r\nMerasa kewalahan dengan pekerjaan di sekolah atau kantor\r\nMerasa takut tidak bisa menyelesaikan tugas-tugas dengan baik\r\nGejala depresi\r\nTanda-tanda depresi jauh lebih rumit daripada gejala stres. Kemunculannya pun bisa bertahap sehingga sulit untuk benar-benar menyadari kapan depresi pertama kali menyerang. Berikut adalah berbagai gejala depresi yang biasanya terjadi.\r\n\r\nMenarik diri dari lingkungan sosial dan keluarga\r\nMerasa sedih seolah-olah tidak ada harapan lagi\r\nHilang semangat, motivasi, energi, dan stamina\r\nSulit mengambil keputusan\r\nMakan lebih sedikit atau lebih banyak dari biasanya\r\nTidur lebih sebentar atau lama dari biasanya\r\nSulit berkonsentrasi\r\nSulit mengingat-ingat\r\nMerasa bersalah, gagal, dan sendirian\r\nBerpikiran negatif secara terus-menerus\r\nMudah kecewa, marah, dan tersinggung\r\nSulit menjalani kegiatan sehari-hari\r\nHilang minat pada hal-hal yang biasanya dinikmati\r\nAdanya pikiran untuk bunuh diri'),
(5, '3', 'Cara Ampuh Mengatasi Stres', 'https://image.cermati.com/q_70/qxvlhsujccdu8m33mjnp.webp', '1. Hirup Udara Segar\r\n\r\nKetika stres mulai melanda, segeralah menyadarinya dan beranjak menghirup udara segar. Bertahan pada situasi dan posisi yang monotn tidak akan bisa mengatasi stres, justru akan semakin memburuk kondisi. Contohnya saja, ketika sedang mumet dengan pekerjaan yang numpuk namun Anda tetap mengerjakannya secara terpaksa agar cepat selesai.\r\n\r\nPadahal, hal tersebut hanya akan membuat hasil pekerjaan menjadi tidak baik. Untuk itu, pergilah keluar ruangan dan hirup udara segar walau sebentar. Sebab, udara segar dapat membantu menenangkan diri sehingga bisa kembali berpikir jernih.\r\n\r\n2. Banyak Minum Air Putih\r\n\r\nBanyak orang yang melampiaskan stresnya dengan meminum minuman yang mengandung alkohol seperti bir, anggur dan sebagainya. Mereka yang melakukan hal ini berpikir dengan minuman tersebut mampu menjadi ‘obat’ mujarab pengusir stres. Memang minuman tersebut bisa memberikan efek tenang, tapi hanyalah bersifat sementara. Ketika efek alkoholnya menghilang, maka stres akan kembali datang.\r\n\r\nSaat kondisi tertekan, baiknya konsumsi banyak air putih justru lebih membantu mengurangi ketegangan. Tanpa disadari stres mengakibatkan cairan tubuh akan berkurang sehingga kondisi ini menimbulkan rasa letih pada tubuh. Oleh sebab itu, dengan meminum banyak air putih dapat mengatasi kondisi tubuh yang kekurangan cairan. Di saat cairan tubuh pulih kembali, maka rasa letih yang dirasakan akan mulai memudar, dengan begitu stres bisa teratasi.'),
(6, '2', 'Gejala - gejala stres yang sering muncul', 'https://hellosehat.com/wp-content/uploads/2016/09/kenali-perbedaan-stres-depresi.jpg?x11178', 'Ketika Anda dilanda stres, tubuh Anda membaca adanya serangan atau ancaman. Sebagai mekanisme perlindungan diri, tubuh akan memproduksi berbagai hormon dan zat-zat kimia seperti adrenalin, kortisol, dan norepinefrin. Akibatnya, Anda akan merasakan dorongan energi dan peningkatan konsentrasi supaya Anda bisa merespon sumber tekanan secara efektif. Tubuh juga akan secara otomatis mematikan fungsi-fungsi tubuh yang sedang tidak diperlukan, misalnya pencernaan. Namun, apabila stres muncul pada saat-saat yang tidak diinginkan, darah akan mengalir ke bagian-bagian tubuh yang berguna untuk merespon secara fisik seperti kaki dan tangan sehingga fungsi otak menurun. Inilah sebabnya banyak orang yang justru sulit berpikir jernih saat diserang stres.\r\n\r\nStres bisa terjadi pada siapa saja, termasuk anak-anak usia sekolah. Perhatikan gejala-gejala depresi berikut ini untuk mencari tahu apakah Anda mengalami stres atau depresi.\r\n\r\n- Sulit tidur\r\n- Gangguan daya ingat\r\n- Gangguan berkonsentrasi\r\n- Perubahan pola makan\r\n- Mudah marah dan tersinggung\r\n- Sering gugup atau gelisah\r\n- Merasa kewalahan dengan pekerjaan di sekolah atau kantor\r\n- Merasa takut tidak bisa menyelesaikan tugas-tugas dengan baik');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `kode_hasil` varchar(30) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `usia` varchar(2) NOT NULL,
  `tingkat_stres` varchar(2) NOT NULL,
  `nilai_cf` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_hasil`
--

INSERT INTO `tb_hasil` (`kode_hasil`, `nama`, `usia`, `tingkat_stres`, `nilai_cf`) VALUES
('5d7f2a440819e', 'Ferial Fahlevi', '21', 'S4', 65.43),
('5d7f2bdd2efc6', 'Kevin Kamaluddin', '19', 'S3', 51.36),
('5d7f321618c94', 'Nurul Isyana', '20', 'S1', 42.88),
('5d7f328551fce', 'Iman Rais', '18', 'S1', 68.948224),
('5d7f62a836f86', 'Ferial', '20', 'S1', 0),
('5d7f62dba080f', 'Ferial', '20', 'S1', 0),
('5d7f62f09d2b6', 'Ferial', '20', 'S1', 0),
('5d7f6431ea2e8', 'Kevin Kamaluddin', '21', 'S1', 16),
('5d7f644683d22', 'Kevin Kamaluddin', '21', 'S1', 0),
('5d7f645d63800', 'Ferial', '20', 'S1', 42.24),
('5d7f648ab122b', 'Ferial', '20', 'S1', 42.24),
('5d7fc01d57e5d', 'Kevin Kamaluddin', '21', 'S1', 59.244544),
('5d7fc7016812f', 'Ferial Fahlevi', '20', 'S1', 0),
('5d7fc71ca6a25', 'Ferial Fahlevi', '20', 'S1', 77.173248),
('5d7fcc5dbebdf', 'Ferial Fahlevi', '20', 'S1', 77.173248),
('5d7fcf7bda883', 'Ferial Fahlevi', '20', 'S1', 77.173248),
('5d7fd116240be', 'Ferial Fahlevi', '20', 'S1', 77.173248),
('5d7fd1b10583c', 'Ferial Fahlevi', '20', 'S1', 77.173248),
('5d7fd2ad5baf8', 'Ferial Fahlevi', '20', 'S1', 77.173248),
('5d7fd31f65be6', 'Ferial Fahlevi', '20', 'S1', 77.173248),
('5d81d7123fcb5', 'Ferial', '21', 'S1', 76.341504),
('5d882305e4a36', 'Ferial', '21', 'S1', 24),
('5d88236fd8e3f', 'Ferial', '21', 'S1', 24),
('5d8823f027906', 'Ferial', '21', 'S1', 24),
('5d8823fbc57ea', 'Ferial', '21', 'S1', 24),
('5d88259b3e339', 'Ferial', '21', 'S1', 24),
('5d88260f59d69', 'Ferial', '21', 'S1', 24),
('5d88268370b6d', 'Ferial', '21', 'S1', 24),
('5d88269782960', 'Ferial', '21', 'S1', 24),
('5d8826c1afac1', 'Ferial', '21', 'S1', 24),
('5d8ba04677634', 'Kevin Kamaluddin', '21', 'S1', 86.847744),
('5d8ba0a8549de', 'Salma', '20', 'S4', 86.45239808),
('5d8c291938767', 'Ferial Fahlevi', '21', 'S1', 0),
('5d8c293f2d912', 'Ferial Fahlevi', '21', 'S1', 0),
('5d8c5e85412e6', 'Ferial Fahlevi', '21', 'S1', 56.48),
('5d8c5f7826cce', 'Kevin Kamaluddin', '21', 'S1', 60),
('5dad6af194507', 'Fer', '21', 'S1', 74.7072),
('5db65dee68572', 'Fer', '21', 'S4', 0),
('5db65f7c7121e', 'Fer', '21', 'S1', 0),
('5db65fd428755', 'Fer', '21', 'S1', 0),
('5db6600b8fe15', 'Fer', '21', 'S1', 0),
('5db660b5b5dc9', 'Fer', '21', 'S1', 0),
('5db6628284384', 'Fer', '21', 'S1', 0),
('5db6637432b2e', 'Fer', '21', 'S1', 0),
('5db663b4b41c4', 'Fer', '21', 'S1', 0),
('5db663cf9b5b7', 'Fer', '21', 'S1', 0),
('5db663fa79b4a', 'Fer', '21', 'S1', 0),
('5db6641bcfd1e', 'Fer', '21', 'S1', 0),
('5db664c046a78', 'Fer', '21', 'S1', 0),
('5db664fcd878c', 'Fer', '21', 'S1', 0),
('5db6657fa323a', 'Fer', '21', 'S1', 0),
('5db6659a7f114', 'Fer', '21', 'S1', 0),
('5db6661196281', 'Fer', '21', 'S1', 0),
('5db6663cd2eb0', 'Fer', '21', 'S1', 0),
('5db666618d175', 'Fer', '21', 'S1', 0),
('5db6672b55dd8', 'Fer', '21', 'S1', 0),
('5db668365bbeb', 'Fer', '21', 'S1', 0),
('5db9618d04062', 'Alvin', '21', 'S4', 99.83007285248);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pertanyaan`
--

CREATE TABLE `tb_pertanyaan` (
  `kode_pertanyaan` varchar(3) NOT NULL,
  `pertanyaan` varchar(100) NOT NULL,
  `s1` varchar(1) NOT NULL,
  `s2` varchar(1) NOT NULL,
  `s3` varchar(1) NOT NULL,
  `s4` varchar(1) NOT NULL,
  `nilai_cf` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pertanyaan`
--

INSERT INTO `tb_pertanyaan` (`kode_pertanyaan`, `pertanyaan`, `s1`, `s2`, `s3`, `s4`, `nilai_cf`) VALUES
('A01', 'Letih Ketika Bangun Pagi', '1', '1', '1', '1', 0.6),
('A02', 'Lelah Sesudah Makan Siang', '1', '1', '1', '0', 0.4),
('A03', 'Mengantuk Sepanjang Sore', '1', '1', '1', '0', 0.6),
('A04', 'Mudah Gugup', '0', '0', '1', '1', 0.6),
('A05', 'Merasa Tegang Pada Otot Punggung Atau Belakang Leher', '1', '1', '0', '0', 0.4),
('A06', 'Jantung Berdebar-Debar', '0', '0', '1', '1', 0.6),
('A07', 'Mudah Gelisah', '0', '0', '1', '1', 0.8),
('A08', 'Merasa Mual Dan Ingin Muntah', '1', '1', '0', '0', 0.4),
('A09', 'Tegang Pada Otot Punggung Atau Belakang Leher', '0', '0', '0', '1', 0.4),
('A10', 'Perasaan Tegang Semakin Meningkat', '0', '1', '0', '0', 0.8),
('A11', 'Susah Untuk Tidur Dimalam Hari', '0', '1', '1', '1', 0.8),
('A12', 'Badan Terasa Ingin Pingsan', '0', '0', '1', '0', 0.4),
('A13', 'Mudah Tersinggung', '0', '1', '1', '1', 0.6),
('A14', 'Sulit Untuk Mengerjakan Suatu Kegiatan', '0', '0', '0', '1', 0.8),
('A15', 'Kemampuan Untuk Bersosialisasi Berkurang', '0', '0', '1', '1', 0.6),
('A16', 'Suasana Hati Berubah-Ubah', '0', '1', '0', '1', 0.6),
('A17', 'Sulit Mengingat', '0', '0', '0', '1', 0.4),
('A18', 'Tidak Bisa Tidur', '0', '0', '0', '1', 0.8),
('A19', 'Merasa Pusing', '0', '1', '0', '0', 0.4),
('A20', 'Kelelahan Fisik', '0', '0', '1', '1', 0.4),
('A21', 'Sakit Maag Atau Gangguan Perut', '0', '1', '1', '1', 0.4),
('A22', 'Benjolan Ditenggorokan', '0', '0', '0', '1', 0.4),
('A23', 'Badan Berkeringat Secara Berlebihan', '1', '0', '0', '1', 0.4),
('A24', 'Muncul Pikiran Untuk Bunuh Diri', '0', '0', '0', '1', 1),
('A25', 'Nafsu Makan Hilang/Nafsu Makan Bertambah', '0', '0', '1', '1', 0.8),
('A26', 'Berat Badan Naik/Berat Badan Turun', '0', '0', '1', '1', 0.8),
('A27', 'Sulit Untuk Membuat Keputusan', '0', '0', '1', '1', 0.4),
('A28', 'Sakit Kepala', '0', '0', '0', '1', 0.8);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`username`, `password`) VALUES
('fer', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD PRIMARY KEY (`kode_hasil`);

--
-- Indexes for table `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  ADD PRIMARY KEY (`kode_pertanyaan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `db_tracking`
--
CREATE DATABASE IF NOT EXISTS `db_tracking` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_tracking`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `username` varchar(15) NOT NULL,
  `lokasi` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`username`, `lokasi`, `password`) VALUES
('ferialfahlevi', 'BEKASI', '1234'),
('kevinkamaluddin', 'Depok', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resi`
--

CREATE TABLE `tbl_resi` (
  `tracking_id` int(10) NOT NULL,
  `services` varchar(3) NOT NULL,
  `sender_name` varchar(30) NOT NULL,
  `sender_number` varchar(12) NOT NULL,
  `sender_city` varchar(15) NOT NULL,
  `recipient_name` varchar(30) NOT NULL,
  `recipient_number` varchar(12) NOT NULL,
  `recipient_address` varchar(150) NOT NULL,
  `recipient_city` varchar(15) NOT NULL,
  `weight` double NOT NULL,
  `date_sent` date NOT NULL,
  `goods` varchar(30) NOT NULL,
  `date_received` varchar(15) NOT NULL,
  `receiver` varchar(15) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_resi`
--

INSERT INTO `tbl_resi` (`tracking_id`, `services`, `sender_name`, `sender_number`, `sender_city`, `recipient_name`, `recipient_number`, `recipient_address`, `recipient_city`, `weight`, `date_sent`, `goods`, `date_received`, `receiver`, `status`) VALUES
(123456789, 'FST', 'FERIAL', '082297349932', 'TANGERANG', 'LULU', '081219958360', 'JL. TEBET TIMUR 3B', 'BEKASI', 0, '0000-00-00', '', '2019-01-24', 'PUTRI', 'ARRIVED ON'),
(295192019, 'SEC', 'Kevin Kamaluddin', '081234567893', 'BEKASI', 'Faradilla Mahardi', '082245312345', 'Jalan Sarikaya No. 4 RT.01 RW.05', 'Bekasi', 0, '0000-00-00', 'Parfume', '0000-00-00', '', 'DELIVERED'),
(295192020, 'SEC', 'Zaka Fadhullah', '081234567893', 'BOGOR', 'Mutiara Syifa', '082245312345', 'Jalan Citayam', 'Depok', 2, '0000-00-00', 'Plant', '0000-00-00', '', 'ON PROCESS'),
(295192021, 'TRD', 'Iman Rais', '081234567893', 'BEKASI', 'Ferial Fahlevi', '082245312345', 'Jalan Mangga', 'Bekasi', 0, '0000-00-00', 'Plant', '0000-00-00', 'YANA', 'DELIVERED'),
(295192022, 'FST', 'Zaka Fadhullah', '081234567893', 'JAKARTA', 'Ferial Fahlevi', '082245312345', 'Bekasi', 'Depok', 0, '0000-00-00', 'Plant', '0000-00-00', '', 'ON PROCESS'),
(295192023, 'TRD', 'Rizka Aulia', '081238472312', 'JAKARTA', 'Diana Masrita', '081234231331', 'Jalan Margonda Raya', 'Depok', 0, '0000-00-00', 'Plant', '0000-00-00', '', 'TRANSIT CENTER'),
(295192024, 'TRD', 'Attie Setiahati', '082294823841', 'BEKASI', 'Muhammad Iqbal', '081283748273', 'Tangerang', 'Tangerang', 0, '0000-00-00', 'Plant', '0000-00-00', 'LULU', 'DELIVERED'),
(295192025, 'TRD', 'Attie Setiahati', '082294823841', 'BEKASI', 'Diana Masrita', '081234231331', 'JAKARTA', 'JAKARTA', 0, '0000-00-00', 'Plant', '0000-00-00', 'Iman Rais', 'DELIVERED'),
(295192027, 'FST', 'Raafi Hepriyandi', '082298988889', 'BEKASI', 'Yana Julia', '081183744738', 'Depok', 'Depok', 0, '2019-01-18', 'Plant', '2019-01-19', 'FARADILLA', 'DELIVERED'),
(295192028, 'FST', 'Rizka Aulia', '099798', 'BEKASI', 'BBBBBBBBBB', '884184', 'DEPOK', 'DEPOK', 0, '2019-01-18', 'Parfume', '2019-01-26', 'FARADILLA', 'DELIVERED'),
(295192029, 'TRD', 'Yana Julia', '081238384848', 'BEKASI', 'Muhammad Aldi', '08122838183', 'Jakarta', 'Jakarta', 0, '2019-01-18', 'Plant', '2019-01-15', 'Zaka Fadhullah', 'DELIVERED'),
(295192030, 'FST', 'Raafi Hepriyandi', '082298988889', 'DEPOK', 'Muhammad Iqbal', '081183744738', 'Depok', 'Depok', 1, '2019-01-18', 'Plant', '', '', 'ON PROCESS'),
(295192031, 'TRD', 'KATY', '088888888888', 'BEKASI', 'BRUNO', '081283748273', 'Depok', 'Depok', 0, '2019-01-18', 'Plant', '2019-01-15', 'Dewi', 'DELIVERED'),
(295192032, 'TRD', 'Zaen Akbar', '081228394847', 'DEPOK', 'Iman Rais', '081223455543', 'Jakarta', 'Jakarta', 0, '2019-01-18', 'Plant', '', '', 'TRANSIT CENTER'),
(295192033, 'TRD', 'Zaen Akbar', '014914', 'BEKASI', 'Iman Rais', '9841941', 'Jakarta', 'Jakarta', 0, '2019-01-18', 'Food', '', '', 'ARRIVED ON'),
(295192034, 'TRD', 'Galih ', '08123', 'BEKASI', 'Iman Rais', '0812', '', 'Jakarta', 0, '2019-01-18', 'Plant', '2019-01-18', 'Dewi', 'DELIVERED'),
(295192035, 'TRD', 'Luthfi', '08123345153', 'BEKASI', 'Dewi', '0821313414', '', 'Jakarta', 0, '2019-01-18', 'Plant', '2019-01-08', 'Zaka Fadhullah', 'DELIVERED'),
(295192036, 'TRD', 'Yana', '0812314141', 'BEKASI', 'Iman Rais', '9841941', '', 'Jakarta', 0, '2019-01-18', 'Parfume', '', '', 'TRANSIT CENTER'),
(295192037, 'TRD', 'FAHMI', '08123', 'BEKASI', 'Dewi', '0812', '', 'Jakarta', 0, '2019-01-18', 'Parfume', '2019-01-26', 'Syawal', 'DELIVERED'),
(295192038, 'TRD', 'PT. PLN', '34141241', 'BEKASI', 'PT. Asal', '14141', '', 'Jogja', 0, '2019-01-22', 'Plant', '2019-01-25', 'Fahmi', 'DELIVERED');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbl_resi`
--
ALTER TABLE `tbl_resi`
  ADD PRIMARY KEY (`tracking_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_resi`
--
ALTER TABLE `tbl_resi`
  MODIFY `tracking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295192039;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"sport\",\"table\":\"tbl_pengguna\"},{\"db\":\"db_stres\",\"table\":\"tb_user\"},{\"db\":\"stressor\",\"table\":\"pertanyaan\"},{\"db\":\"stressor\",\"table\":\"berita\"},{\"db\":\"stressor\",\"table\":\"hasil\"},{\"db\":\"stressor\",\"table\":\"migrations\"},{\"db\":\"stressor\",\"table\":\"users\"},{\"db\":\"db_crud\",\"table\":\"siswa\"},{\"db\":\"db_stres\",\"table\":\"tb_berita\"},{\"db\":\"db_stres\",\"table\":\"tb_pertanyaan\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'db_stres', 'tb_pertanyaan', '[]', '2019-09-02 05:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-31 09:02:43', '{\"Console\\/Mode\":\"collapse\",\"ThemeDefault\":\"pmahomme\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sport`
--
CREATE DATABASE IF NOT EXISTS `sport` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sport`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `id` varchar(30) NOT NULL,
  `kategori` varchar(15) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_penulis` varchar(50) NOT NULL,
  `penulis` varchar(30) NOT NULL,
  `tanggal_posting` varchar(15) NOT NULL,
  `gambar` varchar(35) NOT NULL,
  `isi` text NOT NULL,
  `reader` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_berita`
--

INSERT INTO `tbl_berita` (`id`, `kategori`, `judul`, `id_penulis`, `penulis`, `tanggal_posting`, `gambar`, `isi`, `reader`) VALUES
('item5d23f4dd3eaaa4.24883488', 'atletik', 'AAAAAAAAAAAA', 'rendi', 'Rendi Farid', '19-07-09', 'item5d23f4dd3eaaa4_24883488.jpg', 'aafasfs', 5),
('item5d23f5deabcda6.84850684', 'atletik', 'A', 'rendi', 'Rendi Farid', '19-07-09', 'item5d23f5deabcda6_84850684.jpg', '21123124124', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `id` varchar(30) NOT NULL,
  `id_berita` varchar(30) NOT NULL,
  `isi_komentar` text NOT NULL,
  `penulis_komentar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`id`, `id_berita`, `isi_komentar`, `penulis_komentar`) VALUES
('item5', '', '', ''),
('item5d23f4dd3eaaa4.24883488', '', '', ''),
('item5d23f4dd3eaaa4.24883488', '', '1234', 'Muhammad Ferial Fahlevi'),
('item5d23f5deabcda6.84850684', '', '', ''),
('item5d23f5deabcda6.84850684', '', '1234', 'Ferial');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `nama` varchar(30) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(30) NOT NULL,
  `jenis_akun` varchar(15) NOT NULL,
  `tanggal_daftar` varchar(15) NOT NULL,
  `online` varchar(6) NOT NULL,
  `kategori` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`nama`, `username`, `password`, `jenis_akun`, `tanggal_daftar`, `online`, `kategori`) VALUES
('Muhammad Arif', 'arif', '1234', 'admin', '', 'online', 'atletik'),
('Faradilla Mahardi', 'fara', '1234', 'admin', '', 'online', 'beladiri'),
('Muhammad Ferial Fahlevi', 'ferial', '1234', 'biasa', '23-01-19', 'online', ''),
('Ferial', 'ferial1234', '1234', 'biasa', '09-07-19', 'online', ''),
('Galih Ardiadji', 'galih', '1234', 'admin', '', '', 'bola'),
('Ilyas Fahreza', 'ilyas', '1234', 'admin', '', '', 'bola'),
('Iman Rais', 'iman', '1234', 'admin', '', '', 'udara'),
('Kevin Kamaluddin', 'kevin', '1234', 'admin', '', '', 'air'),
('Mutiara Syifa', 'mutiara', '1234', 'admin', '', '', 'udara'),
('Raafi Hepriyandi', 'raafi', '1234', 'admin', '', '', 'air'),
('Rendi Farid', 'rendi', '1234', 'admin', '', 'online', 'atletik'),
('Rizka Aulia', 'rizka', '1234', 'admin', '', 'online', 'beladiri');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD KEY `id_berita` (`id_berita`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`username`);
--
-- Database: `stressor`
--
CREATE DATABASE IF NOT EXISTS `stressor` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `stressor`;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `kode_hasil` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usia` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tingkat_stres` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_cf` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_10_02_095309_create_pertanyaan_table', 1),
(2, '2019_10_02_095804_create_berita_table', 1),
(3, '2019_10_02_095841_create_hasil_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pertanyaan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s1` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s2` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s3` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s4` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_cf` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`kode_hasil`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `kode_hasil` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
