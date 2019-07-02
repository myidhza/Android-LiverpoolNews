-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jul 2019 pada 06.17
-- Versi server: 10.1.39-MariaDB
-- Versi PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_liverpoolnews`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(23) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `encrypted_password` varchar(80) NOT NULL,
  `salt` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `unique_id`, `nama`, `email`, `encrypted_password`, `salt`) VALUES
(1, '5d1a3f30b3c487.32971538', 'yusuf', 'yusuf', 'VdcoPd1W68J5PYMocaGluS+eE585OTgyYWRiNzdh', '9982adb77a'),
(2, '5d1a513696fd64.74885475', 'yusuf', 'yusufidhza@gmail.com', 'AMcbNOovCALwkOOK3B0u9CIcBKNjYmM3NWIyMWJk', 'cbc75b21bd'),
(3, '5d1ad253ba2a94.49366377', 'yusuf', 'yusufidhza', 'UCe9B6KjFweE1mcBBEXaOHiCupo5Y2VkZjNjOTk5', '9cedf3c999');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `tanggal_posting` date NOT NULL,
  `isi_berita` text NOT NULL,
  `penulis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_berita`
--

INSERT INTO `tb_berita` (`id`, `foto`, `judul_berita`, `tanggal_posting`, `isi_berita`, `penulis`) VALUES
(1, 'foto_6.jpg', 'Liverpool Juara Eropa', '2019-06-01', 'Kemenangan anak asuh Jurgen Klopp, mengamankan piala eropa yang ke 6 dalam sejarah klub. goal dicetak oleh mo salah dan origi di penghujung laga sehingga memastikan tim bermarkas di liverpool ini menjadi juara.</br></br>\r\nPenalti Mo Salah di menit dua mengawali pesta goal klub asuhan Jurgen Klopp ini.\r\n</br></br>\r\nFinisihing yang alus oleh origi juga tak kalah menarik, dan betapa tangguhnya virgil mengawal pertahanan.\r\n</br></br>\r\nTak kalah hebat pula sang penjaga terakhir liverpool dibawah mistar, yaitu alisson becker. dengan kegigihan dan talentanya ia menjaga pertahanan terakhir dengan bersungguh-sungguh. Selamat Liverpool atas keberhasilanya meraih predikat juara eropa, and lets talk about six beybehhh!\r\n</br></br>\r\nPemilik Liverpool John Henry berbicara soal target klub musim depan. Ia mengungkapkan The Reds sangat fokus untuk meraih gelar Liga Inggris ketimbang yang lain.\r\n</br></br>\r\nMusim lalu Liverpool sukses meraih gelar Liga Champions. Mereka mengalahkan Tottenham Hotspur di final dengan 2-0.Sayangnya di Liga Inggris mereka hanya finis di posisi kedua. Mereka kalah satu poin dengan juara bertahan, Manchester City.\r\n</br></br>\r\n\"Buat saya juara Eropa lebih besar ketimbang Liga Inggris. Namun saya tahu fans juga ingin kami juara Liga Inggris,\" ujar Henry seperti dilansir Goal Internasional.\r\n</br></br>\r\n\"Itu sebabnya Liverpool sangat fokus untuk juara Liga Inggris musim depan. Dan saya rasa tahun depan sangat menyenangkan,\" katanya menambahkan.', 'Muhammad Idhza'),
(2, 'foto_8.jpg', 'Egyptian King (Mo Salah)', '2019-06-02', 'Pemaian mungil dari mesir sungguh mencuri banyak pandangan masyarakat inggris terkhusus liverpool. setelah kedatangannya, Liverpool langsung mendapat kesempatan 2x masuk final liga champions.\r\n</br></br>\r\nTak hanya itu, ex pemain chelsea ini juga berhasil menyabet predikat pencetak goal terbanyak selama 2 musim berturut-turut.\r\n</br></br>\r\nMenjadi trio paling moncer di liga inggris bersama sadio mane dan booby firmino.\r\nPeran Salah sangat besar. Di final melawan Tottenham Hotspur, ia mencetak gol melalui titik putih di menit awal pertandingan. Liverpool pun menang dengan skor 2-0, di mana satu gol lainnya diciptakanDivock Origi.\r\n</br></br>\r\nTidak lama berselang, ada sejumlah laporan yang menyebutkan bahwa masa depan Salah tidak lagi di Liverpool musim depan. Sejumlah klub dikabarkan siap mengangkutnya dari Anfield, seperti Real Madrid, Barcelona, Manchester United, hingga Juventus.\r\n</br></br>\r\nDengan adanya sosok salah di liverpool, juga berimbas pada berkurangnya islamphobia di negri singa atau negri ratu elisabeth. patut diapresiasi, persona pemain bola yang bisa memberikan impact besar terhadap kehidupan yang damai. Mo Salah, is the best.', 'Ocop Idhza'),
(3, 'foto_10.jpg', 'The Magical SuperSubs', '2019-06-03', 'Goal Divock Origi menjadi pemasti gelar juara Liga Champions Liverpool di stadion Wanda Metropolitano.\r\n</br></br>\r\nWalaupun selalu tampil sebagai pemain pengganti atau pelapis pemain utama, striker berkebangsaan belgia ini sangat sering menjadi pemain penentu dalam urusan mencetak goal.\r\n</br></br>\r\nKemunculan Origi menegaskan, dirinya sangat pantas bermain untuk liverpool, dengan menjawab kepercayaan jurgen klopp.\r\n</br></br>\r\n\"Satu dari kekuatan utama kami adalah bersama-sama dan bekerja keras satu sama lain, sebuah perpaduan antara talenta dan kerja keras,\" ujar Divock Origi seperti dilansir BBC Sports.\r\n</br></br>\r\n\"Kami memperlihatkan hati yang besar saat datang ke sini menghadapi tim yang sangat bagus dengan pelatih yang juga sangat bagus. Kami tahu pertandingan ini akan menjadi sebuah pertarungan, terutama setelah kami menghadapi Barcelona. Pada akhirnya kami mampu melakukannya dan kemenangan ini sangat penting bagi tim,\" lanjutnya.', 'Adhe Mahehu\r\n'),
(4, 'foto_7.jpg', 'Performa Brilian sang Brazilian, Alisson Becker.', '2019-06-04', 'Alisson mengahiri tahun pertama di merseyside dengan sebuha gelar yang sangat prestisius.\r\n</br>\r\npenampilan yang sangat kokoh dalam menjada gawang the reds, sangat layak dengan harga yang digelontorkan liverpool untuk kedatangannya.\r\n</br></br>\r\nSebagai kiper nomor 1 timnas brazil membuat dirinya setiap laga selalu melakukan pembuktian pada khalayak, bahwa harganya itu terlalu murah untuk kualitas kipeer sehebat dirinya. memang betul, itu semua terbukti. gawang liverpool kokoh, dan liverpool mendapat juara berkat kegemilangan penampilan sang tembok terakhir.\r\n</br></br></br></br>\r\n\"Dalam sepak bola, secara umum bisa ada banyak kesombongan. Beberapa pemain hanya melihat dirinya sendiri dan bisa bertindak egois degan hanya fokus pada hal-hal yang menarik minat mereka,\" kata Alisson di Liverpool Echo, Rabu (3/4/2019). \r\n</br></br></br></br>\r\n\"Di klub ini, saya tidak melihat itu. Saya melihat setiap pemain bekerja untuk tujuan yang sama dan bekerja keras meraih itu. Kami memiliki target kami dan kami berjuang mendapatkannya, yaitu menjuarai liga dan semua yang kami jalani, juga Liga Champions,\" lanjut tentang kondisi ruang ganti Liverpool. ', 'Bambang Akbar'),
(5, 'foto_11.jpg', 'Rahasia dibalik Rekor Fantastis Virgil Van Dijk', '2019-06-05', 'Van Dijk juga mengantongi rekor pribadi tak kalah gemerlap. Seperti dilansir Calciomercato, Minggu (30/6/2019), tak ada pemain lawan yang mampu mendribel melewatinya sepanjang kiprah Liverpool musim lalu. </br></br></br>\r\nBeberapa bintang sepak bola dunia sudah mencobanya. Sebut saja Sergio Aguero, Robert Lewandowski, Son Heung-min, hingga Lionel Messi. Semuanya gagal. \r\n</br></br></br>\r\nVan Dijk tak pernah bisa dilewati. Pemain asal Belanda itu tak pernah membiarkan bintang-bintang sepak bola dunia tersebut melewati adangannya. \r\n</br></br></br></br>\r\nDalam sebuah wawancara dengan Unisport, mantan pemain Southampton tersebut mengungkapkan rahasianya. Apa resep Virgil Van Dijk? \r\n</br></br></br></br>\r\n\"Sebagai pemain muda, saya sering bermain di jalanan bersama teman-teman. Saya juga senang menjadi seorang striker pada saat itu. Dengan cara itu, saya memahami apa yang dipikirkan striker,\" kata Virgil Van Dijk tentang rahasia rekor apiknya. ', 'edion'),
(6, 'foto_9.jpg', 'Jurgen Klopp Minta Liverpool Belanja Besar pada Bursa Transfer', '2019-06-06', 'Manajer Liverpool, Jurgen Klopp, meminta timnya menggelontorkan dana besar pada bursa transfer musim panas tahun ini. Klopp berharap The Reds bisa mendatangkan pemain-pemain berkualitas.\r\n</br></br>\r\nPada musim lalu, Liverpool hanya meraih satu titel juara, yakni Liga Champions. Dalam laga final yang berlangsung di Estadio Wanda Metropolitano, 1 Juni 2019, Liverpool berhasil membungkam Tottenham Hotspur dua gol tanpa balas.\r\nSementara itu di kompetisi domestik, skuat Si Merah menempati posisi runner-up klasemen akhir Premier League dengan nilai 97. Mereka terpaut satu angka dari Manchester City yang keluar sebagai juara.\r\n</br></br>\r\nPada ajang Piala Liga Inggris dan Piala FA, langkah Liverpool terhenti pada putaran ketiga. Di Piala Liga Inggris, mereka disingkirkan Chelsea, sedangkan di Piala FA takluk dari Wolverhampton Wanderers.\r\n</br></br>\r\nDemi bisa mendongkrak performa dan meraih lebih banyak gelar juara pada musim depan, Liverpool mengincar sejumlah pemain bintang. Beberapa nama yang masuk dalam daftar belanja adalah Ousmane Dembele (Barcelona) dan Bruno Fernandes (Sporting CP).\r\n</br></br>\r\n\"Liverpool adalah klub yang ambisius dan jika kami tidak menghabiskan jumlah uang yang sama dengan klub lain, kami tidak akan dapat bersaing,\" kata Klopp.\r\n</br></br>\r\n\"Semua klub menggelontorkan uang tunai, jadi kami harus melakukan hal yang sama,\" papar manajer asal Jerman tersebut.\r\n</br></br>\r\nSelain akan mendatangkan sejumlah nama, Liverpool juga telah melepas beberapa pemain pada musim panas tahun ini. Pemain yang dipastikan angkat kaki dari Stadion Anfield adalah Alberto Moreno, Adam Bogdan, dan Daniel Sturridge.', 'Sadio Uucp'),
(7, 'foto_12.jpg', 'Fabinho Akui Jalani Musim yang Sulit di Liverpool', '2019-06-07', 'Gelandang Liverpool, Fabinho, mengaku menjalani musim yang sulit di Liverpool. Seperi diketahui, musim 2018-2019 merupakan awal karier Fabinho bersama tim besutan Jurgen Klopp itu.\r\n</br></br>\r\nFabinho sukses melewati musim pertamanya dengan mengantarkan The Reds merengkuh trofi Liga Champions , dan finis di posisi dua klasemen Premier League 2018-2019.</br></br>\r\nAwal kariernya di Liverpool, Fabinho harus menunggu hingga Oktober untuk melakoni laga debut di Premier League. Namun akhirnya, Jurgen Klopp sering memainkannya secara reguler sepanjang musim ini.\r\n</br></br>\r\n\"Pada musim pertama saya, saya tahu akan ada periode belajar dan adaptasi. Saya telah melewati ini,\" kata Fabinho di situs resmi klub.</br></br>\r\n\r\n\"Meskipun saya mengatakan pada diri sendiri jika saya harus bekerja keras dan bersabar, tidak mudah keluar dari tim. Saat ini, saya mulai bermain lebih banyak.\"</br></br>\r\n\r\n\"Semakin banyak Anda bermain, semakin Anda dapat menikmati sepak bola. Saya menilai saya menjadi bagian penting dari tim, saya memberi manajer pilihan lain yang bisa dia andalkan. Jadi saya merasa itu musim yang sangat bagus,\" tambah Fabinho</br></br>\r\n\r\nPemain berusia 25 tahun tersebut didatangkan Liverpool dari AS Monaco pada bursa transfer musim panas 2018. Liverpool harus menggelontorkan dana 39 juta pundsterling (Rp 706 miliar) demi bisa mendapatkan jasa si pemain.</br></br>\r\n\r\nPada musim perdananya di Liverpool, Fabinho tampil sebanyak 41 pertandingan dengan mengemas satu gol dan dua assist di semua kompetisi.</br></br>', 'Mas e Fabinho dewe'),
(8, 'foto_13.jpg', 'Firmino Nyaman Dengan Nomor 9 di Liverpool', '2019-06-10', 'Roberto Firmino, mengaku punya hubungan yang sangat baik dengan Manajer Jurgen Klopp. Ia juga menikmati perannya sebagai Nomor 9 di Anfield.</br></br>\r\nAwalnya, Firmino menempati posisi sebagai playmaker. Namun, posisi sang pemain kemudian digeser oleh Klopp sebagai striker.</br></br>\r\nJurgen Klopp, memberikan pujian kepada Roberto Firmino. Klopp senang dengan kontribusi yang diberikan striker asal Brasil tersebut.</br></br>\r\nFirmino punya peran berbeda dari musim-musim sebelumnya. Bobby, panggilannya, bermain lebih ke dalam dan baru mencetak lima gol musim ini.\r\n</br></br>\r\n\"Karena hal kecil yang dia lakukan, dia bekerja keras, dia di sini, dia di sana, dia mencetak enam gol gol namun dia membuka lima ribu celah,\" ujar Klopp.\r\n</br></br>\r\n\"Dia melakukan pekerjaannya-itu yang membuat dia sangat berharga buat kami. Saya turut senang untuknya,\" ia melanjutkan.\r\n</br></br>\r\nDi Premier League, Firmino baru mencetak tiga gol ke gawang lawan. Gol ke gawang Watford saat Liverpool menang 3-0, Sabtu (24/11/2018), merupakan yang pertama sejak pertengahan September lalu.', 'Jurgen Mie'),
(9, 'foto_14.jpg', '3 Tahun Berseragam Liverpool, Sadio Mane Usung Misi Khusus', '2019-06-29', 'Sadio Mane, tepat tiga tahun berkarier di Anfield pada Jumat (28/6/2019) ini. Seperti dilansir situs resmi klub, pemain asal Senegal itu telah mencetak 59 gol dari 123 penampilannya untuk klub sejak 2016.\r\n</br></br></br>\r\nSadio Mane melewati musim yang spektakuler bersama Liverpool. Pemilik nomor 10 di Anfield juga berhasil membawa klub finis di posisi kedua Premier League 2018-2019 dan meraih gelar Liga Champions.</br></br></br>\r\nak puas dengan itu, Sadio Mane masih mengusung misi khusus pada musim 2019-2020, kali ini menyangkut performa individu. Dia bertekad tampil lebih baik lagi musim depan, demi membantu Liverpool meraih sebanyak mungkin gelar. \r\n</br></br>\r\n\"Sejujurnya, saya merasa banyak peningkatan dalam finishing,\" kata Mane.\r\n</br></br>\r\n\"Itu positif, karena performa saya meningkat setiap musim, yang penting untuk perkembangan saya. Saya akan berusaha bekerja lebih keras untuk menjadi lebih baik,\" imbuhnya.', 'Ali Ibas'),
(10, 'foto_15.jpg', 'Liverpool Dapatkan Pemain Pertama pada Bursa Transfer Musim Panas 2019', '2019-06-30', 'Sepp van den Berg sebagai rekrutan pertama pada bursa transfer musim panas 2019. Bek asal Belanda itu ditebus dengan harga 1,3 juta pound dari PEC Zwolle.\r\n</br></br>\r\nLiverpool mundur dari perburuan Matthijs de Ligt. Namun, Liverpool mendapatkan bek asal Belanda lainnya yang masih berusia 17 tahun.</br></br>\r\nBek yang dimaksud adalah Sepp van den Berg. Liverpool menilai kalau van den Berg bisa membentuk kolaborasi yang apik dengan Virgil van Dijk.\r\n</br></br>\r\nLiverpool menuntaskan transfer van den Berg pada Kamis (27/6/2019). Ia sudah berada di Melwood untuk menandatangani kontraknya bersama Liverpool.\r\n</br></br>\r\nSebelumnya, Liverpool bersaing dengan Bayern Munchen untuk mendapatkan tanda tangan van den Berg. Keberhasilan Liverpool tampil konsisten pada dua musim terakhir menjadi daya tarik utama bagi van den Berg.\r\n</br></br>\r\nSepp van den Berg dipastikan akan mengikuti kegiatan pramusim Liverpool yang dimulai pada 6 Juli mendatang.\r\nSepp van den Berg mengaku tidak sabar bertemu dengan Virgil van Dijk yang merupakan seniornya di timnas Belanda. Sepp van den Berg berharap bisa mendapat banyak ilmu dari seniornya tersebut.\r\n</br></br>\r\n\"Saya belum pernah berbicara dengan Virgil van Dijk. Namun, saya tidak sabar untuk berlatih bersama dirinya,\" ujar van den Berg.\r\n</br></br>\r\n\"Ia adalah bek terbaik di dunia pada saat ini. Saya akan mencuri ilmunya dan meningkatkan performa saya,\" ungkap van den Berg.', 'Asep Kujang'),
(11, 'foto_16.jpg', 'Virgil van Dijk Yakin Liverpool Cemerlang pada Musim Ini', '2019-07-02', 'Virgil van Dijk merasa yakin timnya punya masa depan cerah. Van Dijk menyebut Liverpool akan tetap cemerlang pada musim ini.\r\n</br></br>\r\nBek berusia 27 tahun mempersiapkan segalanya demi pencapaian yang lebih baik pada musim ini. </br></br>\r\nNama Virgil van Djik kian bersinar setelah membawa The Reds finis di posisi kedua Premier League 2018-2019. Walau gagal menjuarai Liga Inggris, klub asuhan Jurgen Klopp itu merengkuh gelar Liga Champions.</br></br>\r\n\r\n\"Saya pikir masa depan terlihat cukup cerah. Kami memiliki tim yang fantastis dengan para pemain yang ingin berkembang, dan ingin memberikan segalanya untuk tim,\" kata Van Dijk, seperti dilansir dari situs resmi klub, Senin (24/6/2019).</br></br>\r\nPadahal kick-off Premier League tinggal kurang dari dua bulan lagi. Meski begitu, Virgil van Dijk tetap yakin timnya memiliki masa depan yang fantastis dengan pemain yang masih bertahan di Anfield.</br></br>\r\n\r\n\"Begitu banyak kualitas di tim. Bahkan terkadang tidak menyadari betapa bagusnya pemain yang dimiliki tim ini, baik pemain utama maupun cadangan,\" imbuhnya.</br></br>\r\n\r\nMusim lalu, Virgil van Dijk tampil sebagai benteng kukuh Liverpool. Mantan pemain Southampton itu juga antusias melakoni laga perdana pada Premier League 2019-2020 melawan Norwich City, Sabtu (10/8/2019) dini hari WIB.', 'Yusuf Ahmad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(3) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'ucup', 'ucup');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
