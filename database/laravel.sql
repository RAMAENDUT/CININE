-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2024 at 09:02 AM
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
(6, 2, 'Spirited Away', 'posters/setan.jpeg', 'Selama perjalanan ke rumah baru mereka, Chihiro Ogino yang berusia 10 tahun, keras kepala, manja, dan naif, tidak senang ketika dia dan orang tuanya menemukan taman hiburan yang ditinggalkan. Saat menjelajah dengan hati-hati, dia menyadari bahwa tempat ini lebih dari sekadar yang terlihat, karena hal-hal aneh mulai terjadi saat senja tiba. Penampakan hantu dan makanan yang mengubah orang tuanya menjadi babi hanyalah permulaan—Chihiro tanpa sadar telah memasuki dunia roh. Kini terjebak, dia harus mengumpulkan keberanian untuk hidup dan bekerja di antara roh-roh, dengan bantuan Haku yang misterius dan karakter unik yang dia temui di sepanjang jalan. Penuh warna dan menarik, Sen to Chihiro no Kamikakushi menceritakan perjalanan Chihiro melalui dunia yang tidak dikenal saat dia berusaha menyelamatkan orang tuanya dan kembali ke rumah - MyAnimeList.net](https://myanimelist.net/anime/199/Sen_to_Chihiro_no_Kamikakushi?q=spirited%20away&cat=anime).', 4.38, 'Japanese', '2001-07-20', 'Hayao Miyazaki', 'PG', '02:04:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(7, 1, 'Digimon Adventure: Last Evolution Kizuna', 'posters/anime_gak_laku.webp', 'Saat Anak-Anak Terpilih dan partner Digimon mereka hidup bahagia bersama di dunia manusia, Taichi Yagami dan Yamato Ishida, bersama teman-teman mereka, mendedikasikan diri untuk menjaga perdamaian yang telah mereka perjuangkan. Meskipun bersatu oleh tanggung jawab ini, masing-masing telah mulai mengambil langkah pertama menuju masa depan di luar menjadi Anak Terpilih. Namun, perjalanan baru ini terganggu oleh kemunculan Menoa Bellucci, seorang profesor Amerika yang mengkhususkan diri dalam penelitian Digimon. Dia membawa kabar tentang beberapa Anak Terpilih dari seluruh dunia yang ditemukan koma, dengan partner Digimon mereka yang hilang. Penyelidikan Menoa menunjukkan bahwa jenis baru Digimon berada di balik fenomena mengkhawatirkan ini: Eosmon, yang bersembunyi di dalam kedalaman internet. Untuk berhasil dalam misi ini, tim harus berusaha melalui jarak yang semakin jauh di antara mereka dan bersatu sekali lagi.', 4.00, 'Japanese', '2020-02-21', 'Tomohisa Taguchi', 'PG-13', '01:34:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(8, 2, 'Goodfellas', 'posters/Goodfellas.webp', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.', 4.35, 'English', '1990-05-18', 'Martin Scorsese', 'R', '02:26:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(9, 2, 'Se7en', 'posters/Se7en.webp', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.', 4.30, 'English', '1995-07-14', 'David Fincher', 'R', '02:07:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(10, 2, 'Interstellar', 'posters/Interstellar.webp', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.', 4.30, 'English', '2014-06-11', 'Christopher Nolan', 'PG-13', '02:49:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(11, 1, 'John Wick', 'posters/John-Wick.webp', 'An ex-hitman comes out of retirement to track down the gangsters that took everything from him.', 4.40, 'English', '2014-10-24', 'Chad Stahelski', 'R', '01:41:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(12, 1, 'Die Hard', 'posters/Die-Hard.webp', 'John McClane, an off-duty cop, tries to save his wife and several others taken hostage by terrorists during a Christmas party at the Nakatomi Plaza in Los Angeles.', 4.30, 'English', '1988-07-15', 'John McTiernan', 'R', '02:12:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(13, 2, 'Forrest Gump', 'posters/Forrest-Gump.webp', 'Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny Curran, eludes him.', 4.60, 'English', '1994-07-06', 'Robert Zemeckis', 'PG-13', '02:22:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(14, 3, 'The Hangover', 'posters/Hangover.webp', 'Three buddies wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing. They make their way around the city in order to find their friend before his wedding.', 3.90, 'English', '2009-06-05', 'Todd Phillips', 'R', '01:40:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(15, 3, 'The Grand Budapest Hotel', 'posters/Grand-Budapest-Hotel.webp', 'The adventures of Gustave H, a legendary concierge at a famous hotel from the fictional Republic of Zubrowka between the first and second World Wars, and Zero Moustafa, the lobby boy who becomes his most trusted friend.', 4.20, 'English', '2014-02-06', 'Wes Anderson', 'R', '01:40:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(16, 4, 'The Notebook', 'posters/The-Notebook.webp', 'A poor yet passionate young man falls in love with a rich young woman, giving her a sense of freedom, but they are soon separated because of their social differences.', 4.20, 'English', '2004-06-25', 'Nick Cassavetes', 'PG-13', '02:03:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(17, 4, 'Titanic', 'posters/Titanic.webp', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', 4.40, 'English', '1997-12-19', 'James Cameron', 'PG-13', '03:15:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(18, 5, 'The Exorcist', 'posters/The-Exorcist.webp', 'When a teenage girl is possessed by a mysterious entity, her mother seeks the help of two priests to save her daughter.', 4.10, 'English', '1973-12-26', 'William Friedkin', 'R', '02:02:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(19, 5, 'The Conjuring', 'posters/The-Conjuring.webp', 'Paranormal investigators Ed and Lorraine Warren work to help a family terrorized by a dark presence in their farmhouse.', 4.00, 'English', '2013-07-19', 'James Wan', 'R', '01:52:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(20, 4, 'The Fault in Our Stars', 'posters/The-Fault-in-Our-Stars.webp', 'Two teenagers, both living with cancer, fall in love and embark on a journey to visit a reclusive author in Amsterdam.', 4.20, 'English', '2014-06-06', 'Josh Boone', 'PG-13', '02:06:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01');

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
(6, 15, 2, 297.00, '2025-01-15', '07:41:38', '10:36:46', 28, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(7, 20, 1, 362.00, '2025-01-01', '08:06:52', '11:06:18', 20, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(8, 11, 2, 80.00, '2025-01-11', '05:50:38', '10:59:28', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(9, 13, 1, 381.00, '2024-12-30', '07:40:36', '08:11:37', 20, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(10, 11, 2, 201.00, '2025-01-12', '06:45:24', '08:26:51', 28, '2024-12-26 01:08:01', '2024-12-26 01:08:02'),
(11, 18, 2, 442.00, '2025-01-14', '05:25:13', '10:45:23', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(12, 20, 1, 139.00, '2024-12-31', '05:49:29', '10:57:10', 18, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(13, 1, 2, 275.00, '2024-12-31', '06:10:53', '08:08:38', 28, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(14, 18, 1, 495.00, '2024-12-26', '05:36:07', '10:12:32', 16, '2024-12-26 01:08:01', '2024-12-26 01:08:02'),
(15, 3, 2, 259.00, '2025-01-02', '06:19:53', '08:37:17', 29, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(16, 8, 1, 369.00, '2025-01-02', '05:55:06', '08:52:12', 20, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(17, 6, 1, 298.00, '2025-01-10', '08:03:13', '10:45:23', 20, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(18, 8, 2, 155.00, '2025-01-14', '05:20:34', '08:25:59', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(19, 11, 2, 63.00, '2025-01-14', '06:17:41', '10:11:00', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(20, 17, 1, 456.00, '2024-12-30', '05:35:22', '08:46:41', 20, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(21, 11, 2, 181.00, '2025-01-14', '06:03:08', '08:09:41', 29, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(22, 4, 2, 161.00, '2025-01-08', '07:03:10', '08:31:18', 28, '2024-12-26 01:08:01', '2024-12-26 01:08:02'),
(23, 12, 2, 327.00, '2025-01-08', '05:09:57', '10:13:18', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(24, 18, 1, 261.00, '2025-01-05', '05:28:00', '09:46:52', 20, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(25, 2, 1, 350.00, '2024-12-29', '06:27:32', '08:19:59', 18, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(26, 13, 1, 93.00, '2025-01-15', '06:07:42', '09:27:02', 17, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(27, 6, 1, 248.00, '2025-01-02', '05:23:03', '09:41:13', 20, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(28, 11, 1, 131.00, '2025-01-15', '05:09:02', '09:42:15', 20, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(29, 3, 2, 270.00, '2025-01-15', '05:09:43', '09:42:24', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(30, 14, 1, 413.00, '2025-01-05', '07:27:08', '10:18:23', 19, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(31, 12, 2, 71.00, '2025-01-14', '08:05:44', '08:46:02', 29, '2024-12-26 01:08:01', '2024-12-26 01:08:02'),
(32, 12, 2, 63.00, '2025-01-10', '06:48:13', '10:50:14', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(33, 15, 2, 112.00, '2025-01-04', '07:51:54', '09:50:15', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(34, 4, 2, 208.00, '2025-01-04', '07:46:13', '09:28:34', 29, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(35, 10, 2, 321.00, '2025-01-04', '08:03:16', '09:18:22', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(36, 15, 1, 107.00, '2025-01-06', '05:21:53', '09:14:16', 20, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(37, 10, 2, 134.00, '2024-12-28', '06:08:04', '08:47:07', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(38, 10, 1, 428.00, '2025-01-02', '07:33:46', '10:25:08', 18, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(39, 17, 1, 191.00, '2025-01-02', '07:23:55', '09:43:51', 19, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(40, 13, 1, 78.00, '2024-12-28', '07:44:14', '08:36:14', 19, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(41, 17, 1, 317.00, '2025-01-12', '06:59:16', '08:09:45', 16, '2024-12-26 01:08:01', '2024-12-26 01:08:02'),
(42, 15, 1, 256.00, '2025-01-04', '08:03:02', '08:33:48', 18, '2024-12-26 01:08:01', '2024-12-26 01:08:02'),
(43, 8, 2, 375.00, '2025-01-11', '06:23:08', '08:27:33', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(44, 6, 1, 328.00, '2025-01-07', '06:40:35', '09:52:54', 17, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(45, 11, 2, 369.00, '2024-12-25', '05:23:45', '09:56:31', 29, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(46, 9, 2, 145.00, '2025-01-05', '06:10:40', '09:55:02', 29, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(47, 4, 1, 419.00, '2024-12-31', '07:30:00', '10:54:27', 20, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(48, 7, 1, 124.00, '2025-01-08', '06:02:21', '10:46:03', 19, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(49, 5, 2, 401.00, '2025-01-04', '05:40:57', '09:35:39', 28, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(50, 15, 2, 200.00, '2025-01-05', '07:07:26', '08:09:13', 30, '2024-12-26 01:08:01', '2024-12-26 01:08:01');

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
(1, 1, 'admin', 'admin@cinemat.com', '2024-12-26 01:07:57', '$2y$10$FCXefV0Dy/0Et4OHWHWJRO.KyncmxejK9gP9uEw4XU2UAX4.DU73a', 'admin', 'DuBuque', 0, 'J7l7cdOW3L9pDl56uOx41aoF2XGZEc6RSWp3Drc8HsW8K84FUZukVUy4ysge', '2024-12-26 01:07:58', '2024-12-26 01:07:58'),
(2, 2, 'manager', 'manager@cinemat.com', '2024-12-26 01:07:58', '$2y$10$SCERCycLV.AJh82BVd4Wq.RdipETNq6jDqbBEBWuhgxYY0QjyLu0a', 'manager', NULL, 0, 'cmLZmdDJSQ', '2024-12-26 01:07:58', '2024-12-26 01:07:58'),
(3, 3, 'customer', 'customer@cinemat.com', '2024-12-26 01:07:58', '$2y$10$zAIZAbbUebRdJmYDW6vB9.2yC1en8gfdOyqH3hLDgpyCqtmne55Cy', 'customer', 'Gleichner', 0, 'OBRR5UyfN8', '2024-12-26 01:07:58', '2024-12-26 01:07:58'),
(4, 3, 'daniel.antonette', 'rowland.prohaska@example.net', '2024-12-26 01:07:58', '$2y$10$/.ADsUDn4vMSu4lt1cciJe067jBcgfY/Czm3h3OCM4oP7ktVti2aK', 'Libbie', 'Harris', 0, 'tPJN4H8kYb', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(5, 3, 'bahringer.ettie', 'shad.lemke@example.org', '2024-12-26 01:07:58', '$2y$10$/oDfxEzEmTjnyx6kbuKqteAog51Ry8Xt6n0bM00UfkpWOZ0CcoIQG', 'Vivienne', NULL, 0, 'uMujqgKSPy', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(6, 3, 'delores22', 'kuhn.tyrel@example.com', '2024-12-26 01:07:58', '$2y$10$XSBrd4dQdIfgf3nxJRZWleoqaxaSQAIuO7nh9SXBsONHaGbkRFbwC', 'Federico', 'Turner', 0, 'ON2qRditmU', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(7, 3, 'emante', 'wprohaska@example.net', '2024-12-26 01:07:58', '$2y$10$moFTuQQVYKEj9wyAr4C/K.zURAOD3LtWsbGK3zbAswf9L6fXx/YlS', 'Geovanny', 'Kohler', 0, 'ftwdwSgniH', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(8, 3, 'aniyah52', 'leonie.harber@example.net', '2024-12-26 01:07:58', '$2y$10$/Zn8GO0oYsQ9LcM0Siqy.e2OkRRK/lEPSKhFQq0YmSAg89IDgWfqO', 'Hortense', NULL, 0, '9PYVqAAv64', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(9, 3, 'ustehr', 'homenick.sherwood@example.org', '2024-12-26 01:07:58', '$2y$10$AHTjPVNHxfsVoTliG9iTXOV1.xnbXK/bu5BNQOqHIAhsf6HYRPkym', 'Bradley', NULL, 0, '8jBPWDxveH', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(10, 3, 'mitchell88', 'diego.heaney@example.org', '2024-12-26 01:07:58', '$2y$10$rJnf.R.glRPbWPsveqoFdO4zvNiZ5KgcrP8cA2vxdeucHwlRPP2fe', 'Triston', 'Emard', 0, 'P4cqFnorS0', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(11, 3, 'krunolfsdottir', 'jay.satterfield@example.net', '2024-12-26 01:07:58', '$2y$10$RNgl08Z9vJLcS26clDn5aeGKS8phjF3D53ZwG7QZz3SPEwrKbSoRy', 'Freda', 'Rosenbaum', 0, 'S4ixBAs1yY', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(12, 3, 'friedrich.hegmann', 'sanford.oda@example.org', '2024-12-26 01:07:58', '$2y$10$L.q6OEzHpsmOImJ6r./cx.KoAI8ow8fqTVe4AnyaPXuI.86QDxdpm', 'Khalil', NULL, 0, 'N0n0s7JdHA', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(13, 3, 'lziemann', 'bartell.denis@example.net', '2024-12-26 01:07:58', '$2y$10$4R1qznGCS4iXoJEzOqnC2elGvaI/9eXhm8UtkmYy8jkPY5mqCdeSa', 'Jackeline', 'Bradtke', 0, 'b7EpIewVH5', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(14, 3, 'muller.aimee', 'heather03@example.net', '2024-12-26 01:07:58', '$2y$10$CvVcQFLcXr2UKDLb8TtEjevVnYYIyVZ3R8Ol1zMZcVXuHbm7mh7SG', 'Nicolette', 'Boehm', 0, 'eFbHk2kcYA', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(15, 3, 'percy46', 'bernita93@example.com', '2024-12-26 01:07:58', '$2y$10$ElqHANQZ2BKo0oLskyzAbe9mp8REmYaql/GpGYkedCmxjKhp0ckCy', 'Angelina', NULL, 0, 'fe2zGMsBfv', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(16, 3, 'alice96', 'jakubowski.israel@example.org', '2024-12-26 01:07:58', '$2y$10$GcmEiLe69KIokNyTB1oQ..GUdmgEz5v8H/lL9RSpo0Itj87oXQZu6', 'Green', 'Cormier', 0, 'qsCjhuUk2b', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(17, 3, 'cchristiansen', 'ellis94@example.com', '2024-12-26 01:07:58', '$2y$10$i/oX7SsQuH99Vrgvuy7lVeZQj.IKyzOfafrXrjm4aUVQUxNb51346', 'Israel', 'Schumm', 0, 'KPYsaJe5Rz', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(18, 3, 'delilah30', 'christiansen.anya@example.com', '2024-12-26 01:07:58', '$2y$10$PTPA5THiuqIFLX0lRt8kke2vLN2Q1QhWYxUMTRCL6wJLUT2UfsoB2', 'Laurel', 'Dickinson', 0, '8k9SDpaIuA', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(19, 3, 'kshlerin.tavares', 'blanda.loyal@example.org', '2024-12-26 01:07:58', '$2y$10$qFgCE3b0r3YqJhdEW0AfeuwgVtwwU3Q0Gv6fEX8CUOEb/zliZrQzC', 'Thora', NULL, 0, 'D7iUPO2aFZ', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(20, 3, 'mritchie', 'claudia.trantow@example.org', '2024-12-26 01:07:58', '$2y$10$kl0PqfchBQiY0jnKDazIcOjbhg1hbjaaMaBrs3J6UDmD8/rtSH0Q6', 'Jean', NULL, 0, 'oA9TyRinCj', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(21, 3, 'homenick.wilfredo', 'hudson.dena@example.org', '2024-12-26 01:07:59', '$2y$10$ZIUu8XENwE1PnzJ6mp6KwOUcbrxAVZuoo1OGyUcSb0xrZbEcUUYNK', 'Mallie', 'Hodkiewicz', 0, 'De1U0JuzfY', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(22, 3, 'mkozey', 'shanna.hahn@example.com', '2024-12-26 01:07:59', '$2y$10$Q5e0PfuHBgPx0Lt7n78/lO7a3Q18JX/D/iMeuXG4eaNwJtf44hnWq', 'Jadyn', 'Schroeder', 0, 'o80jvnrhTL', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(23, 3, 'manuela.kling', 'raynor.jerod@example.net', '2024-12-26 01:07:59', '$2y$10$ZsPqY9ehzdCwB3u0eN9xB.ZMCFLoVHg040rt2igRHQRjgpOEoyoue', 'Jamel', NULL, 0, 'qIBujmJm2E', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(24, 3, 'mchamplin', 'herman.donnelly@example.org', '2024-12-26 01:07:59', '$2y$10$VfUyrxsH2yWGHJabEkiasuXfrvuRLt5ZQrtiwxtTqgPqs63ixrEDS', 'Roma', NULL, 0, '43CFpw9BJP', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(25, 3, 'nbeahan', 'ecummerata@example.org', '2024-12-26 01:07:59', '$2y$10$MsqjdGG4Vi5HfqLooZjLce7LAzmSPTsWi2LlG7XJaRmA8r/fvp9v6', 'Erna', 'Torphy', 0, 'kEGaiGYvAJ', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(26, 3, 'wisoky.johathan', 'romaguera.jammie@example.net', '2024-12-26 01:07:59', '$2y$10$Y3yGAc5kJ4DSKsMNRoPhhOb88wqnx3l82QCvCfRvgRK38Mggeztsq', 'Anne', NULL, 0, 'gqQfbu8nXb', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(27, 3, 'batz.rubye', 'nyah51@example.org', '2024-12-26 01:07:59', '$2y$10$psT6diDR8q..LDwdXM0XgutmEZylpAwuveCPRrQ.g4yw425ZVlPRm', 'Janie', NULL, 0, 'JG8HVLFFqg', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(28, 3, 'megane.kuhn', 'goodwin.mathilde@example.com', '2024-12-26 01:07:59', '$2y$10$SRS8USKNLPdL8GnnpeIhzuD0upTs1joo3GGtaWTC6MhtFInfk5onK', 'Haskell', NULL, 0, 'ZozQN2Oipt', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(29, 3, 'victor.nader', 'kyra64@example.com', '2024-12-26 01:07:59', '$2y$10$Aguj6dAomrPOCDq/mXEaJu69/qllf/mOVWnmk6sSR/wP5Q9Sto6WC', 'Angus', NULL, 0, '2hvYxoQInQ', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(30, 3, 'rosanna95', 'bertha.koss@example.com', '2024-12-26 01:07:59', '$2y$10$bxFkJxhCh4qQ0yZDUpby9ObC8.7q3Shbn1AqOb/tSCwRQD9FHZ/0O', 'Johnnie', NULL, 0, 'LQT4RV3zg8', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(31, 3, 'uhermiston', 'amuller@example.org', '2024-12-26 01:07:59', '$2y$10$bxyDriPA3rM0uAAJA6/Py.1W0pGj0bxqhpx3BXIrPPMQWk4EXNQ3O', 'Ariel', 'Wolf', 0, 'a4nyh1Pfw1', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(32, 3, 'slueilwitz', 'andres77@example.org', '2024-12-26 01:07:59', '$2y$10$OSHGNAWhCy.aSlzUH/elM.r6XtHn34QDI7iSJZSbPisoYv7YZIzO.', 'Asha', NULL, 0, 'SPZSprVOSe', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(33, 3, 'savannah.corkery', 'madyson.volkman@example.com', '2024-12-26 01:07:59', '$2y$10$0drdjOtR4iYFGyD54VE7wOGM4ztqUdaDLVYtWidFTT3TFnwcAVtve', 'Hugh', 'Windler', 0, 'hfgW86sWDo', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(34, 3, 'langworth.gerson', 'lewis.walsh@example.net', '2024-12-26 01:07:59', '$2y$10$xKoFrCAoSWc1uIYDrQGVd.rfi/VkTuI7.0Epe.qMUR7L4Gk3Kl17u', 'Maximillia', NULL, 0, '5pBJOKSdEE', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(35, 3, 'lukas16', 'freddy46@example.net', '2024-12-26 01:07:59', '$2y$10$UQ.3z.2ob.bN11YcktHjE.jW6clUnk5Q.7mZ4DXmocrRTpF8DCW3y', 'Weston', NULL, 0, '7O577utEcr', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(36, 3, 'lolita.kuvalis', 'leola.johnston@example.net', '2024-12-26 01:07:59', '$2y$10$mR00OQLbLs.NQmIUG9SzX.DR9nMaezt1v0wOlXGZ2VS9ZDFoIWs9K', 'Teagan', 'Block', 0, 'yTqfdo0eG2', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(37, 3, 'gnader', 'xheller@example.com', '2024-12-26 01:07:59', '$2y$10$oijBBcWEhFyb5wqsjIOIZODw4MYcUFwWEwSZFCwLSeCSn8YviCzha', 'Loyal', 'Mohr', 0, 'XcW6FFUDU0', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(38, 3, 'casper.hank', 'gudrun19@example.org', '2024-12-26 01:07:59', '$2y$10$wI03ppNSgHKmQuxFocGpXOsgKkWXZWfZEYEWwmsc0aeQV7aIlPTmC', 'Vincenzo', 'Russel', 0, 'ejwfu0iuip', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(39, 3, 'jamey.von', 'sister91@example.net', '2024-12-26 01:07:59', '$2y$10$NewHa4gVo195nBBd3M1uBeTcsmZ7NHB.9dfj1kYoEG9E/nFi4JlMK', 'Oral', NULL, 0, 'Odt5l8pf3B', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(40, 3, 'plemke', 'abraun@example.net', '2024-12-26 01:08:00', '$2y$10$NRwNIvv8rOWp4XjND19LMurb3mrxpZqAlDaTUqu6agd.ZtpdGwtli', 'Queen', 'Mraz', 0, '0QJTEGS1HN', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(41, 3, 'jovany.mertz', 'jalon33@example.com', '2024-12-26 01:08:00', '$2y$10$Z5AJfVCdgmOG1xWHIdZ/o.sdFPBra.C5mNcGyp85A633W004lfUOG', 'Brisa', 'Russel', 0, '2sJEdv7jLn', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(42, 3, 'loyal.denesik', 'vhackett@example.com', '2024-12-26 01:08:00', '$2y$10$Oe6aKXSsDjCNqw8J/1gXcO6PmDX1gqU6mt8odHQo51HxVebnFDONO', 'Olin', NULL, 0, 'gB85AuFh1M', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(43, 3, 'kiley.schmidt', 'satterfield.misty@example.net', '2024-12-26 01:08:00', '$2y$10$MwcGSrBEV.Fg7YFYDo10veUZWQFCpbBcjwCTFTwl55qwvHHYKu3wu', 'Bennie', 'O\'Reilly', 0, 'XwvYorimY6', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(44, 3, 'samir.lind', 'tprosacco@example.com', '2024-12-26 01:08:00', '$2y$10$3isIoN.9bm5dGPFOz0/R0e9YfKZoBg1uyoQwPnWtZYsun9iX271h6', 'Alanna', NULL, 0, 'LBLTaRmTnN', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(45, 3, 'myron96', 'gbeatty@example.com', '2024-12-26 01:08:00', '$2y$10$0TKL6I.6GTkhwDCljPgI5uzh6aeTqUH3fNOR0kzfeDNUyd67ZUioG', 'Adam', 'Dare', 0, 'dXrF0euk17', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(46, 3, 'hagenes.roma', 'zaria99@example.org', '2024-12-26 01:08:00', '$2y$10$XHRxsEhy4NYj/vp6dxzHy.QnDY3tl.jg/acZFvnqCryLDNfQNxYZq', 'Taurean', NULL, 0, 'YQSUCa8nKF', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(47, 3, 'iauer', 'moore.reilly@example.com', '2024-12-26 01:08:00', '$2y$10$6coOstMo5BiLqaj4wL6F3.HIzZdejHL9GCb0NEZv9s61buBSXV0Yy', 'Manley', 'Paucek', 0, 'APPYnh1mig', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(48, 3, 'nbrekke', 'kulas.chadd@example.net', '2024-12-26 01:08:00', '$2y$10$WBnuHh06OUWvsRT8Tj3dEOnmDEqojw5xDNyPUuKR6yPqdvIUz6GEK', 'Darrell', NULL, 0, '0gEI38Ozob', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(49, 3, 'ykoelpin', 'elody.price@example.com', '2024-12-26 01:08:00', '$2y$10$wQ1GpuCq9jNdCrrfrfWV9ugp98ifjqvk1JaGUntsAlkvSS7mkVbKa', 'Julian', NULL, 0, '7f02xkqokl', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(50, 3, 'arlo45', 'waters.ernestina@example.com', '2024-12-26 01:08:00', '$2y$10$OI7hLIQRnS6oDRJIKRxY2u3jSWbBZGuLZJpmw9Y0eo5lAWrkrjLXK', 'Cristopher', 'Terry', 0, 'beXm9GrS41', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(51, 3, 'kwisozk', 'rutherford.savannah@example.com', '2024-12-26 01:08:00', '$2y$10$RT7Kas8CJlX/XTiuHgYD6exYThLJtT47up7GDcAoz28.figw7zvSO', 'Carmela', NULL, 0, 'STWqnSI5ZA', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(52, 3, 'neha.grady', 'conroy.cassandre@example.org', '2024-12-26 01:08:00', '$2y$10$ij651YSDwUGeNANEfFqN.ebOFgLKatx2DUlnJAv8Eq5XAI2yjhRKy', 'Freeman', NULL, 0, 'nRJ535gWsj', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(53, 3, 'koepp.nicholas', 'mgottlieb@example.org', '2024-12-26 01:08:00', '$2y$10$Br5o1TKb3a2DFeLCNDESEufp/P1JSx7X/CFFaejZ9QRed5lgOEdS2', 'Carissa', 'Conn', 0, 'VbR120O8kF', '2024-12-26 01:08:00', '2024-12-26 01:08:00'),
(54, 3, 'abbey85', 'kemmer.alysa@example.com', '2024-12-26 01:08:00', '$2y$10$NHQNxCD6ArpExCorISRYOekgSJa5o.OrUxcP0gto/l6T5ip4tlzc.', 'Rosie', 'Hammes', 1, '65zivXRShW', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(55, 3, 'jfeest', 'vveum@example.com', '2024-12-26 01:08:00', '$2y$10$SKb3R74a5B/sJlmeHUIr6eNGJybzZC7LHxnaZDcFVZpi9JitWzx7G', 'Audra', NULL, 1, 'R5jVueUL2P', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(56, 3, 'gerardo40', 'kozey.clara@example.org', '2024-12-26 01:08:00', '$2y$10$2MJGqodqBmazZSMdD6pJyO3sEludYqFEMwVpf48Sr6DjK0gy2wDra', 'Johnpaul', 'Ferry', 1, 'ultJBQMMYw', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(57, 3, 'rodolfo.murazik', 'ahackett@example.net', '2024-12-26 01:08:01', '$2y$10$KrKHZif9uj8ftWQWUegjUu6l83K0f/5A/Ee7GWvpYDRzNH/dWWbJG', 'Salma', 'Gulgowski', 1, 'LEj52mp7tF', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(58, 3, 'celestine85', 'keshaun12@example.net', '2024-12-26 01:08:01', '$2y$10$e5pdWf3rR43po470otRdmObLqVzKg4cfCsuvNHq1DKwjfHZWcqQr6', 'Anya', 'Breitenberg', 1, 'F5prUXSk47', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(59, 3, 'bergnaum.clinton', 'lromaguera@example.com', '2024-12-26 01:08:01', '$2y$10$HGrtcca2uDRVNgWLoq0Rzulgw29AR/hxuoTs1VreHUl1DX9O5TnV6', 'Valentine', NULL, 1, 'BfhDgsCeoA', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(60, 3, 'vada39', 'kilback.toney@example.com', '2024-12-26 01:08:01', '$2y$10$ltZyENRFjG5wgywEW11wzOJTWwR6IcEfC4wfYX2ByQK8WVgVdPCuS', 'Isabella', 'Satterfield', 1, 'MQgdtfnu3d', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(61, 3, 'sandy.effertz', 'osinski.alexis@example.com', '2024-12-26 01:08:01', '$2y$10$I1wvRzItJ5eWOU3ygCWKz.2iRcSFRm9mYSY7vDQwDujeE4jh9Bhhy', 'Hailey', NULL, 1, 'TQD4U7Y7D2', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(62, 3, 'ansley79', 'harvey.torrey@example.org', '2024-12-26 01:08:01', '$2y$10$Eeqbb9JxAWLMYgWVSIfuSe84DYnVo2PuRg.clWCtUsmPD6JJ6bbtW', 'Matteo', NULL, 1, 'TPDxGkD0id', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(63, 3, 'mitchell.alberta', 'boyle.ludwig@example.com', '2024-12-26 01:08:01', '$2y$10$/X.sOTIzy/YaDFl8uvtmDeLqsfGPz1T.2lJpAFD882wJoTH2pq6Fy', 'Katlynn', 'Cronin', 1, 'lHTw01eyDr', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(64, 3, 'wilburn.wuckert', 'mervin.bednar@example.org', '2024-12-26 01:08:01', '$2y$10$MQSRfKlL8/Sm7YnkF8BCa.QcChkYWmCwVVGov1s/7WZafYMh7Gd/m', 'Eileen', NULL, 1, 'vDgFVw6S9o', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(65, 3, 'yking', 'nlabadie@example.org', '2024-12-26 01:08:01', '$2y$10$6gJ3yYxTwQNOZ4OCc9qWDeHsIuirmqyvf280H90sdV77gn9MzVYOm', 'Chester', 'Ebert', 1, '84eYYvTMwR', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(66, 3, 'sheaney', 'chanel79@example.net', '2024-12-26 01:08:01', '$2y$10$RPA.EzuuSNGSkZU0kbLjFOgnz6EchCkYQeKiD5YJOxRalLHbycrSq', 'Frieda', NULL, 1, 'TtWzzxFP5z', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(67, 3, 'camilla.runolfsson', 'wkub@example.org', '2024-12-26 01:08:01', '$2y$10$yg3jyeAQrRgPlS3CIDi7ZOzJxihWyS92Vul61x13/QHjL2fygAGeq', 'Gina', 'Flatley', 1, 'GL2VITuJjB', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(68, 3, 'leuschke.alden', 'daniella80@example.net', '2024-12-26 01:08:01', '$2y$10$mCqJz0WLAWvRR05/.QGr0e5fk0mZkWG9/3A.fitty1Lw3b0GXEVDi', 'Lionel', 'Franecki', 1, 'MvZxK6JUij', '2024-12-26 01:08:01', '2024-12-26 01:08:01');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

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
