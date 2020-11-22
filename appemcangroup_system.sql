-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2020 at 05:42 PM
-- Server version: 10.2.36-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appemcangroup_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image_backGround` varchar(255) DEFAULT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `content_ar` text DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `content_en` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `image`, `image_backGround`, `title_ar`, `content_ar`, `title_en`, `content_en`) VALUES
(1, 'http://fastcleanbh.com/system/api/uploads/about/78-785827_user-profile-avatar-login-account-male-user-icon.png', 'http://fastcleanbh.com/system/api/uploads/about/160500892178-785827_user-profile-avatar-login-account-male-user-icon.png', 'إمكان', 'شركة إمكان لتقنية المعلومات هي شركة بحرينية تعمل في مجال تقنية المعلومات والتسويق الإلكتروني. تأسست الشركة في عام 2016 على أيدي مختصين لديهم خبرات متعددة لسنوات طويلة في هذا المجال. في هذه الفترة القصيرة تمكنت إمكان من فرض نفسها كواحدة من أبرز واهم الشركات في مجال تقنية المعلومات في مملكة البحرين عن طريق تصميم وبرمجة أكثر من 270 موقع إلكتروني حتى الآن، وأكثر من 45 تطبيق موبايل على منصة الأندرويد والآيفون بالإضافة إلى إدارة مواقع التواصل الإجتماعي والسوشيال ميديا لمجموعة من الشركات الكبيرة في مملكة البحرين ومنطقة الخليج العربي بشكل عام. ليس هذا فقط، بل تمتلك إمكان مجموعة من المنتجات المميزة التي ساعدت المجتمع على إيجاد حلول للمشاكل التي تواجههم بشكل مستمر في حياتهم اليومية. تتميز إمكان بإمتلاكها فريق عمل متميز من الشباب المجتهد الطموح الذي يسعى لإثبات نفسه دائماً وإخراج أفضل ما لديه وتحقيق النجاحات عام بعد عام حتى نحقق النمو والإرتقاء والنهضة في مجال تكنولوجيا المعلومات في مجتمعنا العربي. كما تسير إمكان على خطى وأهداف ثابتة وضمن رؤية مملكتنا الحبيبة 2030.\r\n\r\n', 'ُEmcan Group', 'It can is a Bahraini it and e-marketing company. The company was founded in 2016 by professionals with many years of experience in the industry. In this short period, it was able to impose itself as one of the most prominent and important it companies in the Kingdom of Bahrain by designing and programming more than 270 websites so far. More than 45 mobile applications on the Android and iPhone platform, as well as social and social media management for a group of large companies in the Kingdom of Bahrain and the Arab Gulf region in general. Not only is this, but it has the potential of a range of distinctive products that have helped society find solutions to the problems they face constantly in their daily lives. It is the first time that we are able to build a new business that is based on the best of the world and the best of the world. It is also possible to follow a steady pace and goals and within the vision of our grain-monarchate 2030.');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `client_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `client_password` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `client_email` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `client_phone` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `client_verify` int(11) NOT NULL DEFAULT 0,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `client_name`, `client_password`, `client_email`, `client_phone`, `client_verify`, `date`) VALUES
(1, 'safy-eissa', '123456', 'sara@yahoo.com', '0120393179', 1, '2020-05-23 15:59:57'),
(2, 'Moustafa Test', '', 'Moustafa Test', '', 0, '2020-05-30 14:20:12'),
(3, 'Abdul Ahad', '33192474', '', '33192474', 1, '2020-05-30 18:59:39'),
(4, 'Youmna Mohammed', '1234', 'youmnamohammediti@gmail.com', '01203931792', 0, '2020-06-04 22:07:28'),
(5, 'Youmna Mohammed', '1234', 'youmnamohammed@gmail.com', '012039317', 0, '2020-06-04 22:37:33'),
(6, 'Youmna Mohammed', '1234', 'ggg', '01203931', 0, '2020-06-07 08:55:41'),
(7, 'Youmna Mohammed', '1234', 'youmna@yahoo.com', '012465555', 0, '2020-06-07 20:38:04'),
(8, 'nn', '1234', '', '22222222', 0, '2020-06-14 19:46:41'),
(9, 'eeeer', '', 'eeeer', '', 0, '2020-06-14 20:11:07'),
(10, 'george', 'george223', 'george@almuharekat.com', '37335584', 0, '2020-06-15 19:48:12'),
(11, 'EmcanTest', '999999', 'm@gmail.com', '39932977', 0, '2020-06-17 12:43:28'),
(12, '٤٣٤', '١٢٣٤', '٤٣٤', '٤٤٤٤٤٤٤', 0, '2020-06-17 13:23:45'),
(13, '323', '1234', '323', '55555555', 0, '2020-06-17 13:24:17'),
(14, 'ansari', '123456', 'ansari', '39459959', 0, '2020-06-18 17:28:52'),
(15, 'Marwa Ahmed Fathalla', '1234', '', '01224300', 0, '2020-07-14 10:14:51'),
(16, 'mostafa', '1234', '', '01225101', 0, '2020-07-19 16:05:45'),
(18, 'esraa fathyy', '666666', '', '01554898751', 0, '2020-07-21 15:38:02'),
(19, 'mohamed saber', '123456', '', '33340388', 0, '2020-07-22 18:00:26'),
(20, 'esraa fathy', '666666', '', '01010900430', 0, '2020-07-23 01:44:17'),
(21, '323', '$client_password', '323', '323', 1, '32'),
(22, 'Moustafa Test', '999999', '', '33405497', 1, '2020-07-25 18:10:29'),
(23, 'fatima alhamdan', '062470981', '', '33683333', 0, '2020-07-26 11:53:27'),
(24, 'Ebrahim Hamdan', 'pzhsarkj96', '', '38883747', 0, '2020-07-26 12:08:24'),
(25, 'Maryam Alhamdan', 'Marya14578', '', '39664344', 0, '2020-07-26 12:13:21'),
(26, 'sree', 'sree618191', '', '34216769', 0, '2020-08-09 11:11:12'),
(27, 'ahmed', '555313aa', '', '33825259', 0, '2020-08-17 18:59:47'),
(28, 'shougj', 'shoug123', '', '60306001', 0, '2020-08-25 03:36:20'),
(29, 'emcan', '123456', '', '33401234', 0, '2020-09-12 18:42:04'),
(30, 'alaa gomaa', '123456', '', '33388357', 1, '2020-09-17 08:57:13'),
(31, 'john', '12345678', '', '6366783921', 1, '2020-09-17 12:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `client_addresses`
--

CREATE TABLE `client_addresses` (
  `client_address_id` int(11) NOT NULL,
  `lat` varchar(255) CHARACTER SET utf8 NOT NULL,
  `lang` varchar(255) CHARACTER SET utf8 NOT NULL,
  `region` varchar(50) CHARACTER SET utf8 NOT NULL,
  `block` varchar(255) CHARACTER SET utf8 NOT NULL,
  `road` varchar(255) CHARACTER SET utf8 NOT NULL,
  `building` varchar(255) CHARACTER SET utf8 NOT NULL,
  `flat_number` varchar(255) CHARACTER SET utf8 NOT NULL,
  `client_phone` varchar(255) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `client_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `client_addresses`
--

INSERT INTO `client_addresses` (`client_address_id`, `lat`, `lang`, `region`, `block`, `road`, `building`, `flat_number`, `client_phone`, `note`, `client_id`, `date`) VALUES
(2, '', '', '84', '323232', '874 Runnymede Rd, Woodside, CA 94062, USA', '323232', '322', '3232323', '333', '9', '2020-06-15 09:39:47'),
(3, '', '', '83', 'eeewewew', '27887 Baker Ln, Los Altos Hills, CA 94022, USA', '22', 'e2', 'ds', 'ewe we', '7', '2020-06-16 11:42:18'),
(4, '', '', '', '', 'King Faisal Hwy, Manama, Bahrain', '', '', '', '', '14', '2020-06-18 17:41:16'),
(5, '0', '0', '86', 'block 10', 'street 9', 'building 11', 'flat 21', '01224300', 'Added notes', '15', '2020-07-16 15:45:19'),
(6, '31.07887346292744', '29.74619351327419', '85', '088', 'Earthy Pass', 'building', '58', '01554898751', '', '18', '2020-07-21 17:23:31'),
(7, '26.2371310651502', '50.57821489870548', '85', '222', '383 Government Ave', '555', '', '33340388', '', '19', '2020-07-22 22:46:25'),
(9, '', '', '83', '125', '1748', '125', '1', '33405497', '', '22', '2020-07-25 20:17:57'),
(10, '25.829337020136', '50.609143058715', '35', '226', '2648', '2339', '', '33683333', '', '23', '2020-07-26 11:56:05'),
(11, '26.223095546569', '50.667187505938', '6', '366?', '6678', '667', '', '38883747', '', '24', '2020-07-26 12:19:39'),
(12, '', '', '76', '345', '543', '5435', '543', '01090083525', '', '1', '2020-07-27 14:26:38'),
(13, '26.222521025658', '50.662804508001', '51', '115', '1508', '44', '', '34216769', '', '26', '2020-08-09 11:14:31'),
(14, '26.19802946300285', '50.46638656407595', '4', '551', 'Rd No 5105', '85', '', '33825259', '', '27', '2020-08-17 20:51:41'),
(15, '26.198022844645823', '50.466386899352074', '68', '525', 'Rd No 5105', '77', '', '33825259', '', '27', '2020-08-17 23:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `client_id`, `title`, `content`, `date`) VALUES
(2, 15, 't', 'C', '2020-07-19 16:21:29'),
(3, 18, 'title ', 'My message ', '2020-07-21 17:43:38'),
(4, 19, 'تتن', 'نتتت', '2020-07-22 22:52:13'),
(5, 24, 'fghn', 'Hbbnbhj', '2020-07-26 12:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_en` varchar(255) NOT NULL,
  `address_ar` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `behance` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `apple_store` varchar(255) DEFAULT NULL,
  `google_store` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `phone`, `website`, `address_en`, `address_ar`, `email`, `behance`, `facebook`, `twitter`, `instagram`, `apple_store`, `google_store`) VALUES
(1, '+97333405497', 'https://emcan-group.com/', 'Office 51, Building 1025, Road 3621, Block 436  Al-Raya Building, Seef', 'المكتب 51، المبنى 1025، الطريق 3621، المبنى 436  مبنى الراية، سيف', 'info@emcan.com', 'https://www.behance.net/emcansolutc375', 'https://www.facebook.com/emcansolutions.bh/', 'https://twitter.com/EmcanSolutions?s=08', 'https://instagram.com/emcansolutions?igshid=1ahcqiqgocq80', 'https://itunes.apple.com/sa/developer/mustapha-saber/id1442329022', 'https://play.google.com/store/apps/developer?id=Emcan');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(225) CHARACTER SET utf8 NOT NULL,
  `title` varchar(225) CHARACTER SET utf8 NOT NULL,
  `subject` text CHARACTER SET utf8 NOT NULL,
  `date_added` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `title`, `subject`, `date_added`) VALUES
