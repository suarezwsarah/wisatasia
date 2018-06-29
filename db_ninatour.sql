-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2017 at 12:26 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_ninatour`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
`id` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(20) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `no_tlp` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `alamat`, `kota`, `no_hp`, `no_tlp`, `email`, `content`) VALUES
(1, '<p>Perumahan Taman Aries</p>\r\n<p>Blok F Nomor 5</p>\r\n<p>Ngawi, Jawa Timur</p>', 'Ngawi', '081615655842', '0351-4477624', 'anastasiadpp@gmail.com', '<p>Perusahaan kami bergerak di bidang penyewaan jasa tour and travel. Kami melayani untuk melakukan tour di wilayah Jawa Timur.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
`id_komentar` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `komentar` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `nama`, `komentar`, `waktu`) VALUES
(1, 'Akbar Maulana Yuwandika Putra', 'Wah kereennn', '2017-11-14 14:18:20'),
(2, 'Anastasia Dewanti Pratama Putri', 'Website yang sangat bermanfaat, terima kasih WISATASIA', '2017-07-13 20:30:05');

-- --------------------------------------------------------

--
-- Table structure for table `setup_about`
--

CREATE TABLE IF NOT EXISTS `setup_about` (
`id_about` int(11) NOT NULL,
  `kat_about` varchar(30) NOT NULL,
  `judul_about` varchar(50) NOT NULL,
  `konten_about` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setup_about`
--

