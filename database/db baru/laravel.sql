-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2024 at 05:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Action', '2024-12-26 01:07:57', '2024-12-26 01:07:57'),
(2, 'Drama', '2024-12-26 01:07:57', '2024-12-26 01:07:57'),
(3, 'Comedy', '2024-12-26 01:07:57', '2024-12-26 01:07:57'),
(4, 'Romance', '2024-12-26 01:07:57', '2024-12-26 01:07:57'),
(5, 'Horror', '2024-12-26 01:07:57', '2024-12-26 01:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `created_at`, `updated_at`, `email`) VALUES
(1, '2024-12-26 08:37:16', '2024-12-26 08:37:16', 'umbararamadhan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2021_12_13_211307_create_leads_table', 1),
(5, '2021_12_13_211602_create_roles_table', 1),
(6, '2021_12_15_000000_create_users_table', 1),
(7, '2021_12_28_204131_create_movies_table', 1),
(8, '2021_12_28_212835_create_categories_table', 1),
(9, '2021_12_29_221340_create_shows_table', 1),
(10, '2021_12_29_221926_create_rooms_table', 1),
(11, '2021_12_30_235852_create_reservations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `storyline` text NOT NULL,
  `rating` double(8,2) NOT NULL,
  `language` varchar(255) NOT NULL,
  `release_date` date NOT NULL,
  `director` varchar(255) NOT NULL,
  `maturity_rating` varchar(255) NOT NULL,
  `running_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `category_id`, `title`, `image`, `storyline`, `rating`, `language`, `release_date`, `director`, `maturity_rating`, `running_time`, `created_at`, `updated_at`) VALUES
(1, 1, 'sword art online the movie: progressive scherzo of deep night', 'posters/sao.jpeg', 'Sejak 10.000 pemain dipenjara di lingkungan realitas virtual game selama lebih dari sebulan, VRMMORPG pertama \"Sword Art Online\" telah berubah menjadi game kematian.\r\nSuatu hari, misi Raiders tampaknya berjalan dengan baik dengan bantuan informan wanita Argo, tapi...\r\nSeseorang bayangan bergerak dalam bayang-bayang di belakang layar.', 3.84, 'Japanese', '2022-10-22', 'Masakazu Obara - Ayako Kouno', 'PG-13', '01:40:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(2, 2, 'A Silent Voice', 'posters/knk.jpeg', 'Koe no Katachi menceritakan kisah mengharukan tentang reuni Shoukya dengan Shouko dan upayanya yang jujur untuk menebus dirinya sendiri, sambil terus dihantui oleh bayang-bayang masa lalunya.', 4.15, 'Japanese', '2016-09-17', 'Naoko Yamada', 'PG-13', '02:10:00', '2024-12-26 01:08:01', '2024-12-26 02:32:35'),
(3, 4, 'The Tunnel to Summer, the Exit of Goodbyes', 'posters/animediko.jpeg', 'Keluarga Kaoru Touno sedang berantakan. Setelah kematian saudara kandungnya dan perceraian orang tuanya, dia tidak lagi merasa damai di rumah. Setelah pertengkaran sengit dengan ayahnya, Kaoru lari dari rumah dan menemukan dirinya di depan terowongan misterius yang menariknya masuk. Terkejut dengan apa yang dilihatnya di dalam, dia bergegas keluar, membawa burung yang mirip dengan hewan peliharaannya yang sudah mati. Saat keluar, Kaoru menyadari bahwa meskipun dia hanya menghabiskan beberapa menit di dalam terowongan, satu minggu penuh telah berlalu. Pengalaman aneh ini mengingatkannya pada rumor tentang \"Terowongan Urashima\"—sebuah lorong yang mengabulkan keinginan dengan imbalan umur seseorang. Mengingat kebangkitan burung peliharaannya, Kaoru bertanya-tanya apakah kunjungan lain dapat memperbaiki hidupnya yang berantakan. Namun, ketika dia kembali ke pintu masuk terowongan misterius itu, Kaoru menyadari bahwa dia diikuti oleh Anzu Hanashiro, murid pindahan baru di kelasnya. Dia juga tahu tentang rumor tersebut dan memintanya untuk membantu dengan eksperimen—ternyata dia juga memiliki keinginan yang hanya bisa dikabulkan oleh terowongan itu.', 3.95, 'Japanese', '2022-09-09', 'Tomohisa Taguchi', 'PG-13', '01:22:00', '2024-12-26 01:08:01', '2024-12-26 02:32:56'),
(4, 4, 'Into the Forest of Fireflies\' Light', 'posters/tl.jpeg', 'Selama liburan musim panas di rumah kakeknya, Hotaru Takegawa yang berusia enam tahun tersesat di hutan yang dikabarkan dihuni oleh roh-roh. Saat menangis putus asa, Hotaru didekati oleh Gin—seorang anak laki-laki misterius yang mengenakan topeng—yang menawarkan bantuan. Gembira melihat orang lain, Hotaru berlari ke arah Gin dengan tangan terbuka hanya untuk ditolak dengan kasar. Namun, dia segera mengetahui alasan serius di balik perilaku Gin: sebuah kutukan mengerikan telah dilemparkan padanya. Jika dia disentuh oleh manusia, dia akan menghilang selamanya. Meskipun Gin mendesaknya untuk tidak pernah kembali, Hotaru melakukan sebaliknya, dan tidak lama kemudian, mereka menjadi teman dekat meskipun situasi Gin yang rapuh. Namun, seiring berjalannya waktu dan perasaan mereka semakin kuat, Hotaru dan Gin mulai berjuang dengan batasan yang ditetapkan takdir di antara mereka.', 4.10, 'Japanese', '2011-09-17', 'Takahiro Omori', 'G', '00:45:00', '2024-12-26 01:08:01', '2024-12-26 02:32:47'),
(5, 2, 'Grave of the Fireflies', 'posters/nuklir.jpg', 'Saat Perang Dunia II mencapai akhirnya pada tahun 1945, Jepang menghadapi kehancuran luas akibat pengeboman Amerika yang menghancurkan kota demi kota. Hotaru no Haka, juga dikenal sebagai Grave of the Fireflies, adalah kisah tentang Seita dan adiknya Setsuko, dua anak Jepang yang hidupnya hancur oleh perang brutal. Mereka kehilangan ibu, ayah, rumah, dan harapan masa depan yang cerah—semua akibat tragis dari perang. Kini menjadi yatim piatu dan tunawisma, Seita dan Setsuko tidak punya pilihan selain mengembara di pedesaan, dilanda kelaparan dan penyakit. Bertemu dengan ketidakpedulian orang dewasa di sepanjang jalan, mereka menemukan bahwa keadaan putus asa dapat mengubah bahkan orang yang paling baik menjadi kejam, namun harapan muda mereka bersinar terang di tengah kesulitan yang tak henti-hentinya, mencegah mereka menyerah pada nasib yang tak terelakkan.', 4.40, 'Japanese', '1988-04-16', 'Isao Takahata', 'PG-13', '01:28:00', '2024-12-26 01:08:01', '2024-12-26 02:38:37'),
(6, 5, 'Spirited Away', 'posters/setan.jpeg', 'Selama perjalanan ke rumah baru mereka, Chihiro Ogino yang berusia 10 tahun, keras kepala, manja, dan naif, tidak senang ketika dia dan orang tuanya menemukan taman hiburan yang ditinggalkan. Saat menjelajah dengan hati-hati, dia menyadari bahwa tempat ini lebih dari sekadar yang terlihat, karena hal-hal aneh mulai terjadi saat senja tiba. Penampakan hantu dan makanan yang mengubah orang tuanya menjadi babi hanyalah permulaan—Chihiro tanpa sadar telah memasuki dunia roh. Kini terjebak, dia harus mengumpulkan keberanian untuk hidup dan bekerja di antara roh-roh, dengan bantuan Haku yang misterius dan karakter unik yang dia temui di sepanjang jalan. Penuh warna dan menarik, Sen to Chihiro no Kamikakushi menceritakan perjalanan Chihiro melalui dunia yang tidak dikenal saat dia berusaha menyelamatkan orang tuanya dan kembali ke rumah.', 4.38, 'Japanese', '2001-07-20', 'Hayao Miyazaki', 'PG', '02:04:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(7, 1, 'Digimon Adventure: Last Evolution Kizuna', 'posters/anime_gak_laku.webp', 'Saat Anak-Anak Terpilih dan partner Digimon mereka hidup bahagia bersama di dunia manusia, Taichi Yagami dan Yamato Ishida, bersama teman-teman mereka, mendedikasikan diri untuk menjaga perdamaian yang telah mereka perjuangkan. Meskipun bersatu oleh tanggung jawab ini, masing-masing telah mulai mengambil langkah pertama menuju masa depan di luar menjadi Anak Terpilih. Namun, perjalanan baru ini terganggu oleh kemunculan Menoa Bellucci, seorang profesor Amerika yang mengkhususkan diri dalam penelitian Digimon. Dia membawa kabar tentang beberapa Anak Terpilih dari seluruh dunia yang ditemukan koma, dengan partner Digimon mereka yang hilang. Penyelidikan Menoa menunjukkan bahwa jenis baru Digimon berada di balik fenomena mengkhawatirkan ini: Eosmon, yang bersembunyi di dalam kedalaman internet. Untuk berhasil dalam misi ini, tim harus berusaha melalui jarak yang semakin jauh di antara mereka dan bersatu sekali lagi.', 4.00, 'Japanese', '2020-02-21', 'Tomohisa Taguchi', 'PG-13', '01:34:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(8, 4, 'Your Name.', 'posters/knn.jpeg', 'Mitsuha Miyamizu, seorang gadis SMA, mendambakan kehidupan sebagai seorang anak laki-laki di kota Tokyo yang ramai—impian yang sangat kontras dengan kehidupannya saat ini di pedesaan. Sementara itu, di kota, Taki Tachibana menjalani kehidupan sibuk sebagai siswa SMA sambil bekerja paruh waktu dan berharap untuk masa depan di bidang arsitektur. Suatu hari, Mitsuha terbangun di kamar yang bukan miliknya dan tiba-tiba mendapati dirinya hidup dalam impian di Tokyo—tetapi dalam tubuh Taki! Di tempat lain, Taki mendapati dirinya hidup dalam kehidupan Mitsuha di pedesaan yang sederhana. Dalam upaya mencari jawaban atas fenomena aneh ini, mereka mulai mencari satu sama lain. Kimi no Na wa. berpusat pada tindakan Mitsuha dan Taki, yang mulai memiliki dampak dramatis pada kehidupan satu sama lain, menenun mereka ke dalam jalinan yang diikat oleh takdir dan keadaan.\r\n', 4.40, 'Japanese', '2016-08-26', 'Makoto Shinkai', 'PG-13', '01:46:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(9, 4, 'Weathering with You', 'posters/tnk.jpg', 'Tokyo sedang mengalami hujan deras yang tampaknya mengganggu ritme kehidupan semua orang di sana. Di tengah hujan yang tampaknya tak berujung ini, datanglah Hodaka Morishima, seorang siswa SMA yang melarikan diri, yang berjuang untuk mendukung dirinya sendiri secara finansial—berakhir dengan pekerjaan di penerbit kecil. Pada saat yang sama, Hina Amano yang yatim piatu juga berusaha mencari pekerjaan untuk menghidupi dirinya dan adik laki-lakinya. Nasib mereka berdua terjalin ketika Hodaka mencoba menyelamatkan Hina dari pria-pria jahat, memutuskan untuk melarikan diri bersama. Kemudian, Hodaka menemukan bahwa Hina memiliki kekuatan aneh namun luar biasa: kemampuan untuk memanggil matahari setiap kali dia berdoa. Dengan cuaca Tokyo yang tidak biasa, Hodaka melihat potensi dari kemampuan ini. Dia menyarankan agar Hina menjadi \"gadis sinar matahari\"—seseorang yang akan membersihkan langit untuk orang-orang saat mereka membutuhkannya. Awalnya, segalanya tampak membaik bagi mereka. Namun, sudah menjadi pengetahuan umum bahwa kekuatan selalu datang dengan harga yang mahal.', 4.10, 'Japanese', '2019-07-19', 'Makoto Shinkai', 'PG-13', '01:52:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(10, 4, 'Suzume', 'posters/suzume.jpeg', 'Dalam perjalanan ke sekolah suatu hari, Suzume Iwato bertemu dengan Souta Munakata, seorang pemuda yang mencari area yang ditinggalkan. Gadis SMA tersebut mengarahkan Souta ke reruntuhan terdekat, tetapi karena rasa ingin tahu, dia sendiri memutuskan untuk pergi ke tempat yang sama. Di sana, Suzume menemukan pintu terisolasi dengan alam semesta seperti mimpi di baliknya—tempat yang bisa dia lihat dan rasakan, tetapi tidak bisa dimasuki. Sebuah batu aneh terletak di tanah di dekatnya, tetapi berubah menjadi makhluk seperti kucing dan lari ketika Suzume mengangkatnya. Tiba-tiba takut, dia kembali ke sekolahnya, tidak menyadari bahwa tindakannya meninggalkan pintu terbuka akan membawa konsekuensi. Dengan \"batu kunci\" dilepaskan, kejahatan dari alam semesta lain kini bisa bebas melarikan diri dan menyebabkan kekacauan di seluruh Jepang. Berniat memperbaiki kesalahan berbahayanya, Suzume bergabung dengan Souta—yang tujuan sebenarnya adalah mencegah kejahatan berkembang—dalam menemukan dan mengunci semua pintu yang terbuka sebelum negara hancur.', 4.10, 'Japanese', '2022-11-11', 'Makoto Shinkai', 'PG-13', '02:01:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(11, 1, 'Sword Art Online the Movie: Ordinal Scale', 'posters/sao2.jpeg', 'Pada tahun 2026, empat tahun setelah insiden terkenal Sword Art Online, teknologi baru yang revolusioner muncul: Augma, sebuah perangkat yang menggunakan sistem Augmented Reality. Berbeda dengan Virtual Reality dari NerveGear dan Amusphere, Augma sepenuhnya aman dan memungkinkan pemain menggunakannya saat mereka sadar, menciptakan sensasi instan di pasar. Aplikasi paling populer untuk Augma adalah game Ordinal Scale, yang membenamkan pemain dalam permainan peran fantasi dengan peringkat dan hadiah pemain. Mengikuti tren baru ini, teman-teman Kirito terjun ke dalam permainan, dan meskipun awalnya ragu tentang sistem tersebut, Kirito akhirnya bergabung dengan mereka. Awalnya tampak hanya sebagai hiburan, namun mereka segera menyadari bahwa permainan ini tidak seperti yang terlihat.', 3.78, 'Japanese', '2017-02-18', 'Tomohiko Ito', 'R+', '01:59:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(12, 3, 'Gintama: The Very Final', 'posters/final.jpeg', 'Dua tahun telah berlalu sejak invasi Tendoshuu ke Terminal Pusat O-Edo. Sejak itu, Yorozuya telah berpisah. Meramalkan kembalinya Utsuro, Gintoki Sakata mulai memeriksa garis ley Bumi untuk mencari jejak Altana pria itu. Setelah bertemu dengan sisa-sisa Tendoshuu—yang terus mencari keabadian—Gintoki kembali ke Edo. Kemudian, Shinsengumi dan Yorozuya yang telah berkumpul kembali memulai serangan ke Terminal Pusat yang diduduki. Dengan Altana yang dipanen oleh reruntuhan kapal Tendoshuu dalam bahaya meledak, Yorozuya dan sekutu mereka melawan musuh mereka sementara keselamatan Edo—dan seluruh dunia—bergantung pada keseimbangan. Memenuhi keinginan guru mereka, mantan murid Shouyou Yoshida bersatu dan menghidupkan kembali masa lalu mereka untuk terakhir kalinya dalam upaya menyelamatkan masa depan mereka.', 4.50, 'Japanese', '2021-01-08', 'Chizuru Miyawaki - Akie Ishii', 'PG-13', '01:44:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `show_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `seat_number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `show_id`, `user_id`, `seat_number`, `created_at`, `updated_at`) VALUES
(1, 5, 30, 16, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(2, 26, 63, 6, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(3, 14, 64, 19, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(4, 30, 33, 8, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(5, 46, 8, 5, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(6, 2, 35, 11, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(7, 14, 21, 18, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(8, 34, 47, 12, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(9, 45, 37, 20, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(10, 48, 43, 0, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(11, 49, 52, 7, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(12, 13, 63, 15, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(13, 44, 31, 16, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(14, 14, 47, 17, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(15, 2, 30, 29, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(16, 41, 42, 10, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(17, 12, 44, 15, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(18, 38, 29, 12, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(19, 25, 7, 14, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(20, 4, 11, 26, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(21, 26, 22, 12, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(22, 40, 67, 18, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(23, 39, 11, 17, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(24, 10, 14, 11, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(25, 6, 59, 8, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(26, 6, 61, 24, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(27, 42, 43, 13, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(28, 41, 6, 12, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(29, 13, 68, 8, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(30, 2, 58, 11, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(31, 25, 57, 18, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(32, 41, 26, 8, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(33, 26, 15, 15, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(34, 22, 41, 27, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(35, 44, 34, 0, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(36, 38, 49, 6, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(37, 44, 64, 15, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(38, 2, 2, 2, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(39, 15, 12, 22, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(40, 12, 24, 19, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(41, 21, 23, 22, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(42, 49, 23, 18, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(43, 1, 25, 2, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(44, 14, 51, 11, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(45, 41, 46, 11, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(46, 42, 34, 2, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(47, 10, 53, 9, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(48, 22, 30, 15, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(49, 31, 12, 14, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(50, 5, 41, 7, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(51, 1, 1, 7, '2024-12-26 01:14:54', '2024-12-26 01:14:54'),
(52, 1, 1, 8, '2024-12-26 01:14:54', '2024-12-26 01:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `code`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', '2024-12-26 01:07:57', '2024-12-26 01:07:57'),
(2, 2, 'Manager', '2024-12-26 01:07:57', '2024-12-26 01:07:57'),
(3, 3, 'Customer', '2024-12-26 01:07:57', '2024-12-26 01:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `size`, `created_at`, `updated_at`) VALUES
(1, 20, '2024-12-26 01:07:57', '2024-12-26 01:07:57'),
(2, 30, '2024-12-26 01:07:57', '2024-12-26 01:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `remaining_seats` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `movie_id`, `room_id`, `price`, `date`, `start_time`, `end_time`, `remaining_seats`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 250.00, '2024-12-29', '06:46:00', '08:45:42', 27, '2024-12-26 01:08:01', '2024-12-26 01:14:54'),
(2, 8, 2, 200.00, '2025-01-11', '06:39:10', '08:22:28', 26, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(3, 12, 1, 466.00, '2025-01-09', '06:08:10', '10:32:07', 20, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(4, 11, 2, 208.00, '2025-01-05', '07:38:36', '08:09:07', 29, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(5, 10, 2, 174.00, '2024-12-29', '07:04:55', '08:49:55', 28, '2024-12-26 01:08:01', '2024-12-26 01:08:02'),
(8, 11, 2, 80.00, '2025-01-11', '05:50:38', '10:59:28', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(10, 11, 2, 201.00, '2025-01-12', '06:45:24', '08:26:51', 28, '2024-12-26 01:08:01', '2024-12-26 01:08:02'),
(13, 1, 2, 275.00, '2024-12-31', '06:10:53', '08:08:38', 28, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(15, 3, 2, 259.00, '2025-01-02', '06:19:53', '08:37:17', 29, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(16, 8, 1, 369.00, '2025-01-02', '05:55:06', '08:52:12', 20, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(17, 6, 1, 298.00, '2025-01-10', '08:03:13', '10:45:23', 20, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(18, 8, 2, 155.00, '2025-01-14', '05:20:34', '08:25:59', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(19, 11, 2, 63.00, '2025-01-14', '06:17:41', '10:11:00', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(21, 11, 2, 181.00, '2025-01-14', '06:03:08', '08:09:41', 29, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(22, 4, 2, 161.00, '2025-01-08', '07:03:10', '08:31:18', 28, '2024-12-26 01:08:01', '2024-12-26 01:08:02'),
(23, 12, 2, 327.00, '2025-01-08', '05:09:57', '10:13:18', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(25, 2, 1, 350.00, '2024-12-29', '06:27:32', '08:19:59', 18, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(27, 6, 1, 248.00, '2025-01-02', '05:23:03', '09:41:13', 20, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(28, 11, 1, 131.00, '2025-01-15', '05:09:02', '09:42:15', 20, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(29, 3, 2, 270.00, '2025-01-15', '05:09:43', '09:42:24', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(31, 12, 2, 71.00, '2025-01-14', '08:05:44', '08:46:02', 29, '2024-12-26 01:08:01', '2024-12-26 01:08:02'),
(32, 12, 2, 63.00, '2025-01-10', '06:48:13', '10:50:14', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(34, 4, 2, 208.00, '2025-01-04', '07:46:13', '09:28:34', 29, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(35, 10, 2, 321.00, '2025-01-04', '08:03:16', '09:18:22', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(37, 10, 2, 134.00, '2024-12-28', '06:08:04', '08:47:07', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(38, 10, 1, 428.00, '2025-01-02', '07:33:46', '10:25:08', 18, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(43, 8, 2, 375.00, '2025-01-11', '06:23:08', '08:27:33', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(44, 6, 1, 328.00, '2025-01-07', '06:40:35', '09:52:54', 17, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(45, 11, 2, 369.00, '2024-12-25', '05:23:45', '09:56:31', 29, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(46, 9, 2, 145.00, '2025-01-05', '06:10:40', '09:55:02', 29, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(47, 4, 1, 419.00, '2024-12-31', '07:30:00', '10:54:27', 20, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(48, 7, 1, 124.00, '2025-01-08', '06:02:21', '10:46:03', 19, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(49, 5, 2, 401.00, '2025-01-04', '05:40:57', '09:35:39', 28, '2024-12-26 01:08:01', '2024-12-26 01:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `wants_manager` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `username`, `email`, `email_verified_at`, `password`, `first_name`, `last_name`, `wants_manager`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@cinemat.com', '2024-12-26 01:07:57', '$2y$10$FCXefV0Dy/0Et4OHWHWJRO.KyncmxejK9gP9uEw4XU2UAX4.DU73a', 'admin', 'DuBuque', 0, 'kBzNi3gmTMaNWfGLjFHKiJviLrawB1pw1ehudAsmwRFeibMCf8LJR4kteMq6', '2024-12-26 01:07:58', '2024-12-26 01:07:58'),
(2, 2, 'manager', 'manager@cinemat.com', '2024-12-26 01:07:58', '$2y$10$SCERCycLV.AJh82BVd4Wq.RdipETNq6jDqbBEBWuhgxYY0QjyLu0a', 'manager', NULL, 0, 'LAA6KFUfIsDUFHgEnumaCMBq9A6Q7pNfIjUVWczUU817G8HPPf8dXmcgBkG6', '2024-12-26 01:07:58', '2024-12-26 01:07:58'),
(69, 3, 'RAMAENDUT', 'umbararamadhan@gmail.com', NULL, '$2y$10$sJSaNmhnFy6aepZuPBGbz.LfLGQbyLfJ.kwdUQlPCgzanJ4/cpzru', 'RAMA', 'ENDUT', 0, NULL, '2024-12-26 09:28:47', '2024-12-26 09:28:47'),
(70, 2, 'RAMAENDUT1', 'umbararamadhan1@gmail.com', NULL, '$2y$10$aC2RW5ki85dLWKZNtQXtMerwsFwQAKBXKuTGz6GU10s36Q./IRWNS', 'RAMA', 'ENDUT', 0, NULL, '2024-12-26 09:30:23', '2024-12-26 09:37:55'),
(71, 3, 'RAMAENDUT5', 'umbararamadhan5@gmail.com', NULL, '$2y$10$QvDnT96eKEt9pmvaoWb81O5hB/HssxMpee3D1We6oXDY.ngTWybD2', 'Ramadhan', 'Umbara', 1, NULL, '2024-12-26 09:39:44', '2024-12-26 09:39:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leads_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_code_unique` (`code`),
  ADD UNIQUE KEY `roles_title_unique` (`title`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