(11, 'تجريب', 'safyeissa208@gmail.com', 'teeest', 'safy', '2020-07-25 15:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `device_token_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `login` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `device_token_id`, `client_id`, `login`, `date_added`) VALUES
(10, 10, 4, 1, '2020-06-06 19:31:41'),
(9, 9, 5, 1, '2020-06-04 22:37:33'),
(8, 8, 5, 1, '2020-06-04 22:37:33'),
(7, 7, 4, 1, '2020-06-04 22:07:28'),
(11, 11, 6, 1, '2020-06-07 08:55:41'),
(12, 12, 6, 1, '2020-06-07 08:55:41'),
(13, 13, 7, 1, '2020-06-07 20:38:04'),
(14, 14, 7, 1, '2020-06-07 20:38:04'),
(15, 15, 1, 1, '2020-06-07 20:47:49'),
(16, 16, 1, 1, '2020-06-07 20:47:49'),
(17, 17, 4, 1, '2020-06-08 11:57:31'),
(18, 18, 7, 1, '2020-06-12 01:13:06'),
(19, 19, 7, 1, '2020-06-13 23:17:54'),
(20, 20, 7, 1, '2020-06-14 11:53:13'),
(21, 21, 7, 1, '2020-06-14 12:03:29'),
(22, 22, 7, 1, '2020-06-14 13:11:54'),
(23, 23, 8, 1, '2020-06-14 19:46:41'),
(24, 24, 9, 1, '2020-06-14 20:11:07'),
(25, 25, 10, 1, '2020-06-15 19:48:12'),
(26, 26, 7, 1, '2020-06-16 13:22:12'),
(27, 27, 7, 1, '2020-06-17 00:26:17'),
(28, 28, 11, 1, '2020-06-17 12:43:28'),
(29, 29, 12, 1, '2020-06-17 13:23:45'),
(30, 30, 13, 1, '2020-06-17 13:24:17'),
(31, 31, 14, 1, '2020-06-18 17:28:52'),
(32, 32, 2, 1, '2020-06-18 19:48:35'),
(33, 33, 7, 1, '2020-06-19 16:34:43'),
(34, 34, 7, 1, '2020-06-19 20:26:16'),
(35, 35, 15, 1, '2020-07-14 10:14:51'),
(36, 36, 15, 1, '2020-07-19 15:25:29'),
(37, 37, 15, 1, '2020-07-19 15:56:24'),
(38, 38, 16, 1, '2020-07-19 16:05:45'),
(39, 39, 15, 1, '2020-07-19 16:16:16'),
(40, 40, 15, 1, '2020-07-19 23:39:05'),
(41, 41, 15, 1, '2020-07-20 01:44:23'),
(42, 154, 17, 1, '2020-07-21 15:14:59'),
(43, 161, 18, 1, '2020-07-21 15:38:02'),
(44, 179, 19, 1, '2020-07-22 18:00:26'),
(45, 183, 20, 1, '2020-07-23 01:44:17'),
(46, 196, 23, 1, '2020-07-26 11:53:27'),
(47, 197, 24, 1, '2020-07-26 12:08:24'),
(48, 198, 25, 1, '2020-07-26 12:13:21'),
(49, 200, 15, 1, '2020-07-27 18:16:15'),
(50, 207, 26, 1, '2020-08-09 11:11:12'),
(51, 214, 27, 1, '2020-08-17 18:59:47'),
(52, 222, 28, 1, '2020-08-25 03:36:20'),
(53, 236, 29, 1, '2020-09-12 18:42:04'),
(54, 239, 1, 1, '2020-09-16 00:23:49'),
(55, 243, 15, 1, '2020-09-16 14:34:53'),
(56, 244, 2, 1, '2020-09-17 11:57:20'),
(57, 246, 22, 1, '2020-09-17 12:06:28'),
(58, 252, 31, 1, '2020-09-17 12:24:02'),
(59, 254, 1, 1, '2020-09-17 12:31:37'),
(60, 262, 30, 1, '2020-09-20 15:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `device_token`
--

CREATE TABLE `device_token` (
  `id` int(11) NOT NULL,
  `device_token` varchar(200) CHARACTER SET utf8 NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device_token`
--

INSERT INTO `device_token` (`id`, `device_token`, `type`, `date_added`) VALUES
(10, '', 'android', '2020-06-06 19:31:41'),
(8, '', 'android', '2020-06-04 22:37:33'),
(9, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-06-04 22:37:33'),
(7, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-06-04 22:07:28'),
(11, '', 'android', '2020-06-07 08:55:41'),
(12, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-06-07 08:55:41'),
(13, '', 'android', '2020-06-07 20:38:04'),
(14, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-06-07 20:38:04'),
(15, '', 'android', '2020-06-07 20:47:49'),
(16, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-06-07 20:47:49'),
(17, 'eVRZrmcPzik:APA91bE3jYljB_j8Tk69_pdmsME-k-mW3UXgV4OuIDBvCr_gyYxc7XKo2FIWRy9CYnNysleNRlrpVvF7MdJLWngYnt7Xu1O1D37eNrIPH3OwyZR1NQv-dVnq4Xsv7SzOfvKGfkjIOC5J', 'android', '2020-06-08 11:57:31'),
(18, 'fzUl9juvwEhEt9h20Yvm_I:APA91bFklVcD17CHmp-ECP0I2wro3StqxWCDuoAFf0PHUSXNxwb3tKuf2C0crcbOpkg9tIGUlr7ZSWT9HQXmuthrZiIvSeDE_Y00okFPcgwt0YUqlXa3tzpgvteK5V9oc82rGkZ5YbG4', '1', '2020-06-12 01:13:06'),
(19, 'eNgFEMzDNUtWpFjVvWo3sj:APA91bEvtl96ULH_aXDsWoxO6YWJzf2DqZx5KwqSFUik7Nj5Fsbg6XX7MCqf0nfVJM-pmpAlljPzQwNsUK84TQIkOQG-xWdQa-rrDm5G8Ug8r4mibn9RYgjnJq-kVWvSUDwo86cn72Zl', '1', '2020-06-13 23:17:54'),
(20, 'e3gWeXzUfUNshtgnffRELl:APA91bEXVlNzuq4yn-RS7VgVDBhjrVdGxYtxXQgRapbblUoKyUdLiz337Nw3EvKqAQUcQH9Sp8uqs1E3LP6MqKjohoTtnZnzVYLRBwAS68CqZ9i_bQ1Qo-5zDcBDaOkpBijKpeEGfj3M', '1', '2020-06-14 11:53:13'),
(21, 'fcUOzNWJ10SqjTZiO-vbhN:APA91bH8Ud3SwqL1ybkGu-wxnb4ClJoTt45xo_yJOy4y73HF9ffI5d0eDfXQSgKioIb1R0F8oRzCewbUGIzIUP4EODiftgkpe4D_zOYwXTgxDKm_pq7c8Eg-Lv5XkKnpzwoBNb8Y3c-V', '1', '2020-06-14 12:03:29'),
(22, 'fE02w1a_V0chlihSXCaaY_:APA91bEW-8c6Wqy8CnS6AuS5lCrZI0Sp9Utraw7wiTBgVvqbsarnDHzGVUutA_TFBucuhwQKUyhYUN2P_AL6wQOywD1qEJsgU7ihqmHhveylSN4RpWr8fUbSfwqvTowCiJ5wYvEjjzL_', '1', '2020-06-14 13:11:54'),
(23, 'fE02w1a_V0chlihSXCaaY_:APA91bEW-8c6Wqy8CnS6AuS5lCrZI0Sp9Utraw7wiTBgVvqbsarnDHzGVUutA_TFBucuhwQKUyhYUN2P_AL6wQOywD1qEJsgU7ihqmHhveylSN4RpWr8fUbSfwqvTowCiJ5wYvEjjzL_', '', '2020-06-14 19:46:41'),
(24, 'fE02w1a_V0chlihSXCaaY_:APA91bEW-8c6Wqy8CnS6AuS5lCrZI0Sp9Utraw7wiTBgVvqbsarnDHzGVUutA_TFBucuhwQKUyhYUN2P_AL6wQOywD1qEJsgU7ihqmHhveylSN4RpWr8fUbSfwqvTowCiJ5wYvEjjzL_', '', '2020-06-14 20:11:07'),
(25, 'dPRcmGAfDdY:APA91bFHAiOzYJedTk5nX_TJt2-SNsnXZ0Zry6Hp_wfb7wvB_tAOsN8B2uxzMBlolQpygina1e8wvTnN-Tc_5Pl4d5_ksOWHJF_2P98I8G2Ko-qjXi7v4GDf-j1FLy4oxx1rTE1MskDu', 'android', '2020-06-15 19:48:12'),
(26, 'cfcail_MqkHCgYVDprK3Ao:APA91bHQzFTz2U4DQCqFvrFZYU7FLSrGC1talGepr3MjO3U04X8xjBhHVAyP8ogTxFkaORnY91vWAQRnWXUa0r_CZmxOVzp7eUDfoqT9IgFyUfiAb5Fpek1Mmtj4YpQyll9-Y5o7jmCi', '1', '2020-06-16 13:22:12'),
(27, 'd-sVIwNP7Exoh0FdzDAZyI:APA91bE16awxxvt-7SC2jvmnQfJDlZsSHPC_THEVwJ0vgXjb0Upbrd9JbY2xpsJKsTKW8PKLUw03IpHAnTgXRH-S9FVPeGWI9MJNfVjGk53jam7MqO_58drhRc5WdN4rBPn2Rr55vwYL', '1', '2020-06-17 00:26:17'),
(28, 'dl0xbQW7zhY:APA91bHb8i8ZFxnLkeiIHJjDXsEwK_7SfHY_O4CP89ZaWrepgp08MH_79fKaZ3eFgYseaCXnlLqTdVDs8Kb7u3kk-rPgceLT7eqCvo09oiaVjM05YYQSvDmrsDI5FuPkPqwscAG528ox', 'android', '2020-06-17 12:43:28'),
(29, 'fE02w1a_V0chlihSXCaaY_:APA91bEW-8c6Wqy8CnS6AuS5lCrZI0Sp9Utraw7wiTBgVvqbsarnDHzGVUutA_TFBucuhwQKUyhYUN2P_AL6wQOywD1qEJsgU7ihqmHhveylSN4RpWr8fUbSfwqvTowCiJ5wYvEjjzL_', '', '2020-06-17 13:23:45'),
(30, 'fE02w1a_V0chlihSXCaaY_:APA91bEW-8c6Wqy8CnS6AuS5lCrZI0Sp9Utraw7wiTBgVvqbsarnDHzGVUutA_TFBucuhwQKUyhYUN2P_AL6wQOywD1qEJsgU7ihqmHhveylSN4RpWr8fUbSfwqvTowCiJ5wYvEjjzL_', '', '2020-06-17 13:24:17'),
(31, 'dJf4tKx7z0_CoR-QXCU20K:APA91bFDYiOcnf84Tk5Z5qnCLO3hxtBUnDtdC9eZg1_FddSVmOnqfWwCFU1UKQo85PdkdgOU4vn4NbAqD4vBspOLwee1v0XipWHPFR56Cez8VF-tj2lywhl8GlFJd6fONk-fTP_nEWpS', '', '2020-06-18 17:28:52'),
(32, 'c6OuBroqgk1Lj63_Muke2u:APA91bHj2d9HKY9am9EtMwV8YDS_9xWHV5jcKEM1JVyxXwDit60pgXgOl2ddjmh0lKVOD1Up4nWW5o4cQm-6VsYm6bf0iIrAQbGZg_3G47xyAeJtqcgzDHEqq1Ro4Rhh0edrghnjy6HS', '1', '2020-06-18 19:48:35'),
(33, 'cswKUHBet08Wu9yBTWflbM:APA91bEQQAjPYDr0Y7k0214rewXNaqTqrZxiA8BVKpQmfWU2uXlpv1BnzjWWEXylLZEA50bLIUPiBvlaNMAnzD1s4nZPn4InoFbnHNTmr5wGrC0CvZLnec9DzeCxJhHSYPzECax3n0dM', '1', '2020-06-19 16:34:43'),
(34, 'dhKw7uGmnElEtvpX2QQ7Ib:APA91bGerA6U1P1TzaU9m0eydbjKJlcQzNKFhuGoZCirxyLEf5Kiror04C1Zmpo-GJ0ljzQAF5jInXpCzimLi1qccKwg5HmRMOG_FujmfETqkHgd2_J8e5HTdiNYrKPvYGwLnG16AeCg', '1', '2020-06-19 20:26:16'),
(35, 'eqz2Ao42v088kfxMEZR-Jm:APA91bGbwNBdBkqqTqRTmFHn1nD9JgM39ghuCeV8rDolKygaAMP6h6AbTrv224739lE1GLqEPALCCxTGj4KY9yV7mQ0luC4sFSY9Gxrf5lX_fpnszZBWAmKoZgf2Kwex0Zx_Qb6K6od6', 'ios', '2020-07-14 10:14:51'),
(36, 'efhq47RurUWUsA5hN7H4v3:APA91bHloNAt585sHxlNB_PPXoE6cSF3x7X8DZXCGVRdog-bWcjnf5klVr7Kqs2J6-spUQITpGvOuhmgIMbjhgb60N6XAeQxHhqNmozkraO4xqlW4-5hrk1rKGaUC84XGXR1ugHdBr2s', 'ios', '2020-07-19 15:25:29'),
(37, 'f9GmVLbx_ULpjeDkwTtUKc:APA91bHagHbsgRHSKYiTxLlbn4nuFEYKb21STZsE9oAWHnwnzv5AN41tUR6Vo7pPOpRQXAGQkJdkkwe4WmUUOdYUfMw5I7C3DG0mkJGptXpUTBkLgY9PX28OVCdOe-1xtn2N9t9FG47P', 'ios', '2020-07-19 15:56:24'),
(38, 'f9GmVLbx_ULpjeDkwTtUKc:APA91bHagHbsgRHSKYiTxLlbn4nuFEYKb21STZsE9oAWHnwnzv5AN41tUR6Vo7pPOpRQXAGQkJdkkwe4WmUUOdYUfMw5I7C3DG0mkJGptXpUTBkLgY9PX28OVCdOe-1xtn2N9t9FG47P', 'ios', '2020-07-19 16:05:45'),
(39, 'figrXCRD40cbjuCAVqo76A:APA91bHqxuXBwdD3QCn7LWvwiTQ4pEMhY7T-N_CZhJEgIS0vX75uPo0gjswHRBoeuZ39cbWYYzMYOn6EcdvBAIJltOIAISrfP9mIazwbZXymUKRyFuNwT4_Btxj6PRsP-W8PXUr5IDWr', 'ios', '2020-07-19 16:16:16'),
(40, 'd3KgggDs_0YtlrWLkTFQJC:APA91bGQLggydY71-Fe8gVdfOePFhiIAnGfuPxDcuedZnY3NvQtnkIOZLGLAUtUOjAZsYsRR-_FqqgV7C06Yvk6JBJPrl5pGlaoZlzhlp1rSiLY3vge3XS1reScs3neXcLC5Dd3F6oDO', 'ios', '2020-07-19 23:39:05'),
(41, 'eyKeSEntN0jEjFgNQj3ezk:APA91bFLUUrvwzpcFcm5Lzv1mpZk66JTn_COZzWkKD8tLKFmuoTXuuLU5ybKmCcXP8fhAKT3NYfB1ICtNqj-QM2UwkfQZBuOah9hwzNZTQBk6KoHAdq7dAZ3EGYhn2mVhhGhVsOYqsWZ', 'ios', '2020-07-20 01:44:23'),
(42, 'cwWXeeMzB4w:APA91bF4RMJ55lP12CSATZj2dyAMgl0UQ3Gu-wlnOWjN85CtfwON6ASg4xUwURQYyyTgbFNYBNjDRfpVOTlm_tHYj2fcaqje4U2Swt4q8-SxllG19clAQ9w7JAwUSLtNhYEGthoYMOuK', 'android', '2020-07-20 20:02:22'),
(43, 'cwWXeeMzB4w:APA91bF4RMJ55lP12CSATZj2dyAMgl0UQ3Gu-wlnOWjN85CtfwON6ASg4xUwURQYyyTgbFNYBNjDRfpVOTlm_tHYj2fcaqje4U2Swt4q8-SxllG19clAQ9w7JAwUSLtNhYEGthoYMOuK', 'android', '2020-07-20 20:04:48'),
(44, 'cwWXeeMzB4w:APA91bF4RMJ55lP12CSATZj2dyAMgl0UQ3Gu-wlnOWjN85CtfwON6ASg4xUwURQYyyTgbFNYBNjDRfpVOTlm_tHYj2fcaqje4U2Swt4q8-SxllG19clAQ9w7JAwUSLtNhYEGthoYMOuK', 'android', '2020-07-20 20:44:52'),
(45, 'cwWXeeMzB4w:APA91bF4RMJ55lP12CSATZj2dyAMgl0UQ3Gu-wlnOWjN85CtfwON6ASg4xUwURQYyyTgbFNYBNjDRfpVOTlm_tHYj2fcaqje4U2Swt4q8-SxllG19clAQ9w7JAwUSLtNhYEGthoYMOuK', 'android', '2020-07-20 21:06:45'),
(46, 'cwWXeeMzB4w:APA91bF4RMJ55lP12CSATZj2dyAMgl0UQ3Gu-wlnOWjN85CtfwON6ASg4xUwURQYyyTgbFNYBNjDRfpVOTlm_tHYj2fcaqje4U2Swt4q8-SxllG19clAQ9w7JAwUSLtNhYEGthoYMOuK', 'android', '2020-07-20 21:09:26'),
(47, 'cwWXeeMzB4w:APA91bF4RMJ55lP12CSATZj2dyAMgl0UQ3Gu-wlnOWjN85CtfwON6ASg4xUwURQYyyTgbFNYBNjDRfpVOTlm_tHYj2fcaqje4U2Swt4q8-SxllG19clAQ9w7JAwUSLtNhYEGthoYMOuK', 'android', '2020-07-20 21:12:38'),
(48, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:16:59'),
(49, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:32:09'),
(50, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:33:49'),
(51, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:34:31'),
(52, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:35:24'),
(53, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:35:55'),
(54, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:36:32'),
(55, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:37:36'),
(56, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:37:58'),
(57, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:39:53'),
(58, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:41:33'),
(59, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:42:18'),
(60, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:42:38'),
(61, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:43:47'),
(62, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:46:12'),
(63, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:46:40'),
(64, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:47:29'),
(65, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:48:07'),
(66, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:52:29'),
(67, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:53:34'),
(68, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:54:30'),
(69, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:55:00'),
(70, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:00:00'),
(71, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:02:43'),
(72, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:06:45'),
(73, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:07:34'),
(74, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:09:51'),
(75, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:13:46'),
(76, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:14:35'),
(77, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:15:34'),
(78, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:22:14'),
(79, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:36:40'),
(80, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:38:53'),
(81, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:40:18'),
(82, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:42:14'),
(83, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:42:40'),
(84, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:45:36'),
(85, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:46:46'),
(86, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:47:58'),
(87, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:08:57'),
(88, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:10:27'),
(89, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:17:28'),
(90, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:17:39'),
(91, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:18:56'),
(92, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:20:03'),
(93, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:20:24'),
(94, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:24:11'),
(95, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:27:11'),
(96, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:34:48'),
(97, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:07:35'),
(98, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:09:12'),
(99, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:16:35'),
(100, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:23:20'),
(101, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:33:24'),
(102, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:38:12'),
(103, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:39:28'),
(104, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:39:38'),
(105, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:40:27'),
(106, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:42:49'),
(107, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:43:42'),
(108, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:44:31'),
(109, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:44:53'),
(110, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:46:38'),
(111, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:58:27'),
(112, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:00:37'),
(113, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:04:24'),
(114, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:15:07'),
(115, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:17:27'),
(116, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:19:13'),
(117, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:20:32'),
(118, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:21:21'),
(119, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:23:15'),
(120, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:25:01'),
(121, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:26:32'),
(122, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:27:59'),
(123, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:35:08'),
(124, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:50:49'),
(125, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:52:46'),
(126, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:54:15'),
(127, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:57:13'),
(128, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:01:54'),
(129, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:03:19'),
(130, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:05:17'),
(131, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:06:45'),
(132, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:15:05'),
(133, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:17:12'),
(134, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:20:44'),
(135, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:21:34'),
(136, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:23:58'),
(137, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:25:32'),
(138, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:29:42'),
(139, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:32:30'),
(140, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:34:27'),
(141, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:48:35'),
(142, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:49:22'),
(143, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:49:57'),
(144, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:50:27'),
(145, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:53:35'),
(146, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:54:57'),
(147, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:56:13'),
(148, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:58:19'),
(149, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:04:26'),
(150, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:08:42'),
(151, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:10:33'),
(152, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:12:29'),
(153, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:14:29'),
(154, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:14:59'),
(155, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:20:13'),
(156, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:24:48'),
(157, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:28:35'),
(158, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:34:12'),
(159, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:35:45'),
(160, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:37:25'),
(161, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:38:02'),
(162, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:38:11'),
(163, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 18:46:17'),
(164, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 18:52:14'),
(165, '', 'android', '2020-07-21 19:08:42'),
(166, '', 'android', '2020-07-21 19:19:13'),
(167, '', 'android', '2020-07-21 19:20:56'),
(168, 'elc_coWbxWU:APA91bG2v9JMHtmEE3rpxRN0Et0YKKpijbZMLhzf11IwFY15VlIeQY5Ve7e1HpI2KsKwA38X38TS0Y1Qe1eeZc0IA_i02BoiHAb2Wn6W5NGiBzbvX3qLCimErF417fE-L1jpNoDpIgAp', 'android', '2020-07-21 20:45:24'),
(169, '', 'android', '2020-07-21 21:10:27'),
(170, '', 'android', '2020-07-21 21:11:19'),
(171, '', 'android', '2020-07-21 21:14:15'),
(172, 'cwt_7nt25C0:APA91bHMs9aP2zcinxIlG5P7DyF8kzRNVQ9VxYT5hZ3PJC9-sSlqVSCGQIiDfaST3sscwA1jjlq6zm-8nCFQyYPWIneY3BEIsiChDxWd-T2yp30Cx5frBT2iMHbLN8Bx50aaqW4W-v56', 'android', '2020-07-22 02:46:25'),
(173, 'd1knWfaLstk:APA91bFeqOoxMIp-zDWgzvflvMGghshy1nbGKhGMxvKUtLVM4IRCdSX0yCtUG86L5kuflVOde3cSwq0ukfJjMZI_iLlCV0kTJVjy7IkgA3KSoxEEK8PrcCPnaHD14HaFydyznaXduDtx', 'android', '2020-07-22 02:46:36'),
(174, 'c1Za-icThyk:APA91bEHK3f_cQuJvuqC7C6al9R-_nISisgB4xdrkDlC_xvub2BHch4ElwwdA1qYgCGUKihMBs3qQ1KFvsa6j_FL62gy3NiFHuEt5EhTlDhDLbBJ2-Pa-ab13C2JH6IdtH1b4qx7cNKS', 'android', '2020-07-22 02:53:24'),
(175, 'c1Za-icThyk:APA91bEHK3f_cQuJvuqC7C6al9R-_nISisgB4xdrkDlC_xvub2BHch4ElwwdA1qYgCGUKihMBs3qQ1KFvsa6j_FL62gy3NiFHuEt5EhTlDhDLbBJ2-Pa-ab13C2JH6IdtH1b4qx7cNKS', 'android', '2020-07-22 02:57:33'),
(176, '', 'android', '2020-07-22 11:54:00'),
(177, 'dkh4Dz3Tfko:APA91bHewMknvTkzAqyCY7x_KAkAlT3ibbxVFgr6-Q6-sPDiwqfDGva6MjkeghbwV4VYx_Fy9L6u_8_zQMCwC-pMIrZ5oxXToDCRFZMTo3eB-rHJN1zQB3HZOZEpR0UN74BeWY8KhBWC', 'android', '2020-07-22 16:47:36'),
(178, 'fuRiQRT_c7c:APA91bHofv0UWCoqcB7Fa8aLKB9jZXddru51ycrX4rkX_gEl1jxbHq8GafA8cIXuE2cBqmjd2oexnMDpCndSfLRJBjQaNhCBo8pgm61t1nVHNhN4tG8mfAAUkzPtshuhIgmrllRNl4X8', 'android', '2020-07-22 17:59:09'),
(179, 'fuRiQRT_c7c:APA91bHofv0UWCoqcB7Fa8aLKB9jZXddru51ycrX4rkX_gEl1jxbHq8GafA8cIXuE2cBqmjd2oexnMDpCndSfLRJBjQaNhCBo8pgm61t1nVHNhN4tG8mfAAUkzPtshuhIgmrllRNl4X8', 'android', '2020-07-22 18:00:26'),
(180, 'dkh4Dz3Tfko:APA91bHewMknvTkzAqyCY7x_KAkAlT3ibbxVFgr6-Q6-sPDiwqfDGva6MjkeghbwV4VYx_Fy9L6u_8_zQMCwC-pMIrZ5oxXToDCRFZMTo3eB-rHJN1zQB3HZOZEpR0UN74BeWY8KhBWC', 'android', '2020-07-22 18:52:41'),
(181, 'dkh4Dz3Tfko:APA91bHewMknvTkzAqyCY7x_KAkAlT3ibbxVFgr6-Q6-sPDiwqfDGva6MjkeghbwV4VYx_Fy9L6u_8_zQMCwC-pMIrZ5oxXToDCRFZMTo3eB-rHJN1zQB3HZOZEpR0UN74BeWY8KhBWC', 'android', '2020-07-23 00:07:33'),
(182, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:44:03'),
(183, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:44:17'),
(184, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:44:24'),
(185, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:48:43'),
(186, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:50:06'),
(187, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:50:44'),
(188, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:51:56'),
(189, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:53:56'),
(190, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:55:03'),
(191, '', 'android', '2020-07-23 03:23:08'),
(192, '', 'android', '2020-07-23 03:33:46'),
(193, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-07-23 11:37:14'),
(194, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-07-23 15:47:48'),
(195, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-07-23 16:08:53'),
(196, 'd4HcJqTe0kmjpAKT86C_yE:APA91bF47kL9aGMS3SP9nzTyjHLKjrYyt0og3FoMBcXhBhyYnF3aK0h8knl9sG7bkC8lNMfKq78C4votQ59eo-RNDAaUKJ38gWcp4hbU8BH1MCPw3kDRJ5YgjZEnd66waN5K0tCD5_w_', 'ios', '2020-07-26 11:53:27'),
(197, 'fPx4coVBckQyoB75y8Wth2:APA91bGv-XHtYQoCY2jDu1SITO6la6wa6BB9eeOEEENQWRHHhghOLudLliyf7QzlGWcJNZ_lbwFBE22P8JcWHurtyyxiK5aZ5-5KgH8GL2QIW2v1AjqnSvBRvd7Nwwmg1IKAucA743R-', 'ios', '2020-07-26 12:08:24'),
(198, 'd44vmR8GSkJpit30c-9mrY:APA91bE3iahwsCGzWkAHjTBaMMgMDyVEgwiVxOB8Cb6S8paL-lFqCDIjRK-fSvCJvni6kjRLxH6dKwKeZ3u-zZH0QP90bng0r8lDsVTIpNg69JRpnRZpsx2UJrPakpIOWO00ArEMsj4q', 'ios', '2020-07-26 12:13:21'),
(199, 'fuRiQRT_c7c:APA91bHofv0UWCoqcB7Fa8aLKB9jZXddru51ycrX4rkX_gEl1jxbHq8GafA8cIXuE2cBqmjd2oexnMDpCndSfLRJBjQaNhCBo8pgm61t1nVHNhN4tG8mfAAUkzPtshuhIgmrllRNl4X8', 'android', '2020-07-26 12:43:05'),
(200, 'csrqol9gTkT3ieLkB49sCF:APA91bHi_GwXAdv6wxG-1NvuD1Io48XG1NEuLsRyhSX61AHxVKp6keFcsoKhbEPmOj4bAb0Hp3IW9osLPbJLVzHqsCMJ8L0GtK7ETdat_B_S1URngk-mcyrYsaUv7E_AdqWXlWSqKetD', 'ios', '2020-07-27 18:16:15'),
(201, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-29 00:29:19'),
(202, '', 'android', '2020-07-29 10:00:09'),
(203, '', 'android', '2020-07-29 10:03:35'),
(204, '', 'android', '2020-08-06 10:28:39'),
(205, '', 'android', '2020-08-06 10:31:24'),
(206, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-08-08 19:47:52'),
(207, 'ehHiFnf070ouurQUr6Lpdi:APA91bEcWtY6SaL5O4iGbjBUxvzSRCiOV0RUjEKCYn1qqRH0TOXtgW83T0Wca9rkruvPdupUebMkQdrJj8R-cLJ6hNId7GN7gT2WOsKvJZdMCH430Wo7onboRBAmUeth0LsCBXnWOid8', 'ios', '2020-08-09 11:11:12'),
(208, 'cDsu_tz9kK4:APA91bEOfCOBMgqcWBeBlLrIjtO1f9I-W4OUszBpHqO7lYYTtPrIMBsonJ-_qTDm1DFo7syqAXS52J9bzz1zuDZKPWDhYsOPxdiY9XboeLrpOatfNJgv77pYy9i4KuDJVSHHSX5Yyrfl', 'android', '2020-08-09 17:08:10'),
(209, 'cDsu_tz9kK4:APA91bEOfCOBMgqcWBeBlLrIjtO1f9I-W4OUszBpHqO7lYYTtPrIMBsonJ-_qTDm1DFo7syqAXS52J9bzz1zuDZKPWDhYsOPxdiY9XboeLrpOatfNJgv77pYy9i4KuDJVSHHSX5Yyrfl', 'android', '2020-08-09 17:10:09'),
(210, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-08-16 12:33:37'),
(211, 'eOo1rG0L6xc:APA91bEBTCoEwJ2fRTaXXIUsw9hPxQTNabMSPDBFhZqVBdjynRmHSl2k9JVe2tBipbLMSBRSL7jHEev_DgCaebwdHSMOZbBn-5QOVf7JKIHz-qXtZ9ABzNtCJh5pj9dfMTRVajn5GqTf', 'android', '2020-08-17 17:53:26'),
(212, 'eOo1rG0L6xc:APA91bEBTCoEwJ2fRTaXXIUsw9hPxQTNabMSPDBFhZqVBdjynRmHSl2k9JVe2tBipbLMSBRSL7jHEev_DgCaebwdHSMOZbBn-5QOVf7JKIHz-qXtZ9ABzNtCJh5pj9dfMTRVajn5GqTf', 'android', '2020-08-17 17:53:45'),
(213, 'eOo1rG0L6xc:APA91bEBTCoEwJ2fRTaXXIUsw9hPxQTNabMSPDBFhZqVBdjynRmHSl2k9JVe2tBipbLMSBRSL7jHEev_DgCaebwdHSMOZbBn-5QOVf7JKIHz-qXtZ9ABzNtCJh5pj9dfMTRVajn5GqTf', 'android', '2020-08-17 18:59:19'),
(214, 'eOo1rG0L6xc:APA91bEBTCoEwJ2fRTaXXIUsw9hPxQTNabMSPDBFhZqVBdjynRmHSl2k9JVe2tBipbLMSBRSL7jHEev_DgCaebwdHSMOZbBn-5QOVf7JKIHz-qXtZ9ABzNtCJh5pj9dfMTRVajn5GqTf', 'android', '2020-08-17 18:59:47'),
(215, 'eCzoDdyYB_M:APA91bEiQtUoXvrwhssFHWO-AOZjbhpUHInPihKCP9MVugErjfNkP7KtxYavgxx9oHifFRJA310hJaYuqkV4_aYFp3KyjjobZkqHWLBIEgun6EPJS15tqBH80nxgMA0pSyT5HRLm5yUV', 'android', '2020-08-17 19:48:07'),
(216, '', 'android', '2020-08-17 20:46:59'),
(217, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-08-19 16:36:34'),
(218, '', 'android', '2020-08-19 20:42:34'),
(219, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-08-20 15:26:04'),
(220, 'easybBdNrgs:APA91bEanzsdtMuypFDfX0FbDpss_jVgBAF5dn7MJUbiVzHtRodW6bCtkqNTY5t7W3DYzc_U4-OnYpGpu5eGxCDrZFEGSNSvng-bj5mxQO-XTm8TlLrjj8OdeKI2aE1UNUODohcJ5YFv', 'android', '2020-08-20 18:15:30'),
(221, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-08-24 17:15:19'),
(222, 'epPGUXzREk-UpQcBdkkkj7:APA91bHo5pHMhaz3_hgz43FBnmjF9wmrQpIBCS4snOa0c5JT6v9YUO8OGqiwb3cqnLSgHVOGZJXpv0DscpGQV92c3KRI-4Qh1lQYlYo7dnHgzkE6llNqgzCZF5vgEYe8v4n_K_AEHBkK', 'ios', '2020-08-25 03:36:20'),
(223, 'fwBWlKkKvCU:APA91bG6aQ4heLSAYRUNURxthPOv7JLIbRiDb2qI-4zqKnX4eaoi1R0umbjt_2j71iunX_wnblroKH9pu-KiDJcFmdqr5b4QJkObasTWCZd3CAxRrmmPEW0B9DrTq8NNv12IDxvJZwwF', 'android', '2020-09-01 13:31:50'),
(224, 'fwBWlKkKvCU:APA91bG6aQ4heLSAYRUNURxthPOv7JLIbRiDb2qI-4zqKnX4eaoi1R0umbjt_2j71iunX_wnblroKH9pu-KiDJcFmdqr5b4QJkObasTWCZd3CAxRrmmPEW0B9DrTq8NNv12IDxvJZwwF', 'android', '2020-09-01 13:56:06'),
(225, 'fwBWlKkKvCU:APA91bG6aQ4heLSAYRUNURxthPOv7JLIbRiDb2qI-4zqKnX4eaoi1R0umbjt_2j71iunX_wnblroKH9pu-KiDJcFmdqr5b4QJkObasTWCZd3CAxRrmmPEW0B9DrTq8NNv12IDxvJZwwF', 'android', '2020-09-01 14:34:29'),
(226, 'fwBWlKkKvCU:APA91bG6aQ4heLSAYRUNURxthPOv7JLIbRiDb2qI-4zqKnX4eaoi1R0umbjt_2j71iunX_wnblroKH9pu-KiDJcFmdqr5b4QJkObasTWCZd3CAxRrmmPEW0B9DrTq8NNv12IDxvJZwwF', 'android', '2020-09-01 15:14:05'),
(227, 'ciGR8ZCERl0:APA91bENmZw5pDnYd7jyxsb9auQAzsy0hTOWlsL-cvh92tk4bmzfjp73wX8d7--AKiWWzMDIQom08Sl-dsOFGxujQTl9wsQLHcvCG-IszIaLU4zA0N1Lm3ElRVotpL0nGJTW2jxWjwWq', 'android', '2020-09-03 00:55:35'),
(228, 'ciGR8ZCERl0:APA91bENmZw5pDnYd7jyxsb9auQAzsy0hTOWlsL-cvh92tk4bmzfjp73wX8d7--AKiWWzMDIQom08Sl-dsOFGxujQTl9wsQLHcvCG-IszIaLU4zA0N1Lm3ElRVotpL0nGJTW2jxWjwWq', 'android', '2020-09-03 00:55:43'),
(229, '', 'android', '2020-09-04 08:29:01'),
(230, '', 'android', '2020-09-04 08:30:24'),
(231, '', 'android', '2020-09-04 08:30:43'),
(232, '', 'android', '2020-09-04 08:32:25'),
(233, '', 'android', '2020-09-06 09:38:26'),
(234, '', 'android', '2020-09-06 09:42:28'),
(235, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-09-06 16:36:42'),
(236, 'cA1VrjWkzEswk5Y9kQs3EI:APA91bF10k0o4cCKQAy70q5G-44jYM3lpILjynRrOTrfMV6ZihX1JLq2C0BYxkrSNPwdd1myGiR_fe5o_CNMZdODxLua5VKRwF9McjGXmu2jfJFpBFGH-_qoWHH0k5i_Vmvuz43WyHes', 'ios', '2020-09-12 18:42:04'),
(237, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-16 00:23:21'),
(238, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-16 00:23:25'),
(239, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-16 00:23:49'),
(240, '', 'android', '2020-09-16 01:34:43'),
(241, '', 'android', '2020-09-16 01:46:03'),
(242, '', 'android', '2020-09-16 01:47:38'),
(243, 'fdSxCr6LME_wiWF9a24JRf:APA91bEV-h_KQKYbfURCBHMHK9gver-w0xKx3_-7fMEXWPf9Ir83Pz1fG_gRAoVleKatbw9bY8VPlGCavKHvfloYzyAHSlfYkq4CJ_hPbeohtNJ_CCn1SFleK8p9-v2_5MNU3kqtt_o_', 'ios', '2020-09-16 14:34:53'),
(244, '', '', '2020-09-17 11:57:20'),
(245, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-17 12:05:22'),
(246, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-17 12:06:28'),
(247, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-17 12:06:34'),
(248, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-17 12:15:44'),
(249, '', 'android', '2020-09-17 12:20:33'),
(250, '', 'android', '2020-09-17 12:22:50'),
(251, 'frTT6R_QUqE:APA91bH8NQjS_q0tTpnGG3ol_Q3iOlkj7TQyKo-8RGg9WZwaoWg__V-TrJ2dio6i42FF9ZM76AVaWAqCeXdNh2rAtfp-jwB_T4DmSJrRORbPWAEL8sAHIhaIxiZGwnkjnRAgAkwDXKkS', 'android', '2020-09-17 12:22:55'),
(252, 'frTT6R_QUqE:APA91bH8NQjS_q0tTpnGG3ol_Q3iOlkj7TQyKo-8RGg9WZwaoWg__V-TrJ2dio6i42FF9ZM76AVaWAqCeXdNh2rAtfp-jwB_T4DmSJrRORbPWAEL8sAHIhaIxiZGwnkjnRAgAkwDXKkS', 'android', '2020-09-17 12:24:02'),
(253, 'dBlbxoFAxms:APA91bHX5_4uufu9kIgAe--hAW_y999daJNXcccu-lswavW3Fi3lvCdp91uYcewbnq-89EoSJnffF1GowIF4gjsg0rCHjdCV9M6tNLsRWA1mwKonP-sTGm-1iWdb_2wL68A_F2wPrFXD', 'android', '2020-09-17 12:31:16'),
(254, 'dBlbxoFAxms:APA91bHX5_4uufu9kIgAe--hAW_y999daJNXcccu-lswavW3Fi3lvCdp91uYcewbnq-89EoSJnffF1GowIF4gjsg0rCHjdCV9M6tNLsRWA1mwKonP-sTGm-1iWdb_2wL68A_F2wPrFXD', 'android', '2020-09-17 12:31:37'),
(255, 'eODigwI96dY:APA91bFxyLL7jeCdM5wOvhaXNdc7M6wOYcWZo5r9Rli1uO8wXeLkAxfED70Yc3JI5KQ2rqU7zYG0EiUvCQmG_qnZbupwGKSbXg259aIlwrnETr4r9XS-zyLflmK2ehv6bXe0fwwIUr8J', 'android', '2020-09-17 22:03:19'),
(256, 'eODigwI96dY:APA91bFxyLL7jeCdM5wOvhaXNdc7M6wOYcWZo5r9Rli1uO8wXeLkAxfED70Yc3JI5KQ2rqU7zYG0EiUvCQmG_qnZbupwGKSbXg259aIlwrnETr4r9XS-zyLflmK2ehv6bXe0fwwIUr8J', 'android', '2020-09-19 10:09:22'),
(257, 'ccpRvxS7nes:APA91bGzwEJ04Kw7_Rgou8vm2BatcEMPsJlr3qLh9gJ5-zQCaNtveGYo6JH6S40hAgRAUUjfTmOq1PiCQPklQn9IiiVCidt1lBN4Zr2aoUJRzVKyGCArbFrapJye3UAX_Xw8bhdOEsb-', 'android', '2020-09-19 10:56:23'),
(258, 'ccpRvxS7nes:APA91bGzwEJ04Kw7_Rgou8vm2BatcEMPsJlr3qLh9gJ5-zQCaNtveGYo6JH6S40hAgRAUUjfTmOq1PiCQPklQn9IiiVCidt1lBN4Zr2aoUJRzVKyGCArbFrapJye3UAX_Xw8bhdOEsb-', 'android', '2020-09-19 11:21:21'),
(259, 'ccpRvxS7nes:APA91bGzwEJ04Kw7_Rgou8vm2BatcEMPsJlr3qLh9gJ5-zQCaNtveGYo6JH6S40hAgRAUUjfTmOq1PiCQPklQn9IiiVCidt1lBN4Zr2aoUJRzVKyGCArbFrapJye3UAX_Xw8bhdOEsb-', 'android', '2020-09-19 15:56:04'),
(260, 'ccpRvxS7nes:APA91bGzwEJ04Kw7_Rgou8vm2BatcEMPsJlr3qLh9gJ5-zQCaNtveGYo6JH6S40hAgRAUUjfTmOq1PiCQPklQn9IiiVCidt1lBN4Zr2aoUJRzVKyGCArbFrapJye3UAX_Xw8bhdOEsb-', 'android', '2020-09-20 09:48:01'),
(261, 'd7rBQmScPvE:APA91bFwg3IuiigOOQ3nnJKlRT12EgXYoqtk7Rn6C1rguqg921hjOvaSMP5rATVamAcnUwZAqWCVeglEjOkTimJRgHo3QX5KEJFy9t02ehghxEq3LYv7K7AHHDJ1BAvCpY85a7tp3znb', 'android', '2020-09-20 15:41:07'),
(262, 'd7rBQmScPvE:APA91bFwg3IuiigOOQ3nnJKlRT12EgXYoqtk7Rn6C1rguqg921hjOvaSMP5rATVamAcnUwZAqWCVeglEjOkTimJRgHo3QX5KEJFy9t02ehghxEq3LYv7K7AHHDJ1BAvCpY85a7tp3znb', 'android', '2020-09-20 15:42:02'),
(263, 'eODigwI96dY:APA91bFxyLL7jeCdM5wOvhaXNdc7M6wOYcWZo5r9Rli1uO8wXeLkAxfED70Yc3JI5KQ2rqU7zYG0EiUvCQmG_qnZbupwGKSbXg259aIlwrnETr4r9XS-zyLflmK2ehv6bXe0fwwIUr8J', 'android', '2020-09-21 22:02:07'),
(264, 'ccpRvxS7nes:APA91bGzwEJ04Kw7_Rgou8vm2BatcEMPsJlr3qLh9gJ5-zQCaNtveGYo6JH6S40hAgRAUUjfTmOq1PiCQPklQn9IiiVCidt1lBN4Zr2aoUJRzVKyGCArbFrapJye3UAX_Xw8bhdOEsb-', 'android', '2020-09-24 14:03:15'),
(265, 'dl464-tQ4UA:APA91bFRVQkTCkJVzd7SxPBjtkWGcBPnxyaU84C181yqLqp82D49_WMIrMYpfm8Xpoi8TY2Uuc3wegKbYFLMyNJzshs6I_GIwMiRhqeZkp96pXQ-zIOWqms5zEQrevY0TLs8PfWwc8UB', 'android', '2020-09-26 01:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_title_en` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `gallery_title_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gallery_image` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `display` int(255) DEFAULT 1,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `gallery_title_en`, `gallery_title_ar`, `gallery_image`, `display`, `date`) VALUES
(1, 'Event 1', 'الحدث 1', 'http://app.emcan-group.com/system/api/uploads/Gallery/1/iStock-client_meet_680437092 (500 x 334)@3x.png', 1, '2020-11-19 11:42:47'),
(2, 'Event 2', 'الحدث 2', 'http://app.emcan-group.com/system/api/uploads/Gallery/2/shutterstock_178403168.png', 1, '2020-11-19 11:44:27'),
(3, 'Event 3', 'الحدث 3', 'http://app.emcan-group.com/system/api/uploads/Gallery/3/handshake-business-deal-ss.png', 1, '2020-11-19 11:44:43');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `message_type_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `complaint_id` varchar(255) NOT NULL,
  `type` int(11) NOT NULL COMMENT 'client=>1',
  `is_read` int(11) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message_type_id`, `content`, `client_id`, `complaint_id`, `type`, `is_read`, `date`) VALUES
(1, 3, 'قريبا تطبيق محمصة الجزيرة ', '', '', 0, 0, '2020-07-22 22:53:17'),
(2, 1, 'بلتلبتلب', '24', '5', 0, 0, '2020-07-26 12:44:07'),
(3, 3, 'قريبا', '', '', 0, 0, '2020-07-26 12:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `messages_type`
--

CREATE TABLE `messages_type` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages_type`
--

INSERT INTO `messages_type` (`id`, `title`, `title_ar`, `date`) VALUES
(1, 'Complaints', 'شكوى أو إقتراح', ''),
(2, 'Offers', 'عروض', ''),
(3, 'Events', 'مناسبات', '');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `text` text CHARACTER SET utf32 NOT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  `date` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `text`, `display`, `date`) VALUES
(1, 'Emcan new app', 1, '2020-11-22 14:13:40'),
(2, 'Krami has new offer', 1, '2020-11-22 14:13:46'),
(3, 'Social media latest offers', 1, '2020-11-22 14:13:51'),
(4, 'Emcan new app', 1, '2020-11-22 14:13:56'),
(5, 'Krami has new offer', 1, '2020-11-22 14:14:01'),
(6, 'Social media latest offers', 1, '2020-11-22 14:14:04'),
(7, 'Emcan new app', 1, '2020-11-22 14:14:08'),
(8, 'Krami has new offer', 1, '2020-11-22 14:14:13'),
(9, 'Social media latest offers', 1, '2020-11-22 14:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `offer_id` int(11) NOT NULL,
  `offer_title_en` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `offer_title_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `offer_desc_en` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `offer_desc_ar` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `vat` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `discount` int(11) NOT NULL,
  `offer_image` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `display` int(255) DEFAULT 1,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`offer_id`, `offer_title_en`, `offer_title_ar`, `offer_desc_en`, `offer_desc_ar`, `vat`, `discount`, `offer_image`, `display`, `date`) VALUES
(1, 'Karami Restaurant', 'مطعم كريم', '20 % offers', '20 % خصم على وجبات الافطار', '20%', 20, 'http://app.emcan-group.com/system/api/uploads/Offers/1/119501494_681107732611885_6552525607417128328_n@2x.png', 1, '2020-11-21 13:10:12'),
(2, 'Allo Restaurant', 'مطعم الو', 'offers on b', 'خصومات على وجبات الافطار', '20%', 20, 'http://app.emcan-group.com/system/api/uploads/Offers/2/9716_Allo-Beirut-outdoor-dubai-DEELZme@2x.png', 1, '2020-11-21 13:11:54'),
(3, 'Allo Restaurant', 'مطعم الو', 'offers on b', 'خصومات على وجبات الافطار', '20%', 20, 'http://app.emcan-group.com/system/api/uploads/Offers/3/122785232_175028027580523_5628498566856747850_o.png', 1, '2020-11-21 13:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `our_clients`
--

CREATE TABLE `our_clients` (
  `client_id` int(11) NOT NULL,
  `client_title_en` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `client_title_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `client_image` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `display` int(255) DEFAULT 1,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `our_clients`
--

INSERT INTO `our_clients` (`client_id`, `client_title_en`, `client_title_ar`, `client_image`, `display`, `date`) VALUES
(1, 'Abu Fadi Client', 'ابو فادي', 'http://app.emcan-group.com/system/api/uploads/OurClients/1/iStock-client_meet_680437092 (500 x 334)@3x.png', 1, '2020-11-19 13:09:49'),
(2, 'Karami Restaurant Client', 'مطعم كريم', 'http://app.emcan-group.com/system/api/uploads/OurClients/2/shutterstock_178403168@2x.png', 1, '2020-11-19 13:10:13'),
(3, 'Burger Zoom Client', 'برجر زووم', 'http://app.emcan-group.com/system/api/uploads/OurClients/3/handshake-business-deal-ss.png', 1, '2020-11-19 13:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `portfolio_title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `portfolio_title_ar` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `display` int(255) NOT NULL DEFAULT 1,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `portfolio_title_en`, `portfolio_title_ar`, `display`, `date`) VALUES
(1, 'websites', 'المواقع', 1, '2020-11-17 17:37:00'),
(2, 'Logos', 'الشعارات', 1, '2020-11-17 17:37:38'),
(3, 'Mobile apps', 'تطبيقات الهاتف', 1, '2020-11-17 17:38:01'),
(4, 'Social media', 'وسائل التواصل الاجتماعي', 1, '2020-11-17 17:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `service_id`, `title`, `content`, `date`) VALUES
(1, 2, 'test', 'test for Quote ', '2020-11-21 20:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `region_id` int(11) NOT NULL,
  `region_name_ar` varchar(255) NOT NULL,
  `region_name_en` varchar(255) NOT NULL,
  `charge` varchar(255) NOT NULL,
  `min_order` varchar(255) NOT NULL,
  `order_period` varchar(255) NOT NULL,
  `display` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`region_id`, `region_name_ar`, `region_name_en`, `charge`, `min_order`, `order_period`, `display`) VALUES
(1, 'العكر', ' Al Eker', '0', '3.000', '45', 1),
(3, 'القدم', 'Al Qadam', '0', '4.000', '45', 1),
(4, 'القرية', 'Al Quriah', '0', '7.000', '', 1),
(5, 'القضيبية', 'Qudaibiya', '0', '3.000', '45', 1),
(6, 'قلالي', 'Qalali', '0', '10', '', 1),
(7, 'القلعة', 'Al Qalah', '0', '4', '60', 1),
(8, 'كرانة', 'Karranah', '0', '4.000', '60', 1),
(9, 'الحجر', 'Al Hajar', '0', '5.000', '60', 1),
(10, 'كرباباد', 'Karbabad', '0', '5', '60', 1),
(11, 'كرزكان', 'Karzakan', '0', '4.000', '45دقيقة', 1),
(12, 'الماحوز', 'Mahooz', '0', '3.000', '45', 1),
(13, 'المالكية', 'Malkiah', '0', '2.000', '45دقيقة', 1),
(14, 'مدينة حمد من دوار 1 إلى دوار 10', 'Madinat Hamad From R 1 to R 10', '0', '3.000', '45دقيقة', 1),
(15, 'مدينة زايد', 'Zayed Town', '0', '3.000', '45', 1),
(16, 'مدينة عيسي', 'Isa Town', '0', '3', '45', 1),
(17, 'المحرق', 'Al Muharraq', '0', '10', '', 1),
(18, 'مقابة', 'Maqabah', '0', '4.000', '60', 1),
(19, 'المقشع', 'Al Maqsha', '0', '4.000', '60', 1),
(20, 'المنامة', 'Manama', '0', '5.000', '45', 1),
(21, 'النبيه صالح', 'Nabih Saleh', '0', '3.000', '45', 1),
(22, 'النعيم', 'Alnaim', '0', '3.000', '45', 1),
(23, 'النويدرات', 'Nuwaidrat', '0', '2.000', '30', 1),
(24, 'الهملة', 'Al Hamala', '0', '10.000', '60', 1),
(25, 'البلاد القديم', 'Bilad Al Qadeem', '0', '2.000', '45', 1),
(26, 'الكورة', 'Kawarah', '0', '2.000', '30', 1),
(27, 'سلماباد', 'Salmabad', '0', '2.000', '45', 1),
(28, 'أبو صيبع', 'Abu Saiba', '0', '4.000', '45', 1),
(29, 'أبوقوة', 'Bu Quwah', '0', '6', '45', 1),
(30, 'أم الحصم', 'Umm Al Hassam', '0', '3.000', '45', 1),
(31, 'المصلي', 'Al Musalla', '0', '2.000', '45', 1),
(32, 'توبلي', 'Tubli', '0', '2.000', '30', 1),
(33, 'باربار', 'Barbar', '0', '7.000', '', 1),
(34, 'البديع', 'Budaiya', '0', '4.000', '50', 1),
(35, 'البسيتين', 'Busaiten', '0', '7.000', '', 1),
(36, 'بوكوارة', 'Bu Kowarah', '0', '3.000', '45', 1),
(37, 'البحير', 'Al Bahair', '0', '3.000', '45', 1),
(38, 'بني جمرة', 'Bani Jamra', '0', '4.000', '60', 1),
(39, 'بوري', 'Buri', '0', '10.000', '60', 1),
(40, 'جبلة حبشي', 'Jeblat Hebshi', '0', '4.000', '45', 1),
(41, 'جد الحاج', 'Jid Al Haj', '0', '5', '60', 1),
(42, 'جد حفص', 'Jidhafs', '0', '3.000', '45', 1),
(43, 'جد علي', 'Jid Ali', '0', '2.000', '30', 1),
(44, 'جرداب', 'Jurdab', '0', '2.000', '45', 1),
(46, 'الجسرة', 'Aljasrah', '0', '7.000', '', 1),
(47, 'الجفير', 'AlJuffair', '0', '4.000', '45', 1),
(48, 'الجنبية', 'ُEljanabiya', '0', '6.000', '50', 1),
(49, 'جنوسان', 'Jannusan', '0', '4', '45', 1),
(50, 'جو', 'Jaw', '0', '10', '', 1),
(51, 'الحد', 'AL Hidd', '0', '6', '60 ', 1),
(52, 'الحجيات', 'Alhajiyat', '0', '2.000', '45', 1),
(53, 'حلة العبد الصالح', 'Hillat Abdul Saleh', '0', '3', '45', 1),
(54, 'الحورة', 'Al Hoora', '0', '4.000', '50', 1),
(55, 'الخميس', 'Khamis', '0', '2.000', '45', 1),
(56, 'دار كليب', 'Dar Kulaib', '0', '1.000', '40', 1),
(57, 'المنطقة الدبلوماسية', 'Diplomatic Area', '0', '20.000', '60', 1),
(58, 'الدراز', 'Diraz', '0', '5.000', '60', 1),
(59, 'دمستان', 'Dimstan', '0', '5.000', '60', 1),
(60, 'الدير', 'Aldair', '0', '7', '', 1),
(61, 'الدية', 'Daih', '0', '3.000', '45', 1),
(62, 'رأس رمان', 'Ras Rumman', '0', '3.000', '45', 1),
(63, 'الرفاع(الشرقي)', 'East Riffa', '0', '2.000', '45', 1),
(64, 'الرفاع(الغربي)', 'West Riffa', '0', '3.000', '45', 1),
(65, 'الزلاق', 'Al zallaq', '0', '1.500', '45دقيقة', 1),
(66, 'الزنج', 'Zinj', '0', '2.000', '45', 1),
(67, 'السقيه', 'AL SAGYAH', '0', '2.000', '60', 1),
(68, 'سار', 'Saar', '0', '5', '45', 1),
(69, 'سترة', 'sitra', '0', '2.000', '45', 1),
(70, 'سماهيج', 'Samahej', '0', '10', '', 1),
(71, 'السنابس', 'Sanabis', '0', '20', '60', 1),
(72, 'سند', 'Sanad', '0', '15.000', '60', 1),
(73, 'السهلة(الشمالية والجنوبية)', 'Sehla', '0', '5.000', '45', 1),
(74, 'ضاحية السيف', 'seef', '0', '20.000', '45', 1),
(75, 'الشاخورة', 'Shakhurah', '0', '4', '45', 1),
(76, 'شهركان', 'Sharakan', '0', '1.000', '45دقيقة', 1),
(77, 'جامعة البحرين ', 'univrsty of bahrain', '0', '2.500', '45', 1),
(78, 'الصالحيه', 'Salihiya', '0', '2.000', '45', 1),
(79, 'صدد', 'Sadad', '0', '2.000', '45', 1),
(80, 'عالي', 'Aali', '0', '10.000', '45', 1),
(81, 'العدلية', 'Adliya', '0', '2.000', '30', 1),
(82, 'عذاري', 'AZARY', '0', '3', '45', 1),
(83, 'عراد', 'Arad', '0', '0', '', 1),
(84, 'عسكر', 'askr', '0', '0', '45دقيقة', 1),
(85, 'مدينة حمد من دوار 11 إلى دوار 22', 'Madinat Hamad From R 11 to R 22', '0', '1.500', '45دقيقة', 1),
(86, 'اللوزي', 'Al lozy', '0', '5.000', '45دقيقة', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_name_en` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `service_name_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `service_image` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `display` int(255) DEFAULT 1,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name_en`, `service_name_ar`, `service_image`, `display`, `date`) VALUES
(1, 'designing a business identity', 'تصميم الهوية التجارية للشركات', 'http://app.emcan-group.com/system/api/uploads/Services//business-card-pieces.svg', 1, '2020-11-17 12:31:24'),
(2, 'Web design', 'تصميم المواقع الإلكترونية', 'http://app.emcan-group.com/system/api/uploads/Services//web.svg', 1, '2020-11-17 12:31:48'),
(3, 'Mobile Application Design', 'تصميم تطبيقات الموبايل', 'http://app.emcan-group.com/system/api/uploads/Services//surface1.svg', 1, '2020-11-17 12:32:26'),
(4, 'Managing the Social Media', 'إدارة السوشيال ميديا', 'http://app.emcan-group.com/system/api/uploads/Services//Like.svg', 1, '2020-11-17 12:32:52'),
(5, 'Design videos Graphic', 'تصميم فيديوهات الموشن جرافيك', 'http://app.emcan-group.com/system/api/uploads/Services//art.svg', 1, '2020-11-17 12:33:26'),
(6, 'E-marketing', 'التسويق الإلكتروني', 'http://app.emcan-group.com/system/api/uploads/Services//social.svg', 1, '2020-11-17 12:34:22'),
(7, 'pointing devices', 'أجهزة الكاشير', 'http://app.emcan-group.com/system/api/uploads/Services//3.svg', 1, '2020-11-17 12:36:10'),
(8, 'Systems Management and accounting', 'أنظمة الإدارة والمحاسبة', 'http://app.emcan-group.com/system/api/uploads/Services//2.svg', 1, '2020-11-17 12:36:40'),
(9, 'Electronic stores', 'المتاجر الإلكترونية', 'http://app.emcan-group.com/system/api/uploads/Services//5.svg', 1, '2020-11-17 12:37:28'),
(10, 'Hosting and Domain reservation', 'الإستضافة وحجز النطاقات', 'http://app.emcan-group.com/system/api/uploads/Services//4.svg', 1, '2020-11-17 12:37:59'),
(11, 'technical support', 'الدعم الفني', 'http://app.emcan-group.com/system/api/uploads/Services//6.svg', 1, '2020-11-17 12:38:45'),
(12, 'test in english', 'تجربه باللغه العربيه', 'http://app.emcan-group.com/system/api/uploads/Services//3.svg', 1, '2020-11-17 12:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `accept_orders` int(11) NOT NULL,
  `close_charge` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `discount_percentage` int(255) NOT NULL,
  `branch_id` varchar(255) NOT NULL,
  `vat` int(11) NOT NULL,
  `android_version` varchar(255) NOT NULL,
  `ios_version` varchar(255) NOT NULL,
  `ios_link` varchar(255) NOT NULL,
  `android_link` varchar(255) NOT NULL,
  `main_color` varchar(100) NOT NULL,
  `hover_color` varchar(100) NOT NULL,
  `copyright_name` varchar(255) NOT NULL,
  `copyright_link` varchar(255) NOT NULL,
  `footer_caption` text CHARACTER SET utf8 NOT NULL,
  `footer_caption_en` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `accept_orders`, `close_charge`, `discount`, `discount_percentage`, `branch_id`, `vat`, `android_version`, `ios_version`, `ios_link`, `android_link`, `main_color`, `hover_color`, `copyright_name`, `copyright_link`, `footer_caption`, `footer_caption_en`) VALUES
(1, 1, 1, 0, 0, '6', 5, '1.0', '1.0', '#', '#', '#C4904E', '#C74640', 'Emcan', 'https://www.instagram.com/emcansolutions/', 'جميع الحقوق محفوظة لمحمصة الجزيرة 2020', 'All Copy Rights Reserved To Al-Jazeera Roastery 2020');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `statistic_id` int(11) NOT NULL,
  `statistic_title_en` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `statistic_title_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `statistic_number` int(11) NOT NULL,
  `statistic_image` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `display` int(255) DEFAULT 1,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`statistic_id`, `statistic_title_en`, `statistic_title_ar`, `statistic_number`, `statistic_image`, `display`, `date`) VALUES
(1, 'Number of Websites', 'عدد المواقع', 300, 'http://app.emcan-group.com/system/api/uploads/Statistics/1/Number of websites apps@3x.png', 1, '2020-11-19 16:09:48'),
(2, 'Number of Online Stores', 'عدد المتاجر عبر الإنترنت', 300, 'http://app.emcan-group.com/system/api/uploads/Statistics/2/Number of online stores@3x.png', 1, '2020-11-19 16:12:05'),
(3, 'Number of Mobile Apps', 'عدد تطبيقات الموبايل', 300, 'http://app.emcan-group.com/system/api/uploads/Statistics/3/Number of mobile apps@3x.png', 1, '2020-11-19 16:13:28'),
(4, 'Number of EM Food', 'عدد المطاعم في امكان', 300, 'http://app.emcan-group.com/system/api/uploads/Statistics/4/Number of em food@3x.png', 1, '2020-11-19 16:14:41'),
(5, 'Number of Social Media Management Accounts', 'عدد حسابات إدارة الوسائط الاجتماعية', 300, 'http://app.emcan-group.com/system/api/uploads/Statistics/5/Number of social media management accounts@3x.png', 1, '2020-11-19 16:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `sub_portfolio`
--

CREATE TABLE `sub_portfolio` (
  `project_id` int(11) NOT NULL,
  `portfolio_id` int(11) DEFAULT NULL,
  `project_title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_title_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `project_desc_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_desc_ar` text CHARACTER SET utf8 DEFAULT NULL,
  `project_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT '  ',
  `display` int(11) DEFAULT 1,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_portfolio`
--

INSERT INTO `sub_portfolio` (`project_id`, `portfolio_id`, `project_title_en`, `project_title_ar`, `project_desc_en`, `project_desc_ar`, `project_image`, `display`, `date`) VALUES
(1, 1, 'Official site of Dr. Youssef Al Mashaal', 'الموقع الرسمي للدكتور يوسف المشعل', 'The latest work of the can Technical and Information solution Company in the Websites, the official site of Dr. Youssef Al Mashaal', 'احدث اعمال شركة إمكان للحلول التقنية والمعلومات فى المواقع الإلكترونية، الموقع الرسمي للدكتور يوسف المشعل', 'http://app.emcan-group.com/system/api/uploads/Projects/1/2.jpeg', 1, '2020-11-18 13:09:44'),
(2, 1, 'Kings plaste', 'موقع كينجز بلاست', 'The latest business of the can Technical and Information solution Company on the Websites, the official site of Kings Belfast', 'احدث اعمال شركة إمكان للحلول التقنية والمعلومات فى المواقع الإلكترونية، الموقع الرسمي كينجز بلاست', 'http://app.emcan-group.com/system/api/uploads/Projects/2/10.jpg', 1, '2020-11-18 13:13:25'),
(3, 1, 'Lyers website', 'موقع لايرز', 'The latest business of the Ecan Technical and Information solution Company on the Websites, the official website of Eyers', 'احدث اعمال شركة إمكان للحلول التقنية والمعلومات فى المواقع الإلكترونية، الموقع الرسمي لايرز', 'http://app.emcan-group.com/system/api/uploads/Projects/3/7.jpg', 1, '2020-11-18 13:15:21'),
(4, 1, 'Ednovo', 'موقع إدنوفو', 'The latest business of the can Technical and Information solution Company in the Websites, the official website of Adnovo', 'احدث اعمال شركة إمكان للحلول التقنية والمعلومات فى المواقع الإلكترونية، الموقع الرسمي إدنوفو', 'http://app.emcan-group.com/system/api/uploads/Projects/4/5.jpg', 1, '2020-11-18 13:18:44'),
(5, 3, 'Burger Arena restaurant application', 'تطبيق مطعم برجر أرينا', 'The latest business for the can Technology and Information solution in Mobile Applications, the Burger Arena online application is now available at Google Play Store and Apple Astor', 'احدث اعمال شركة إمكان للحلول التقنية والمعلومات فى تطبيقات الجوال، تطبيق مطعم برجر أرينا للطلبات أونلاين متوفر الآن على كل من متجر جوجل بلاى ومتجر ابل استور', 'http://app.emcan-group.com/system/api/uploads/Projects/5/arena.jpeg', 1, '2020-11-18 13:21:27'),
(6, 3, 'Golden Roundhouse app', 'تطبيق مطعم السفرة الذهبية', 'The latest business of the can Technology and Information solution in Mobile Applications, the Golden Travel Online Application is now available at Google Play Store and Apple Astor', 'احدث اعمال شركة إمكان للحلول التقنية والمعلومات فى تطبيقات الجوال، تطبيق مطعم السفرة الذهبية للطلبات أونلاين متوفر الآن على كل من متجر جوجل بلاى ومتجر ابل استور', 'http://app.emcan-group.com/system/api/uploads/Projects/6/sufrah.jpeg', 1, '2020-11-18 13:22:39'),
(7, 3, 'Application of the construction consultant', 'تطبيق مستشار البناء', 'The latest business for the can Technology and Information solution in Mobile Applications, the construction consultant application is now available on both Google Play Store and Apple Astor', 'احدث اعمال شركة إمكان للحلول التقنية والمعلومات فى تطبيقات الجوال، تطبيق مستشار البناء متوفر الآن على كل من متجر جوجل بلاى ومتجر ابل استور', 'http://app.emcan-group.com/system/api/uploads/Projects/7/elbnaa.jpeg', 1, '2020-11-18 13:24:17'),
(8, 3, 'Authentic Shami restaurant application', 'تطبيق مطعم الشامي الأصيل', 'The latest business of the can Technical and Information solution in Mobile Applications, the original Shami Online Application is now available at Google Play Store and Apple Astor', 'احدث اعمال شركة إمكان للحلول التقنية والمعلومات فى تطبيقات الجوال، تطبيق مطعم الشامي الأصيل للطلبات أونلاين متوفر الآن على كل من متجر جوجل بلاى ومتجر ابل استور', 'http://app.emcan-group.com/system/api/uploads/Projects/8/elshami.jpeg', 1, '2020-11-18 13:25:55'),
(9, 2, 'logo 1', 'لوجو 1', 'description about this logo', 'تفاصيل عن اللوجو', 'http://app.emcan-group.com/system/api/uploads/Projects/9/530270-8I7aa-1556371888-5cc459b0510a5.png', 1, '2020-11-18 13:31:35'),
(10, 2, 'Logo 1', 'لوجو 1', 'Description about this logo', 'تفاصيل عن اللوجو', 'http://app.emcan-group.com/system/api/uploads/Projects/10/530270-8I7aa-1556371888-5cc459b0510a5@2x.png', 1, '2020-11-18 13:32:36'),
(11, 2, 'logo 3', 'لوجو 3', 'Description about this logo', 'تفاصيل عن اللوجو', 'http://app.emcan-group.com/system/api/uploads/Projects/11/530270-8I7aa-1556371888-5cc459b0510a5@3x.png', 1, '2020-11-18 13:34:10'),
(12, 4, 'The Social Media Management of the Burger Xrius restaurant', 'إدارة السوشيال ميديا لمطعم برجر اكسريس', 'Emcan company has the honor to manage social media for a restaurant Burger Xrius', 'تتشرف شركة إمكان لتقنية المعلومات بإدارة مواقع التواصل الإجتماعي لمطعم برجر اكسريس', 'http://app.emcan-group.com/system/api/uploads/Projects/12/23.jpg', 1, '2020-11-18 13:38:28'),
(13, 4, 'Managing the Social Media for Burger Lane restaurant', 'إدارة السوشيال ميديا لمطعم برجر لاين', 'Emcan has the honor to manage social media for a restaurant Burger Lane', 'تتشرف شركة إمكان لتقنية المعلومات بإدارة مواقع التواصل الإجتماعي لمطعم برجر لاين', 'http://app.emcan-group.com/system/api/uploads/Projects/13/22.jpg', 1, '2020-11-18 13:40:40'),
(14, 4, 'The Sushial Media Management of the Chikit restaurant', 'إدارة السوشيال ميديا لمطعم تشيكيت', 'Emcan has the honor to manage social media for a restaurant Chikit', 'تتشرف شركة إمكان لتقنية المعلومات بإدارة مواقع التواصل الإجتماعي لمطعم تشيكيت', 'http://app.emcan-group.com/system/api/uploads/Projects/14/21.jpg', 1, '2020-11-18 13:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` tinyint(2) NOT NULL,
  `orders` int(11) NOT NULL,
  `users` int(11) NOT NULL,
  `clients` int(11) NOT NULL,
  `statics` int(11) NOT NULL,
  `problems` int(11) NOT NULL,
  `comments` int(11) NOT NULL,
  `reports` int(11) NOT NULL,
  `about` int(11) NOT NULL,
  `regions` int(11) NOT NULL,
  `messages` int(11) NOT NULL,
  `dishs` int(11) NOT NULL,
  `adds_and_removes` int(11) NOT NULL,
  `cat_and_sub` int(11) NOT NULL,
  `date_added` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `user_email`, `user_phone`, `user_image`, `user_type`, `orders`, `users`, `clients`, `statics`, `problems`, `comments`, `reports`, `about`, `regions`, `messages`, `dishs`, `adds_and_removes`, `cat_and_sub`, `date_added`) VALUES
(1, 'admin', '123456emcan', 'admin@gmail.com', '01200320004', '78-785827_user-profile-avatar-login-account-male-user-icon.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-10-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `client_addresses`
--
ALTER TABLE `client_addresses`
  ADD PRIMARY KEY (`client_address_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_token`
--
ALTER TABLE `device_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_type`
--
ALTER TABLE `messages_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `our_clients`
--
ALTER TABLE `our_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`statistic_id`);

--
-- Indexes for table `sub_portfolio`
--
ALTER TABLE `sub_portfolio`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `client_addresses`
--
ALTER TABLE `client_addresses`
  MODIFY `client_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `device_token`
--
ALTER TABLE `device_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages_type`
--
ALTER TABLE `messages_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `our_clients`
--
ALTER TABLE `our_clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `statistic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_portfolio`
--
ALTER TABLE `sub_portfolio`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
