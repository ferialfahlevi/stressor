-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2019 at 01:10 AM
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
-- Database: `db_stres`
--

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
(1, '1', 'Pengertian Stress: Jenis, Penyebab dan Faktor Yang Mempengaruhi 1', 'https://jagad.id/wp-content/uploads/2018/03/Pengertian-Stress-Jenis-Faktor-Penyebab-dan-Faktor-Yang-Mempengaruhi.jpg', '<h5>Pengertian Stres</h5>\r\n<br>\r\nSecara klinis, stress adalah bentuk ketegangan fisik, psikis, emosi dan mental. Yang dalam bentuk respon dari dalam tubuh dapat sangat mengganggu aktifitas seseorang, yang pada kadar jumlah ketegangan yang tinggi dapat mengakibatkan rasa sakit dan gangguan mental.\r\n<br>\r\nMenurut para ahli, seperti Robbins (2001) menjelaskan bahwa strees dapat pula diartikan sebagai sebuah kondisi yang menekan psikis seseorang dalam mecapai suatu kesempatan dimana untuk mencapai kesempatan tersebut terdapat batasan atau penghalang. Dan apabila pengertian stress ini dikaitkan dengan system kognitif manusia seperti penjelasan Woolfolk dan Richardsno (1979) mengartikan bahwa stress dapat menyebabkan segala peristiwa yang terjadi sebagai interpretasi yang diberikan terhadap peristiwa tersebut, layaknya sebuah ancaman suatu bayangan akan adanya ketidaksenangan suatu bentuk perilaku.\r\n<br>\r\n\r\n<h5>Jenis-jenis Stres</h5>\r\n<br>\r\nSeringkali anda dilanda sesuatu yang dinamakan stress, secara sadar maupun tidak. Perlu anda ketahui jenis – jenis yang menjangkit kedalam tubuh anda, berikut ini merupakan jenis stress yang ditinjau dari penyebab terjadinya:\r\n<br>\r\n<li>Stres Fisik</li>\r\nMerupakan sebuah efek yang terjadi terhadap lingkungan diluar kendali dan kehendak manusia, seperti : suhu yang terlalu tinggi atu rendah, suara bising, sinar matahari yang terlalu menyengat dan sebagainya.\r\n<br>\r\n<li>Stres Kimiawi</li>\r\n<br>\r\nMerupakan stress yang disebabkan oleh pengaruh dari obat – obatan maupun zat kimiawi yang terkandung dalam sebuah makanan, zat ataupun bisa disebabkan faktor hormone.\r\n<br>\r\n<li>Stres Mikrobiologis</li>\r\n<br>\r\nMerupakan stress yang disebabkan oleh pengaruh bakteri dan parasite yang menjangkiti tubuh manusia, baik secara langsung di dalam tubuh maupun dipermukaan kulit.\r\n<br>\r\n<li>Stres Fisiologis</li>\r\n<br>\r\nMerupakan stress yang disebabkan oleh disfungsinya organ tubuh, seperti keseleo/terkilir, terluka, hal – hal yang menyebabkan tubuh fisik menjadi tidak dapat menerima sebuah keadaan yang terjadi.\r\n<br>\r\n<li>Stres Proses Tumbuh Kembang</li>\r\n<br>\r\nYakni sebuah kejadian jenis stress yang paling banyak terjadi ketika melalui sebuah proses fase baru dalam kehidupan yang berdampak pada emosional psikologis manusia, hal ini dapat terjadi karena ketidaksiapan dan kurangnya pengalaman akan sesuatu hal yang baru, sebagai contoh : pubertas, hari pertama masuk sekolah, hari pertama diterima kerja, hari pertama setelah menikah, memiliki anak, dan lain sebagainya'),
(2, '2', 'Perbedaan Stres Dan Depresi', 'https://hellosehat.com/wp-content/uploads/2016/09/kenali-perbedaan-stres-depresi.jpg?x35866', 'Apa bedanya stres dan depresi?\r\nStres biasanya dimulai dari rasa kewalahan akibat banyaknya tekanan dari luar dan dalam diri seseorang yang telah berlangsung cukup lama. Stres bisa mendorong Anda untuk semakin bersemangat menghadapi tantangan, tapi juga bisa mematahkan semangat Anda. Ini karena setiap orang memiliki mekanisme yang berbeda-beda dalam menghadapi stres.\r\n\r\nKetika Anda dilanda stres, tubuh Anda membaca adanya serangan atau ancaman. Sebagai mekanisme perlindungan diri, tubuh akan memproduksi berbagai hormon dan zat-zat kimia seperti adrenalin, kortisol, dan norepinefrin. Akibatnya, Anda akan merasakan dorongan energi dan peningkatan konsentrasi supaya Anda bisa merespon sumber tekanan secara efektif. Tubuh juga akan secara otomatis mematikan fungsi-fungsi tubuh yang sedang tidak diperlukan, misalnya pencernaan. Namun, apabila stres muncul pada saat-saat yang tidak diinginkan, darah akan mengalir ke bagian-bagian tubuh yang berguna untuk merespon secara fisik seperti kaki dan tangan sehingga fungsi otak menurun. Inilah sebabnya banyak orang yang justru sulit berpikir jernih saat diserang stres.\r\n\r\nBerbeda dengan stres, depresi adalah sebuah penyakit mental yang berdampak buruk pada suasana hati, perasaan, stamina, selera makan, pola tidur, dan tingkat konsentrasi penderitanya. Depresi bukan tanda ketidakbahagiaan atau cacat karakter. Depresi bukanlah keadaan yang wajar ditemui seperti stres atau panik. Orang yang terserang depresi biasanya akan merasa hilang semangat atau motivasi, terus-menerus merasa sedih dan gagal, dan mudah lelah. Kondisi ini bisa berlangsung selama enam bulan atau lebih. Maka, orang yang menderita depresi biasanya jadi sulit menjalani kegiatan sehari-sehari seperti bekerja, makan, bersosialisasi, belajar, atau berkendara secara normal. Siapa pun bisa terserang depresi, terutama jika ada riwayat depresi dalam keluarga terdekat Anda. Penelitian juga menunjukkan bahwa wanita lebih berisiko terserang depresi daripada pria.\r\n\r\nGejala stres\r\nStres bisa terjadi pada siapa saja, termasuk anak-anak usia sekolah. Perhatikan gejala-gejala depresi berikut ini untuk mencari tahu apakah Anda mengalami stres atau depresi.\r\n\r\nSulit tidur\r\nGangguan daya ingat\r\nGangguan berkonsentrasi\r\nPerubahan pola makan\r\nMudah marah dan tersinggung\r\nSering gugup atau gelisah\r\nMerasa kewalahan dengan pekerjaan di sekolah atau kantor\r\nMerasa takut tidak bisa menyelesaikan tugas-tugas dengan baik\r\nGejala depresi\r\nTanda-tanda depresi jauh lebih rumit daripada gejala stres. Kemunculannya pun bisa bertahap sehingga sulit untuk benar-benar menyadari kapan depresi pertama kali menyerang. Berikut adalah berbagai gejala depresi yang biasanya terjadi.\r\n\r\nMenarik diri dari lingkungan sosial dan keluarga\r\nMerasa sedih seolah-olah tidak ada harapan lagi\r\nHilang semangat, motivasi, energi, dan stamina\r\nSulit mengambil keputusan\r\nMakan lebih sedikit atau lebih banyak dari biasanya\r\nTidur lebih sebentar atau lama dari biasanya\r\nSulit berkonsentrasi\r\nSulit mengingat-ingat\r\nMerasa bersalah, gagal, dan sendirian\r\nBerpikiran negatif secara terus-menerus\r\nMudah kecewa, marah, dan tersinggung\r\nSulit menjalani kegiatan sehari-hari\r\nHilang minat pada hal-hal yang biasanya dinikmati\r\nAdanya pikiran untuk bunuh diri'),
(5, '3', 'Cara Ampuh Mengatasi Stres', 'https://image.cermati.com/q_70/qxvlhsujccdu8m33mjnp.webp', '1. Hirup Udara Segar\r\n\r\nKetika stres mulai melanda, segeralah menyadarinya dan beranjak menghirup udara segar. Bertahan pada situasi dan posisi yang monotn tidak akan bisa mengatasi stres, justru akan semakin memburuk kondisi. Contohnya saja, ketika sedang mumet dengan pekerjaan yang numpuk namun Anda tetap mengerjakannya secara terpaksa agar cepat selesai.\r\n\r\nPadahal, hal tersebut hanya akan membuat hasil pekerjaan menjadi tidak baik. Untuk itu, pergilah keluar ruangan dan hirup udara segar walau sebentar. Sebab, udara segar dapat membantu menenangkan diri sehingga bisa kembali berpikir jernih.\r\n\r\n2. Banyak Minum Air Putih\r\n\r\nBanyak orang yang melampiaskan stresnya dengan meminum minuman yang mengandung alkohol seperti bir, anggur dan sebagainya. Mereka yang melakukan hal ini berpikir dengan minuman tersebut mampu menjadi ‘obat’ mujarab pengusir stres. Memang minuman tersebut bisa memberikan efek tenang, tapi hanyalah bersifat sementara. Ketika efek alkoholnya menghilang, maka stres akan kembali datang.\r\n\r\nSaat kondisi tertekan, baiknya konsumsi banyak air putih justru lebih membantu mengurangi ketegangan. Tanpa disadari stres mengakibatkan cairan tubuh akan berkurang sehingga kondisi ini menimbulkan rasa letih pada tubuh. Oleh sebab itu, dengan meminum banyak air putih dapat mengatasi kondisi tubuh yang kekurangan cairan. Di saat cairan tubuh pulih kembali, maka rasa letih yang dirasakan akan mulai memudar, dengan begitu stres bisa teratasi.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pertanyaan`
--

CREATE TABLE `tb_pertanyaan` (
  `kode_pertanyaan` varchar(3) NOT NULL,
  `pertanyaan` varchar(100) NOT NULL,
  `nilai_cf` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pertanyaan`
--

INSERT INTO `tb_pertanyaan` (`kode_pertanyaan`, `pertanyaan`, `nilai_cf`) VALUES
('A01', 'Letih Ketika Bangun Pagi', 0.6),
('A02', 'Lelah Sesudah Makan Siang', 0.4),
('A03', 'Mengantuk Sepanjang Sore', 0.6),
('A04', 'Mudah Gugup', 0.6),
('A05', 'Merasa Tegang Pada Otot Punggung Atau Belakang Leher', 0.4),
('A06', 'Jantung Berdebar-Debar', 0.6),
('A07', 'Mudah Gelisah', 0.8),
('A08', 'Merasa Mual Dan Ingin Muntah', 0.4),
('A09', 'Tegang Pada Otot Punggung Atau Belakang Leher', 0.4),
('A10', 'Perasaan Tegang Semakin Meningkat', 0.8),
('A11', 'Susah Untuk Tidur Dimalam Hari', 0.8),
('A12', 'Badan Terasa Ingin Pingsan', 0),
('A13', 'Mudah Tersinggung', 0.6),
('A14', 'Sulit Untuk Mengerjakan Suatu Kegiatan', 0.8),
('A15', 'Kemampuan Untuk Bersosialisasi Berkurang', 0.6),
('A16', 'Suasana Hati Berubah-Ubah', 0.6),
('A17', 'Sulit Mengingat', 0.4),
('A18', 'Tidak Bisa Tidur', 0.8),
('A19', 'Merasa Pusing', 0.4),
('A20', 'Kelelahan Fisik', 0.4),
('A21', 'Sakit Maag Atau Gangguan Perut', 0.4),
('A22', 'Benjolan Ditenggorokan', 0.4),
('A23', 'Badan Berkeringat Secara Berlebihan', 0.4),
('A24', 'Muncul Pikiran Untuk Bunuh Diri', 1),
('A25', 'Nafsu Makan Hilang/Nafsu Makan Bertambah', 0.8),
('A26', 'Berat Badan Naik/Berat Badan Turun', 0.8),
('A27', 'Sulit Untuk Membuat Keputusan', 0.4),
('A28', 'Sakit Kepala', 0.8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  ADD PRIMARY KEY (`kode_pertanyaan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