INSERT INTO `setup_about` (`id_about`, `kat_about`, `judul_about`, `konten_about`) VALUES
(2, 'profil', 'Profil Wisatasia', '<p>WISATASIA&nbsp;adalah sebuah jasa tour and travel wisata Jawa Timur. Kami mengedepankan kepuasan wisatawan yang menggunakan jasa layanan kami. Kantor kami terletak di Perumahan Taman Aries Blok F Nomor 5 Ngawi, Jawa Timur. Semoga Anda senang dan puas melakukan perjalanan bersama kami.</p>'),
(7, 'pembayaran', 'Cara Pembayaran', '<p>Caraa pembayaran ada 2 alternatif yang bisa dipilih. Pertama anda bisa melakukan pembayaran langsung ke kantor kami atau dengan cara kedua bisa melakukan transfer melalui nomor rekening kami yang tersedia. Dengan ketentuan sebagai berikut :</p>\r\n<ol>\r\n<li>Pembayaran Langsung\r\n<ul>\r\n<li>Pembayaran langung dikhususkan untuk pelanggan yang berada dekat dengan kantor kami.</li>\r\n<li>Pembayaran dilakukan 5 hari sebelum keberangkatan.</li>\r\n<li>Syarat pembayaran harus melampirkan Invoice dan Tiket yang telah di booking.</li>\r\n<li>Pembayaran akan dilayani di jam kerja.</li>\r\n</ul>\r\n</li>\r\n<li>Pembayaran via Transfer\r\n<ul>\r\n<li>Pembayaran ini dimaksudkan untuk pelanggan yang dari luar kota maunpun yang menginginkan proses praktis.</li>\r\n<li>Pembayaran selambat-lambatnya harus telah diterima oleh kami 5 hari sebelum hari keberangkatan tour.</li>\r\n<li>Transfer dapat dilakukan ke nomor rekening berikut :\r\n<ul>\r\n<li>BNI : 0350520214&nbsp;a/n Anastasia Dewanti Pratama Putri</li>\r\n<li>Mandiri : 1710000395346 a/n&nbsp;Anastasia Dewanti Pratama Putri</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</li>\r\n</ol>'),
(8, 'syarat', '', '<p>Syarat dan Ketentuan ini berguna untuk membantu anda dalam melakukan pembookingan sesuai dengan ketentuan-ketentuan yang telah kami buat. Sehingga anda nantinya tidak merasa rugi dan salah dalam memilih paket ataupun penginapan nantinya. Seilahkan cermati ketentuan-ketentuan yang telah dibuat dan lanjutkan dengan melakukan pembookingan.</p>'),
(12, 'reservasi', '', '<ol>\r\n<li>Sebelum melakukan pembookingan pastikan anda&nbsp;<a href="formRegistrasi.php">Login</a>&nbsp;terlebih dulu ke website ini.</li>\r\n<li>Jika belum memiliki akun, makan diperkenankan anda untuk malakukan&nbsp;<a href="formRegistrasi.php">Registrasi</a></li>\r\n<li>Setelah melakukan Login, lengkapi Profil anda jika memang Profil anda masih belum dilengkapi</li>\r\n<li>Seletah melengkapi Profil anda, lakukan pembookingan pada menu Booking.</li>\r\n<li>Lalu Pilih Paket sesuai dengan yang anda inginkan.</li>\r\n<li>Jika anda memilih untuk cara pembayaran secara Bayar diTempat, maka anda bisa langsung melakukan Cetak Tiket.</li>\r\n</ol>'),
(13, 'syarat', 'Ketentuan Kapasitas Hotel', '<p>Jumlah maksimal pengunjung per kamar:</p>\r\n<ul style="list-style-type: circle;">\r\n<li>Kelas Standar, mak. 2 orang</li>\r\n<li>Kelas Superior, mak. 2 orang</li>\r\n<li>Kelas Delux, mak. 2/4 orang*</li>\r\n<li>Kelas Suit Keluarga, mak. 4 orang</li>\r\n</ul>\r\n<p>*ketentuan dapat berubah sewaktu-waktu</p>'),
(14, 'syarat', 'Ketentuan Memilih Penginapan', '<p>Untuk pembookingan diharapkan diteliti sebelum benar-benar malakukan booking, artinya :</p>\r\n<ul style="list-style-type: circle;">\r\n<li>Sesuaikan tempat penginapan dengan tempat anda akan berwisata.</li>\r\n<li>Jika anda memilih paket wisata yang dengan jenis One-Way, makan pada form pilih penginapan silahkan pilih option "Tidak Menginap".</li>\r\n<li>Agar lebih tepat memilih penginapan, maka lihat dahulu dimana paket wisata tersebut dimana tempatnya berada.</li>\r\n</ul>'),
(15, 'syarat', 'Ketentuan Pembookingan', '<ul style="list-style-type: circle;">\r\n<li>Perubahan Peket dan Penginapan silahkan hubungi contact person kami yang ada pada website, dan hanya bisa dilakukan 5 hari sebelum hari keberangkatan tour. Kurang dari itu perubahan tidak bisa dilakukan.</li>\r\n<li>Pembatalan booking dapat dilakukan 7 hari sebelum tanggal keberangkatan tour yang telah di booking. Biaya yang telah ditranfer akan dikembalikan dengan potongan 10% dari total biaya dan harus melakukan konfirmasi terlebih dahulu melalui contact person kami.</li>\r\n<li>Untuk biaya penginapan yang masih belum terbilang pada saat melakukan pembookingan, akan kami konfirmasikan ke Akun anda 7 hari sebelum hari keberangkatan tour. Dan dapat melakukan cetak tiket setelah hari itu.</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `setup_dasboard`
--

CREATE TABLE IF NOT EXISTS `setup_dasboard` (
`id_dasboard` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `konten` text NOT NULL,
  `gambar` text NOT NULL,
  `waktu` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setup_dasboard`
--

INSERT INTO `setup_dasboard` (`id_dasboard`, `nama`, `konten`, `gambar`, `waktu`) VALUES
(9, 'PESONA BATIK NGAWI', '<p>Kota dengan slogan ''Ramah'' ini memang memiliki kekayaan dan keindahan yang beragam. Kekayaan alam dan budayanya menjadi salah satu inspirasi bagi para pengrajin batik Ngawi untuk memuat motif yang indah.</p>\r\n<p>Bagi kamu orang Ngawi, tentu tahu apa saja yang terkenal dari kota ini. Ngawi terkenal dengan wisatanya seperti, Benteng Pendem, wisata edukasi Museum Trinil, ataupun Kebun Teh Jamus, dan masih banyak lagi.</p>\r\n<p>Selain itu, terkenal dengan sebutan kota bambu, karena memang daerah ini terletak di sekitar pinggir Bengawan Solo dan Bengawan Madiun yang banyak ditumbuhi bambu.</p>\r\n<p>Mata pencaharian wargapun juga banyak yang bercocok tanam seperti petani. Nah, batik-batik khas Ngawi memiliki corak yang mengandung unsur-unsur daerah khas Ngawi seperti tersebut di atas.</p>', 'batik003.jpg', '2017-11-01'),
(10, 'MITOS DAN KEINDAHAN MADAKARIPURA', '<p>Air terjun Madakaripura Probolinggo merupakan salah satu air terjun di Jawa Timur, terletak di Dsn. Branggah, Ds. Negororejo, Kecamatan Lumbang, Kabupaten Probolinggo, Provinsi Jawa Timur. Berada tak jauh dari pusat kota Probolinggo serta berada pada jalur Surabaya - Bromo, Air terjun dengan ketinggian sekitar 200 meter ini memiliki cerita yang pastinya membuat anda terpana lalu penasaran untuk datang ketempat ini, hal tersebut dikarenakan konon dulunya adalah tempat peristirahatan terakhir mahapatih dari Majapahit yang bernama Gajah Mada.</p>\r\n<p>Keindahan objek wisata Madakaripura memang tidak dapat dipungkiri, berada jauh didalam pegunungan membuat tempat ini senantiasa asri dan natural. Hal itu sudah nampak ketika kita berada dalam perjalanan menuju destinasi ini.</p>', 'mad1.jpg', '2017-11-03'),
(11, 'GILI LABAK, SURGA KECIL DI SUDUT MADURA', '<p> Gili Labak salah satu pulau terkecil di antara 127 pulau lain di Kabupaten Sumenep, Madura. Secara administratif, Gili Labak masuk wilayah Kecamatan Pulau Talango meski secara geografis letaknya lebih dekat dengan Pulau Gili Genting.</p>\r\n<p>Luas Gili Labak tak lebih dari 5 hektare. Pulau ini bisa dikelilingi dengan berjalan kaki dalam waktu tak sampai setengah jam.</p>\r\n<p>Perairan Gili Labak sangat jernih. Dari jarak setengah mil, bebatuan di dasar terlihat jelas dengan mata telanjang. Tampak pula setumpuk sampah plastik mengambang, tapi tak banyak.</p>\r\n<p>Ada tiga warung di Gili Labak, di depan tiap warung berdiri bale-bale atap rumbia. Ada juga wc umum, bisa mandi, buang air kecil dan BAB. Ada juga langgar sederhana buat salat.</p>', 'lbak.jpg', '2017-11-06'),
(12, 'APA ITU SENTIMENT ANALYSIS ?', '<p>Opinion Mining/Sentiment Analysis (sebagian besar researcher menganggap dua istilah ini sama/interchangeable) merupakan sebuah cabang penelitian di domain Text Mining yang mulai booming pada awal tahun 2002-an.</p>\r\n<p>Hingga sekarang, hampir sebagian besar penelitian di bidang sentiment analysis hanya ditujukan untuk Bahasa Inggris karena memang Tools/Resources untuk bahasa inggris sangat banyak sekali. Beberapa resources yang sering digunakan untuk sentiment analysis adalah SentiWordNet dan WordNet.</p>\r\n<p>Sentiment analysis terdiri dari 3 subproses besar. Masing-masing subproses ini bisa kita jadikan bahan/topik riset secara terpisah karena masing-masing subproses ini membutuhkan teknik yang tidak mudah, yaitu Subjectivity Classification, Orientation Detection, dan Opinion Holder and Target Detection.</p>', 'main-qimg-8c1c4d5447ad8429e847b2c7aa9f7246.png', '2017-11-08'),
(13, 'WISATA ? APA ITU ?', '<p>Menurut Wikipedia, pengertian pariwisata adalah suatu kegiatan perjalanan yang dilakukan dengan tujuan liburan atau rekreasi.</p>\r\n<p>Menurut IUOTO (International Union of Travel Organization), wisatawan adalah orang yang melakukan kunjungan selama lebih dari 24 jam di suatu tempat, dengan tujuan kunjungan untuk bersenang-senang, olahraga, agama, berlibur, belajar, kesehatan, dan berdagang.</p>\r\nKata pariwisata yang berasal dari bahasa Sansekerta, terdiri dari 2 bagian yaitu "pari" dan "wisata". Kata "pari" memiliki pengertian bersama, atau berkeliling, sedangkan kata "wisata" memiliki pengertian perjalanan. Bila digabungkan, pariwisata memiliki pengertian melakukan kegiatan perjalanan berkeliling meninggalkan tempat awal, menuju ke tempat yang lain.</p>', '12142152_1510134265969536_6869965_n.jpg', '2017-11-10'),
(14, 'FOURSQUARE? 4 KOTAK? ATAU APA?', '<p>Foursquare adalah sebuah situs web dan aplikasi dari telepon seluler yang memungkinkan pengguna untuk berinteraksi dengan teman mereka dan secara langsung check-in lokasi terbaru mereka. Foursquare hanya bisa digunakan pada Iphone, Android , Blackberry, Palm Pre dan telepon seluler lain yang menawarkan aplikasi mobile web.</p>\r\n<p>Check-in di dalam foursquare adalah ketika pengguna memberitahu foursquare di manakah dia berada . Check-in bisa dilakukan di mana saja, di restoran, museum, taman kota, atau di universitas. Pada saat anda melakukan check-in maka anda akan diberikan sebuah poin. Poin juga bisa didapatkan dengan menambah lokasi baru yang belum ada di dalam situs web Foursquare. Pengguna foursquare juga dapat check-in lokasi terbaru mereka sekaligus juga memberikan komentar tentang lokasi tersebut.</p>', 'Foursquare_logo.svg.png', '2017-11-11'),
(15, 'PESONA PARALAYANG DI BATU, MALANG', '<P>Tempat Wisata Paralayang lokasinya tak jauh dari kecmantan Pujon, dan sangatlah dekat dengan dengan wisata Air Terjun Coban Rondo yang juga bisa kita kunjungi untuk berwisata di sana. setiap harinya pengunjung dari wisata Paralayang cukup banyak, baik dari Touris luar negri dan Touris lokal dalam negri. dan ternyata kebanyakan dari pengunjung datang ke tempat wisata Paralayang Batu Malang hanya sekedar untuk foto-foto selifi karena memang pemandangan di lokasi Paralayang Batu Malang Sangatlah Indah untuk dijadikan obyek foto bersama keluarga dan teman.</p>\r\n<p>Untuk menuju lokasi Paralayang di Gunung Banyak anda bisa menggunakan motor ataupun mobil, khusus untuk mobil anda wajib berhati-hati karena lokasi medan di sana jalannya menanjak naik dan menanjak turun ditambah lagi dengan jalan di hutan yang berbelok-belok akan sedikit menyulitkan anda, tapi tetap asyik menikmati liburan di Batu Malang. oh ya,di Kota Batu Malang sana juga banyak kendaran untuk ojek, anda tidak pelu terlalu khawatir untuk mencari kendaraan ke sana jika anda tidak membawa kendaraan sendiri. Banyak Alternatif jalan menuju lokasi Paralayang Batu malang ini, tetapi semuanya akan bermuara pada dua tujuan, yaitu dari Batu dan juga dari Pujon.</p>', 'wisata-paralayang-batu-malang.jpg', '2017-11-12'),
(16, 'LEGENDA COBAN RONDO', '<p>Baru beberapa hari menjadi suami-istri, Dewi Anjarwati mengajak suaminya untuk bertandang ke rumah orang tua mereka yang ada di Gunung Anjasmoro. Niat ini ditentang oleh orangtua Dewi Anjarwati. Menurut tradisi Jawa kuno, pasangan pengantin baru dilarang bepergian sebelum usia pernikahan mencapai selapan. Hal ini diyakini bisa mendatangkan kesialan bagi pasangan tersebut. Tetapi keduanya tetap bersikeras pergi.</p>\r\n<p>Di tengah perjalanan, Dewi Anjarwati dan Raden Baron Kusumo bertemu dengan Joko Lelono. Rupanya orang asing itu terpikat kecantikan Dewi Anjarwati pada pandangan pertama. Joko Lelono pun menantang Raden Baron Kusumo berduel untuk memperebutkan Dewi Anjarwati. Sang istri diminta untuk menyembunyikan diri di balik air terjun sembari menunggu suaminya datang menjemput.</p>\r\n<p>Tak disangka, Raden Baron Kusumo dan dan Joko Lelono sama-sama tewas dalam pertarungan. Janji Raden Baron Kusumo untuk menjemput istrinya tak bisa dipenuhi. Tinggallah Dewi Anjarwati yang menjanda meratapi nasibnya di balik air terjun.</p>', 'Cuban Rondo Malang.jpg', '2017-11-13'),
(17, 'MISTERI WISATA PANTAI GOA CHINA', '<p>Pantai Goa Cina adalah sebuah Wisata Menawan dengan Legenda Sebuah Goa yang akhirnya menjadi nama pantai tersebut. Seperti namanya, goa ini memang sudah ada dari sejak jaman dahulu yang berada pada sisi kanan pantai dari pintu masuk tiket pembayaran.</p>\r\n<p>Disini kamu bisa melihat pulau yang berada di tengah pantai yaitu pulau Bantengan, Pulau Goa Cina dan Pulau Nyonya. Arus gelombang di Pantai Goa Cina sangat kuat dan menimbulkan suara gemuruh, oleh karena itu tidak ada perahu nelayan yang bersandar di pantai ini.</p>\r\n<p>Selain batu karang dan pulau kecil di tengahnya, ada sebuah gua dengan kisahnya sehingga pantai ini dinamakan Pantai Goa Cina. Goa ini berada dalam bebatuan karang yang besar memang sudah ada sebuah di bagian sisi kanan pantai. Jika kamu mau melihat goa nya secara langsung, maka kamu harus naik ke karang yang tidak terlalu tinggi.</p>\r\n<p>Kamu akan melihat jalur petunjuk untuk memasuk ke Goa dan ada petunjuk yang menjelaskan legenda Goa China tentang seorang petapa dari Cina yang bertapa di dalam gua bertahun-tahun sampai dia meninggal.</p>', 'goa-cina.jpg', '2017-11-14'),
(18, 'PESONA GOA TERINDAH DI ASIA TENGGARA', '<p>Jika Anda ingin menikmati pesona Goa Gong Pacitan yang sungguh kaya akan keindahan stalaktit (mineral sekunder yang menggantung di langit goa) dan stalagmit (batuan kapur yang berbentuk meruncing dan terdapat di lantai goa), Anda dapat masuk ke dalamnya dengan membayar tiket masuk Goa Gong sebesar Rp 5 ribu per orang.</p>\r\n<p>Stalaktit dan stalagmit di Goa Gong Pacitan ini akan mengalami pertumbuhan memanjang melalui proses alami akibat reaksi oksidasi atau reaksi kimia antara udara dengan air. Rata-rata pertumbuhan panjang stalaktit dan stalakit di goa ini berkisar antara 0.1 hingga 0.13 mm per tahun.</p>\r\n<p>Saat mengunjungi Goa Gong Pacitan, Anda akan diajak menyusuri tangga dan menyaksikan berbagai pemandangan gong cave, shawl drappery (stalaktit yang meneteskan air), rekahan endapan kalsium, dan tetesan air di ujung-ujung goa yang membentuk laksana danau kecil.</p>', 'IMG_20160907_160132_560.jpg', '2017-11-15'),
(19, 'WOW ! AIR TERJUN DAN PANTAI JADI SATU LHO !', '<p>Untungnya lokasi Pantai Toroan tak terlalu jauh dari jalan raya dengan sejumlah angkutan umum yang banyak melintas. Namun jika travelers menggunakan kendaraan pribadi seperti roda dua bisa mengendarainya langsung hingga menuju pantai. Sebaliknya untuk yang membawa roda empat bisa menitipkan kendaraan di rumah penduduk sekitar karena akses masuknya yang terbatas. Travelers perlu berjalan kaki untuk sampai ke pantai dengan menuruni lembah yang curam sejauh 50 meter maupun mengitari batu-batu karang dengan sisa genangan air laut. Air terjun Pantai Toroan memang cukup unik karena air terjun tersebut langsung jatuh ke pantai yang ada di bawahnya, tanpa perlu melintasi pasir pantai. Padahal tinggi air terjun tersebut mencapai 20 meter dan dikala musim penghujan debit airnya yang jatuh akan semakin banyak dan deras.</p>\r\n<p>Air Terjuan Toroan berasal dari Sungai Payung yang ada di Kecamatan Timur. Di sekitar air terjun dan pantai terdapat pepohonan rindang yang memberikan suasana sejuk di sekitar pantai. Tak hanya itu, gelombang ombaknya juga ditahan batu-batu besar yang maish utuh sehingga tidak langsung sampai ke bibir pantai. Di sepanjang bibir pantai juga terhampar pasir putih yang bersih yang bisa travelers manfaatkan untuk bersantai, terutam kala sore hari sambil meyaksikan pemandangan matahari yang hendak menutup diri di ufuk barat.</p>', 'senja-pantai-toroan.jpg', '2017-11-15'),
(20, '5 FAKTA TAMAN SAFARI PRIGEN', '<p>1. Taman Safari Prigen memiliki luas 350 hektar. Taman Safari Prigen jauh lebih luas ketimbang Taman Safari Indonesia di Cisarua dan Bali. Dengan luas 350 hektar, Taman Safari Prigen mengunsung konsep kebun binatang ala Afrika yang membiarkan satwa bebas di alam terbuka.</p>\r\n<p>2. Kamu bisa melihat bagaimana gajah ditimbang. Di Taman Sari Prigen, gajah-gajah ini diperlakukan dengan sangat baik. Gizinya tercukupi dan kesehatannya diperhatikan. Bahkan, berat badannya selalu dimonitor untuk memastikan gizinya terpenuhi sesuai dengan usianya.</p>\r\n<p>3. Bisa kenalan dengan sapi Jaliteng. Jaliteng adalah spesies sapi baru dari persilangan sapi betina Bali dan banteng Jawa jantan. Spesies ini pertama kali dikembangkan oleh Dinas Peternakan Provinsi Jawa Timur dengan Taman Safari Prigen sejak Juli 2012. </p>\r\n<p>4. Makan daging rusa di Tiger Cave Restaurant. Di Taman Safari Prigen, ada Tiger Cave Restaurant yang memiliki menu andalan dagung rusa. Jadi, kalau sudah sampai di sana, jangan sampai kamu nggak cobain daging rusa. Apalagi, daging rusa memiliki protein yang lebih tinggi ketimbang daging lain, jadi bisa bikin stamina kamu lebih kuat.</p>\r\n<p>5. Makan sambil ditemani harimau putih di Tiger Cave Restaurant. Di Tiger Cave Restaurant kamu juga bisa makan sambil ditemani sepasang Harimau Benggala Putih yang sengaja dipelihara di area resto tersebut. Begitu kamu melayangkan pandangan ke arah dinding kaca resto, kamu bakal langsung kaget begitu melihat ada sepasang harimau putih hidup di sana.</p>', 'Ifkg_hup.png', '2017-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `setup_slide`
--

CREATE TABLE IF NOT EXISTS `setup_slide` (
`id_slide` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `konten` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setup_slide`
--

INSERT INTO `setup_slide` (`id_slide`, `judul`, `konten`, `gambar`) VALUES
(1, 'Promo Bromo 2 Hari Bersama Pasanganmu', '<p>Ajak pasanganmu untuk pergi berlibur, maka kami akan menawarkan paket menarik untuk anda. Dengan layanan yang ramah kami bawa anda berkeliling menikmati pemandangan Bromo bersama pasangan anda. Jika anda berminat, silahkan booking secepatnya!! Karena Promo terbatas hingga 31 Juli 2017. Buruan pesan, jangan lupa pilih peketnya "Promo Bromo 2 Day Couple".</p>', 'Bromo.jpg'),
(2, 'Liburan Bersama Orang Tersayang', '<p>Setelah sibuk dengan aktifitas anda masing-masing. Mari ajak orang tersayang anda untuk berlibur. Kami menawarkan Paket Promo khusus untuk anda, maka pesan sekarang juga. Lalu pilih paket "East Java 2 Day Couple", jangan sampai kelewatan ya.</p>', 'pesona telaga sarangan.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `setup_sumbar`
--

CREATE TABLE IF NOT EXISTS `setup_sumbar` (
`id_sumbar` int(11) NOT NULL,
  `kat_sumbar` varchar(30) NOT NULL,
  `judul_sumbar` varchar(50) NOT NULL,
  `konten_sumbar` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setup_sumbar`
--

INSERT INTO `setup_sumbar` (`id_sumbar`, `kat_sumbar`, `judul_sumbar`, `konten_sumbar`) VALUES
(5, 'profil', '', '<p style="text-align: justify;"><strong>Jawa Timur</strong>  adalah sebuah provinsi di bagian timur Pulau Jawa, Indonesia. Ibu kotanya terletak di Surabaya. Luas wilayahnya 47.922 km persegi, dan jumlah penduduknya 44.176.759 jiwa. Jawa Timur memiliki wilayah terluas di antara 6 provinsi di Pulau Jawa, dan memiliki jumlah penduduk terbanyak kedua di Indonesia setelah Jawa Barat. Jawa Timur berbatasan dengan Laut Jawa di utara, Selat Bali di timur, Samudra Hindia di selatan, serta Provinsi Jawa Tengah di barat. Wilayah Jawa Timur juga meliputi Pulau Madura, Pulau Bawean, Pulau Kangean serta sejumlah pulau-pulau kecil di Laut Jawa (Kepulauan Masalembu), dan Samudera Hindia (Pulau Sempu, dan Nusa Barung).</p>\r\n<p style="text-align: justify;">Jawa Timur dikenal sebagai pusat Kawasan Timur Indonesia, dan memiliki signifikansi perekonomian yang cukup tinggi, yakni berkontribusi 14,85% terhadap Produk Domestik Bruto nasional.</p>'),
(6, 'profil', 'Geografi Jawa Timur', '<p style="text-align: justify;">Provinsi Jawa Timur berbatasan dengan Laut Jawa di utara, Selat Bali di timur, Samudera Hindia di selatan, serta Provinsi Jawa Tengah di barat. Panjang bentangan barat-timur sekitar 400 km. Lebar bentangan utara-selatan di bagian barat sekitar 200 km, namun di bagian timur lebih sempit hingga sekitar 60 km. Madura adalah pulau terbesar di Jawa Timur, dipisahkan dengan daratan Jawa oleh Selat Madura. Pulau Bawean berada sekitar 150 km sebelah utara Jawa. Di sebelah timur Madura terdapat gugusan pulau-pulau, yang paling timur adalah Kepulauan Kangean, dan yang paling utara adalah Kepulauan Masalembu. Di bagian selatan terdapat dua pulau kecil yakni Nusa Barung, dan Pulau Sempu.</p>\r\n<p style="text-align: justify;">ecara fisiografis, wilayah Provinsi Jawa Timur dapat dikelompokkan dalam tiga zona: zona selatan (plato), zona tengah (gunung berapi), dan zona utara (lipatan). Dataran rendah, dan dataran tinggi pada bagian tengah (dari Ngawi, Blitar, Malang, hingga Bondowoso) memiliki tanah yang cukup subur. Pada bagian utara (dari Bojonegoro, Tuban, Gresik, hingga Pulau Madura) terdapat Pegunungan Kapur Utara, dan Pegunungan Kendeng yang relatif tandus. Pada bagian tengah terbentang rangkaian pegunungan berapi: Di perbatasan dengan Jawa Tengah terdapat Gunung Lawu (3.265 meter). Di sebelah Tenggara Madiun tedapat Gunung Wilis (2.169 meter), dan Gunung Liman (2.563 meter). Pada koridor tengah terdapat kelompok Anjasmoro dengan puncak-puncaknya Gunung Arjuno (3.339 meter), Gunung Welirang (3.156 meter), Gunung Anjasmoro (2.277 meter), Gunung Kawi (2.551 meter), dan Gunung Kelud (1.731 meter); pegunungan tersebut terletak di sebagian Kabupaten Kediri, Kabupaten Blitar, Kabupaten Malang, Kabupaten Pasuruan, Kabupaten Mojokerto, dan Kabupaten Jombang. Kelompok Tengger memiliki puncak Gunung Bromo (2.329 meter), dan Gunung Semeru (3.676 meter). Semeru, dengan puncaknya yang disebut Mahameru adalah gunung tertinggi di Pulau Jawa. Di daerah Tapal Kuda terdapat dua kelompok pegunungan: Pegunungan Iyang dengan puncaknya Gunung Argopuro (3.088 meter), dan Pegunungan Ijen dengan puncaknya Gunung Raung (3.344 meter). Pada bagian selatan terdapat rangkaian perbukitan, yakni dari pesisir pantai selatan Pacitan, Trenggalek, Tulungagung, Blitar, hingga Malang. Pegunungan Kapur Selatan merupakan kelanjutan dari rangkaian Pegunungan Sewu di Yogyakarta.</p>\r\n<p style="text-align: justify;">Terdapat 29 gunung yang tersebar di 7 kabupaten dan kota di Sumatera Barat, dengan Gunung Kerinci di kabupaten Solok Selatan sebagai gunung tertinggi, yang mencapai ketinggian 3.085 m.</p>\r\n<p style="text-align: justify;">Dua sungai terpenting di Jawa Timur adalah Sungai Brantas (290 km), dan Sungai Bengawan Solo (548 km). Sungai Brantas memiiki mata air di lereng Gunung Arjuno di daerah Batu, dan mengalir melalui sebagian daerah di Jawa Timur, seperti Malang, Blitar, Tulungagung, Kediri, Jombang, serta Mojokerto. Di Mojokerto, Sungai Brantas terpecah menjadi dua: Kali Mas, dan Kali Porong; keduanya bermuara di Selat Madura. Sungai Bengawan Solo memiliki mata air di lereng Gunung Lawu yang merupakan perbatasan Jawa Timur dan Jawa Tengah, dan mengalir melalui sebagian daerah Jawa Tengah bagian timur dan Jawa Timur, yang akhirnya bermuara di wilayah Gresik. Sungai Brantas dan Sungai Bengawan Solo dikelola oleh Perum Jasa Tirta I. Di lereng Gunung Lawu di dekat perbatasan dengan Jawa Tengah terdapat Telaga Sarangan, sebuah danau alami. Bendungan utama di Jawa Timur antara lain Waduk Ir. Sutami, dan Bendungan Selorejo, yang digunakan untuk irigasi, pemeliharaan ikan, dan pariwisata.</p>\r\n<p style="text-align: justify;">Jawa Timur memiliki iklim tropis basah. Dibandingkan dengan wilayah Pulau Jawa bagian barat, Jawa Timur pada umumnya memiliki curah hujan yang lebih sedikit. Curah hujan rata-rata 1.900 mm per tahun, dengan musim hujan selama 100 hari. Suhu rata-rata berkisar antara 21-34 derajat C. Suhu di daerah pegunungan lebih rendah, dan bahkan di daerah Ranu Pani (lereng Gunung Semeru), suhu bisa mencapai minus 4 derajat C, yang menyebabkan turunnya salju lembut.</p>'),
(7, 'sejarah', '', '<p style="text-align: justify;">Jawa Timur telah dihuni manusia sejak zaman prasejarah. Hal ini dapat dibuktikan dengan ditemukannya sisa-sisa dari fosil Pithecanthropus Mojokertensis di Kepuhlagen, Mojokerto; Pithecanthropus erectus di Trinil, Ngawi; dan Homo Wajakensis di Wajak, Tulungagung.</p>\r\n<p style="text-align: justify;">Prasasti Dinoyo yang ditemukan di dekat Kota Malang adalah sumber tertulis tertua di Jawa Timur, yakni bertahun 760. Pada tahun 929, Mpu Sindok memindahkan pusat Kerajaan Mataram dari Jawa Tengah ke Jawa Timur, serta mendirikan Wangsa Isyana yang kelak berkembang menjadi Kerajaan Medang, dan sebagai suksesornya adalah Kerajaan Kahuripan, Kerajaan Janggala, dan Kerajaan Kadiri. Pada masa Kerajaan Singhasari, Raja Kertanagara melakukan ekspansi hingga ke Melayu. Pada era Kerajaan Majapahit di bawah Raja Hayam Wuruk, wilayahnya hingga mencapai Malaka, dan Kepulauan Filipina. Bukti awal masuknya Islam ke Jawa Timur adalah adanya makam nisan di Gresik bertahun 1102, serta sejumlah makam Islam pada kompleks makam Majapahit. Selain itu, juga ditemukan munculnya candi Jedong di Daerah Wagir, Malang, Jawa Timur yang diyakini lebih tua dari Prasasti Dinoyo , yakni sekitar abad ke-6 Masehi.</p>\r\n<p style="text-align: justify;">Bangsa Portugis adalah bangsa barat yang pertama kali datang di Jawa Timur. Kapal Belanda dipimpin oleh Cornelis de Houtman mendarat di Pulau Madura pada tahun 1596. Surabaya jatuh ke tangan VOC pada tanggal 13 Mei 1677. Ketika pemerintahan Stamford Raffles, Jawa Timur untuk pertama kalinya dibagi atas karesidenan, yang berlaku hingga tahun 1964.</p>\r\n<p style="text-align: justify;">Setelah kemerdekaan Indonesia, Indonesia terbagi menjadi 8 Provinsi, dan Jawa Timur termasuk salah satu provinsi tersebut. Gubernur pertama Jawa Timur adalah R. Soerjo, yang juga dikenal sebagai pahlawan nasional. Tanggal 20 Februari 1948 di Madura dibentuk Negara Madura, dan tanggal 26 November 1948 dibentuk Negara Jawa Timur, yang kemudian menjadi salah satu negara bagian dalam Republik Indonesia Serikat. Negara Jawa Timur dibubarkan, dan bergabung ke dalam Republik Indonesia tanggal 25 Februari 1950, dan tanggal 7 Maret 1950 Negara Madura memberikan pernyataan serupa. Berdasarkan Undang-Undang Nomor 2 Tahun 1950, dibentuk Provinsi Jawa Timur.</p>'),
(9, 'wisata', '', '<p style="text-align: justify;">Kawasan metropolitan Malang merupakan tujuan wisata terkenal di Indonesia dengan Kota Wisata Batu sebagai pusatnya.\r\nPantai Noko, Pulau Bawean, Gresik\r\n\r\nJawa Timur memiliki sejumlah tempat wisata yang menarik. Salah satu ikon wisata Jawa Timur adalah Gunung Bromo, yang dihuni oleh Suku Tengger, di mana setiap tahun diselenggarakan upacara Kasada. Di kawasan pegunungan Tengger juga terdapat sebuah air terjun yaitu Madakaripura yang merupakan tempat pertapaan terakhir Mahapatih Gajah Mada sebelum mengabdi di Kerajaan Majapahit. Air terjun Madakaripura memiliki ketinggian sekitar 200 meter, yang menjadikan air terjun ini yang tertinggi di Pulau Jawa dan tertinggi kedua di Indonesia. Jawa Timur juga memiliki beberapa daerah wisata pegunungan lainnya di antaranya adalah daerah pegunungan Malang Raya yang dikenal sebagai kawasan wisata pegunungan alami yang mencakup Malang dan Batu. Daerah pegunungan Tretes dan Trawas, juga dikenal memiliki karakteristik seperti daerah Puncak di provinsi Jawa Barat. Wisata alam lainnya di Jawa Timur adalah Taman Nasional (4 dari 12 Taman Nasional di Jawa), Kebun Raya Purwodadi di Purwodadi, Pasuruan, dan Taman Safari Indonesia II di Prigen.<span style="font-size: 9px;">&nbsp;</span>Jawa Timur juga terdapat peninggalan sejarah pada era klasik. Situs Trowulan di Kabupaten Mojokerto, dulunya merupakan pusat Kerajaan Majapahit, terdapat belasan candi, dan makam raja-raja Majapahit. Candi-candi lainnya menyebar di hampir seluruh wilayah Jawa Timur, di antaranya Candi Penataran di Blitar. Di Madura, Sumenep merupakan pusat kerajaan Madura, di mana terdapat Keraton Sumenep, museum, dan makam raja-raja Madura (Asta Tinggi Sumenep).</p>\r\n<p style="text-align: justify;">Jawa Timur dikenal memiliki panorama pantai yang sangat indah. Di pantai selatan terdapat Pantai Prigi, Pantai Pelang, dan Pantai Pasir Putih di Trenggalek, Pantai Popoh di Tulungagung, Pantai Ngliyep, dan tempat wisata buatan seperti Jawa Timur Park, Batu Secret Zoo, Batu Night Spectacular, Eco Green Park di Batu, serta Pantai Watu Ulo di Jember. Jawa Timur juga memiliki pantai yang ombaknya merupakan salah satu yang terbaik di dunia, yaitu Pantai Plengkung yang terletak di Kabupaten Banyuwangi. Di kawasan pantai utara terdapat Pantai Tanjung Kodok di Kabupaten Lamongan, kini telah dikelola, dan dikembangkan oleh Pemkab Lamongan menjadi kawasan Wisata Bahari Lamongan (WBL). Masyarakat Jawa Timur sering menyebut WBL dengan Jatim Park II yang sebenarnya Jatim Park II itu sendiri berada di Batu. Selain itu ada Pantai Kenjeran di Surabaya, dan Pantai Pasir Putih di Situbondo. Danau di Jawa Timur antara lain Telaga Sarangan di Magetan, Bendungan Ir. Sutami di Kabupaten Malang, dan Bendungan Selorejo di Kabupaten Blitar.</p>\r\n<p style="text-align: justify;">Kawasan pesisir utara terdapat sejumlah makam para wali, yang menjadi wisata religi para peziarah bagi umat Islam. Lima dari sembilan walisongo dimakamkan di Jawa Timur: Sunan Ampel di Surabaya, Sunan Giri, dan Sunan Gresik di Gresik, Sunan Drajat di Paciran (Lamongan), dan Sunan Bonang di Tuban. Di kawasan pesisir utara ini juga terdapat gua-gua yang menarik, yaitu: Gua Maharani di Lamongan, dan Gua Akbar di Tuban, serta Gua Gong yang berada di Kabupaten Pacitan yang terkenal sebagai gua terindah di Asia Tenggara. Objek wisata ziarah di Jawa Timur antara lain yaitu makam proklamator yang juga Presiden Republik Indonesia pertama Soekarno yang terdapat di Kota Blitar, serta makam Presiden Republik Indonesia keempat Abdurrahman Wahid / Gus Dur yang terletak di Kabupaten Jombang.&nbsp;Kawasan Metropolitan Malang merupakan tujuan wisata terkemuka di Indonesia dengan Kota Wisata Batu sebagai pusatnya. Kawasan wisata Malang mempunyai berbagai keindahan alam mulai dari gunung berapi hingga pantai, serta wisata buatan manusia dari wisata sejarah hingga theme park berkelas internasional dengan didukung transportasi antar provinsi melalui kereta api, bis, dan pesawat terbang yang tersedia di Malang. Batu Secret Zoo selalu menempati peringkat 10 besar pada urutan kebun binatang terbaik di Asia menurut situs traveling terkemuka TripAdvisor.</p>\r\n<p style="text-align: justify;">Surabaya merupakan pusat pemerintahan, dan pusat bisnis Jawa Timur, di mana terdapat Tugu Pahlawan, Museum Mpu Tantular, Kebun Binatang Surabaya, Monumen Kapal Selam, Kawasan Ampel, dan Kawasan Tunjungan. Jawa Timur Park di Batu, dan Wisata Bahari Lamongan di Lamongan merupakan wahana wisata yang disebut-sebut sebagai disneyland di Indonesia selain Taman Impian Jaya Ancol di Jakarta.</p>'),
(13, 'kuliner', '', '<p>Makanan khas Jawa Timur yang terkenal di antaranya adalah bakso malang, rawon, dan tahu campur lamongan. Surabaya terkenal akan rujak cingur, semanggi, lontong balap, sate kerang, dan lontong kupang. Malang telah populer akan berbagai olahan buah terutama apel, keripik tempe, bakpao telo, bakso malang, rawon dan cwie mie. Kediri terkenal akan tahu takwa, tahu pong, dan getuk pisang. Madiun dikenal akan nasi pecel madiun, dan sebagai penghasil brem. Kecamatan Babat, Lamongan terkenal sebagai penghasil wingko babat. Bondowoso merupakan penghasil tape yang sangat manis. Gresik terkenal dengan nasi krawu, otak-otak bandeng, bonggolan, dan pudak-nya. Sidoarjo terkenal akan kerupuk udang, terasi, dan petisnya. Ngawi terkenal merupakan penghasil Tempe Kripik, Tahu tepo, dan nasi lethok. Blitar memiliki makanan khas yaitu nasi pecel. Buah yang terkenal asli Blitar yaitu rambutan. Banyuwangi terkenal dengan sego tempong, rujak soto, dan pecel rawon. Tuban terkenal dengan legen beserta buah siwalan-nya, serta makanan khas Tuban lainnya yaitu sego becek dan kare rajungan, yang populer akan rasanya yang pedas. Jember mempunyai makanan khas berbahan tape yaitu suwar-suwir serta proll tape yang sangat manis.</p>\r\n<p>Jagung dikenal sebagai salah satu makanan pokok orang Madura, sementara ubi kayu yang diolah menjadi gaplek, dahulu merupakan makanan pokok sebagian penduduk di Pacitan dan Trenggalek. Tulungagung terkenel dengan lodho , jenang syabun , sate kambing yang membedakan dengan daerah lain adalah bumbunya memakai petis , pecel tulungagung</p>'),
(15, 'budaya', 'Kesenian di Jawa Timur', '<p style="text-align: justify;">Jawa Timur memiliki sejumlah kesenian khas. Ludruk merupakan salah satu kesenian Jawa Timuran yang cukup terkenal, yakni seni panggung yang umumnya seluruh pemainnya adalah laki-laki. Berbeda dengan ketoprak yang menceritakan kehidupan istana, ludruk menceritakan kehidupan sehari-hari rakyat jelata, yang seringkali dibumbui dengan humor, dan kritik sosial, dan umumnya dibuka dengan Tari Remo, dan parikan. Saat ini kelompok ludruk tradisional dapat dijumpai di daerah Surabaya, Mojokerto, dan Jombang; meski keberadaannya semakin dikalahkan dengan modernisasi.</p>\r\n<p style="text-align: justify;">Reog yang sempat diklaim sebagai tarian dari Malaysia merupakan kesenian khas Ponorogo yang telah dipatenkan sejak tahun 2001, reog kini juga menjadi icon kesenian Jawa Timur. Pementasan reog disertai dengan jaran kepang (kuda lumping) yang disertai unsur-unsur gaib. Seni terkenal Jawa Timur lainnya antara lain wayang kulit purwa gaya Jawa Timuran, topeng dalang di Madura, dan besutan. Di daerah Mataraman, kesenian Jawa Tengahan seperti ketoprak, dan wayang kulit cukup populer. Legenda terkenal dari Jawa Timur antara lain Damarwulan, Angling Darma, dan Sarip Tambak-Oso.</p>\r\n<p style="text-align: justify;">Seni tari tradisional di Jawa Timur secara umum dapat dikelompokkan dalam gaya Jawa Tengahan, gaya Jawa Timuran, tarian Jawa gaya Osing, dan trian gaya Madura. Seni tari klasik antara lain tari gambyong, tari srimpi, tari bondan, dan kelana.</p>\r\n<p style="text-align: justify;">Terdapat pula kebudayaan semacam barong sai di Jawa Timur. Kesenian itu ada di dua kabupaten yaitu, Bondowoso, dan Jember. Singo Wulung adalah kebudayaan khas Bondowoso. Sedangkan Jember memiliki macan kadhuk. Kedua kesenian itu sudah jarang ditemui.</p>'),
(16, 'budaya', 'Kebudayaan di Jawa Timur', '<p style="text-align: justify;">Kebudayaan dan adat istiadat Suku Jawa di Jawa Timur bagian barat menerima banyak pengaruh dari Jawa Tengahan, sehingga kawasan ini dikenal sebagai Mataraman; menunjukkan bahwa kawasan tersebut dulunya merupakan daerah kekuasaan Kesultanan Mataram. Daerah tersebut meliputi eks-Karesidenan Madiun (Madiun, Ngawi, Magetan, Ponorogo, Pacitan), eks-Karesidenan Kediri (Kediri, Tulungagung, Blitar, Trenggalek, Nganjuk), dan sebagian Bojonegoro. Seperti halnya di Jawa Tengah, wayang kulit, dan ketoprak cukup populer di kawasan ini.</p>\r\n<p style="text-align: justify;">Penduduk Jawa Timur umumnya menganut perkawinan monogami. Sebelum dilakukan lamaran, pihak laki-laki melakukan acara nako''ake (menanyakan apakah si gadis sudah memiliki calon suami), setelah itu dilakukan peningsetan (lamaran). Upacara perkawinan didahului dengan acara temu atau kepanggih. Masyarakat di pesisir barat: Tuban, Lamongan, Gresik, bahkan Bojonegoro memiliki kebiasaan lumrah keluarga wanita melamar pria(ganjuran), berbeda dengan lazimnya kebiasaan daerah lain di Indonesia, di mana pihak pria melamar wanita. Dan umumnya pria selanjutnya akan masuk ke dalam keluarga wanita. Untuk mendoakan orang yang telah meninggal, biasanya pihak keluarga melakukan kirim donga pada hari ke-1, ke-3, ke-7, ke-40, ke-100, 1 tahun, dan 3 tahun setelah kematian.</p>'),
(17, 'budaya', 'Rumah Adat', '<p style="text-align: justify;">Bentuk bangunan Jawa Timur bagian barat (seperti di Ngawi, Madiun, Magetan, dan Ponorogo) umumnya mirip dengan bentuk bangunan Jawa Tengahan (Surakarta). Bangunan khas Jawa Timur umumnya memiliki bentuk joglo, bentuk limasan (dara gepak), bentuk srontongan (empyak setangkep).</p>\r\n<p style="text-align: justify;">Masa kolonialisme Hindia Belanda juga meninggalkan sejumlah bangunan kuno. Kota-kota di Jawa Timur banyak terdapat bangunan yang didirikan pada era kolonial, terutama di Surabaya, dan Malang.</p>'),
(18, 'budaya', 'Pemerintah Daerah', '<p style="text-align: justify;">SKepala daerah Provinsi Jawa Timur adalah gubernur, yang dibantu oleh seorang wakil gubernur. Jabatan Gubernur Jawa Timur secara resmi saat ini diemban oleh Soekarwo, yang terpilih dalam Pilkada Jatim yang berlangsung dalam dua putaran. Ia menggantikan Setia Purwaka yang ditunjuk Menteri Dalam Negeri sebagai Penjabat Sementara Gubernur Jawa Timur setelah Gubernur Imam Utomo mengakhiri masa jabatannya pada 29 September 2008. Pemilihan Kepala Daerah, dan Wakil Kepala Daerah (Pilkada Langsung) untuk pertama kalinya diselenggarakan pada tahun 2008. Pemerintah Provinsi Jawa Timur terdiri atas Sekretariat Daerah, Sekretariat DPRD, 22 Dinas Daerah, 16 Badan, 3 Kantor, serta 5 Badan Rumah Sakit. Sementara dalam koordinasi wilayah, dibentuk 4 Badan Koordinasi Wilayah (Bakorwil): Bakorwil I Madiun, Bakorwil II Bojonegoro, Bakorwil III Malang, dan Bakorwil IV Pamekasan.</p>'),
(19, 'budaya', 'Olahraga', '<p style="text-align: justify;">Jawa Timur merupakan provinsi dengan jumlah klub sepak bola profesional terbanyak di Indonesia. Klub Liga Super Indonesia yang berasal dari Jatim adalah Persegres Gresik United, Persik Kediri, Persema Malang, Arema Indonesia, Persibo Bojonegoro, Deltras Sidoarjo, Persela Lamongan, dan Persebaya Surabaya. Arema dan Persebaya adalah klub sepak bola dari Jawa Timur yang menjadi tim papan atas di Indonesia dengan berulang kali meraih juara dari turnamen dan kompetisi nasional serta sering menjadi wakil Indonesia pada kejuaraan antar klub di Asia.</p>\r\n<p style="text-align: justify;">Jawa Timur pernah dua kali menjadi tuan rumah Pekan Olahraga Nasional (PON), yakni PON VII tahun 1969, dan PON XV tahun 2000, dan menjadi juara umum PON pada tahun 2000, dan 2008. Semenjak tahun 1996 Tim Sepak Bola Jawa Timur selalu meraih medali emas termasuk pada tahun 2008, dan tercatat sebagai medali emas yang keempat diterima berurutan. Pada tahun 2021, Jawa Timur juga menjadi tuan rumah Asian Youth Games ke-4. Jawa Timur juga menjadi tempat penyelengaraan ajang balap sepeda Tour de East Java.</p>\r\n<p style="text-align: justify;">&nbsp;</p>\r\n<p style="text-align: justify;"><em>Source : Wikipedia.com</em></p>'),
(20, 'wisata', 'Monumen Soerjo di Ngawi', '<p style="text-align: justify;">Monumen Suryo, sebuah lokasi wisata di Kabupaten Ngawi, Jawa Timur, menjadi salah satu tempat wisata terfavorit bagi masyarakat lokal. Meskipun hanya monumen saja, bangunan monumen ini penuh dengan sejarah yang tidak mungkin akan dilupakan dengan mudah khususnya oleh masyarakat Ngawi. Monumen Suryo ini dibangun sebagai tanda hormat masyarakat Kabupaten Ngawi pada khususnya dan masyarakat Jawa Timur pada umumnya pada seorang tokoh Gubernur pertama Jawa Timur, RM. Soerjo meninggal akibat adanya insiden PKI pada tahun 1948. Gubernur Pertama Jawa Timur ini menjadi salah satu target penculikan oknum PKI dan dibunuh dengan sadis di tengah Hutan Kedungalar, Ngawi. Monumen Suryo diresmikan pada 28 Oktober 1975 oleh Pangdam VIII/Brawijaya, Mayjen TNI Witarmin</p>\r\n<h4 style="text-align: justify;">Sejarah</h4>\r\n<p style="text-align: justify;">Sementara singkat cerita bahwa, sejarah berdirinya monumen Soerjo (Suryo) tak lepas dari kebiadaban PKI. Pena sejarah tercatat ketika pada tanggal 10 September 1948, Gubernur Jawa Timur pertama, Raden Mas Tumenggung Aryo Soerjo (RMT-A Suryo) serta 2 perwira polisi di hadang pasukan pemberintak dari Partai Komunis. Ketiganya lantas ditelanjangi dan kemudian dibunuh di dalam hutan, Baru keesokan harinya, jasadnya ditemukan oleh seorang pencari kayu bakar. Lokasi wisata yang tergolong sebagai wisata alam ini tidak hanya menyuguhkan cerita sejarah yang terintepretasikan melalui Monumen Suryo saja, melainkan ada daya tarik wisata lainnya yang tak boleh anda lewatkan. Sebut saja atmosfer alam yang masih asri dan asli. Lokasi wisata ini juga menyuguhkan keindahan panorama alam yang sangat indah. Siapa pun akan merasakan suasana tenang dan damai saat berada di tempat wisata ini.</p>\r\n<p style="text-align: justify;">Untuk tetap menjaga keasrian lingkungan sekitar monumen, pihak pengelola tempat wisata Monumen Suryo telah menghiasi monumen dengan 23 jenis tanaman langka seperti citradora, Sawo kecik, Sonokeling, Cendana, dan masih banyak jenis tanaman langka lainnya. Ada juga koleksi burung yang disangkarkan seperti burung Podang, Perkutut, Bekisar, dan lain sebagainya. Demi kenyamanan pengunjung, di kawasan wisata ini telah disediakan berbagai fasilitas dasar seperti mushola, ruang informasi, taman bermain, dan sebuah pendopo. Para pengunjung tidak dipungut biaya masuk untuk menikmati segala fasilitas dan daya tarik wisata alam yang satu ini.</p>'),
(21, 'wisata', 'Tugu Pahlawan di Surabaya', '<p>Tugu Pahlawan adalah sebuah monumen yang menjadi markah tanah Kota Surabaya. Tinggi monumen ini adalah 41,15 meter dan berbentuk lingga atau paku terbalik. Tubuh monumen berbentuk lengkungan-lengkungan (Canalures) sebanyak 10 lengkungan, dan terbagi atas 11 ruas. Tinggi, ruas, dan canalures mengandung makna tanggal 10, bulan 11, tahun 1945. Suatu tanggal bersejarah, bukan hanya bagi penduduk Kota Surabaya, tetapi juga bagi seluruh Rakyat Indonesia. Tugu Pahlawan dibangun untuk memperingati peristiwa Pertempuran 10 November 1945 di Surabaya, di mana arek-arek Suroboyo berjuang melawan pasukan Sekutu bersama Belanda yang hendak menjajah kembali Indonesia. Monumen Tugu Pahlawan menjadi pusat perhatian setiap tanggal 10 November mengenang peristiwa pada tahun 1945 ketika banyak pahlawan yang gugur dalam perang kemerdekaan</p>\r\n<p>Monumen ini berada di tengah-tengah kota di Jalan Pahlawan Surabaya, dan di dekat Kantor Gubernur Jawa Timur. Tugu Pahlawan merupakan salah satu ikon Kota Surabaya sebagai Kota Pahlawan. Berdiri di atas tanah lapang seluas 1,3 hektare, dan secara administratif berada di wilayah Kelurahan Alun-Alun Contong, Kecamatan Bubutan, Kota Surabaya.</p>\r\n<p>Di bawah tanah lahan Tugu Pahlawan sedalam 7 meter terdapat sebuah museum untuk mengenang jasa-jasa para pahlawan yang berjuang di Surabaya, di museum ini juga terdapat foto-foto dokumentasi pembangunan Tugu Pahlawan. Museum ini diresmikan pada tanggal 19 Februari 2000 oleh Presiden K.H. Abdurrahman Wahid.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `user_admin` varchar(20) NOT NULL,
  `pass_admin` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL,
  `aktif` varchar(20) NOT NULL DEFAULT 'Y',
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`user_admin`, `pass_admin`, `level`, `aktif`, `nama`) VALUES
('admin', 'admin', 'admin', 'Y', 'Administrator'),
('anas', 'anas', 'admin', 'Y', 'Namanya Anas'),
('tasia', 'tasia', 'admin', 'Y', 'Namanya Tasia');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bukti`
--

CREATE TABLE IF NOT EXISTS `tbl_bukti` (
`id_bukti` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bukti`
--

INSERT INTO `tbl_bukti` (`id_bukti`, `id_pesan`, `file`) VALUES
(1, 1, 'cropped-GravityNew-01.png'),
(2, 2, 'BI.png'),
(3, 2, 'cropped-GravityNew-01.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_daerah`
--

CREATE TABLE IF NOT EXISTS `tbl_daerah` (
`id_daerah` int(11) NOT NULL,
  `kode` varchar(8) NOT NULL,
  `daerah` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_daerah`
--

INSERT INTO `tbl_daerah` (`id_daerah`, `kode`, `daerah`) VALUES
(1, 'NGW01', 'Ngawi'),
(3, 'SUB01', 'Surabaya'),
(4, 'MLG01', 'Malang'),
(5, 'BYW01', 'Banyuwangi'),
(6, 'JBR01', 'Jember');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hotel`
--

CREATE TABLE IF NOT EXISTS `tbl_hotel` (
`id_hotel` int(11) NOT NULL,
  `kd_daerah` varchar(6) NOT NULL,
  `hotel` varchar(100) NOT NULL,
  `bintang` tinyint(1) NOT NULL,
  `harga` int(11) NOT NULL,
  `ket_hotel` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_hotel`
--

INSERT INTO `tbl_hotel` (`id_hotel`, `kd_daerah`, `hotel`, `bintang`, `harga`, `ket_hotel`) VALUES
(1, 'NGW01', 'Campago Resort Hotel (Superior Domestik) 1H', 3, 420000, '<p style="text-align: justify;">Dirancang untuk wisata plesir dan bisnis, Campago Resort Hotel terletak strategis di Ngawi; salah satu daerah lokal terkenal. Hotel ini tidak terlalu jauh dari pusat kota, hanya dari sini dan umumnya hanya membutuhkan waktu 90 menit untuk mencapai bandara. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style="text-align: justify;">Fasilitas dan pelayanan yang ditawarkan Campago Resort Hotel menjaminkan penginapan menyenangkan bagi para tamu. Ketika menginap di properti yang luar biasa ini, para tamu dapat menikmati wi-fi di tempat-tempat umum, ruang merokok , concierge, layanan laundry, tur.</p>\r\n<p style="text-align: justify;">Campago Resort Hotel memiliki 22 kamar tidur yang semuanya dirancang dengan citarasa tinggi untuk menyediakan kenyamanan seperti televisi, meja tulis, internet (wireless), AC, kulkas. Hotel ini menyediakan sejumlah fasilitas rekreasi seperti kolam (anak), taman, lapangan tenis, klub anak. Fasilitas super dan lokasi yang cemerlang menjadikan Campago Resort Hotel tempat yang sempurna untuk menikmati penginapan Anda selama di Ngawi.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Minimum umur tamu adalah: 1 tahun</li>\r\n<li>Tamu berumur diatas 7 tahun dianggap sebagai tamu dewasa</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Bayi dibawah 1 tahun</td>\r\n<td>Tidak diizinkan untuk menginap</td>\r\n</tr>\r\n<tr>\r\n<td>Bayi 1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 2-7 tahun</td>\r\n<td>Harus menggunakan ekstra bed</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>coffee shop, concierge, fasilitas rapat,layanan kamar, layanan kamar 24 jam, layanan laundry, restoran, ruang keluarga, ruang merokok, wi-fi di tempat-tempat umum, Wi-Fi gratis di semua kamar</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>klub anak, kolam (anak), lapangan tenis, taman</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(2, 'NGW01', 'Campago Resort Hotel (Superior) 1H', 3, 460000, '<p style="text-align: justify;">Dirancang untuk wisata plesir dan bisnis, Campago Resort Hotel terletak strategis di Ngawi; salah satu daerah lokal terkenal. Hotel ini tidak terlalu jauh dari pusat kota, hanya dari sini dan umumnya hanya membutuhkan waktu 90 menit untuk mencapai bandara. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style="text-align: justify;">Fasilitas dan pelayanan yang ditawarkan Campago Resort Hotel menjaminkan penginapan menyenangkan bagi para tamu. Ketika menginap di properti yang luar biasa ini, para tamu dapat menikmati wi-fi di tempat-tempat umum, ruang merokok , concierge, layanan laundry, tur.</p>\r\n<p style="text-align: justify;">Campago Resort Hotel memiliki 22 kamar tidur yang semuanya dirancang dengan citarasa tinggi untuk menyediakan kenyamanan seperti televisi, meja tulis, internet (wireless), AC, kulkas. Hotel ini menyediakan sejumlah fasilitas rekreasi seperti kolam (anak), taman, lapangan tenis, klub anak. Fasilitas super dan lokasi yang cemerlang menjadikan Campago Resort Hotel tempat yang sempurna untuk menikmati penginapan Anda selama di Ngawi.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Minimum umur tamu adalah: 1 tahun</li>\r\n<li>Tamu berumur diatas 7 tahun dianggap sebagai tamu dewasa</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Bayi dibawah 1 tahun</td>\r\n<td>Tidak diizinkan untuk menginap</td>\r\n</tr>\r\n<tr>\r\n<td>Bayi 1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 2-7 tahun</td>\r\n<td>Harus menggunakan ekstra bed</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>coffee shop, concierge, fasilitas rapat,layanan kamar, layanan kamar 24 jam, layanan laundry, restoran, ruang keluarga, ruang merokok, wi-fi di tempat-tempat umum, Wi-Fi gratis di semua kamar</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>klub anak, kolam (anak), lapangan tenis, taman</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(3, 'NGW01', 'Campago Resort Hotel (Suite Keluarga Domestik) 1H', 3, 895000, '<p style="text-align: justify;">Dirancang untuk wisata plesir dan bisnis, Campago Resort Hotel terletak strategis di Ngawi; salah satu daerah lokal terkenal. Hotel ini tidak terlalu jauh dari pusat kota, hanya dari sini dan umumnya hanya membutuhkan waktu 90 menit untuk mencapai bandara. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style="text-align: justify;">Fasilitas dan pelayanan yang ditawarkan Campago Resort Hotel menjaminkan penginapan menyenangkan bagi para tamu. Ketika menginap di properti yang luar biasa ini, para tamu dapat menikmati wi-fi di tempat-tempat umum, ruang merokok , concierge, layanan laundry, tur.</p>\r\n<p style="text-align: justify;">Campago Resort Hotel memiliki 22 kamar tidur yang semuanya dirancang dengan citarasa tinggi untuk menyediakan kenyamanan seperti televisi, meja tulis, internet (wireless), AC, kulkas. Hotel ini menyediakan sejumlah fasilitas rekreasi seperti kolam (anak), taman, lapangan tenis, klub anak. Fasilitas super dan lokasi yang cemerlang menjadikan Campago Resort Hotel tempat yang sempurna untuk menikmati penginapan Anda selama di Ngawi.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Minimum umur tamu adalah: 1 tahun</li>\r\n<li>Tamu berumur diatas 7 tahun dianggap sebagai tamu dewasa</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Bayi dibawah 1 tahun</td>\r\n<td>Tidak diizinkan untuk menginap</td>\r\n</tr>\r\n<tr>\r\n<td>Bayi 1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 2-7 tahun</td>\r\n<td>Harus menggunakan ekstra bed</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>coffee shop, concierge, fasilitas rapat,layanan kamar, layanan kamar 24 jam, layanan laundry, restoran, ruang keluarga, ruang merokok, wi-fi di tempat-tempat umum, Wi-Fi gratis di semua kamar</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>klub anak, kolam (anak), lapangan tenis, taman</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(4, 'NGW01', 'Campago Resort Hotel (Suite Keluarga) 1H', 3, 975000, '<p style="text-align: justify;">Dirancang untuk wisata plesir dan bisnis, Campago Resort Hotel terletak strategis di Ngawi; salah satu daerah lokal terkenal. Hotel ini tidak terlalu jauh dari pusat kota, hanya dari sini dan umumnya hanya membutuhkan waktu 90 menit untuk mencapai bandara. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style="text-align: justify;">Fasilitas dan pelayanan yang ditawarkan Campago Resort Hotel menjaminkan penginapan menyenangkan bagi para tamu. Ketika menginap di properti yang luar biasa ini, para tamu dapat menikmati wi-fi di tempat-tempat umum, ruang merokok , concierge, layanan laundry, tur.</p>\r\n<p style="text-align: justify;">Campago Resort Hotel memiliki 22 kamar tidur yang semuanya dirancang dengan citarasa tinggi untuk menyediakan kenyamanan seperti televisi, meja tulis, internet (wireless), AC, kulkas. Hotel ini menyediakan sejumlah fasilitas rekreasi seperti kolam (anak), taman, lapangan tenis, klub anak. Fasilitas super dan lokasi yang cemerlang menjadikan Campago Resort Hotel tempat yang sempurna untuk menikmati penginapan Anda selama di Ngawi.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Minimum umur tamu adalah: 1 tahun</li>\r\n<li>Tamu berumur diatas 7 tahun dianggap sebagai tamu dewasa</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Bayi dibawah 1 tahun</td>\r\n<td>Tidak diizinkan untuk menginap</td>\r\n</tr>\r\n<tr>\r\n<td>Bayi 1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 2-7 tahun</td>\r\n<td>Harus menggunakan ekstra bed</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>coffee shop, concierge, fasilitas rapat,layanan kamar, layanan kamar 24 jam, layanan laundry, restoran, ruang keluarga, ruang merokok, wi-fi di tempat-tempat umum, Wi-Fi gratis di semua kamar</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>klub anak, kolam (anak), lapangan tenis, taman</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(5, 'NGW01', 'Hotel Benteng (Superior) 1H', 1, 290000, '<p style="text-align: justify;">Jika apa yang Anda cari adalah hotel yang terletak strategis di Bukittinggi, carilah Hotel Benteng. Hanya 30. Km dari sini, hotel bintang 1 ini dapat secara mudah diakses dari bandara. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style="text-align: justify;">Hotel Benteng juga menawari banyak fasilitas untuk memperkaya penginapan Anda di Ngawi. Ketika menginap di properti yang luar biasa ini, para tamu dapat menikmati tur, wi-fi di tempat-tempat umum, layanan antar jemput, kotak penyimpanan aman, transfer bandara/hotel.</p>\r\n<p style="text-align: justify;">Para tamu dapat memilih dari 37 kamar yang semuanya dilengkapi dengan atmosfir damai dan harmonis. Lagipula, beberapa persembahan rekreasi dari hotel ini akan menjamin Anda jauh dari kebosanan selama penginapan Anda. Apapun rencana kunjungan Anda, Hotel Benteng adalah pilihan bagus untuk penginapan di Ngawi.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Tamu berumur diatas 10 tahun dianggap sebagai tamu dewasa.</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Bayi 0-1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 2-10 tahun</td>\r\n<td>Harus menggunakan ekstra bed</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>bar, fasilitas rapat, kotak penyimpanan aman, layanan antar jemput, layanan kamar, layanan kamar 24 jam, layanan laundry, restoran, sewa sepeda, transfer bandara/hotel, wi-fi di tempat-tempat umum, Wi-Fi gratis di semua kamar</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(6, 'NGW01', 'Hotel Mitra Arena (Standar) 1H', 1, 185000, '<p style="text-align: justify;">Ketika mengunjungi Ngawi, Anda akan merasa berada di rumah di Hotel Mitra Arena, dimana menawarkan akomodasi yang berkualitas dengan layanan luar biasa. Dari sini, para tamu dapat menikmati akses mudah ke semua hal yang dapat ditemukan di sebuah kota yang hidup. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style="text-align: justify;">Di Hotel Mitra Arena, setiap usaha dilakukan untuk membuat tamu merasa nyaman. Dan untuk hal ini, hotel menyediakan yang terbaik untuk pelayanan dan perlengkapannya. Hotel ini menawarkan sejumlah fasilitas di tempat untuk memuaskan segala jenis tamu.</p>\r\n<p style="text-align: justify;">Sebagai tambahan, semua kamar tamu memiliki sejumlah kenyamanan seperti AC, kulkas, shower, televisi, ruangan bebas rokok untuk menyenangi semakin banyak tamu. Baik Anda adalah orang yang senang fitness atau hanya ingin bersantai setelah beraktivitas sepanjang hari, Anda akan dihibur dengan fasilitas rekreasi kelas atas seperti taman. Ketika Anda mencari penginapan yang nyaman di Ngawi, jadikanlah Hotel Mitra Arena rumah Anda ketika Anda berlibur.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Tamu berumur diatas 12 tahun dianggap sebagai tamu dewasa.</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Bayi 0-2 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 3-12 tahun</td>\r\n<td>Menginap gratis jika menggunakan ranjang yang tersedia.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>restoran, ruang merokok</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>taman</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(7, 'NGW01', 'Hotel Mitra Arena (Superior) 1H', 1, 230000, '<p style="text-align: justify;">Ketika mengunjungi Ngawi, Anda akan merasa berada di rumah di Hotel Mitra Arena, dimana menawarkan akomodasi yang berkualitas dengan layanan luar biasa. Dari sini, para tamu dapat menikmati akses mudah ke semua hal yang dapat ditemukan di sebuah kota yang hidup. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style="text-align: justify;">Di Hotel Mitra Arena, setiap usaha dilakukan untuk membuat tamu merasa nyaman. Dan untuk hal ini, hotel menyediakan yang terbaik untuk pelayanan dan perlengkapannya. Hotel ini menawarkan sejumlah fasilitas di tempat untuk memuaskan segala jenis tamu.</p>\r\n<p style="text-align: justify;">Sebagai tambahan, semua kamar tamu memiliki sejumlah kenyamanan seperti AC, kulkas, shower, televisi, ruangan bebas rokok untuk menyenangi semakin banyak tamu. Baik Anda adalah orang yang senang fitness atau hanya ingin bersantai setelah beraktivitas sepanjang hari, Anda akan dihibur dengan fasilitas rekreasi kelas atas seperti taman. Ketika Anda mencari penginapan yang nyaman di Ngawi, jadikanlah Hotel Mitra Arena rumah Anda ketika Anda berlibur.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Tamu berumur diatas 12 tahun dianggap sebagai tamu dewasa.</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Bayi 0-2 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 3-12 tahun</td>\r\n<td>Menginap gratis jika menggunakan ranjang yang tersedia.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>restoran, ruang merokok</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>taman</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(8, 'NGW01', 'Royal Denai View Hotel (Superior) 1H', 2, 365000, '<p style="text-align: justify;">Menawarkan akomodasi berkualitas di kebudayaan, berbelanja, melihat-lihat distrik Ngawi, Royal Denai View Hotel adalah pilihan populer bagi para wisatawan plesir dan bisnis. Dari sini, para tamu dapat menikmati akses mudah ke semua hal yang dapat ditemukan di sebuah kota yang hidup. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style="text-align: justify;">Dengan menawarkan pelayanan superior dan sejumlah fasilitas kepada para tamu hotel, Royal Denai View Hotel berkomitmen untuk menjaga kenyamanan penginapan Anda semaksimal mungkin. Kotak penyimpanan aman, tempat parkir mobil, wi-fi di tempat-tempat umum, layanan laundry, pusat bisnis hanyalah beberapa fasilitas yang membedakan Royal Denai View Hotel dari hotel-hotel lain di kota ini.</p>\r\n<p style="text-align: justify;">Suasana Royal Denai View Hotel tercerminkan dari setiap kamar tamu. televisi, mini bar, televisi LCD/layar plasma, AC, ruangan bebas rokok hanyalah beberapa fasilitas yang dapat Anda gunakan. Sepanjang hari Anda dapat menikmati atmosfir santai dari taman. Nikmati pelayanan cemerlang dan alamat yang benar-benar mewah di Royal Denai View Hotel.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Tamu berumur diatas 10 tahun dianggap sebagai tamu dewasa.</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n<li>Untuk para pasangan, mohon dicatat bahwa sangatlah wajib untuk menunjukkan surat nikah (buku nikah) pada saat check-in.</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Bayi 0-1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 3-10 tahun</td>\r\n<td>Menginap gratis jika menggunakan ranjang yang tersedia.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>coffee shop, fasilitas rapat, kotak penyimpanan aman, layanan kamar, layanan kamar 24 jam, layanan laundry, pusat bisnis, restoran, wi-fi di tempat-tempat umum, Wi-Fi gratis di semua kamar</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>taman</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(9, 'NGW01', 'Royal Denai View Hotel (Delux) 1H', 2, 520000, '<p style="text-align: justify;">Menawarkan akomodasi berkualitas di kebudayaan, berbelanja, melihat-lihat distrik Ngawi, Royal Denai View Hotel adalah pilihan populer bagi para wisatawan plesir dan bisnis. Dari sini, para tamu dapat menikmati akses mudah ke semua hal yang dapat ditemukan di sebuah kota yang hidup. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style="text-align: justify;">Dengan menawarkan pelayanan superior dan sejumlah fasilitas kepada para tamu hotel, Royal Denai View Hotel berkomitmen untuk menjaga kenyamanan penginapan Anda semaksimal mungkin. Kotak penyimpanan aman, tempat parkir mobil, wi-fi di tempat-tempat umum, layanan laundry, pusat bisnis hanyalah beberapa fasilitas yang membedakan Royal Denai View Hotel dari hotel-hotel lain di kota ini.</p>\r\n<p style="text-align: justify;">Suasana Royal Denai View Hotel tercerminkan dari setiap kamar tamu. televisi, mini bar, televisi LCD/layar plasma, AC, ruangan bebas rokok hanyalah beberapa fasilitas yang dapat Anda gunakan. Sepanjang hari Anda dapat menikmati atmosfir santai dari taman. Nikmati pelayanan cemerlang dan alamat yang benar-benar mewah di Royal Denai View Hotel.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Tamu berumur diatas 10 tahun dianggap sebagai tamu dewasa.</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n<li>Untuk para pasangan, mohon dicatat bahwa sangatlah wajib untuk menunjukkan surat nikah (buku nikah) pada saat check-in.</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Bayi 0-1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 3-10 tahun</td>\r\n<td>Menginap gratis jika menggunakan ranjang yang tersedia.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>coffee shop, fasilitas rapat, kotak penyimpanan aman, layanan kamar, layanan kamar 24 jam, layanan laundry, pusat bisnis, restoran, wi-fi di tempat-tempat umum, Wi-Fi gratis di semua kamar</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>taman</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(10, 'NGW01', 'Pusako Hotel (Standar) 1H', 4, 498000, '<p style="text-align: justify;">Terletak secara nyaman di melihat-lihat, berbelanja, kebudayaan area kota Ngawi, Pusako Hotel menyediakan tempat yang kondusif untuk liburan Anda selama beberapa hari. Hanya 75 km dari sini, hotel bintang 4 ini dapat secara mudah diakses dari bandara. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style="text-align: justify;">Gunakan kesempatan untuk menikmati pelayanan dan fasilitas yang tak tertandingkan di hotel Bukittinggi ini. Ketika menginap di properti yang luar biasa ini, para tamu dapat menikmati coffee shop, toko, restoran, layanan kamar, wi-fi di tempat-tempat umum.</p>\r\n<p style="text-align: justify;">Pusako Hotel memiliki 140 kamar tidur yang semuanya dirancang dengan citarasa tinggi untuk menyediakan kenyamanan seperti mini bar, kulkas, internet (wireless), pembuat kopi/teh, shower. Hotel ini menawarkan fasilitas rekreasi yang menyenangkan seperti gym/fasilitas kebugaran, kolam renang (luar ruangan), lapangan tenis untuk menjadikan penginapan Anda tak terlupakan. Dengan lokasi ideal dan fasilitas yang setara, Pusako Hotel dapat memenuhinya semua.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Tamu berumur diatas 7 tahun dianggap sebagai tamu dewasa.</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Bayi 0-1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 2-7 tahun</td>\r\n<td>Menginap gratis jika menggunakan ranjang yang tersedia.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>bar, coffee shop, fasilitas rapat, kotak penyimpanan aman, layanan kamar, layanan kamar 24 jam, layanan laundry, pusat bisnis, toko, restoran, wi-fi di tempat-tempat umum, Wi-Fi gratis di semua kamar</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>gym/fasilitas kebugaran, kolam renang (luar ruangan), lapangan tenis</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(11, 'NGW01', 'Pusako Hotel (Delux) 1H', 4, 548000, '<p style="text-align: justify;">Terletak secara nyaman di melihat-lihat, berbelanja, kebudayaan area kota Ngawi, Pusako Hotel menyediakan tempat yang kondusif untuk liburan Anda selama beberapa hari. Hanya 75 km dari sini, hotel bintang 4 ini dapat secara mudah diakses dari bandara. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style="text-align: justify;">Gunakan kesempatan untuk menikmati pelayanan dan fasilitas yang tak tertandingkan di hotel Bukittinggi ini. Ketika menginap di properti yang luar biasa ini, para tamu dapat menikmati coffee shop, toko, restoran, layanan kamar, wi-fi di tempat-tempat umum.</p>\r\n<p style="text-align: justify;">Pusako Hotel memiliki 140 kamar tidur yang semuanya dirancang dengan citarasa tinggi untuk menyediakan kenyamanan seperti mini bar, kulkas, internet (wireless), pembuat kopi/teh, shower. Hotel ini menawarkan fasilitas rekreasi yang menyenangkan seperti gym/fasilitas kebugaran, kolam renang (luar ruangan), lapangan tenis untuk menjadikan penginapan Anda tak terlupakan. Dengan lokasi ideal dan fasilitas yang setara, Pusako Hotel dapat memenuhinya semua.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Tamu berumur diatas 7 tahun dianggap sebagai tamu dewasa.</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Bayi 0-1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 2-7 tahun</td>\r\n<td>Menginap gratis jika menggunakan ranjang yang tersedia.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>bar, coffee shop, fasilitas rapat, kotak penyimpanan aman, layanan kamar, layanan kamar 24 jam, layanan laundry, pusat bisnis, toko, restoran, wi-fi di tempat-tempat umum, Wi-Fi gratis di semua kamar</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>gym/fasilitas kebugaran, kolam renang (luar ruangan), lapangan tenis</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(12, 'SUB01', 'Hotel Pagaruyung Dua (Standar Domestik) 1H', 1, 395000, '<p style="text-align: justify;">Dirancang untuk wisata plesir dan bisnis, Hotel Pagaruyung Dua terletak strategis di Surabaya; salah satu daerah lokal terkenal. Dari sini, para tamu dapat menikmati akses mudah ke semua hal yang dapat ditemukan di sebuah kota yang hidup. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style="text-align: justify;">Hotel Pagaruyung Dua juga menawari banyak fasilitas untuk memperkaya penginapan Anda di Surabaya. Hotel ini menawarkan sejumlah fasilitas di tempat untuk memuaskan segala jenis tamu.</p>\r\n<p style="text-align: justify;">Masuki salah satu dari 40 kamar yang mengundang ini dan lepaskan tekanan dan kelelahan sepanjang hari dengan sejumlah fasilitas yang tersedia seperti AC, ruang duduk. Fasilitas rekreasi hotel ini seperti gym/fasilitas kebugaran, taman dirancang untuk berelaksasi. Hotel Pagaruyung Dua adalah destinasi paling tepat Anda untuk akomodasi hotel berkualitas di Surabaya.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Anak-anak 0-12 tahun</td>\r\n<td>Menginap gratis jika menggunakan ranjang yang tersedia.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>fasilitas rapat, layanan laundry, restoran, wi-fi di tempat-tempat umum</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>gym/fasilitas kebugaran, taman</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(13, 'SUB01', 'Hotel Pagaruyung Dua (Standar) 1H', 1, 415000, '<p style="text-align: justify;">Dirancang untuk wisata plesir dan bisnis, Hotel Pagaruyung Dua terletak strategis di Surabaya; salah satu daerah lokal terkenal. Dari sini, para tamu dapat menikmati akses mudah ke semua hal yang dapat ditemukan di sebuah kota yang hidup. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style="text-align: justify;">Hotel Pagaruyung Dua juga menawari banyak fasilitas untuk memperkaya penginapan Anda di Surabaya. Hotel ini menawarkan sejumlah fasilitas di tempat untuk memuaskan segala jenis tamu.</p>\r\n<p style="text-align: justify;">Masuki salah satu dari 40 kamar yang mengundang ini dan lepaskan tekanan dan kelelahan sepanjang hari dengan sejumlah fasilitas yang tersedia seperti AC, ruang duduk. Fasilitas rekreasi hotel ini seperti gym/fasilitas kebugaran, taman dirancang untuk berelaksasi. Hotel Pagaruyung Dua adalah destinasi paling tepat Anda untuk akomodasi hotel berkualitas di Surabaya.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Anak-anak 0-12 tahun</td>\r\n<td>Menginap gratis jika menggunakan ranjang yang tersedia.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>fasilitas rapat, layanan laundry, restoran, wi-fi di tempat-tempat umum</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>gym/fasilitas kebugaran, taman</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(14, 'MLG01', 'Mercure Padang Hotel (Superior) 1H', 4, 620000, '<p style="text-align: justify;">Terletak strategis di Malang, Mercure Malang Hotel adalah tempat yang cocok untuk menelusuri kota yang hidup ini. Dari sini, para tamu dapat menikmati akses mudah ke semua hal yang dapat ditemukan di sebuah kota yang hidup. Yang tidak ketinggalan adalah akses mudah dari hotel ini ke sejumlah atraksi dan markah tanah kota ini seperti Stadion Haji Agus Salim, Museum Adityawarman, Jalan Kuliner Simpang Kinol.</p>\r\n<p style="text-align: justify;">Accor Hotels terkenal untuk pelayanan berkualitas dan staf yang ramah, dan Mercure Malang Hotel memenuhi ekspektasi tersebut. Hotel ini menawarkan sejumlah fasilitas di tempat untuk memuaskan segala jenis tamu.</p>\r\n<p style="text-align: justify;">Sebagai tambahan, semua kamar tamu memiliki sejumlah kenyamanan seperti AC, TV satelit/kabel, ruang duduk, meja tulis, ruangan bebas rokok untuk menyenangi semakin banyak tamu. Hotel ini menawarkan fasilitas rekreasi fantastis termasuk gym/fasilitas kebugaran, pijat, lapangan tenis, taman, lapangan golf (dalam 3 km) , untuk membantu Anda berelaksasi setelah sepanjang hari beraktivitas di kota. Mercure Malang Hotel adalah tempat penginapan ideal bagi para pelancong yang mencari daya tarik, kenyamanan dan kepraktisan di Malang.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Tamu berumur diatas 15 tahun dianggap sebagai tamu dewasa.</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Bayi 0-1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi.</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 2-15 tahun</td>\r\n<td>Menginap gratis jika menggunakan ranjang yang tersedia.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>bar, bar tepi-kolam, concierge,fasilitas bagi tamu dengan kebutuhan khusus, fasilitas rapat, layanan antar jemput, layanan kamar, layanan kamar 24 jam, layanan laundry, lift, penitipan bayi, restoran, ruang merokok, toko, transfer bandara/hotel, wi-fi di tempat-tempat umum</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>gym/fasilitas kebugaran, klub anak, kolam renang (luar ruangan), lapangan golf (dalam 3 km), lapangan tenis, pijat, sauna, spa, taman</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(15, 'MLG01', 'Daima Hotel Padang (Superior Domestik) 1H', 3, 395000, '<p style="text-align: justify;">Dirancang untuk wisata plesir dan bisnis, Daima Hotel Malang terletak strategis di Malang Barat; salah satu daerah lokal terkenal. Hanya 20.00 Km dari sini, hotel bintang 3 ini dapat secara mudah diakses dari bandara. Lingkungan yang dijaga serta kedekatan ke Museum Adityawarman, Stadion Haji Agus Salim, Jalan Kuliner Simpang Kinol sangat memberikan nilai tambah untuk hotel ini.</p>\r\n<p style="text-align: justify;">Fasilitas dan pelayanan yang ditawarkan Daima Hotel Malang menjaminkan penginapan menyenangkan bagi para tamu. Sejumlah pilihan fasilitas kelas atas seperti pusat bisnis, ruang merokok , concierge, layanan laundry, ruang keluarga dapat dinikmati di hotel ini.</p>\r\n<p style="text-align: justify;">Hotel ini memiliki 93 kamar tamu yang indah, masing-masing termasuk televisi LCD/layar plasma, internet (gratis), kulkas, koran harian, AC. Hotel ini menawarkan fasilitas rekreasi yang menyenangkan seperti pijat untuk menjadikan penginapan Anda tak terlupakan. Apapun rencana kunjungan Anda, Daima Hotel Malang adalah pilihan bagus untuk penginapan di Malang.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Anak-anak 0-6 tahun</td>\r\n<td>Menginap gratis jika menggunakan ranjang yang tersedia.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>coffee shop, concierge, fasilitas rapat, kotak penyimpanan aman, lantai eksekutif, layanan kamar, layanan kamar 24 jam, layanan laundry, lift, pusat bisnis, restoran, ruang keluarga, ruang merokok, transfer bandara/hotel, wi-fi di tempat-tempat umum</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>pijat</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(16, 'MLG01', 'Daima Hotel Padang (Superior) 1H', 3, 415000, '<p style="text-align: justify;">Dirancang untuk wisata plesir dan bisnis, Daima Hotel Malang terletak strategis di Malang Barat; salah satu daerah lokal terkenal. Hanya 20.00 Km dari sini, hotel bintang 3 ini dapat secara mudah diakses dari bandara. Lingkungan yang dijaga serta kedekatan ke Museum Adityawarman, Stadion Haji Agus Salim, Jalan Kuliner Simpang Kinol sangat memberikan nilai tambah untuk hotel ini.</p>\r\n<p style="text-align: justify;">Fasilitas dan pelayanan yang ditawarkan Daima Hotel Malang menjaminkan penginapan menyenangkan bagi para tamu. Sejumlah pilihan fasilitas kelas atas seperti pusat bisnis, ruang merokok , concierge, layanan laundry, ruang keluarga dapat dinikmati di hotel ini.</p>\r\n<p style="text-align: justify;">Hotel ini memiliki 93 kamar tamu yang indah, masing-masing termasuk televisi LCD/layar plasma, internet (gratis), kulkas, koran harian, AC. Hotel ini menawarkan fasilitas rekreasi yang menyenangkan seperti pijat untuk menjadikan penginapan Anda tak terlupakan. Apapun rencana kunjungan Anda, Daima Hotel Malang adalah pilihan bagus untuk penginapan di Malang.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Anak-anak 0-6 tahun</td>\r\n<td>Menginap gratis jika menggunakan ranjang yang tersedia.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>coffee shop, concierge, fasilitas rapat, kotak penyimpanan aman, lantai eksekutif, layanan kamar, layanan kamar 24 jam, layanan laundry, lift, pusat bisnis, restoran, ruang keluarga, ruang merokok, transfer bandara/hotel, wi-fi di tempat-tempat umum</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>pijat</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(17, 'MLG01', 'Daima Hotel Padang (Delux Domestik) 1H', 3, 432000, '<p style="text-align: justify;">Dirancang untuk wisata plesir dan bisnis, Daima Hotel Malang terletak strategis di Malang Barat; salah satu daerah lokal terkenal. Hanya 20.00 Km dari sini, hotel bintang 3 ini dapat secara mudah diakses dari bandara. Lingkungan yang dijaga serta kedekatan ke Museum Adityawarman, Stadion Haji Agus Salim, Jalan Kuliner Simpang Kinol sangat memberikan nilai tambah untuk hotel ini.</p>\r\n<p style="text-align: justify;">Fasilitas dan pelayanan yang ditawarkan Daima Hotel Malang menjaminkan penginapan menyenangkan bagi para tamu. Sejumlah pilihan fasilitas kelas atas seperti pusat bisnis, ruang merokok , concierge, layanan laundry, ruang keluarga dapat dinikmati di hotel ini.</p>\r\n<p style="text-align: justify;">Hotel ini memiliki 93 kamar tamu yang indah, masing-masing termasuk televisi LCD/layar plasma, internet (gratis), kulkas, koran harian, AC. Hotel ini menawarkan fasilitas rekreasi yang menyenangkan seperti pijat untuk menjadikan penginapan Anda tak terlupakan. Apapun rencana kunjungan Anda, Daima Hotel Malang adalah pilihan bagus untuk penginapan di Malang.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Anak-anak 0-6 tahun</td>\r\n<td>Menginap gratis jika menggunakan ranjang yang tersedia.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>coffee shop, concierge, fasilitas rapat, kotak penyimpanan aman, lantai eksekutif, layanan kamar, layanan kamar 24 jam, layanan laundry, lift, pusat bisnis, restoran, ruang keluarga, ruang merokok, transfer bandara/hotel, wi-fi di tempat-tempat umum</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>pijat</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(18, 'MLG01', 'Daima Hotel Padang (Delux) 1H', 3, 455000, '<p style="text-align: justify;">Dirancang untuk wisata plesir dan bisnis, Daima Hotel Malang terletak strategis di Malang Barat; salah satu daerah lokal terkenal. Hanya 20.00 Km dari sini, hotel bintang 3 ini dapat secara mudah diakses dari bandara. Lingkungan yang dijaga serta kedekatan ke Museum Adityawarman, Stadion Haji Agus Salim, Jalan Kuliner Simpang Kinol sangat memberikan nilai tambah untuk hotel ini.</p>\r\n<p style="text-align: justify;">Fasilitas dan pelayanan yang ditawarkan Daima Hotel Malang menjaminkan penginapan menyenangkan bagi para tamu. Sejumlah pilihan fasilitas kelas atas seperti pusat bisnis, ruang merokok , concierge, layanan laundry, ruang keluarga dapat dinikmati di hotel ini.</p>\r\n<p style="text-align: justify;">Hotel ini memiliki 93 kamar tamu yang indah, masing-masing termasuk televisi LCD/layar plasma, internet (gratis), kulkas, koran harian, AC. Hotel ini menawarkan fasilitas rekreasi yang menyenangkan seperti pijat untuk menjadikan penginapan Anda tak terlupakan. Apapun rencana kunjungan Anda, Daima Hotel Malang adalah pilihan bagus untuk penginapan di Malang.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Anak-anak 0-6 tahun</td>\r\n<td>Menginap gratis jika menggunakan ranjang yang tersedia.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>coffee shop, concierge, fasilitas rapat, kotak penyimpanan aman, lantai eksekutif, layanan kamar, layanan kamar 24 jam, layanan laundry, lift, pusat bisnis, restoran, ruang keluarga, ruang merokok, transfer bandara/hotel, wi-fi di tempat-tempat umum</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>pijat</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(19, 'MLG01', 'Grand Zuri Padang Hotel (Superior) 1H', 4, 476000, '<p style="text-align: justify;">Terletak strategis di Malang, Grand Zuri Malang Hotel adalah tempat yang cocok untuk menelusuri kota yang hidup ini. Dari sini, para tamu dapat menikmati akses mudah ke semua hal yang dapat ditemukan di sebuah kota yang hidup. Lingkungan yang dijaga serta kedekatan ke Jalan Kuliner Simpang Kinol, Museum Adityawarman, Jembatan Siti Nurbaya sangat memberikan nilai tambah untuk hotel ini.</p>\r\n<p style="text-align: justify;">Di Grand Zuri Malang Hotel, pelayanan cemerlang dan fasilitas yang bagus akan membuat penginapan Anda tak terlupakan. Untuk kenyamanan para tamu, hotel ini menawarkan transfer bandara/hotel, concierge, kotak penyimpanan aman, wi-fi di tempat-tempat umum, layanan kamar 24 jam.</p>\r\n<p style="text-align: justify;">Sebagai tambahan, semua kamar tamu memiliki sejumlah kenyamanan seperti kulkas, meja tulis, air botol gratis, televisi, AC untuk menyenangi semakin banyak tamu. Pijat, taman, sauna hotel ini adalah tempat-tempat ideal untuk bersantai setelah hari yang sibuk. Dengan lokasi ideal dan fasilitas yang setara, Grand Zuri Malang Hotel dapat memenuhinya semua.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Tamu berumur diatas 3 tahun dianggap sebagai tamu dewasa.</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Bayi 0-1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi.</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 2-3 tahun</td>\r\n<td>Harus menggunakan ekstra bed.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>bar, coffee shop, concierge, fasilitas rapat, kotak penyimpanan aman, layanan kamar, layanan kamar 24 jam, layanan laundry, lift, restoran, ruang merokok, transfer bandara/hotel, wi-fi di tempat-tempat umum</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>pijat, sauna, taman</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(20, 'MLG01', 'Grand Zuri Padang Hotel (Delux) 1H', 4, 587000, '<p style="text-align: justify;">Terletak strategis di Malang, Grand Zuri Malang Hotel adalah tempat yang cocok untuk menelusuri kota yang hidup ini. Dari sini, para tamu dapat menikmati akses mudah ke semua hal yang dapat ditemukan di sebuah kota yang hidup. Lingkungan yang dijaga serta kedekatan ke Jalan Kuliner Simpang Kinol, Museum Adityawarman, Jembatan Siti Nurbaya sangat memberikan nilai tambah untuk hotel ini.</p>\r\n<p style="text-align: justify;">Di Grand Zuri Malang Hotel, pelayanan cemerlang dan fasilitas yang bagus akan membuat penginapan Anda tak terlupakan. Untuk kenyamanan para tamu, hotel ini menawarkan transfer bandara/hotel, concierge, kotak penyimpanan aman, wi-fi di tempat-tempat umum, layanan kamar 24 jam.</p>\r\n<p style="text-align: justify;">Sebagai tambahan, semua kamar tamu memiliki sejumlah kenyamanan seperti kulkas, meja tulis, air botol gratis, televisi, AC untuk menyenangi semakin banyak tamu. Pijat, taman, sauna hotel ini adalah tempat-tempat ideal untuk bersantai setelah hari yang sibuk. Dengan lokasi ideal dan fasilitas yang setara, Grand Zuri Malang Hotel dapat memenuhinya semua.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Tamu berumur diatas 3 tahun dianggap sebagai tamu dewasa.</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Bayi 0-1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi.</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 2-3 tahun</td>\r\n<td>Harus menggunakan ekstra bed.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>bar, coffee shop, concierge, fasilitas rapat, kotak penyimpanan aman, layanan kamar, layanan kamar 24 jam, layanan laundry, lift, restoran, ruang merokok, transfer bandara/hotel, wi-fi di tempat-tempat umum</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>pijat, sauna, taman</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(21, 'MLG01', 'Savali Hotel (Superior) 1H', 3, 501000, '	<p style="text-align: justify;">Dibangun pada 2010, Savali Hotel adalah pelengkap yang berbeda di Malang dan pilihan yang cerdas bagi wisatawan. Dari sini, para tamu dapat menikmati akses mudah ke semua hal yang dapat ditemukan di sebuah kota yang hidup. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style="text-align: justify;">Dengan menawarkan pelayanan superior dan sejumlah fasilitas kepada para tamu hotel, Savali Hotel berkomitmen untuk menjaga kenyamanan penginapan Anda semaksimal mungkin. Fasilitas top hotel ini termasuk toko, sewa sepeda, layanan laundry, coffee shop, fasilitas rapat.</p>\r\n<p style="text-align: justify;">Semua akomodasi tamu dilengkapi dengan fasilitas yang telah dirancang dengan baik demi menjaga kenyamanan. Baik Anda adalah orang yang senang fitness atau hanya ingin bersantai setelah beraktivitas sepanjang hari, Anda akan dihibur dengan fasilitas rekreasi kelas atas seperti kolam renang (luar ruangan), taman, pijat. Savali Hotel adalah pilihan yang cerdas bagi para pelancong ke Malang, dengan menawarkan penginapan yang santai setiap saat.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Tamu berumur diatas 3 tahun dianggap sebagai tamu dewasa.</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n</ul>\r\n<table style="margin-left: auto; margin-right: auto;">\r\n<tbody>\r\n<tr>\r\n<td>Bayi 0-1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi.</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 2-3 tahun</td>\r\n<td>Harus menggunakan ekstra bed.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>bar, coffee shop, concierge, fasilitas rapat, kotak penyimpanan aman, layanan kamar, layanan kamar 24 jam, layanan laundry, lift, restoran, ruang merokok, transfer bandara/hotel, wi-fi di tempat-tempat umum</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>pijat, sauna, taman</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil, parkir valet</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(22, 'NGW01', 'Tidak Menginap', 1, 0, '<p>Untuk paket One-Way</p>'),
(23, 'NGW01', 'Tidak Menginap', 1, 0, '<p>Untuk paket One-Way</p>'),
(24, 'BYW01', 'Tidak Menginap', 1, 0, '<p>Untuk paket One-Way</p>'),
(25, 'SUB01', 'Tidak Menginap', 1, 0, '<p>Untuk paket One-Way</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE IF NOT EXISTS `tbl_kategori` (
`id_kategori` int(11) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `kategori`, `keterangan`) VALUES
(1, 'Paket Perorangan', 'Paket Travel ini dikususkan untuk wisatawan yang ingin berlibur sendiri saja. Namun nanti dalam Tour, Touris akan diserentakkan keberangkatannya dalam satu mobil. Dalam satu mobil tersebut maksimal hanya 4 Touris, disertakan dengan Driver dan Pemandu wisata. '),
(2, 'Paket Grup/Kelompok', 'kedua kalinya'),
(3, 'Paket Keluarga', 'ketiga kalinya'),
(4, 'Paket Couple', 'Paket untuk pasanngan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paket`
--

CREATE TABLE IF NOT EXISTS `tbl_paket` (
`id_paket` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_paket` varchar(50) NOT NULL,
  `harga_paket` int(11) NOT NULL,
  `ket_paket` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_paket`
--

INSERT INTO `tbl_paket` (`id_paket`, `id_kategori`, `nama_paket`, `harga_paket`, `ket_paket`) VALUES
(1, 1, 'East Java One-Way', 150000, 'Paket ini untuk tour perorangan. Dalam tour akan diserentakkan dengan turis lain yang juga memilih paket yang sama. Banyak orang yang di serentakkan berkisar 3-5 orang.'),
(2, 1, 'East Java 2 Day', 250000, 'Paket ini untuk tour perorangan. Dalam tour akan diserentakkan dengan turis lain yang juga memilih paket yang sama. Banyak orang yang di serentakkan berkisar 3-5 orang.'),
(3, 1, 'East Java 3 Day', 400000, 'Paket ini untuk tour perorangan. Dalam tour akan diserentakkan dengan turis lain yang juga memilih paket yang sama. Banyak orang yang di serentakkan berkisar 3-5 orang.'),
(4, 4, 'Promo Bromo 2 Day Couple', 350000, 'Paket Promo ini untuk tour di Bromo selama 2 hari. Untuk penginapan kami rekomendasikan di sekitar area Bromo sendiri.'),
(5, 4, 'East Java One-Way Couple', 225000, 'Paket ini untuk tour pasangan. Paket ini hanya untuk satu kali perjalanan saja atau diperuntukkan bagi yang ingin wisata tetapi tidak menginap.'),
(6, 4, 'East Java 2 Day Couple', 325000, 'Paket ini untuk tour pasangan. Paket ini berlaku untuk wisatawan yang ingin menginap di daerah wisata selama 2 hari.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesan`
--

CREATE TABLE IF NOT EXISTS `tbl_pesan` (
`id_pesan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `tgl_pesan` date NOT NULL,
  `tgl_tour` date NOT NULL,
  `status` char(2) NOT NULL DEFAULT 'S1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pesan`
--

INSERT INTO `tbl_pesan` (`id_pesan`, `id_user`, `id_paket`, `id_hotel`, `tgl_pesan`, `tgl_tour`, `status`) VALUES
(1, 11, 1, 1, '2017-07-07', '2017-07-24', 'S1'),
(2, 13, 6, 4, '2017-07-13', '2017-07-25', 'S1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
`id_user` int(11) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `tipe_id` varchar(20) NOT NULL,
  `no_id` varchar(30) NOT NULL,
  `no_hp` varchar(14) NOT NULL,
  `no_rek` varchar(50) NOT NULL,
  `nama_rek` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(12) NOT NULL,
  `tgl_lahir` varchar(30) NOT NULL,
  `jekel` varchar(1) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `email_user`, `tipe_id`, `no_id`, `no_hp`, `no_rek`, `nama_rek`, `username`, `password`, `tgl_lahir`, `jekel`, `alamat`) VALUES
(3, 'Anas', 'anas@gmail.com', '', '', '', '', '', 'anas', 'anas', '', 'P', ''),
(8, 'ANASTASIA DEWANTI PRATAMA PUTR', 'anastasiadpp@gmail.com', 'KTP', '', '', '', '', 'anastasiadpp', 'adpp', '', 'P', ''),
(9, 'Akbar Maulana Yuwandika Putra', 'akbarmyp@gmail.com', '', '', '', '', '', 'akbar', 'akbar', '', 'L', ''),
(10, 'Administrator', 'admin@gmail.com', '', '', '', '', '', 'admin', 'admin', '', 'L', ''),
(11, 'mamot', 'mamotkurus@gmail.com', '', '', '', '', '', 'mamot', 'mamot', '', 'L', ''),
(12, 'Aji Budi Setyadi', 'ajibudisetyadi@gmail.com', '', '', '', '', '', 'ajibs', 'ajibs', '', 'L', ''),
(13, 'Anastasia Dewanti Pratama Putr', 'anastasiadpp@it.student.pens.ac.id', '', '', '', '', '', 'anastasia', 'anastasia', '', 'P', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
 ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `setup_about`
--
ALTER TABLE `setup_about`
 ADD PRIMARY KEY (`id_about`);

--
-- Indexes for table `setup_dasboard`
--
ALTER TABLE `setup_dasboard`
 ADD PRIMARY KEY (`id_dasboard`);

--
-- Indexes for table `setup_slide`
--
ALTER TABLE `setup_slide`
 ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `setup_sumbar`
--
ALTER TABLE `setup_sumbar`
 ADD PRIMARY KEY (`id_sumbar`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`user_admin`);

--
-- Indexes for table `tbl_bukti`
--
ALTER TABLE `tbl_bukti`
 ADD PRIMARY KEY (`id_bukti`);

--
-- Indexes for table `tbl_daerah`
--
ALTER TABLE `tbl_daerah`
 ADD PRIMARY KEY (`id_daerah`);

--
-- Indexes for table `tbl_hotel`
--
ALTER TABLE `tbl_hotel`
 ADD PRIMARY KEY (`id_hotel`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
 ADD PRIMARY KEY (`id_kategori`), ADD KEY `id_kat` (`id_kategori`);

--
-- Indexes for table `tbl_paket`
--
ALTER TABLE `tbl_paket`
 ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
 ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`id_user`), ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `setup_about`
--
ALTER TABLE `setup_about`
MODIFY `id_about` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `setup_dasboard`
--
ALTER TABLE `setup_dasboard`
MODIFY `id_dasboard` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `setup_slide`
--
ALTER TABLE `setup_slide`
MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `setup_sumbar`
--
ALTER TABLE `setup_sumbar`
MODIFY `id_sumbar` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbl_bukti`
--
ALTER TABLE `tbl_bukti`
MODIFY `id_bukti` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_daerah`
--
ALTER TABLE `tbl_daerah`
MODIFY `id_daerah` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_hotel`
--
ALTER TABLE `tbl_hotel`
MODIFY `id_hotel` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_paket`
--
ALTER TABLE `tbl_paket`
MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
