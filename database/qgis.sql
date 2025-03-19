-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2025 at 11:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qgis`
--

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `criteria` text DEFAULT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `province`, `city`, `address`, `latitude`, `longitude`, `criteria`, `description`) VALUES
(1, 'Central Kalimantan', 'Palangkaraya', 'Jl. Bukit Raya IIIB No.56, Palangka, Kec. Jekan Raya, Kota PalangkaRaya, Kalimantan Tengah 74874\r\n', -2.20556, 113.897, 'Near residential area in 200m, Near shopping center', 'This location is good for supermarket because it is near to residences(Residence Bukit Raya), near to shopping mall(Kyle House), near to home goods store(Kebun Bibit Jambu Madu),near to Fitness Center(Evoluation Fitness Center), and near to Kost(Kost MIKSIVA, Kost EkslusifBR399, Kost Resa Linda)\r\n\r\nThe price of land around: 1.4 Billion'),
(2, 'Central Kalimantan', 'Sampit', 'Jl. Ahmad Yani No. 25, Sampit, Central Kalimantan', -2.53623, 112.959, 'Near bus station, Near place of worship, Near entertainment center', 'near Sampit city park, Habarig Hurung sports hall, Sampit wood museum, near hospital, near, grand hotel and is on the main road'),
(3, 'Central Kalimantan', 'Pangkalan Bun', 'Jl. Sudirman No. 99, Pangkalan Bun, Central Kalimantan', -2.68139, 111.625, 'Near health center, Near educational center, Near sports facilities', 'This location in Pangkalan Bun, Central Kalimantan, can be found at Jl. Sudirman No. 99. It is near a health center, an educational center, and sports facilities.'),
(4, 'Central Kalimantan', 'Buntok', 'Jl. Jendral Sudirman No. 15, Buntok, Central Kalimantan', -2.74505, 115.226, 'Near bus terminal, Near shopping center, Near sports facilities', 'This location in Buntok, Central Kalimantan, is situated at Jl. Jendral Sudirman No. 15. It is near a bus terminal, a shopping center, and sports facilities.'),
(5, 'Central Kalimantan', 'Kapuas', 'Jl. Kapten Pattimura No. 25, Kapuas, Central Kalimantan', -2.08608, 114.332, 'Near residential area, Near market, Near transportation hub', 'This location in Kapuas, Central Kalimantan, is located at Jl. Kapten Pattimura No. 25. It is near a residential area, a market, and a transportation hub.'),
(6, 'Central Kalimantan', 'Pulang Pisau', 'Jl. Jendral Sudirman No. 8, Pulang Pisau, Central Kalimantan', -3.07032, 113.944, 'Near residential area, Near market, Near transportation hub', 'This location in Pulang Pisau, Central Kalimantan, can be found at Jl. Jendral Sudirman No. 8. It is near a residential area, a market, and a transportation hub.'),
(7, 'Central Kalimantan', 'Sukamara', 'Jl. Imam Bonjol No. 10, Sukamara, Central Kalimantan', -2.63367, 111.208, 'Near residential area, Near shopping center, Near public facilities', 'This location in Sukamara, Central Kalimantan, is situated at Jl. Imam Bonjol No. 10. It is near a residential area, a shopping center, and public facilities.'),
(8, 'Central Kalimantan', 'Katingan', 'Jl. Yos Sudarso No. 20, Katingan, Central Kalimantan', -1.70095, 113.657, 'Near residential area, Near market, Near transportation hub', 'This location in Katingan, Central Kalimantan, is located at Jl. Yos Sudarso No. 20. It is near a residential area, a market, and a transportation hub.'),
(9, 'East Kalimantan', 'Balikpapan', 'Jl. H. Tjutjup Suparna, Gn. Samarinda, Kec. Balikpapan Utara, Kota Balikpapan, Kalimantan Timur 76114', -1.23948, 116.869, 'Near residential area in 200m, Near shopping center', 'This location is near to park, (Taman Tulip Sehat), and then it also near to guest house(Edelweis,Guest House), and it also near to mall (Mall Balikpapan Baru)'),
(10, 'East Kalimantan', 'Samarinda', 'Jl. Pangeran Antasari No. 32, Samarinda, East Kalimantan', -0.502106, 117.137, 'Near entertainment center, Near bus terminal, Near public facilities', 'This location in Samarinda, East Kalimantan, is situated at Jl. Pangeran Antasari No. 32. It is near an entertainment center, a bus terminal, and public facilities.'),
(11, 'East Kalimantan', 'Bontang', 'Jl. MT. Haryono No. 15, Bontang, East Kalimantan', 0.127428, 117.485, 'Near sports field, Near beach, Near shopping center', 'This location in Bontang, East Kalimantan, is located at Jl. MT. Haryono No. 15. It is near a sports field, a beach, and a shopping center.'),
(12, 'East Kalimantan', 'Kutai Kartanegara', 'Jl. Jenderal Sudirman No. 56, Tenggarong, Kutai Kartanegara, East Kalimantan', -0.425308, 117.008, 'Near shopping center, Near culinary center, Near tourist facilities', 'This location in Kutai Kartanegara, East Kalimantan, can be found at Jl. Jenderal Sudirman No. 56, Tenggarong. It is near a shopping center, a culinary center, and tourist facilities.'),
(13, 'East Kalimantan', 'Tenggarong', 'Jl. A. Yani No. 78, Tenggarong, Kutai Kartanegara', -0.475928, 116.952, 'Near shopping center, Near culinary center, Near tourist facilities', 'This location in Tenggarong, East Kalimantan, is situated at Jl. A. Yani No. 78. It is near a shopping center, a culinary center, and tourist facilities.'),
(14, 'East Kalimantan', 'Sangatta', 'Jl. P. Diponegoro No. 20, Sangatta, East Kalimantan', 0.486185, 117.152, 'Near beach, Near natural attractions', 'This location in Sangatta, East Kalimantan, is located at Jl. P. Diponegoro No. 20. It is near a beach and natural attractions.'),
(16, 'East Kalimantan', 'Tanjung Redeb', 'Jl. Pahlawan No. 10, Tanjung Redeb, Berau', 2.03371, 117.451, 'Near beach, Near natural attractions', 'This location in Sangatta, East Kalimantan, is situated at Jl. H. Agus Salim No. 12. It is near a shopping center, an entertainment center, and public facilities.'),
(18, 'East Kalimantan', 'Sangatta', 'Jl. H. Agus Salim No. 12, Sangatta, East Kalimantan', 0.504946, 117.142, 'Near shopping center, Near entertainment center, Near public facilities', 'This location in Sangkulirang, East Kalimantan, can be found at Jl. A. Yani No. 25. It is near a residential area, a market, and a transportation hub.'),
(19, 'East Kalimantan', 'Kutai Kartanegara', 'Jl. Diponegoro No. 40, Tenggarong, Kutai Kartanegara, East Kalimantan', -0.431541, 117.009, 'Near residential area, Near market, Near transportation hub', 'This location in Samarinda, East Kalimantan, is situated at Jl. Gatot Subroto No. 18. It is near a traditional market, a place of worship, and health facilities.'),
(20, 'East Kalimantan', 'Sangkulirang', 'Jl. A. Yani No. 25, Sangkulirang, East Kalimantan', 0.276481, 117.044, 'Near residential area, Near market, Near transportation hub', 'This location in Tarakan, North Kalimantan, is located at Jl. Mulawarman No. 40, Tarakan City. It is near a shopping center, public facilities, and a place of worship.'),
(21, 'East Kalimantan', 'Samarinda', 'Jl. Gatot Subroto No. 18, Samarinda, East Kalimantan', -0.506529, 117.141, 'Near traditional market, Near place of worship, Near health facilities', 'This location in Tanjung Selor, North Kalimantan, can be found at Jl. Gatot Subroto No. 20. It is near a school, a government center, and health facilities.'),
(22, 'North Kalimantan', 'Tarakan', 'Jl. Mulawarman No. 40, Tarakan City, North Kalimantan', 3.29701, 117.607, 'Near shopping center, Near public facilities, Near place of worship', 'This location in Malinau, North Kalimantan, is situated at Jl. Sultan Adam No. 10. It is near a government center, a sports field, and public facilities.'),
(23, 'North Kalimantan', 'Tanjung Selor', 'Jl. Gatot Subroto No. 20, Tanjung Selor, North Kalimantan', 2.82841, 117.389, 'Near school, Near government center, Near health facilities', 'This location in Berau, North Kalimantan, is located at Jl. H. Adam Malik No. 30, Tanjung Redeb. It is near a traditional market, a place of worship, and health facilities.'),
(24, 'North Kalimantan', 'Malinau', 'Jl. Sultan Adam No. 10, Malinau, North Kalimantan', 3.54345, 116.648, '\r\nNear factory tritama niaga jaya, near company KPUC, near factory gunung giri perkasa, near junior high school, near soccer hall ', 'This location in Berau, North Kalimantan, is situated at Jl. M. Yamin No. 5, Tanjung Redeb. It is near a government center, a sports field, and public facilities.'),
(25, 'North Kalimantan', 'Berau', 'Jl. H. Adam Malik No. 30, Tanjung Redeb, Berau', 2.05114, 117.444, 'Near traditional market, Near place of worship, Near health facilities', 'This location in Nunukan, North Kalimantan, can be found at Jl. Jenderal Sudirman No. 12. It is near a residential area, a market, and a transportation hub.'),
(26, 'North Kalimantan', 'Berau', 'Jl. M. Yamin No. 5, Tanjung Redeb, Berau', 2.03619, 117.445, 'Near government center, Near sports field, Near public facilities', 'Near government center, Near sports field, Near public facilities'),
(27, 'North Kalimantan', 'Nunukan', 'Jl. Jenderal Sudirman No. 12, Nunukan, North Kalimantan', 4.09521, 117.668, 'Near residential area, Near market, Near transportation hub', 'Near residential area, Near market, Near transportation hub'),
(28, 'North Kalimantan', 'Bulungan', 'Jl. Sultan Hasanuddin No. 20, Bulungan, North Kalimantan', 3.22325, 116.156, 'Near residential area, Near market, Near transportation hub', 'Near residential area, Near market, Near transportation hub'),
(29, 'North Kalimantan', 'Tana Tidung', 'Jl. H. Adam Malik No. 18, Tana Tidung, North Kalimantan', 3.37625, 117.567, 'Near residential area, Near market, Near transportation hub', 'Near residential area, Near market, Near transportation hub'),
(30, 'South Kalimantan', 'Barabai', 'Jl. A. Yani No. 45, Barabai, South Kalimantan', -2.58364, 115.38, 'Near entertainment center, Near public facilities, Near place of worship', 'Near entertainment center, Near public facilities, Near place of worship'),
(31, 'South Kalimantan', 'Banjarmasin', 'Jl. A. Yani KM 2, Banjarmasin, South Kalimantan', -3.31889, 114.594, 'Near shopping center, Near river, Near educational center', 'Near shopping center, Near river, Near educational center'),
(32, 'South Kalimantan', 'Martapura', 'Jl. A. Yani No. 89, Martapura, South Kalimantan', -3.41032, 114.863, 'Near traditional market, Near hospital, Near public facilities', 'Near traditional market, Near hospital, Near public facilities'),
(33, 'South Kalimantan', 'Banjarbaru', 'Jl. Ahmad Yani No. 34, Banjarbaru, South Kalimantan', -3.44473, 114.755, 'Near airport, Near train station, Near entertainment center', 'Near airport, Near train station, Near entertainment center'),
(34, 'South Kalimantan', 'Tanah Bumbu', 'Jl. Veteran No. 10, Tanah Bumbu, South Kalimantan', -3.40598, 115.26, 'Near residential area, Near market, Near transportation hub', 'Near residential area, Near market, Near transportation hub'),
(35, 'South Kalimantan', 'Hulu Sungai Selatan', 'Jl. Kartini No. 18, Hulu Sungai Selatan, South Kalimantan', -2.7343, 115.312, 'Near residential area, Near shopping center, Near public facilities', 'Near residential area, Near shopping center, Near public facilities'),
(36, 'South Kalimantan', 'Hulu Sungai Tengah', 'Jl. Ahmad Yani No. 22, Hulu Sungai Tengah, South Kalimantan', -2.97874, 115.241, 'Near residential area, Near shopping center, Near public facilities', 'Near residential area, Near shopping center, Near public facilities'),
(37, 'South Kalimantan', 'Balangan', 'Jl. Veteran No. 25, Balangan, South Kalimantan', -2.47269, 115.888, 'Near residential area, Near market, Near transportation hub', 'Near residential area, Near market, Near transportation hub'),
(38, 'South Kalimantan', 'Kotabaru', 'Jl. A. Yani No. 30, Kotabaru, South Kalimantan', -3.28138, 116.168, 'Near residential area, Near shopping center, Near public facilities', 'Near residential area, Near shopping center, Near public facilities'),
(39, 'West Kalimantan', 'Pontianak', 'Jl. Ahmad Yani No. 1, Pontianak, West Kalimantan', -0.032141, 109.34, 'Near university campus, Near culinary center, Near sports facilities', 'Near university campus, Near culinary center, Near sports facilities'),
(40, 'West Kalimantan', 'Singkawang', 'Jl. P. Diponegoro No. 34, Singkawang, West Kalimantan', 0.912503, 108.987, 'Near shopping center, Near beach, Near entertainment center', 'Near shopping center, Near beach, Near entertainment center'),
(41, 'West Kalimantan', 'Ketapang', 'Jl. P. Diponegoro No. 50, Ketapang, West Kalimantan', -1.82591, 109.963, 'Near football field, Near shopping center, Near educational center', 'Near football field, Near shopping center, Near educational center'),
(42, 'West Kalimantan', 'Sintang', 'Jl. Imam Bonjol No. 28, Sintang, West Kalimantan', 0.062728, 111.477, 'Near traditional market, Near place of worship, Near health facilities', 'Near traditional market, Near place of worship, Near health facilities'),
(43, 'West Kalimantan', 'Sanggau', 'Jl. Ahmad Yani No. 15, Sanggau, West Kalimantan', 0.927529, 110.586, 'Near residential area, Near market, Near transportation hub', 'Near residential area, Near market, Near transportation hub'),
(44, 'West Kalimantan', 'Melawi', 'Jl. Pangeran Diponegoro No. 78, Melawi, West Kalimantan', -0.822729, 111.473, 'Near residential area, Near shopping center, Near public facilities', 'Near residential area, Near shopping center, Near public facilities'),
(45, 'West Kalimantan', 'Bengkayang', 'Jl. RE. Martadinata No. 5, Bengkayang, West Kalimantan', 0.805919, 109.969, 'Near residential area, Near market, Near transportation hub', 'Near residential area, Near market, Near transportation hub'),
(46, 'West Kalimantan', 'Landak', 'Jl. Gajah Mada No. 15, Landak, West Kalimantan', 0.863852, 109.955, 'Near residential area, Near shopping center, Near public facilities', 'Near residential area, Near shopping center, Near public facilities'),
(47, 'West Kalimantan', 'Sanggau Regency', 'Jl. Ahmad Yani No. 8, Sanggau Regency, West Kalimantan', 0.925021, 110.505, 'Near residential area, Near shopping center, Near public facilities', 'Near residential area, Near shopping center, Near public facilities'),
(48, 'West Kalimantan', 'Sekadau', 'Jl. Sudirman No. 20, Sekadau, West Kalimantan', 0.07615, 111.479, 'Near residential area, Near market, Near transportation hub', 'Near residential area, Near market, Near transportation hub'),
(49, 'West Kalimantan', 'Sanggau', 'Jl. S Parman No. 12, Sanggau, West Kalimantan', 0.922567, 110.587, 'Near residential area, Near shopping center, Near public facilities', 'Near residential area, Near shopping center, Near public facilities'),
(50, 'West Kalimantan', 'Ketapang', 'Jl. Ahmad Yani No. 10, Ketapang, West Kalimantan', -1.84264, 109.972, 'Near residential area, Near market, Near transportation hub', 'Near residential area, Near market, Near transportation hub');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `nama_lokasi` varchar(100) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id`, `nama_lokasi`, `latitude`, `longitude`) VALUES
(1, 'Jakarta', '-6.208760', '106.845599'),
(2, 'Makassar', '-5.147696', '119.432593'),
(3, 'Padang', '-0.947110', '100.414603'),
(4, 'Pontianak', '-0.027842', '109.344250'),
(5, 'Manokwari', '-0.861277', '134.062422'),
(6, 'Nabire', '-3.371565', '135.501464'),
(7, 'Yogyakarta', '-7.795766', '110.369866'),
(8, 'Bali', '-8.344295', '115.101547'),
(9, 'Palangkaraya', '-2.216392', '113.921577'),
(10, 'Palembang', '-2.976224', '104.773948');

-- --------------------------------------------------------

--
-- Table structure for table `road`
--

CREATE TABLE `road` (
  `road_id` int(10) NOT NULL,
  `road_name` varchar(244) DEFAULT NULL,
  `road_desc` varchar(255) DEFAULT NULL,
  `road` linestring DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `road`
--

INSERT INTO `road` (`road_id`, `road_name`, `road_desc`, `road`) VALUES
(222, 'Sudirman Road', 'Main Road', 0x00000000010200000003000000000000000000244000000000000024400000000000002440000000000000344000000000000024400000000000003940);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `road`
--
ALTER TABLE `road`
  ADD PRIMARY KEY (`road_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
