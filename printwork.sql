-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 07, 2023 at 01:34 PM
-- Server version: 8.0.33-0ubuntu0.20.04.2
-- PHP Version: 8.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `printwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `allowed_leaves`
--

CREATE TABLE `allowed_leaves` (
  `id` int NOT NULL,
  `leave_id` int NOT NULL,
  `employee_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `allowed_leaves`
--

INSERT INTO `allowed_leaves` (`id`, `leave_id`, `employee_id`) VALUES
(1, 1, 14),
(2, 1, 15),
(3, 11, 48);

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `department_id` bigint UNSIGNED DEFAULT NULL,
  `added_by` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_notify` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appraisals`
--

CREATE TABLE `appraisals` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `department_id` bigint UNSIGNED NOT NULL,
  `designation_id` bigint UNSIGNED NOT NULL,
  `customer_experience` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `marketing` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `administration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `professionalism` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `integrity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appraisals`
--

INSERT INTO `appraisals` (`id`, `company_id`, `employee_id`, `department_id`, `designation_id`, `customer_experience`, `marketing`, `administration`, `professionalism`, `integrity`, `attendance`, `remarks`, `date`, `created_at`, `updated_at`) VALUES
(2, 3, 3, 2, 1, 'None', 'None', 'None', 'None', 'None', 'None', 'jjjh', '11/05/2021', '2021-11-05 10:49:37', '2021-11-09 16:24:05'),
(3, 3, 3, 2, 1, 'Beginner', 'Beginner', 'Expert/Leader', 'Beginner', 'Beginner', 'Expert/Leader', 'nnn', '06/14/2023', '2023-06-22 12:31:24', '2023-06-22 12:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint UNSIGNED NOT NULL,
  `asset_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED DEFAULT NULL,
  `asset_code` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `assets_category_id` bigint UNSIGNED NOT NULL,
  `Asset_note` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `manufacturer` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `warranty_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_working` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_categories`
--

CREATE TABLE `asset_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `category_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_categories`
--

INSERT INTO `asset_categories` (`id`, `company_id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Vehicles', '2021-10-30 05:05:45', '2021-11-15 12:17:09'),
(2, NULL, 'Computers', '2021-10-30 05:05:55', '2021-10-30 05:05:55'),
(6, NULL, 'nm', '2023-06-27 16:44:57', '2023-06-27 16:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `attendance_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `clock_in` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `clock_in_ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `clock_out` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `clock_out_ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `clock_in_out` tinyint NOT NULL,
  `time_late` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00:00',
  `early_leaving` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00:00',
  `overtime` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00:00',
  `total_work` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00:00',
  `total_rest` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00:00',
  `attendance_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'present',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `employee_id`, `attendance_date`, `clock_in`, `clock_in_ip`, `clock_out`, `clock_out_ip`, `clock_in_out`, `time_late`, `early_leaving`, `overtime`, `total_work`, `total_rest`, `attendance_status`, `created_at`) VALUES
(1, 3, '2021-10-23', '17:59', '162.158.255.245', '17:59', '162.158.255.245', 0, '00:00', '00:00', '00:00', '00:00', '00:00', 'present', '0000-00-00 00:00:00'),
(2, 14, '2021-10-27', '18:30', '', '18:25', '', 0, '00:00', '00:00', '00:00', '00:05', '00:00', 'present', '0000-00-00 00:00:00'),
(3, 3, '2021/11/13', '12:00', '', '12:00', '', 0, '03:00', '06:00', '00:00', '00:00', '00:00', 'present', '0000-00-00 00:00:00'),
(4, 3, '2021/11/13', '12:00', '', '12:00', '', 0, '03:00', '06:00', '00:00', '00:00', '00:00', 'present', '0000-00-00 00:00:00'),
(5, 3, '', '10:29', '172.70.122.43', '', '', 1, '01:29', '00:00', '00:00', '00:00', '00:00', 'present', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` bigint UNSIGNED NOT NULL,
  `award_information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `award_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gift` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cash` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `department_id` bigint UNSIGNED DEFAULT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `award_type_id` bigint UNSIGNED DEFAULT NULL,
  `award_photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `award_types`
--

CREATE TABLE `award_types` (
  `id` bigint UNSIGNED NOT NULL,
  `award_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `award_types`
--

INSERT INTO `award_types` (`id`, `award_name`, `created_at`, `updated_at`) VALUES
(1, 'Performance', NULL, '2023-03-08 07:32:34'),
(2, 'Most Dedicated', '2023-03-08 07:33:11', '2023-03-08 07:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `calendarables`
--

CREATE TABLE `calendarables` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_interview`
--

CREATE TABLE `candidate_interview` (
  `interview_id` bigint UNSIGNED NOT NULL,
  `candidate_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int NOT NULL,
  `conversation_id` int NOT NULL,
  `sender_id` int NOT NULL,
  `rec_id` int NOT NULL,
  `msg` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `conversation_id`, `sender_id`, `rec_id`, `msg`, `updated_at`) VALUES
(1, 1, 1, 3, 'hello', '2021-11-23 01:44:35'),
(2, 2, 1, 3, 'hello', '2021-11-23 01:44:35'),
(3, 3, 1, 3, 'hy', '2021-11-23 01:51:18'),
(4, 4, 1, 2, 'hello', '2021-11-23 08:36:40'),
(5, 5, 2, 1, 'Hy', '2021-11-23 08:46:56'),
(6, 6, 3, 1, 'hy sir', '2021-11-23 08:57:40');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address2` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` tinyint DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `email`, `contact_no`, `username`, `profile`, `company_name`, `gender`, `website`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(22, 'Alana', 'Gibs', 'alana@gmail.com', '+923045678676', 'alana1234', NULL, 'Ace Creative studio', '', '#', 'asmad towm lodrah', '', 'lodrah', 'guyg', '32323', 127, 1, '2021-11-02 10:18:28', '2023-03-09 15:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trading_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` bigint UNSIGNED DEFAULT NULL,
  `company_logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `company_type`, `trading_name`, `registration_no`, `contact_no`, `email`, `website`, `tax_no`, `location_id`, `company_logo`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'Mecarvi Creatives', 'corporation', '', '92-1990641', '4045499860', 'admin@mecarvicreatives.com', 'www.mecarvicreatives.com', '92-1990641', 1, '177457316_1677829279.jfif', NULL, '2021-10-04 07:19:18', '2023-03-03 10:41:19'),
(16, 'Mecarvi Prints', 'corporation', '', '86-2390689', '8556327765', 'admin@mecarviprints.com', 'www.mecarviprints.com', '86-2390689', 1, '264288813_1683267592.png', NULL, '2022-12-31 09:53:03', '2023-05-05 09:19:52'),
(17, 'Mecarvi Technologies', 'corporation', 'Mecarvi Technologies', '', '8556327765', 'admin@mecarvitechnologies.com', 'www.mecarvitechnologies.com', '8418888', 1, NULL, NULL, '2023-05-21 18:59:06', '2023-05-21 18:59:06'),
(18, 'Mecarvi Consulting', 'corporation', 'Mecarvi Consulting', '', '8556327765', 'admin@mecarviconsulting.com', 'www.mecarviconsulting.com', '92-1990641', 1, NULL, NULL, '2023-05-21 19:00:09', '2023-05-21 19:00:09'),
(19, 'Mecarvi Signs', 'corporation', 'Mecarvi Signs', '', '8556327765', 'admin@mecarvisigns.com', 'www.mecarvisigns.com', '92-1990641', 1, NULL, NULL, '2023-05-21 19:13:50', '2023-05-21 19:13:50'),
(20, 'Mecarvi Construction', 'corporation', 'Mecarvi Construction', '', '8556322784', 'admin@mecarviconstruction.com', 'www.mecarviconstruction.com', '92-1990641', 1, NULL, NULL, '2023-05-21 19:16:39', '2023-05-21 19:16:39'),
(22, 'mecarvitesting', 'exempt organization', 'mecarvi', '', '03030220582', 'waheedm3742@gmail.com', 'mecarvi.com', '12345678', 1, '2064259635_1687415074.jpg', NULL, '2023-06-22 09:24:34', '2023-06-22 09:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint UNSIGNED NOT NULL,
  `complaint_title` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company_id` bigint UNSIGNED NOT NULL,
  `complaint_from` bigint UNSIGNED NOT NULL,
  `complaint_against` bigint UNSIGNED NOT NULL,
  `complaint_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `complaint_title`, `description`, `company_id`, `complaint_from`, `complaint_against`, `complaint_date`, `status`, `created_at`, `updated_at`) VALUES
(3, 'zx', 'kjkjk', 3, 15, 14, '2023-06-23', 'Yes', '2023-06-23 15:28:39', '2023-06-23 15:28:39'),
(4, 'ersr', 'ewew', 3, 14, 3, '2023-06-24', 'Yes', '2023-06-24 09:15:52', '2023-06-24 09:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `contract_types`
--

CREATE TABLE `contract_types` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int NOT NULL,
  `sender_id` int NOT NULL,
  `rec_id` int NOT NULL,
  `msg` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `sender_id`, `rec_id`, `msg`, `updated_at`) VALUES
(1, 1, 3, 'hello', '2021-11-23 01:44:35'),
(2, 1, 3, 'hello', '2021-11-23 01:44:35'),
(3, 1, 3, 'hy', '2021-11-23 01:51:18'),
(4, 1, 2, 'hello', '2021-11-23 08:36:40'),
(5, 2, 1, 'Hy', '2021-11-23 08:46:56'),
(6, 3, 1, 'hy sir', '2021-11-23 08:57:40');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`) VALUES
(1, 'US', 'United States'),
(2, 'CA', 'Canada'),
(3, 'AF', 'Afghanistan'),
(4, 'AL', 'Albania'),
(5, 'DZ', 'Algeria'),
(6, 'DS', 'American Samoa'),
(7, 'AD', 'Andorra'),
(8, 'AO', 'Angola'),
(9, 'AI', 'Anguilla'),
(10, 'AQ', 'Antarctica'),
(11, 'AG', 'Antigua and/or Barbuda'),
(12, 'AR', 'Argentina'),
(13, 'AM', 'Armenia'),
(14, 'AW', 'Aruba'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia'),
(29, 'BA', 'Bosnia and Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BV', 'Bouvet Island'),
(32, 'BR', 'Brazil'),
(33, 'IO', 'British lndian Ocean Territory'),
(34, 'BN', 'Brunei Darussalam'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CV', 'Cape Verde'),
(41, 'KY', 'Cayman Islands'),
(42, 'CF', 'Central African Republic'),
(43, 'TD', 'Chad'),
(44, 'CL', 'Chile'),
(45, 'CN', 'China'),
(46, 'CX', 'Christmas Island'),
(47, 'CC', 'Cocos (Keeling) Islands'),
(48, 'CO', 'Colombia'),
(49, 'KM', 'Comoros'),
(50, 'CG', 'Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecudaor'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JM', 'Jamaica'),
(108, 'JP', 'Japan'),
(109, 'JO', 'Jordan'),
(110, 'KZ', 'Kazakhstan'),
(111, 'KE', 'Kenya'),
(112, 'KI', 'Kiribati'),
(113, 'KP', 'Korea, Democratic People\'s Republic of'),
(114, 'KR', 'Korea, Republic of'),
(115, 'KW', 'Kuwait'),
(116, 'KG', 'Kyrgyzstan'),
(117, 'LA', 'Lao People\'s Democratic Republic'),
(118, 'LV', 'Latvia'),
(119, 'LB', 'Lebanon'),
(120, 'LS', 'Lesotho'),
(121, 'LR', 'Liberia'),
(122, 'LY', 'Libyan Arab Jamahiriya'),
(123, 'LI', 'Liechtenstein'),
(124, 'LT', 'Lithuania'),
(125, 'LU', 'Luxembourg'),
(126, 'MO', 'Macau'),
(127, 'MK', 'Macedonia'),
(128, 'MG', 'Madagascar'),
(129, 'MW', 'Malawi'),
(130, 'MY', 'Malaysia'),
(131, 'MV', 'Maldives'),
(132, 'ML', 'Mali'),
(133, 'MT', 'Malta'),
(134, 'MH', 'Marshall Islands'),
(135, 'MQ', 'Martinique'),
(136, 'MR', 'Mauritania'),
(137, 'MU', 'Mauritius'),
(138, 'TY', 'Mayotte'),
(139, 'MX', 'Mexico'),
(140, 'FM', 'Micronesia, Federated States of'),
(141, 'MD', 'Moldova, Republic of'),
(142, 'MC', 'Monaco'),
(143, 'MN', 'Mongolia'),
(144, 'MS', 'Montserrat'),
(145, 'MA', 'Morocco'),
(146, 'MZ', 'Mozambique'),
(147, 'MM', 'Myanmar'),
(148, 'NA', 'Namibia'),
(149, 'NR', 'Nauru'),
(150, 'NP', 'Nepal'),
(151, 'NL', 'Netherlands'),
(152, 'AN', 'Netherlands Antilles'),
(153, 'NC', 'New Caledonia'),
(154, 'NZ', 'New Zealand'),
(155, 'NI', 'Nicaragua'),
(156, 'NE', 'Niger'),
(157, 'NG', 'Nigeria'),
(158, 'NU', 'Niue'),
(159, 'NF', 'Norfork Island'),
(160, 'MP', 'Northern Mariana Islands'),
(161, 'NO', 'Norway'),
(162, 'OM', 'Oman'),
(163, 'PK', 'Pakistan'),
(164, 'PW', 'Palau'),
(165, 'PA', 'Panama'),
(166, 'PG', 'Papua New Guinea'),
(167, 'PY', 'Paraguay'),
(168, 'PE', 'Peru'),
(169, 'PH', 'Philippines'),
(170, 'PN', 'Pitcairn'),
(171, 'PL', 'Poland'),
(172, 'PT', 'Portugal'),
(173, 'PR', 'Puerto Rico'),
(174, 'QA', 'Qatar'),
(175, 'RE', 'Reunion'),
(176, 'RO', 'Romania'),
(177, 'RU', 'Russian Federation'),
(178, 'RW', 'Rwanda'),
(179, 'KN', 'Saint Kitts and Nevis'),
(180, 'LC', 'Saint Lucia'),
(181, 'VC', 'Saint Vincent and the Grenadines'),
(182, 'WS', 'Samoa'),
(183, 'SM', 'San Marino'),
(184, 'ST', 'Sao Tome and Principe'),
(185, 'SA', 'Saudi Arabia'),
(186, 'SN', 'Senegal'),
(187, 'SC', 'Seychelles'),
(188, 'SL', 'Sierra Leone'),
(189, 'SG', 'Singapore'),
(190, 'SK', 'Slovakia'),
(191, 'SI', 'Slovenia'),
(192, 'SB', 'Solomon Islands'),
(193, 'SO', 'Somalia'),
(194, 'ZA', 'South Africa'),
(195, 'GS', 'South Georgia South Sandwich Islands'),
(196, 'ES', 'Spain'),
(197, 'LK', 'Sri Lanka'),
(198, 'SH', 'St. Helena'),
(199, 'PM', 'St. Pierre and Miquelon'),
(200, 'SD', 'Sudan'),
(201, 'SR', 'Suriname'),
(202, 'SJ', 'Svalbarn and Jan Mayen Islands'),
(203, 'SZ', 'Swaziland'),
(204, 'SE', 'Sweden'),
(205, 'CH', 'Switzerland'),
(206, 'SY', 'Syrian Arab Republic'),
(207, 'TW', 'Taiwan'),
(208, 'TJ', 'Tajikistan'),
(209, 'TZ', 'Tanzania, United Republic of'),
(210, 'TH', 'Thailand'),
(211, 'TG', 'Togo'),
(212, 'TK', 'Tokelau'),
(213, 'TO', 'Tonga'),
(214, 'TT', 'Trinidad and Tobago'),
(215, 'TN', 'Tunisia'),
(216, 'TR', 'Turkey'),
(217, 'TM', 'Turkmenistan'),
(218, 'TC', 'Turks and Caicos Islands'),
(219, 'TV', 'Tuvalu'),
(220, 'UG', 'Uganda'),
(221, 'UA', 'Ukraine'),
(222, 'AE', 'United Arab Emirates'),
(223, 'GB', 'United Kingdom'),
(224, 'UM', 'United States minor outlying islands'),
(225, 'UY', 'Uruguay'),
(226, 'UZ', 'Uzbekistan'),
(227, 'VU', 'Vanuatu'),
(228, 'VA', 'Vatican City State'),
(229, 'VE', 'Venezuela'),
(230, 'VN', 'Vietnam'),
(231, 'VG', 'Virigan Islands (British)'),
(232, 'VI', 'Virgin Islands (U.S.)'),
(233, 'WF', 'Wallis and Futuna Islands'),
(234, 'EH', 'Western Sahara'),
(235, 'YE', 'Yemen'),
(236, 'YU', 'Yugoslavia'),
(237, 'ZR', 'Zaire'),
(238, 'ZM', 'Zambia'),
(239, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `c_m_s`
--

CREATE TABLE `c_m_s` (
  `id` bigint UNSIGNED NOT NULL,
  `home` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c_m_s`
--

INSERT INTO `c_m_s` (`id`, `home`, `about`, `contact`, `created_at`, `updated_at`) VALUES
(1, '&lt;p&gt;vs&lt;/p&gt;', '', '', '2021-11-01 09:34:54', '2021-11-01 09:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint UNSIGNED NOT NULL,
  `department_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `department_head` bigint UNSIGNED DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `company_id`, `department_head`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'IT Department', 17, NULL, NULL, NULL, '2023-05-21 19:05:50'),
(2, 'Finance Department', 16, NULL, NULL, '2021-10-21 08:39:18', '2023-03-03 01:54:02'),
(6, 'Sales Department', 16, NULL, NULL, '2021-11-08 07:22:28', '2023-03-03 01:53:54'),
(11, 'Graphics Department', 3, NULL, NULL, '2023-03-03 01:54:33', '2023-03-03 01:54:33'),
(12, 'Creative Department', 3, NULL, NULL, '2023-03-03 01:55:00', '2023-03-03 01:57:27'),
(13, 'Human Resource Department', 16, NULL, NULL, '2023-05-21 19:07:20', '2023-05-21 19:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint UNSIGNED NOT NULL,
  `designation_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `department_id` bigint UNSIGNED DEFAULT NULL,
  `sub_department_id` int DEFAULT '0',
  `is_active` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `designation_name`, `company_id`, `department_id`, `sub_department_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Frontend Web Developer', 17, 1, 3, NULL, '2021-10-16 07:52:38', '2023-05-21 19:01:16'),
(2, 'Backend Developer', 17, 1, 3, NULL, '2021-11-01 08:58:08', '2023-05-21 19:03:46');

-- --------------------------------------------------------

--
-- Table structure for table `document_types`
--

CREATE TABLE `document_types` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `document_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_types`
--

INSERT INTO `document_types` (`id`, `company_id`, `document_type`, `created_at`, `updated_at`) VALUES
(2, NULL, 'Passport', NULL, '2021-10-30 05:04:55'),
(3, NULL, 'State ID', NULL, '2021-10-30 05:05:17'),
(5, NULL, 'Contracts', '2021-10-30 05:06:55', '2021-10-30 05:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_shift_id` bigint UNSIGNED DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `department_id` bigint UNSIGNED DEFAULT NULL,
  `sub_department_id` bigint NOT NULL,
  `designation_id` bigint UNSIGNED DEFAULT NULL,
  `location_id` bigint UNSIGNED DEFAULT NULL,
  `role_users_id` bigint UNSIGNED DEFAULT NULL,
  `status_id` bigint UNSIGNED DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `exit_date` date DEFAULT NULL,
  `marital_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `city` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedIn_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_salary` double(8,2) NOT NULL DEFAULT '0.00',
  `payslip_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_leave` int DEFAULT '0',
  `remaining_leave` int DEFAULT '0',
  `pension_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pension_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `is_active` tinyint DEFAULT NULL,
  `reports_to` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `contact_no`, `date_of_birth`, `gender`, `office_shift_id`, `company_id`, `department_id`, `sub_department_id`, `designation_id`, `location_id`, `role_users_id`, `status_id`, `joining_date`, `exit_date`, `marital_status`, `address`, `city`, `state`, `country`, `zip_code`, `cv`, `skype_id`, `fb_id`, `twitter_id`, `linkedIn_id`, `whatsapp_id`, `basic_salary`, `payslip_type`, `attendance_type`, `total_leave`, `remaining_leave`, `pension_type`, `pension_amount`, `is_active`, `reports_to`, `created_at`, `updated_at`) VALUES
(3, 'Ahmed', 'Ali', 'emplu@gmail.com', '+92304567867637', '2021-03-15', '', 1, 3, 2, 0, 1, 1, 2, NULL, '2001-12-13', NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 100.00, 'Monthly', 'general', 110, 1106, NULL, 0.00, 1, 15, NULL, '2021-11-13 09:40:04'),
(14, 'Jonathan', 'Grey', 'jgrey@mecarviprints.com', '14243714628', '1901-12-04', 'Male', 1, 3, NULL, 0, 1, 1, 2, NULL, '2021-10-21', NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 100.00, 'Monthly', 'general', 110, 110, NULL, 0.00, 1, 3, '2021-10-16 12:15:24', '2023-03-03 02:04:27'),
(15, 'Subrina', 'Vazquez', 'test1234231@gmail.com', '+4708152110', '1901-12-29', 'Male', 1, 3, NULL, 0, 2, 1, 4, NULL, '2021-10-28', NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 100.00, 'Monthly', 'general', 110, 110, NULL, 0.00, 1, 14, '2021-10-16 12:37:25', '2023-03-04 20:05:20'),
(48, 'Muhammad', 'Waheed', 'waheedm3742@gmail.com', '03030220582', '1923-02-25', 'Male', 8, 17, 1, 0, 1, NULL, 4, 5, '2023-06-23', '2023-06-24', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, 'general', 110, 102, NULL, 0.00, 1, 3, '2023-06-23 14:44:14', '2023-06-23 15:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `employee_bank_accounts`
--

CREATE TABLE `employee_bank_accounts` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `account_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_branch` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_contacts`
--

CREATE TABLE `employee_contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `relation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint DEFAULT '0',
  `is_dependent` tinyint DEFAULT '0',
  `contact_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_phone_ext` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_contacts`
--

INSERT INTO `employee_contacts` (`id`, `employee_id`, `relation`, `is_primary`, `is_dependent`, `contact_name`, `work_phone`, `work_phone_ext`, `personal_phone`, `home_phone`, `work_email`, `personal_email`, `address1`, `address2`, `city`, `state`, `zip`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 3, 'sibling', 1, NULL, 'Jonathan Grey', '4044808252', '', '4243714628', '', 'jgrey@mecarviprints.com', 'jgrey@mecarviprints.com', '526 Forest Parkway', 'Suite G', 'Forest Park', 'GA', '30297', 1, '2023-02-21 22:49:24', '2023-02-21 22:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `employee_contracts`
--

CREATE TABLE `employee_contracts` (
  `contract_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `contract_type_id` int NOT NULL,
  `from_date` varchar(255) NOT NULL,
  `designation_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `to_date` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `employee_documents`
--

CREATE TABLE `employee_documents` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `document_type_id` bigint UNSIGNED DEFAULT NULL,
  `document_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `document_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_date` date NOT NULL,
  `is_notify` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_immigrations`
--

CREATE TABLE `employee_immigrations` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `document_type_id` bigint UNSIGNED DEFAULT NULL,
  `document_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_date` date NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `eligible_review_date` date DEFAULT NULL,
  `country_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_interview`
--

CREATE TABLE `employee_interview` (
  `interview_id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_meetings`
--

CREATE TABLE `employee_meetings` (
  `employee_id` bigint UNSIGNED NOT NULL,
  `meeting_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_project`
--

CREATE TABLE `employee_project` (
  `employee_id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_project`
--

INSERT INTO `employee_project` (`employee_id`, `project_id`) VALUES
(3, 6),
(14, 8),
(15, 10);

-- --------------------------------------------------------

--
-- Table structure for table `employee_qualificaitons`
--

CREATE TABLE `employee_qualificaitons` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `education_level_id` bigint UNSIGNED DEFAULT NULL,
  `institution_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_year` date DEFAULT NULL,
  `to_year` date DEFAULT NULL,
  `language_skill_id` bigint UNSIGNED DEFAULT NULL,
  `general_skill_id` bigint UNSIGNED DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_quoted_project`
--

CREATE TABLE `employee_quoted_project` (
  `employee_id` bigint UNSIGNED NOT NULL,
  `quoted_project_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_quoted_project`
--

INSERT INTO `employee_quoted_project` (`employee_id`, `quoted_project_id`) VALUES
(3, 7),
(14, 7);

-- --------------------------------------------------------

--
-- Table structure for table `employee_security_levels`
--

CREATE TABLE `employee_security_levels` (
  `id` int NOT NULL,
  `employee_id` int NOT NULL,
  `security_type` int NOT NULL,
  `date_of_clearance` varchar(200) NOT NULL,
  `expiry_date` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_support_ticket`
--

CREATE TABLE `employee_support_ticket` (
  `employee_id` bigint UNSIGNED NOT NULL,
  `support_ticket_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_task`
--

CREATE TABLE `employee_task` (
  `employee_id` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_training_list`
--

CREATE TABLE `employee_training_list` (
  `employee_id` bigint UNSIGNED NOT NULL,
  `training_list_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_training_list`
--

INSERT INTO `employee_training_list` (`employee_id`, `training_list_id`) VALUES
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_work_experience`
--

CREATE TABLE `employee_work_experience` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_year` date DEFAULT NULL,
  `to_year` date DEFAULT NULL,
  `post` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimates`
--

CREATE TABLE `estimates` (
  `id` bigint NOT NULL,
  `estimate_number` varchar(50) NOT NULL,
  `client_id` bigint NOT NULL,
  `project_id` bigint NOT NULL,
  `estimate_date` varchar(50) NOT NULL,
  `estimate_due_date` varchar(50) NOT NULL,
  `sub_total` double NOT NULL,
  `discount_type` tinyint NOT NULL,
  `discount_figure` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_discount` double NOT NULL,
  `grand_total` double NOT NULL,
  `estimate_note` mediumtext NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_items`
--

CREATE TABLE `estimate_items` (
  `id` bigint UNSIGNED NOT NULL,
  `estimate_id` bigint UNSIGNED DEFAULT NULL,
  `project_id` bigint UNSIGNED DEFAULT NULL,
  `item_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_tax_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_tax_rate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_qty` bigint NOT NULL DEFAULT '0',
  `item_unit_price` bigint NOT NULL,
  `item_sub_total` double(8,2) NOT NULL,
  `sub_total` double(8,2) NOT NULL,
  `discount_type` tinyint DEFAULT NULL,
  `discount_figure` double(8,2) NOT NULL,
  `total_tax` double(8,2) NOT NULL,
  `total_discount` double(8,2) NOT NULL,
  `grand_total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `estimate_items`
--

INSERT INTO `estimate_items` (`id`, `estimate_id`, `project_id`, `item_name`, `item_tax_type`, `item_tax_rate`, `item_qty`, `item_unit_price`, `item_sub_total`, `sub_total`, `discount_type`, `discount_figure`, `total_tax`, `total_discount`, `grand_total`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'item', '8.25', '16.5', 1, 200, 216.50, 216.50, 1, 10.00, 16.50, 21.65, 194.85, NULL, '2021-11-14 21:34:19'),
(2, 2, 2, 'dfgfd', '8.25', '0.825', 1, 10, 10.82, 10.82, 11, 0.00, 0.82, 0.00, 10.82, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED NOT NULL,
  `department_id` bigint UNSIGNED NOT NULL,
  `event_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_note` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_notify` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_types`
--

CREATE TABLE `expense_types` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_types`
--

INSERT INTO `expense_types` (`id`, `company_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 16, 'Loans', '2021-10-30 05:03:07', '2023-03-08 07:31:43'),
(4, 17, 'nmmn', '2023-06-27 16:44:29', '2023-06-27 16:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_managers`
--

CREATE TABLE `file_managers` (
  `id` bigint UNSIGNED NOT NULL,
  `department_id` bigint UNSIGNED DEFAULT NULL,
  `sub_department_id` int NOT NULL,
  `added_by` bigint UNSIGNED DEFAULT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_extension` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_managers`
--

INSERT INTO `file_managers` (`id`, `department_id`, `sub_department_id`, `added_by`, `file_name`, `file_size`, `file_extension`, `external_link`, `folder_id`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 1, 'Name', '619.38 KB', 'png', '', 0, '2021-10-21 22:56:54', '2021-10-21 22:56:54'),
(2, 1, 0, 1, 'Nme', '32.59 KB', 'jpg', NULL, 0, '2021-10-23 10:17:43', '2021-10-23 10:17:43');

-- --------------------------------------------------------

--
-- Table structure for table `file_manager_settings`
--

CREATE TABLE `file_manager_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `allowed_extensions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_file_size` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_manager_settings`
--

INSERT INTO `file_manager_settings` (`id`, `allowed_extensions`, `max_file_size`, `created_at`, `updated_at`) VALUES
(1, 'allowed extensions,pdf,jpeg,png,gif,psd,ai', 5200, '2021-10-20 10:10:19', '2023-03-08 07:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `finance_bank_cashes`
--

CREATE TABLE `finance_bank_cashes` (
  `id` bigint UNSIGNED NOT NULL,
  `account_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_balance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_branch` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance_bank_cashes`
--

INSERT INTO `finance_bank_cashes` (`id`, `account_name`, `account_balance`, `initial_balance`, `account_number`, `branch_code`, `bank_branch`, `created_at`, `updated_at`) VALUES
(7, 'test45', '12301', '12345', '12355', '3523', 'testupdate', '2023-06-23 10:44:22', '2023-07-07 16:33:39'),
(8, 'test', '12333', '12345', '12355', '3523', 'test', '2023-06-24 10:21:52', '2023-06-24 10:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `finance_deposits`
--

CREATE TABLE `finance_deposits` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `account_id` bigint UNSIGNED DEFAULT NULL,
  `amount` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_method_id` bigint UNSIGNED DEFAULT NULL,
  `payer_id` bigint UNSIGNED DEFAULT NULL,
  `deposit_reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deposit_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance_deposits`
--

INSERT INTO `finance_deposits` (`id`, `company_id`, `account_id`, `amount`, `category`, `description`, `payment_method_id`, `payer_id`, `deposit_reference`, `deposit_file`, `deposit_date`, `created_at`, `updated_at`) VALUES
(16, NULL, NULL, '323', 'Envato', 'n', NULL, 4, '234234', NULL, '11/13/2021', '2021-11-13 11:13:11', '2021-11-13 11:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `finance_expenses`
--

CREATE TABLE `finance_expenses` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `account_id` bigint UNSIGNED DEFAULT NULL,
  `amount` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_method_id` bigint UNSIGNED DEFAULT NULL,
  `payee_id` bigint UNSIGNED DEFAULT NULL,
  `expense_reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance_expenses`
--

INSERT INTO `finance_expenses` (`id`, `company_id`, `account_id`, `amount`, `category_id`, `description`, `payment_method_id`, `payee_id`, `expense_reference`, `expense_file`, `expense_date`, `created_at`, `updated_at`) VALUES
(6, NULL, 7, '12', 1, 'jk', 5, 3, '231321', NULL, '07/07/2023', '2023-07-07 16:33:39', '2023-07-07 16:33:39'),
(7, NULL, 7, '12', 1, 'jk', 5, 3, '231321', NULL, '07/07/2023', '2023-07-07 16:33:39', '2023-07-07 16:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `finance_payees`
--

CREATE TABLE `finance_payees` (
  `id` bigint UNSIGNED NOT NULL,
  `payee_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance_payees`
--

INSERT INTO `finance_payees` (`id`, `payee_name`, `contact_no`, `created_at`, `updated_at`) VALUES
(3, 'test', '03030220582', '2023-06-23 10:44:45', '2023-06-23 10:44:45');

-- --------------------------------------------------------

--
-- Table structure for table `finance_payers`
--

CREATE TABLE `finance_payers` (
  `id` bigint UNSIGNED NOT NULL,
  `payer_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance_payers`
--

INSERT INTO `finance_payers` (`id`, `payer_name`, `contact_no`, `created_at`, `updated_at`) VALUES
(4, 'Payerr', '0303030023', '2021-11-09 18:25:31', '2021-11-13 11:09:09');

-- --------------------------------------------------------

--
-- Table structure for table `finance_transactions`
--

CREATE TABLE `finance_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `account_id` bigint UNSIGNED DEFAULT NULL,
  `amount` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_method_id` bigint UNSIGNED DEFAULT NULL,
  `payee_id` bigint UNSIGNED DEFAULT NULL,
  `payer_id` bigint UNSIGNED DEFAULT NULL,
  `expense_reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance_transactions`
--

INSERT INTO `finance_transactions` (`id`, `company_id`, `account_id`, `amount`, `category`, `category_id`, `description`, `payment_method_id`, `payee_id`, `payer_id`, `expense_reference`, `expense_file`, `expense_date`, `deposit_reference`, `deposit_file`, `deposit_date`, `created_at`, `updated_at`) VALUES
(6, NULL, 7, '12', '', 1, 'jk', 5, 3, NULL, '231321', NULL, '07/07/2023', NULL, NULL, NULL, '2023-07-07 16:33:39', '2023-07-07 16:33:39'),
(7, NULL, 7, '12', '', 1, 'jk', 5, 3, NULL, '231321', NULL, '07/07/2023', NULL, NULL, NULL, '2023-07-07 16:33:39', '2023-07-07 16:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `finance_transfers`
--

CREATE TABLE `finance_transfers` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `from_account_id` bigint UNSIGNED DEFAULT NULL,
  `to_account_id` bigint UNSIGNED DEFAULT NULL,
  `amount` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_method_id` bigint UNSIGNED DEFAULT NULL,
  `date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance_transfers`
--

INSERT INTO `finance_transfers` (`id`, `company_id`, `from_account_id`, `to_account_id`, `amount`, `reference`, `description`, `payment_method_id`, `date`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, '323', '32231', 'sad', NULL, '2021-11-02', '2021-11-02 10:14:25', '2021-11-02 10:14:25'),
(2, NULL, NULL, NULL, '323', '32231', 'j', NULL, '11/13/2021', '2021-11-13 11:31:53', '2021-11-13 11:31:53'),
(6, NULL, 8, 8, '12', '12212', 'nnmn', 5, '06/24/2023', '2023-06-24 10:27:05', '2023-06-24 10:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` int NOT NULL,
  `name` varchar(300) NOT NULL,
  `user_id` int NOT NULL,
  `department_id` bigint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id`, `name`, `user_id`, `department_id`, `updated_at`) VALUES
(11, 'Office Folder', 1, 1, '2021-10-28 00:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int UNSIGNED NOT NULL,
  `site_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_format` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_payment_bank` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_format` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_color` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_job` tinyint(1) NOT NULL,
  `job_app_format` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `perf_configuration` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `org_competency` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payslip_pwd_format` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_pwd` tinyint(1) NOT NULL,
  `is_half_month` tinyint(1) NOT NULL,
  `email_notifications` tinyint(1) NOT NULL,
  `email_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_host` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_password` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_port` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_secure` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `site_logo`, `time_zone`, `currency`, `currency_format`, `default_payment_bank`, `date_format`, `theme`, `primary_color`, `enable_job`, `job_app_format`, `perf_configuration`, `org_competency`, `payslip_pwd_format`, `enable_pwd`, `is_half_month`, `email_notifications`, `email_type`, `smtp_host`, `smtp_username`, `smtp_password`, `smtp_port`, `email_secure`, `created_at`, `updated_at`) VALUES
(1, 'WorkForce', 'logo.png', 'Europe/Kirov', '$', 'prefix', '', 'M-d-Y', 'default.css', '#ff00a7', 1, '', 'technical,net level', 'comeptency', 'dateofbirth_name', 1, 1, 1, 'smtp', 'mail.mecarvi.com', 'noreply@mecarvicorporation.com', 'MeCaRViCorP#22$', '587', '', '2020-07-25 19:00:00', '2023-03-08 07:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `goal_trackings`
--

CREATE TABLE `goal_trackings` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED NOT NULL,
  `goal_type_id` bigint UNSIGNED NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_achievement` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `start_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `progress` int NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goal_trackings`
--

INSERT INTO `goal_trackings` (`id`, `company_id`, `goal_type_id`, `subject`, `target_achievement`, `description`, `start_date`, `end_date`, `progress`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'djhjsd', 'jhhgh', 'jhjhjh', '09/23/2021', '09/30/2021', 0, NULL, '2021-11-01 12:39:08', '2021-11-01 12:39:08');

-- --------------------------------------------------------

--
-- Table structure for table `goal_types`
--

CREATE TABLE `goal_types` (
  `id` bigint UNSIGNED NOT NULL,
  `goal_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goal_types`
--

INSERT INTO `goal_types` (`id`, `goal_type`, `created_at`, `updated_at`) VALUES
(1, 'test', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint UNSIGNED NOT NULL,
  `event_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `department_id` bigint UNSIGNED DEFAULT NULL,
  `start_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_publish` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `event_name`, `description`, `company_id`, `department_id`, `start_date`, `end_date`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Thanksgiving', '', 16, NULL, '11/23/2023', '11/23/2023', 1, '2021-10-30 13:44:16', '2023-02-21 22:40:42'),
(2, 'Christmas', '', 16, NULL, '12/25/2023', '12/25/2023', 1, '2021-11-01 09:00:52', '2023-02-21 22:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `indicators`
--

CREATE TABLE `indicators` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED NOT NULL,
  `designation_id` bigint UNSIGNED NOT NULL,
  `department_id` bigint UNSIGNED NOT NULL,
  `customer_experience` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `marketing` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `administrator` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `professionalism` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `integrity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attendance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `indicators`
--

INSERT INTO `indicators` (`id`, `company_id`, `designation_id`, `department_id`, `customer_experience`, `marketing`, `administrator`, `professionalism`, `integrity`, `attendance`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner', 'admin', '2021-11-01 12:32:45', '2021-11-01 12:32:45'),
(3, 17, 2, 1, 'Beginner', 'None', 'None', 'Intermidiate', 'None', 'None', 'mecarvi', '2023-06-24 16:40:18', '2023-06-24 16:40:18');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint UNSIGNED DEFAULT NULL,
  `project_id` bigint UNSIGNED DEFAULT NULL,
  `invoice_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_due_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` double(8,2) NOT NULL,
  `discount_type` tinyint DEFAULT NULL,
  `discount_figure` double(8,2) NOT NULL,
  `total_tax` double(8,2) NOT NULL,
  `total_discount` double(8,2) NOT NULL,
  `grand_total` double(8,2) NOT NULL,
  `invoice_note` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `client_id`, `project_id`, `invoice_date`, `invoice_due_date`, `sub_total`, `discount_type`, `discount_figure`, `total_tax`, `total_discount`, `grand_total`, `invoice_note`, `status`, `created_at`, `updated_at`) VALUES
(3, 'INV-RusE4B', 22, 6, '07/07/2023', '07/11/2023', 22.10, 0, 10.00, 12.10, 10.00, 12.10, 'qwqw', 1, '2023-07-07 13:33:04', '2023-07-07 13:35:17'),
(5, 'INV-4Tosgg', 22, 6, '07/07/2023', '07/18/2023', 88.40, 0, 10.00, 48.40, 10.00, 78.40, '', 1, '2023-07-07 13:36:54', '2023-07-07 13:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_id` bigint UNSIGNED DEFAULT NULL,
  `project_id` bigint UNSIGNED DEFAULT NULL,
  `item_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_tax_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_tax_rate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_qty` bigint NOT NULL DEFAULT '0',
  `item_unit_price` bigint NOT NULL,
  `item_sub_total` double(8,2) NOT NULL,
  `sub_total` double(8,2) NOT NULL,
  `discount_type` tinyint DEFAULT NULL,
  `discount_figure` double(8,2) NOT NULL,
  `total_tax` double(8,2) NOT NULL,
  `total_discount` double(8,2) NOT NULL,
  `grand_total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `project_id`, `item_name`, `item_tax_type`, `item_tax_rate`, `item_qty`, `item_unit_price`, `item_sub_total`, `sub_total`, `discount_type`, `discount_figure`, `total_tax`, `total_discount`, `grand_total`, `created_at`, `updated_at`) VALUES
(3, 3, 6, 'nnn', '121', '12.1', 1, 10, 22.10, 22.10, 22, 10.00, 12.10, 10.00, 12.10, NULL, NULL),
(5, 5, 6, 'nm', '121', '48.4', 1, 40, 88.40, 88.40, 88, 10.00, 48.40, 10.00, 78.40, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_settings`
--

CREATE TABLE `ip_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_candidates`
--

CREATE TABLE `job_candidates` (
  `id` bigint UNSIGNED NOT NULL,
  `job_id` bigint UNSIGNED NOT NULL,
  `full_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cover_letter` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `job_category` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `job_category`, `url`) VALUES
(1, 'Print Production Assistant', '#');

-- --------------------------------------------------------

--
-- Table structure for table `job_interviews`
--

CREATE TABLE `job_interviews` (
  `id` bigint UNSIGNED NOT NULL,
  `job_id` bigint UNSIGNED NOT NULL,
  `added_by` bigint UNSIGNED DEFAULT NULL,
  `interview_place` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `interview_date` date NOT NULL,
  `interview_time` time NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_posts`
--

CREATE TABLE `job_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED NOT NULL,
  `job_category_id` bigint UNSIGNED NOT NULL,
  `job_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_vacancy` int NOT NULL,
  `job_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_experience` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `closing_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `is_featured` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_posts`
--

INSERT INTO `job_posts` (`id`, `company_id`, `job_category_id`, `job_title`, `job_type`, `no_of_vacancy`, `job_url`, `gender`, `min_experience`, `short_description`, `long_description`, `closing_date`, `status`, `is_featured`, `created_at`, `updated_at`) VALUES
(2, 3, 1, 'jjhfdj', 'full_time', 10, 'UvvC7aJCDogkjZt2BXbx', 'Male', '7 Years', 'asd', '&lt;p&gt;sd&lt;/p&gt;', '11/18/2021', 0, 0, '2021-11-08 11:19:59', '2021-11-09 16:31:57'),
(3, 3, 1, 'n', 'part_time', 1, 'EFJeK9AJzM7L1JohuoX6', 'Male', '8 Years', 'n', '&lt;p&gt;n&lt;/p&gt;', '06/15/2023', 0, 1, '2023-06-22 13:39:06', '2023-06-22 13:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address2` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` tinyint DEFAULT NULL,
  `is_active` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `first_name`, `last_name`, `email`, `contact_no`, `username`, `profile`, `company_name`, `gender`, `website`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(49, 'Muhammad', 'Waheed', 'waheedmwed3742@gmail.com', '03030220582', 'user', NULL, 'mecarvitesting', '', 'mecarvi.com', 'Tahir Colony', '', 'Rahim Yar Khan', 'Punjab', '64200', 127, 1, '2023-06-26 09:46:03', '2023-06-26 09:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint UNSIGNED NOT NULL,
  `leave_type_id` bigint UNSIGNED DEFAULT NULL,
  `company_id` bigint UNSIGNED NOT NULL,
  `department_id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED DEFAULT NULL,
  `start_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_days` int NOT NULL,
  `leave_reason` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remarks` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_half` tinyint DEFAULT '0',
  `is_notify` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `leave_type_id`, `company_id`, `department_id`, `employee_id`, `start_date`, `end_date`, `total_days`, `leave_reason`, `remarks`, `status`, `is_half`, `is_notify`, `created_at`, `updated_at`) VALUES
(1, NULL, 3, 1, 14, '2021-12-10', '2021-12-12', 3, 'd', 'asd', 'first level approval', 1, NULL, '2021-11-01 10:12:55', '2021-11-01 10:12:55'),
(2, NULL, 3, 2, 3, '09/01/2021', '09/02/2021', 2, 'asddsa', 'asd', 'approved', 1, NULL, '2021-11-12 13:32:48', '2021-11-12 13:32:48'),
(4, 10, 17, 1, 48, '06/23/2023', '06/30/2023', 8, 'k', '', 'approved', NULL, NULL, '2023-06-23 15:21:40', '2023-06-23 15:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` bigint UNSIGNED NOT NULL,
  `leave_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `allocated_day` int DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `leave_type`, `allocated_day`, `company_id`, `created_at`, `updated_at`) VALUES
(10, 'jk', 8, NULL, '2023-03-09 11:47:22', '2023-03-09 15:27:48'),
(11, 'jkjh', 8, NULL, '2023-03-09 11:47:39', '2023-03-09 11:47:39'),
(12, 'fg', 0, NULL, '2023-03-10 13:24:36', '2023-03-10 13:24:36');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint UNSIGNED NOT NULL,
  `location_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_head` bigint UNSIGNED DEFAULT NULL,
  `address1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int UNSIGNED DEFAULT NULL,
  `zip` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_name`, `location_head`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `created_at`, `updated_at`) VALUES
(1, 'United States', 15, '526 Forest Parkway', 'Suite H', 'Forest Park', 'GA', 1, 30297, '2021-10-04 07:18:11', '2023-02-21 22:38:55');

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED NOT NULL,
  `meeting_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_note` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_notify` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_02_09_103616_create_role_users_table', 1),
(4, '2020_02_10_00000_create_users_table', 1),
(5, '2020_02_12_091317_create_locations_table', 1),
(6, '2020_02_12_091344_create_companies_table', 1),
(7, '2020_02_12_091353_create_departments_table', 1),
(8, '2020_02_12_091742_create_statuses_table', 1),
(9, '2020_02_12_091824_create_office_shifts_table', 1),
(10, '2020_02_12_091936_create_designations_table', 1),
(11, '2020_02_12_092121_create_leave_types_table', 1),
(12, '2020_02_13_100750_create_employees_table', 1),
(13, '2020_02_14_092309_create_leaves_table', 1),
(14, '2020_02_20_115449_create_general_settings_table', 1),
(15, '2020_02_23_054028_create_permission_tables', 1),
(16, '2020_02_23_184712_add_columns_to_permission_table', 1),
(17, '2020_03_19_132718_add_employee_id_on_locations_table', 2),
(18, '2020_03_20_162201_create_announcements_table', 2),
(19, '2020_03_20_201357_create_policies_table', 2),
(20, '2020_03_22_113701_create_holidays_table', 2),
(21, '2020_03_23_100213_create_award_types_table', 3),
(22, '2020_03_23_100248_create_awards_table', 3),
(23, '2020_03_23_123604_create_transfers_table', 3),
(24, '2020_03_23_144135_create_resignations_table', 3),
(25, '2020_03_23_150510_create_travel_types_table', 3),
(26, '2020_03_23_152610_create_travels_table', 3),
(27, '2020_03_23_154228_create_promotions_table', 3),
(28, '2020_03_23_194844_create_complaints_table', 3),
(29, '2020_03_24_134301_create_warnings_type_table', 3),
(30, '2020_03_24_134304_create_warnings_table', 3),
(31, '2020_03_24_143012_create_termination_types_table', 3),
(32, '2020_03_24_143038_create_terminations_table', 3),
(33, '2020_04_06_185530_create_training_types_table', 3),
(34, '2020_04_06_190352_create_trainers_table', 3),
(35, '2020_04_07_083717_create_training_lists_table', 3),
(36, '2020_04_07_103503_create_employee_training_list_table', 3),
(37, '2020_04_08_095050_create_events_table', 3),
(38, '2020_04_08_163144_create_meetings_table', 3),
(39, '2020_04_08_163906_create_employee_meeting_table', 3),
(40, '2020_05_05_212429_create_document_types_table', 3),
(41, '2020_04_09_063646_create_finance_bank_cashes_table', 4),
(42, '2020_04_09_154642_create_finance_payees_table', 4),
(43, '2020_04_09_201357_create_finance_payers_table', 4),
(44, '2020_04_10_064405_create_payment_methods_table', 4),
(45, '2020_04_10_094429_create_expense_types_table', 4),
(46, '2020_04_10_121829_create_finance_deposits_table', 4),
(47, '2020_04_11_084040_create_finance_expenses_table', 4),
(48, '2020_04_11_164442_create_finance_transactions_table', 4),
(49, '2020_04_13_071336_create_finance_transfers_table', 4),
(50, '2020_04_13_135659_create_asset_categories_table', 5),
(51, '2020_04_13_160310_create_assets_table', 5),
(52, '2020_04_15_103730_create_file_manager_settings_table', 5),
(53, '2020_04_15_193003_create_file_managers_table', 5),
(54, '2020_04_18_094856_create_support_tickets_table', 5),
(55, '2020_04_21_052227_create_ticket_comments_table', 5),
(56, '2020_04_21_172758_create_employee_support_ticket_table', 5),
(57, '2020_04_24_070148_create_countries_table', 5),
(58, '2020_04_24_071350_create_clients_table', 5),
(59, '2020_04_25_083125_create_projects_table', 5),
(60, '2020_04_25_092544_create_employee_project_table', 5),
(61, '2020_04_27_132031_create_project_discussions_table', 5),
(62, '2020_04_27_202219_create_project_bugs_table', 5),
(63, '2020_04_28_095459_create_project_files_table', 5),
(64, '2020_04_28_172850_create_tasks_table', 5),
(65, '2020_04_28_183034_create_employee_task_table', 5),
(66, '2020_04_29_164820_create_task_discussions_table', 5),
(67, '2020_04_29_185015_create_task_files_table', 5),
(68, '2020_05_01_093124_create_tax_types_table', 5),
(69, '2020_05_02_100902_create_invoices_table', 5),
(70, '2020_05_02_110310_create_invoice_items_table', 5),
(71, '2020_05_06_085438_create_employee_immigrations_table', 6),
(72, '2020_05_07_191655_create_employee_contacts_table', 6),
(73, '2020_05_08_181821_create_employee_documents_table', 6),
(74, '2020_05_12_200437_create_qualification_education_levels_table', 6),
(75, '2020_05_16_204859_create_qualification_languages_table', 6),
(76, '2020_05_17_181817_create_qualification_skills_table', 6),
(77, '2020_05_17_191414_create_employee_qualificaitons_table', 6),
(78, '2020_05_18_191844_create_employee_work_experience_table', 6),
(79, '2020_05_19_170527_create_employee_bank_accounts_table', 6),
(80, '2020_05_22_201218_create_salary_allowances_table', 6),
(81, '2020_05_23_184036_create_salary_commissions_table', 6),
(82, '2020_05_24_085740_create_salary_deductions_table', 6),
(83, '2020_05_24_103950_create_salary_other_payments_table', 6),
(84, '2020_05_24_163618_create_salary_overtimes_table', 6),
(85, '2020_05_26_134431_create_salary_loans_table', 6),
(86, '2020_06_11_104501_create_payslips_table', 7),
(87, '2020_06_17_055449_create_calendarables_table', 7),
(88, '2020_06_19_083329_create_job_categories_table', 7),
(89, '2020_06_19_152528_create_job_employers_table', 7),
(90, '2020_06_22_052056_create_attendances_table', 7),
(91, '2020_07_05_010713_create_job_posts_table', 7),
(92, '2020_07_06_162706_create_job_candidates_table', 7),
(93, '2020_07_07_144320_create_job_interviews_table', 7),
(94, '2020_07_07_160007_create_candidate_interview_table', 7),
(95, '2020_07_07_160428_create_employee_interview_table', 7),
(96, '2020_07_25_003500_create_official_documents_table', 7),
(97, '2020_04_18_203257_create_notifications_table', 8),
(98, '2020_10_16_202848_create_c_m_s_table', 9),
(99, '2018_08_29_200844_create_languages_table', 10),
(100, '2018_08_29_205156_create_translations_table', 10),
(101, '2021_01_08_072901_create_goal_types_table', 10),
(102, '2021_01_08_165133_create_indicators_table', 10),
(103, '2021_01_09_081319_create_appraisals_table', 10),
(104, '2021_01_10_080158_create_goal_trackings_table', 10),
(105, '2021_03_28_184255_create_ip_settings_table', 11),
(106, '2021_04_05_103029_create_salary_basics_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 3),
(2, 'App\\User', 5),
(2, 'App\\User', 6),
(1, 'App\\User', 8),
(2, 'App\\User', 9),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 14),
(2, 'App\\User', 15),
(5, 'App\\User', 21),
(3, 'App\\User', 22),
(4, 'App\\User', 23),
(2, 'App\\User', 24),
(2, 'App\\User', 25),
(4, 'App\\User', 26),
(2, 'App\\User', 27),
(3, 'App\\User', 28),
(1, 'App\\User', 29),
(1, 'App\\User', 30),
(1, 'App\\User', 31),
(2, 'App\\User', 32),
(2, 'App\\User', 33),
(2, 'App\\User', 34),
(1, 'App\\User', 36),
(2, 'App\\User', 37),
(2, 'App\\User', 38),
(3, 'App\\User', 39),
(2, 'App\\User', 40),
(2, 'App\\User', 41),
(2, 'App\\User', 42),
(2, 'App\\User', 43),
(2, 'App\\User', 44),
(4, 'App\\User', 48),
(3, 'App\\User', 49);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('02a08795-ea8c-4649-967d-7859331d840a', 'App\\Notifications\\EmployeeTransferNotify', 'App\\User', 3, '{\"data\":\"You have been transferred.Click for details.\",\"link\":\"\\/profile#Employee_transfer\"}', '2023-04-18 10:21:11', '2021-11-11 10:27:29', '2023-04-18 10:21:11'),
('06112408-1a31-4de3-81be-d69133bf07d7', 'App\\Notifications\\CompanyPolicyNotify', 'App\\User', 14, '{\"data\":\"Company Policy has been published\",\"link\":\"organization\\/policy\"}', NULL, '2021-11-13 09:47:09', '2021-11-13 09:47:09'),
('07094767-ad2a-4406-908f-e80035824d34', 'App\\Notifications\\ProjectCreatedNotifiaction', 'App\\User', 14, '{\"data\":\"A project has been created namely suau and 1 Employees has been assigned for \",\"link\":\"https:\\/\\/workforce.tekarva.com\\/project-management\\/projects\\/1\"}', NULL, '2021-10-16 12:45:17', '2021-10-16 12:45:17'),
('0e5b8c74-8d3b-41b0-84ba-6848622ca38e', 'App\\Notifications\\EventNotify', 'App\\User', 15, '{\"data\":\"A event has been created namely fdfd on 11\\/11\\/2021 at 12:00AM\",\"link\":\"\"}', NULL, '2021-11-09 13:23:20', '2021-11-09 13:23:20'),
('18879c81-83f4-4e80-92b3-a7e71476f017', 'App\\Notifications\\AnnouncementPublished', 'App\\User', 3, '{\"data\":\"A new announcement has been published\",\"link\":\"https:\\/\\/workforce.tekarva.com\\/organization\\/announcements\"}', '2023-04-18 10:21:11', '2021-11-05 09:39:38', '2023-04-18 10:21:11'),
('1994c733-c774-4208-8b04-63777e05c886', 'App\\Notifications\\EmployeeWarningNotify', 'App\\User', 3, '{\"data\":\"Your Warning Info has been updated \",\"link\":\"\\/profile#Employee_warning\"}', '2023-04-18 10:21:11', '2021-11-09 15:46:35', '2023-04-18 10:21:11'),
('1bf81b8c-83c9-4043-9905-c0de5ed75ec6', 'App\\Notifications\\ProjectCreatedNotifiaction', 'App\\User', 14, '{\"data\":\"A project has been created namely fdgdf and 1 Employees has been assigned for \",\"link\":\"https:\\/\\/workforce.mecarvi.com\\/admin\\/projects\\/9\"}', NULL, '2023-03-11 16:06:42', '2023-03-11 16:06:42'),
('1cafa335-e09b-40ba-94f1-d7f6245f78f6', 'App\\Notifications\\EmployeeTransferNotify', 'App\\User', 3, '{\"data\":\"You have been transferred.Click for details.\",\"link\":\"\\/profile#Employee_transfer\"}', '2023-04-18 10:21:11', '2021-11-13 09:38:28', '2023-04-18 10:21:11'),
('1d8b0ba5-0f56-4fd6-8c21-1889b3deeb90', 'App\\Notifications\\AnnouncementPublished', 'App\\User', 3, '{\"data\":\"A new announcement has been published\",\"link\":\"https:\\/\\/workforce.tekarva.com\\/admin\\/announcements\"}', '2023-04-18 10:21:11', '2021-11-12 12:33:18', '2023-04-18 10:21:11'),
('1df69f32-431e-4d49-9f44-8c7d2f7d1f5e', 'App\\Notifications\\ComplaintFromNotify', 'App\\User', 14, '{\"data\":\"ersr--Your complain against 3 has been filed\",\"link\":\"\\/profile#Employee_Complaint\"}', NULL, '2023-06-24 09:15:52', '2023-06-24 09:15:52'),
('1f8155f8-9ef8-480d-88ea-811b8b35837d', 'App\\Notifications\\EmployeeTerminationNotify', 'App\\User', 15, '{\"data\":\"You have been terminated from this company  Termination Date-- 2021\\/11\\/01\",\"link\":\"\"}', NULL, '2021-11-01 11:50:37', '2021-11-01 11:50:37'),
('24b54a1b-e421-421e-b6b7-80be4da7a1c4', 'App\\Notifications\\EmployeeWarningNotify', 'App\\User', 3, '{\"data\":\"Your Warning Info has been updated \",\"link\":\"\\/profile#Employee_warning\"}', '2023-04-18 10:21:11', '2021-11-11 10:26:54', '2023-04-18 10:21:11'),
('270d89df-2e79-45d9-94a3-bde09a40aeb3', 'App\\Notifications\\TicketAssignedNotification', 'App\\User', 14, '{\"data\":\"1 Employees has been assigned for Andri Jokall ticket\",\"link\":\"https:\\/\\/workforce.tekarva.com\\/admin\\/tickets\\/Wa8F6hFH\"}', NULL, '2021-11-11 06:57:05', '2021-11-11 06:57:05'),
('3087350e-e823-457b-8556-b92114ff5cf4', 'App\\Notifications\\ProjectCreatedNotifiaction', 'App\\User', 3, '{\"data\":\"A project has been created namely test and 1 Employees has been assigned for \",\"link\":\"https:\\/\\/workforce.mecarviprints.com\\/admin\\/projects\\/6\"}', '2023-04-18 10:21:11', '2023-03-03 10:26:58', '2023-04-18 10:21:11'),
('30d87ea2-1ef4-4b62-bde5-e5d3bd04e325', 'App\\Notifications\\EmployeeTravelStatus', 'App\\User', 3, '{\"data\":\"Your travel request status is --- first level approval\",\"link\":\"\\/profile#Employee_travel\"}', '2023-04-18 10:21:11', '2021-11-13 09:43:16', '2023-04-18 10:21:11'),
('3388028c-6ce8-48e0-8867-cf1a18d105c6', 'App\\Notifications\\EmployeeTerminationNotify', 'App\\User', 14, '{\"data\":\"You have been terminated from this company  Termination Date-- 07\\/01\\/2023\",\"link\":\"\"}', NULL, '2023-06-23 10:06:11', '2023-06-23 10:06:11'),
('343b5076-6b1b-4082-8471-ad38af822c6f', 'App\\Notifications\\ProjectCreatedNotifiaction', 'App\\User', 14, '{\"data\":\"A project has been created namely third and 1 Employees has been assigned for \",\"link\":\"https:\\/\\/workforce.tekarva.com\\/admin\\/projects\\/5\"}', NULL, '2021-11-15 09:12:01', '2021-11-15 09:12:01'),
('34d024ef-607d-481b-bd3e-d2b718945402', 'App\\Notifications\\EventNotify', 'App\\User', 15, '{\"data\":\"A event has been created namely fdfd on 11\\/10\\/2021 at 12:00AM\",\"link\":\"\"}', NULL, '2021-11-09 13:22:53', '2021-11-09 13:22:53'),
('3646f76e-f567-4a1b-b10b-9bab9cab27ac', 'App\\Notifications\\ProjectCreatedNotifiaction', 'App\\User', 14, '{\"data\":\"A project has been created namely jhujhdsj and 1 Employees has been assigned for \",\"link\":\"https:\\/\\/workforce.tekarva.com\\/project-management\\/projects\\/3\"}', NULL, '2021-10-16 13:11:16', '2021-10-16 13:11:16'),
('3950dbc7-68d8-4142-8b9c-45b514c37e2b', 'App\\Notifications\\EventNotify', 'App\\User', 14, '{\"data\":\"A event has been created namely fdfd on 21-11-02 at 12:00AM\",\"link\":\"\"}', NULL, '2021-10-30 06:34:20', '2021-10-30 06:34:20'),
('39a43f53-35ff-4720-bb23-1cc995b5ab58', 'App\\Notifications\\ComplainAgainstNotify', 'App\\User', 14, '{\"data\":\"zx--A complaint has been filed against you by 15\",\"link\":\"ex\\/profile#Employee_Complaint\"}', NULL, '2023-06-23 15:28:39', '2023-06-23 15:28:39'),
('45f26436-b9f7-4185-aee0-ce09898c20dd', 'App\\Notifications\\EmployeeTransferNotify', 'App\\User', 3, '{\"data\":\"You have been transferred.Click for details.\",\"link\":\"\\/profile#Employee_transfer\"}', '2023-04-18 10:21:11', '2021-11-13 09:39:18', '2023-04-18 10:21:11'),
('4837a717-5daf-44b1-9293-8bcd4866b8f9', 'App\\Notifications\\ProjectCreatedNotifiaction', 'App\\User', 15, '{\"data\":\"A project has been created namely second project and 1 Employees has been assigned for \",\"link\":\"https:\\/\\/workforce.tekarva.com\\/project-management\\/projects\\/4\"}', NULL, '2021-11-02 10:15:25', '2021-11-02 10:15:25'),
('49dd7bce-f36f-474c-bf37-9e19b78f65e8', 'App\\Notifications\\EmployeeTransferNotify', 'App\\User', 3, '{\"data\":\"You have been transferred.Click for details.\",\"link\":\"\\/profile#Employee_transfer\"}', '2023-04-18 10:21:11', '2021-11-13 09:38:37', '2023-04-18 10:21:11'),
('4c2bac22-a39e-4fe0-a418-664d30effe8f', 'App\\Notifications\\EmployeeWarningNotify', 'App\\User', 3, '{\"data\":\"You have been warned for mmm Status-- unsolved\",\"link\":\"\\/profile#Employee_warning\"}', NULL, '2023-06-24 09:56:32', '2023-06-24 09:56:32'),
('4e76c20f-bc2f-4bad-be4e-98b60c8bc8ff', 'App\\Notifications\\TicketAssignedNotification', 'App\\User', 15, '{\"data\":\"1 Employees has been assigned for Subrina Vazquez ticket\",\"link\":\"https:\\/\\/workforce.mecarviprints.com\\/admin\\/tickets\\/DNngqh1v\"}', NULL, '2023-03-04 19:44:50', '2023-03-04 19:44:50'),
('57b36f03-9202-4c1b-a61d-0fa6aa5a211e', 'App\\Notifications\\EmployeeTransferNotify', 'App\\User', 3, '{\"data\":\"You have been transferred.Click for details.\",\"link\":\"\\/profile#Employee_transfer\"}', NULL, '2023-06-23 10:06:55', '2023-06-23 10:06:55'),
('57cd78ab-0c66-4d93-aab5-db9ae4cb3863', 'App\\Notifications\\EmployeePromotion', 'App\\User', 3, '{\"data\":\" Congratulation!You have been promoted to  n\",\"link\":\"\"}', NULL, '2023-06-22 12:30:41', '2023-06-22 12:30:41'),
('5a774ab1-3ce1-450f-bdfd-4a72883635a8', 'App\\Notifications\\ProjectCreatedNotifiaction', 'App\\User', 3, '{\"data\":\"A project has been created namely Test title and 2 Employees has been assigned for \",\"link\":\"https:\\/\\/workforce.tekarva.com\\/admin\\/projects\\/7\"}', '2023-04-18 10:21:11', '2021-11-16 14:55:25', '2023-04-18 10:21:11'),
('5de1e75a-4742-4fb4-81f4-2f2a6c659c22', 'App\\Notifications\\CompanyPolicyNotify', 'App\\User', 15, '{\"data\":\"Company Policy has been published\",\"link\":\"organization\\/policy\"}', NULL, '2021-11-13 09:47:09', '2021-11-13 09:47:09'),
('607631e0-851e-4f3e-bc9f-a5f1c46846ec', 'App\\Notifications\\ComplainAgainstNotify', 'App\\User', 15, '{\"data\":\"sdasd--A complaint has been filed against you by 15\",\"link\":\"ex\\/profile#Employee_Complaint\"}', NULL, '2021-11-01 10:13:30', '2021-11-01 10:13:30'),
('610baf2f-0d75-470d-8f7e-0671d4ecae08', 'App\\Notifications\\EmployeePromotion', 'App\\User', 3, '{\"data\":\" Congratulation!You have been promoted to  ggg\",\"link\":\"\"}', '2023-04-18 10:21:11', '2021-11-13 09:55:36', '2023-04-18 10:21:11'),
('612fa9ca-36d3-4235-8cc8-184aacde2978', 'App\\Notifications\\ComplaintFromNotify', 'App\\User', 15, '{\"data\":\"zx--Your complain against 14 has been filed\",\"link\":\"\\/profile#Employee_Complaint\"}', NULL, '2023-06-23 15:28:39', '2023-06-23 15:28:39'),
('647bbc41-956a-49ff-9410-0274438606f4', 'App\\Notifications\\TicketAssignedNotification', 'App\\User', 14, '{\"data\":\"1 Employees has been assigned for Subrina Vazquez ticket\",\"link\":\"https:\\/\\/workforce.mecarviprints.com\\/admin\\/tickets\\/DNngqh1v\"}', NULL, '2023-03-04 19:44:50', '2023-03-04 19:44:50'),
('659dfab6-882c-4009-ab5a-70085ece9ed8', 'App\\Notifications\\EventNotify', 'App\\User', 15, '{\"data\":\"A event has been created namely fdfd on 21-11-02 at 12:00AM\",\"link\":\"\"}', NULL, '2021-10-30 06:34:20', '2021-10-30 06:34:20'),
('66d28877-1684-4b5f-989e-ede56aa6b42f', 'App\\Notifications\\ProjectCreatedNotifiaction', 'App\\User', 14, '{\"data\":\"A project has been created namely bbnhb and 1 Employees has been assigned for \",\"link\":\"https:\\/\\/workforce.mecarviprints.com\\/admin\\/projects\\/7\"}', NULL, '2023-03-04 19:39:39', '2023-03-04 19:39:39'),
('68491f78-f1d8-4b88-b915-9ddcedcedbf0', 'App\\Notifications\\ComplaintFromNotify', 'App\\User', 3, '{\"data\":\"dfjksjsdfj--Your complain against 3 has been filed\",\"link\":\"\\/profile#Employee_Complaint\"}', '2023-04-18 10:21:11', '2021-11-05 09:48:31', '2023-04-18 10:21:11'),
('68d3bd2e-c0f1-4d7d-980f-2b6f0079d293', 'App\\Notifications\\EmployeeTerminationNotify', 'App\\User', 14, '{\"data\":\"You have been terminated from this company  Termination Date-- 06\\/24\\/2023\",\"link\":\"\"}', NULL, '2023-06-24 09:57:16', '2023-06-24 09:57:16'),
('6c3b5d14-e239-4d8e-9b5a-26c2b34d53bd', 'App\\Notifications\\MeetingNotify', 'App\\User', 14, '{\"data\":\"A meeting has been called: title: 2nd on  at 12:00PM\",\"link\":\"\"}', NULL, '2021-10-25 12:24:13', '2021-10-25 12:24:13'),
('6cf9909b-edb5-4783-ab1e-6240c3a1eff4', 'App\\Notifications\\ComplainAgainstNotify', 'App\\User', 3, '{\"data\":\"dfjksjsdfj--A complaint has been filed against you by 3\",\"link\":\"ex\\/profile#Employee_Complaint\"}', '2023-04-18 10:21:11', '2021-11-05 09:48:31', '2023-04-18 10:21:11'),
('6dee8823-205d-4340-9762-1f294ede2781', 'App\\Notifications\\EmployeeWarningNotify', 'App\\User', 3, '{\"data\":\"Your Warning Info has been updated \",\"link\":\"\\/profile#Employee_warning\"}', '2023-04-18 10:21:11', '2021-11-09 15:48:30', '2023-04-18 10:21:11'),
('6ebc2d8c-dcba-4333-83e4-7bf53036d2ab', 'App\\Notifications\\EmployeeTerminationNotify', 'App\\User', 3, '{\"data\":\"You have been terminated from this company  Termination Date-- 2021\\/11\\/05\",\"link\":\"\"}', '2023-04-18 10:21:11', '2021-11-05 10:15:36', '2023-04-18 10:21:11'),
('78e0e3c7-a32f-481b-8672-b515fa067a16', 'App\\Notifications\\EventNotify', 'App\\User', 14, '{\"data\":\"A event has been created namely fdfd on 11\\/11\\/2021 at 12:00AM\",\"link\":\"\"}', NULL, '2021-11-09 13:23:20', '2021-11-09 13:23:20'),
('79c06608-b43d-4656-bb52-d74ded06af71', 'App\\Notifications\\EmployeeAwardNotify', 'App\\User', 3, '{\"data\":\"Congratulation! An Award has been given to you\",\"link\":\"\\/profile#Employee_Core_hr\"}', '2023-04-18 10:21:11', '2021-11-09 16:21:20', '2023-04-18 10:21:11'),
('7d3e1bec-a153-4aa4-8768-c8a20ebd1ca3', 'App\\Notifications\\EmployeeWarningNotify', 'App\\User', 15, '{\"data\":\"You have been warned for s Status-- unsolved\",\"link\":\"\\/profile#Employee_warning\"}', NULL, '2021-11-01 10:14:10', '2021-11-01 10:14:10'),
('7f0020c1-2b6f-4ae5-b26e-d0b8dd6e095e', 'App\\Notifications\\CompanyPolicyNotify', 'App\\User', 3, '{\"data\":\"Company Policy has been published\",\"link\":\"organization\\/policy\"}', '2023-04-18 10:21:11', '2021-11-13 09:46:59', '2023-04-18 10:21:11'),
('8152f57c-d2d4-4025-9344-73dedabb8b4e', 'App\\Notifications\\EmployeeTransferNotify', 'App\\User', 3, '{\"data\":\"You have been transferred.Click for details.\",\"link\":\"\\/profile#Employee_transfer\"}', '2023-04-18 10:21:11', '2021-11-13 09:39:44', '2023-04-18 10:21:11'),
('82472537-5c42-475a-8bf7-daa1726322c1', 'App\\Notifications\\ComplainAgainstNotify', 'App\\User', 3, '{\"data\":\"ersr--A complaint has been filed against you by 14\",\"link\":\"ex\\/profile#Employee_Complaint\"}', NULL, '2023-06-24 09:15:52', '2023-06-24 09:15:52'),
('837b7f87-6a44-4fd9-9278-0bccc7dc810e', 'App\\Notifications\\EmployeeTerminationNotify', 'App\\User', 14, '{\"data\":\"You have been terminated from this company  Termination Date-- 03\\/23\\/2023\",\"link\":\"\"}', NULL, '2023-03-08 04:58:11', '2023-03-08 04:58:11'),
('881977ab-999b-4559-88bb-33ef7a5a0cb5', 'App\\Notifications\\EmployeeAwardNotify', 'App\\User', 3, '{\"data\":\"Congratulation! An Award has been given to you\",\"link\":\"\\/profile#Employee_Core_hr\"}', '2023-04-18 10:21:11', '2021-11-13 09:53:28', '2023-04-18 10:21:11'),
('899b11a7-5cf8-4061-b141-432381e2c492', 'App\\Notifications\\ProjectCreatedNotifiaction', 'App\\User', 15, '{\"data\":\"A project has been created namely rrrrrrr and 1 Employees has been assigned for \",\"link\":\"https:\\/\\/workforce.mecarvi.com\\/admin\\/projects\\/10\"}', NULL, '2023-03-11 16:30:08', '2023-03-11 16:30:08'),
('8bf8cc98-44f0-4d45-968d-b31a041699a7', 'App\\Notifications\\MeetingNotify', 'App\\User', 14, '{\"data\":\"A meeting has been called: title: tit on  at 12:00PM\",\"link\":\"\"}', NULL, '2021-10-25 11:41:14', '2021-10-25 11:41:14'),
('8ce1c05f-fd3d-4ecc-87a7-bda2f100f0c8', 'App\\Notifications\\TicketAssignedNotification', 'App\\User', 14, '{\"data\":\"1 Employees has been assigned for Andri Jokall ticket\",\"link\":\"https:\\/\\/workforce.tekarva.com\\/tickets\\/at6rhVCt\"}', NULL, '2021-11-09 07:45:53', '2021-11-09 07:45:53'),
('8d79cc6a-2f09-427c-a04a-053624c36ceb', 'App\\Notifications\\EmployeeWarningNotify', 'App\\User', 3, '{\"data\":\"You have been warned for djhjsd Status-- solved\",\"link\":\"\\/profile#Employee_warning\"}', '2023-04-18 10:21:11', '2021-11-05 09:50:48', '2023-04-18 10:21:11'),
('90132d47-7815-4ac7-aa39-b7f9fa6d1e25', 'App\\Notifications\\TicketUpdatedNotification', 'App\\User', 14, '{\"data\":\"Issued ticket for Andri Jokall has been updated\",\"link\":\"https:\\/\\/workforce.tekarva.com\\/admin\\/tickets\\/Wa8F6hFH\"}', NULL, '2021-11-15 09:31:51', '2021-11-15 09:31:51'),
('9053989f-0fcd-4f46-9725-235d5735390c', 'App\\Notifications\\EmployeePromotion', 'App\\User', 3, '{\"data\":\" Congratulation!You have been promoted to  ggg\",\"link\":\"\"}', '2023-04-18 10:21:11', '2021-11-09 16:23:23', '2023-04-18 10:21:11'),
('9133a1c9-2682-4e6c-ba2c-830074872c2b', 'App\\Notifications\\ProjectCreatedNotifiaction', 'App\\User', 14, '{\"data\":\"A project has been created namely dfs and 1 Employees has been assigned for \",\"link\":\"https:\\/\\/workforce.mecarvi.com\\/admin\\/projects\\/8\"}', NULL, '2023-03-11 16:05:42', '2023-03-11 16:05:42'),
('9b386418-2e9f-44fb-9c14-5d7db08dfe0a', 'App\\Notifications\\ClientProjectNotification', 'App\\User', 1, '{\"data\":\"A project has been created namely test project by a client named \",\"link\":\"https:\\/\\/workforce.mecarvi.com\\/client\\/projects\"}', '2023-07-07 13:35:04', '2023-07-03 14:38:31', '2023-07-07 13:35:04'),
('9bd48e16-b6cb-4d89-8506-aae89f75c07d', 'App\\Notifications\\EmployeeWarningNotify', 'App\\User', 3, '{\"data\":\"Your Warning Info has been updated \",\"link\":\"\\/profile#Employee_warning\"}', '2023-04-18 10:21:11', '2021-11-09 16:05:20', '2023-04-18 10:21:11'),
('9d0e5589-3fa9-49a3-a7c8-3ec2f33bb342', 'App\\Notifications\\EmployeeWarningNotify', 'App\\User', 14, '{\"data\":\"You have been warned for wqe Status-- unsolved\",\"link\":\"\\/profile#Employee_warning\"}', NULL, '2023-06-23 10:04:26', '2023-06-23 10:04:26'),
('9fac5eb9-87dc-4e8e-b15e-f5eb14d41145', 'App\\Notifications\\EmployeeAwardNotify', 'App\\User', 3, '{\"data\":\"Congratulation! An Award has been given to you\",\"link\":\"\\/profile#Employee_Core_hr\"}', NULL, '2023-06-22 12:29:44', '2023-06-22 12:29:44'),
('a3979fa1-550a-424c-9848-e44617fed310', 'App\\Notifications\\EventNotify', 'App\\User', 14, '{\"data\":\"A event has been created namely fdfd on 11\\/10\\/2021 at 12:00AM\",\"link\":\"\"}', NULL, '2021-11-09 13:22:53', '2021-11-09 13:22:53'),
('ac4fed8f-e01e-41b9-8d90-a010a81a7ee9', 'App\\Notifications\\MeetingNotify', 'App\\User', 15, '{\"data\":\"A meeting has been called: title: Meeting on  at 03:00PM\",\"link\":\"\"}', NULL, '2021-10-25 11:43:33', '2021-10-25 11:43:33'),
('acdda5ff-e3c7-49fa-b941-5a568ccdb111', 'App\\Notifications\\MeetingNotify', 'App\\User', 15, '{\"data\":\"A meeting has been called: title: tit on  at 12:00PM\",\"link\":\"\"}', NULL, '2021-10-25 11:41:14', '2021-10-25 11:41:14'),
('acf05cfb-9ae2-4a7e-b075-c76099d6e6b5', 'App\\Notifications\\CompanyPolicyNotify', 'App\\User', 14, '{\"data\":\"Company Policy has been published\",\"link\":\"organization\\/policy\"}', NULL, '2021-11-13 09:46:59', '2021-11-13 09:46:59'),
('ad65d77c-1fab-44f1-be02-c28cdb224e63', 'App\\Notifications\\CompanyPolicyNotify', 'App\\User', 3, '{\"data\":\"Company Policy has been published\",\"link\":\"organization\\/policy\"}', '2023-04-18 10:21:11', '2021-11-13 09:47:09', '2023-04-18 10:21:11'),
('ad8ec8bd-221a-4907-9cc8-dd94cae2f4fe', 'App\\Notifications\\EmployeeTerminationNotify', 'App\\User', 3, '{\"data\":\"You have been terminated from this company  Termination Date-- 11\\/13\\/2021\",\"link\":\"\"}', '2023-04-18 10:21:11', '2021-11-13 09:36:09', '2023-04-18 10:21:11'),
('afff68d0-5666-46a2-a91d-8224508f0f61', 'App\\Notifications\\MeetingNotify', 'App\\User', 15, '{\"data\":\"A meeting has been called: title: 2nd on  at 12:00PM\",\"link\":\"\"}', NULL, '2021-10-25 12:24:13', '2021-10-25 12:24:13'),
('b21a2689-9cc7-4698-b8d6-6034c21fddf4', 'App\\Notifications\\TicketUpdatedNotification', 'App\\User', 14, '{\"data\":\"Issued ticket for Andri Jokall has been updated\",\"link\":\"https:\\/\\/workforce.tekarva.com\\/admin\\/tickets\\/Wa8F6hFH\"}', NULL, '2021-11-11 23:48:17', '2021-11-11 23:48:17'),
('b6173a47-6595-43ac-9495-80476f0e4004', 'App\\Notifications\\EmployeeTransferNotify', 'App\\User', 3, '{\"data\":\"You have been transferred.Click for details.\",\"link\":\"\\/profile#Employee_transfer\"}', '2023-04-18 10:21:11', '2021-11-09 16:14:35', '2023-04-18 10:21:11'),
('b732f671-074d-4e90-8eff-0005355f12be', 'App\\Notifications\\ProjectCreatedNotifiaction', 'App\\User', 14, '{\"data\":\"A project has been created namely jhjh and 1 Employees has been assigned for \",\"link\":\"https:\\/\\/workforce.tekarva.com\\/project-management\\/projects\\/2\"}', NULL, '2021-10-16 12:47:39', '2021-10-16 12:47:39'),
('c05aec2d-eb35-47bb-8bb8-35b2c9f26961', 'App\\Notifications\\CompanyPolicyNotify', 'App\\User', 15, '{\"data\":\"Company Policy has been published\",\"link\":\"organization\\/policy\"}', NULL, '2021-11-13 09:46:59', '2021-11-13 09:46:59'),
('c10b75c9-5110-4219-9e65-caa5ba7a140e', 'App\\Notifications\\CompanyPolicyNotify', 'App\\User', 15, '{\"data\":\"Company Policy has been published\",\"link\":\"organization\\/policy\"}', NULL, '2021-11-01 12:23:51', '2021-11-01 12:23:51'),
('c146c39d-ec0c-4c3e-bdf3-1576dead12ba', 'App\\Notifications\\TicketUpdatedNotification', 'App\\User', 15, '{\"data\":\"Issued ticket for Subrina Vazquez has been updated\",\"link\":\"https:\\/\\/workforce.mecarviprints.com\\/admin\\/tickets\\/DNngqh1v\"}', NULL, '2023-03-04 19:45:00', '2023-03-04 19:45:00'),
('c40652c0-5e81-4e5f-84f0-c7de7f8f3942', 'App\\Notifications\\ComplaintFromNotify', 'App\\User', 15, '{\"data\":\"sdasd--Your complain against 15 has been filed\",\"link\":\"\\/profile#Employee_Complaint\"}', NULL, '2021-11-01 10:13:30', '2021-11-01 10:13:30'),
('c91b5739-a1f4-411a-8054-ecd2a484dfe1', 'App\\Notifications\\AnnouncementPublished', 'App\\User', 3, '{\"data\":\"A new announcement has been published\",\"link\":\"https:\\/\\/workforce.tekarva.com\\/organization\\/announcements\"}', '2023-04-18 10:21:11', '2021-11-09 12:52:11', '2023-04-18 10:21:11'),
('ca5b2b8c-40f2-4d92-bf9a-2e5cd3d35420', 'App\\Notifications\\EmployeeTransferNotify', 'App\\User', 3, '{\"data\":\"You have been transferred.Click for details.\",\"link\":\"\\/profile#Employee_transfer\"}', '2023-04-18 10:21:11', '2021-11-13 09:39:56', '2023-04-18 10:21:11'),
('cd31ad41-b4e9-4328-9117-bb0ea7ed9244', 'App\\Notifications\\EmployeeTerminationNotify', 'App\\User', 3, '{\"data\":\"You have been terminated from this company  Termination Date-- 11\\/13\\/2021\",\"link\":\"\"}', '2023-04-18 10:21:11', '2021-11-13 09:36:33', '2023-04-18 10:21:11'),
('e1b836db-bf87-451d-bd04-f584538b1909', 'App\\Notifications\\ClientProjectNotification', 'App\\User', 1, '{\"data\":\"A project has been created namely 2nd test by a client named \",\"link\":\"https:\\/\\/workforce.mecarvi.com\\/client\\/projects\"}', '2023-07-07 13:35:04', '2023-07-03 14:39:34', '2023-07-07 13:35:04'),
('e5de04d5-08ab-463f-8604-15a78dcd4725', 'App\\Notifications\\EmployeeWarningNotify', 'App\\User', 3, '{\"data\":\"Your Warning Info has been updated \",\"link\":\"\\/profile#Employee_warning\"}', '2023-04-18 10:21:11', '2021-11-09 16:07:13', '2023-04-18 10:21:11'),
('ea0be98e-1713-4c1f-9044-78ef4cc95595', 'App\\Notifications\\EmployeeAwardNotify', 'App\\User', 3, '{\"data\":\"Congratulation! An Award has been given to you\",\"link\":\"\\/profile#Employee_Core_hr\"}', '2023-04-18 10:21:11', '2021-11-13 09:53:18', '2023-04-18 10:21:11'),
('eff2087e-1a0d-444c-8830-c6ce70eb8520', 'App\\Notifications\\TicketUpdatedNotification', 'App\\User', 14, '{\"data\":\"Issued ticket for Andri Jokall has been updated\",\"link\":\"https:\\/\\/workforce.tekarva.com\\/tickets\\/at6rhVCt\"}', NULL, '2021-11-09 07:35:54', '2021-11-09 07:35:54'),
('f3378de5-a1cf-4ec2-a121-cc34692838a2', 'App\\Notifications\\MeetingNotify', 'App\\User', 14, '{\"data\":\"A meeting has been called: title: Meeting on  at 03:00PM\",\"link\":\"\"}', NULL, '2021-10-25 11:43:33', '2021-10-25 11:43:33'),
('f445b9e7-de09-4afd-a7f2-719e3abfd2b3', 'App\\Notifications\\ProjectCreatedNotifiaction', 'App\\User', 14, '{\"data\":\"A project has been created namely Test title and 2 Employees has been assigned for \",\"link\":\"https:\\/\\/workforce.tekarva.com\\/admin\\/projects\\/7\"}', NULL, '2021-11-16 14:55:25', '2021-11-16 14:55:25'),
('fe061c93-7215-436f-815e-0cc4083939a1', 'App\\Notifications\\EmployeeTransferNotify', 'App\\User', 3, '{\"data\":\"You have been transferred.Click for details.\",\"link\":\"\\/profile#Employee_transfer\"}', '2023-04-18 10:21:11', '2021-11-13 09:40:04', '2023-04-18 10:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `office_shifts`
--

CREATE TABLE `office_shifts` (
  `id` bigint UNSIGNED NOT NULL,
  `shift_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_shift` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint UNSIGNED NOT NULL,
  `sunday_in` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunday_out` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturday_in` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturday_out` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_in` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_out` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday_in` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday_out` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday_in` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday_out` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday_in` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday_out` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_in` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_out` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `office_shifts`
--

INSERT INTO `office_shifts` (`id`, `shift_name`, `default_shift`, `company_id`, `sunday_in`, `sunday_out`, `saturday_in`, `saturday_out`, `friday_in`, `friday_out`, `thursday_in`, `thursday_out`, `wednesday_in`, `wednesday_out`, `tuesday_in`, `tuesday_out`, `monday_in`, `monday_out`, `created_at`, `updated_at`) VALUES
(1, 'Day Shift (Pakistan)', NULL, 3, '', '', '09:00AM', '06:00PM', '09:00AM', '06:00PM', '09:00AM', '06:00PM', '09:00AM', '06:00PM', '09:00AM', '06:00PM', '09:00AM', '06:00PM', NULL, '2021-11-10 11:37:45'),
(5, 'Night', NULL, 3, '', '', '', '', '', '', '', '', '', '', '12:00PM', '12:00PM', '12:00PM', '12:00PM', '2021-11-12 12:14:43', '2021-11-12 12:14:43'),
(6, 'Day Shift', NULL, 16, '', '', '', '', '09:00AM', '05:00PM', '09:00AM', '05:00PM', '09:00AM', '05:00PM', '09:00AM', '05:00PM', '09:00AM', '05:00PM', '2023-03-08 04:53:02', '2023-06-23 08:56:43'),
(8, 'Day Shift', NULL, 17, '', '', '', '', '', '', '', '', '', '', '', '', '12:00PM', '12:00PM', '2023-06-23 09:07:42', '2023-06-23 09:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `official_documents`
--

CREATE TABLE `official_documents` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `document_type_id` bigint UNSIGNED DEFAULT NULL,
  `added_by` bigint UNSIGNED DEFAULT NULL,
  `document_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `identification_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `document_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_notify` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `overtime_request`
--

CREATE TABLE `overtime_request` (
  `id` int NOT NULL,
  `company_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `date` text NOT NULL,
  `project_id` int NOT NULL,
  `phase_no` varchar(30) NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `reason` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `overtime_request`
--

INSERT INTO `overtime_request` (`id`, `company_id`, `employee_id`, `date`, `project_id`, `phase_no`, `in_time`, `out_time`, `reason`, `status`, `updated_at`) VALUES
(2, 3, 3, '11/13/2021', 4, '123456', '02:10:00', '10:55:00', 'Bug', 'Pending', '2021-11-13 11:02:21'),
(3, 3, 3, '11/25/2021', 1, '1233455', '03:10:00', '09:10:00', 'Bug fixing hello', 'Pending', '2021-11-06 22:26:10');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('new@gmail.com', '$2y$10$day4AQ4g8sFvMwhMrTxpJuLXZCpVF2IK9kVS.6qZxeR6b7CVt2eGy', '2020-10-06 04:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `method_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_percentage` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `company_id`, `method_name`, `payment_percentage`, `account_number`, `created_at`, `updated_at`) VALUES
(5, NULL, 'qwrt', '122%%', '12355556', '2023-06-24 10:25:34', '2023-06-24 10:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `payslips`
--

CREATE TABLE `payslips` (
  `id` bigint UNSIGNED NOT NULL,
  `payslip_key` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payslip_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED NOT NULL,
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_salary` double(8,2) NOT NULL,
  `net_salary` double(8,2) NOT NULL,
  `allowances` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `commissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `loans` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deductions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `overtimes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_payments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pension_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pension_amount` double(8,2) NOT NULL,
  `hours_worked` int NOT NULL,
  `status` tinyint NOT NULL,
  `month_year` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payslips`
--

INSERT INTO `payslips` (`id`, `payslip_key`, `payslip_number`, `employee_id`, `company_id`, `payment_type`, `basic_salary`, `net_salary`, `allowances`, `commissions`, `loans`, `deductions`, `overtimes`, `other_payments`, `pension_type`, `pension_amount`, `hours_worked`, `status`, `month_year`, `created_at`, `updated_at`) VALUES
(1, 'vFkFtd9cukdptEtZfEDh', '3659017179', 14, 2, 'Monthly', 1000.00, 1000.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-28 09:31:59', '2021-10-28 09:31:59'),
(2, 'v0SqhjTNhjK1casCS2W3', '8351313585', 14, 2, 'Monthly', 100.00, 100.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'July-2021', '2021-10-28 09:45:58', '2021-10-28 09:45:58'),
(3, 'iqsleeW3iEJqDXvRFwmC', '5354126658', 14, 2, 'Monthly', 100.00, 100.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'September-2021', '2021-10-28 10:44:49', '2021-10-28 10:44:49'),
(4, '5Gxl1oA1ummvsqlTP7ui', '1458123390', 3, 3, 'Monthly', 100.00, 100.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-28 10:59:51', '2021-10-28 10:59:51'),
(5, 'uYuyqINFEXOnnMnTPbwT', '6326862744', 14, 2, 'Monthly', 1000.00, 1000.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-28 10:59:51', '2021-10-28 10:59:51'),
(6, 'QRp9BHWcGQYcllAEYKRo', '8269670106', 15, 2, 'Monthly', 100.00, 100.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-28 10:59:51', '2021-10-28 10:59:51'),
(7, 'Y0cEKzpcNPHVUFhsGGFj', '3072997624', 3, 3, 'Monthly', 100.00, 100.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'November-2021', '2021-10-28 11:03:16', '2021-10-28 11:03:16'),
(8, '6F55zPDvUawshoSD1O2U', '3357587517', 14, 2, 'Monthly', 100.00, 100.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'November-2021', '2021-10-28 11:03:16', '2021-10-28 11:03:16'),
(9, '6egSCUWEuzdNqrc7hKNF', '9560373618', 15, 2, 'Monthly', 100.00, 100.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'November-2021', '2021-10-28 11:03:16', '2021-10-28 11:03:16'),
(10, '2ngvSTa0QvTv4PhKweKR', '1886211018', 3, 3, 'Monthly', 100.00, 100.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-29 04:15:59', '2021-10-29 04:15:59'),
(11, 'oNUJMPgVXraE7kaIG1a0', '1221256375', 14, 2, 'Monthly', 1000.00, 1000.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-29 04:15:59', '2021-10-29 04:15:59'),
(12, 'TNHSl6H8pOr4gs1icO3u', '3653022018', 15, 2, 'Monthly', 100.00, 100.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-29 04:15:59', '2021-10-29 04:15:59'),
(13, 'a434g84dD25PUiFcYrXh', '4767223674', 3, 3, 'Monthly', 100.00, 100.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-29 04:16:00', '2021-10-29 04:16:00'),
(14, 's4RAyVnsx7ceSM4le6QA', '9312170364', 14, 2, 'Monthly', 1000.00, 1000.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-29 04:16:00', '2021-10-29 04:16:00'),
(15, '35HFjdS74cUaN8WhISlT', '7619803619', 15, 2, 'Monthly', 100.00, 100.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-29 04:16:00', '2021-10-29 04:16:00'),
(16, 'p3lhmrQCIXVTFYDDZSDz', '3475370004', 3, 3, 'Monthly', 100.00, 100.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-29 04:16:09', '2021-10-29 04:16:09'),
(17, 'E70SQzqvBT1g3y7Rt51T', '5978520004', 14, 2, 'Monthly', 1000.00, 1000.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-29 04:16:09', '2021-10-29 04:16:09'),
(18, 'B0MHG3PkXJGUE9UqqZmN', '7958569731', 15, 2, 'Monthly', 100.00, 100.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-29 04:16:09', '2021-10-29 04:16:09'),
(19, 'gDNhfIqcoNWGmF6QFBhP', '3912561230', 3, 3, 'Monthly', 100.00, 100.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-29 04:16:12', '2021-10-29 04:16:12'),
(20, '3Hl9kjshEmCMFgC5vzZW', '7585458125', 14, 2, 'Monthly', 1000.00, 1000.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-29 04:16:12', '2021-10-29 04:16:12'),
(21, '6tKIezt5JsWEWBouHjmY', '3609087585', 15, 2, 'Monthly', 100.00, 100.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-29 04:16:12', '2021-10-29 04:16:12'),
(22, 'v9kbFgUeGqM6IY2Dt2Fw', '7406569922', 3, 3, 'Monthly', 100.00, 100.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-29 04:16:14', '2021-10-29 04:16:14'),
(23, 'rA3wDBbQZ4lJLmyHjuRW', '9845329745', 14, 2, 'Monthly', 1000.00, 1000.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-29 04:16:14', '2021-10-29 04:16:14'),
(24, '0EJRzZqERD7l1dvS4ADV', '8124862079', 15, 2, 'Monthly', 100.00, 100.00, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0.00, 0, 1, 'October-2021', '2021-10-29 04:16:14', '2021-10-29 04:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user', 'web', NULL, NULL),
(2, 'view-user', 'web', NULL, NULL),
(3, 'edit-user', 'web', NULL, NULL),
(4, 'delete-user', 'web', NULL, NULL),
(5, 'last-login-user', 'web', NULL, NULL),
(6, 'role-access-user', 'web', NULL, NULL),
(7, 'details-employee', 'web', NULL, NULL),
(8, 'view-details-employee', 'web', NULL, NULL),
(9, 'store-details-employee', 'web', NULL, NULL),
(10, 'modify-details-employee', 'web', NULL, NULL),
(11, 'customize-setting', 'web', NULL, NULL),
(12, 'role-access', 'web', NULL, NULL),
(13, 'general-setting', 'web', NULL, NULL),
(14, 'view-general-setting', 'web', NULL, NULL),
(15, 'store-general-setting', 'web', NULL, NULL),
(16, 'mail-setting', 'web', NULL, NULL),
(17, 'view-mail-setting', 'web', NULL, NULL),
(18, 'store-mail-setting', 'web', NULL, NULL),
(19, 'language-setting', 'web', NULL, NULL),
(20, 'core_hr', 'web', NULL, NULL),
(21, 'view-calendar', 'web', NULL, NULL),
(22, 'promotion', 'web', NULL, NULL),
(23, 'view-promotion', 'web', NULL, NULL),
(24, 'store-promotion', 'web', NULL, NULL),
(25, 'edit-promotion', 'web', NULL, NULL),
(26, 'delete-promotion', 'web', NULL, NULL),
(27, 'award', 'web', NULL, NULL),
(28, 'view-award', 'web', NULL, NULL),
(29, 'store-award', 'web', NULL, NULL),
(30, 'edit-award', 'web', NULL, NULL),
(31, 'delete-award', 'web', NULL, NULL),
(32, 'transfer', 'web', NULL, NULL),
(33, 'view-transfer', 'web', NULL, NULL),
(34, 'store-transfer', 'web', NULL, NULL),
(35, 'edit-transfer', 'web', NULL, NULL),
(36, 'delete-transfer', 'web', NULL, NULL),
(37, 'travel', 'web', NULL, NULL),
(38, 'view-travel', 'web', NULL, NULL),
(39, 'store-travel', 'web', NULL, NULL),
(40, 'edit-travel', 'web', NULL, NULL),
(41, 'delete-travel', 'web', NULL, NULL),
(42, 'resignation', 'web', NULL, NULL),
(43, 'view-resignation', 'web', NULL, NULL),
(44, 'store-resignation', 'web', NULL, NULL),
(45, 'edit-resignation', 'web', NULL, NULL),
(46, 'delete-resignation', 'web', NULL, NULL),
(47, 'complaint', 'web', NULL, NULL),
(48, 'view-complaint', 'web', NULL, NULL),
(49, 'store-complaint', 'web', NULL, NULL),
(50, 'edit-complaint', 'web', NULL, NULL),
(51, 'delete-complaint', 'web', NULL, NULL),
(52, 'warning', 'web', NULL, NULL),
(53, 'view-warning', 'web', NULL, NULL),
(54, 'store-warning', 'web', NULL, NULL),
(55, 'edit-warning', 'web', NULL, NULL),
(56, 'delete-warning', 'web', NULL, NULL),
(57, 'termination', 'web', NULL, NULL),
(58, 'view-termination', 'web', NULL, NULL),
(59, 'store-termination', 'web', NULL, NULL),
(60, 'edit-termination', 'web', NULL, NULL),
(61, 'delete-termination', 'web', NULL, NULL),
(62, 'timesheet', 'web', NULL, NULL),
(63, 'attendance', 'web', NULL, NULL),
(64, 'view-attendance', 'web', NULL, NULL),
(65, 'edit-attendance', 'web', NULL, NULL),
(66, 'office_shift', 'web', NULL, NULL),
(67, 'view-office_shift', 'web', NULL, NULL),
(68, 'store-office_shift', 'web', NULL, NULL),
(69, 'edit-office_shift', 'web', NULL, NULL),
(70, 'delete-office_shift', 'web', NULL, NULL),
(71, 'holiday', 'web', NULL, NULL),
(72, 'view-holiday', 'web', NULL, NULL),
(73, 'store-holiday', 'web', NULL, NULL),
(74, 'edit-holiday', 'web', NULL, NULL),
(75, 'delete-holiday', 'web', NULL, NULL),
(76, 'leave', 'web', NULL, NULL),
(77, 'view-holiday', 'web', NULL, NULL),
(78, 'store-holiday', 'web', NULL, NULL),
(79, 'edit-holiday', 'web', NULL, NULL),
(80, 'delete-holiday', 'web', NULL, NULL),
(81, 'payment-module', 'web', NULL, NULL),
(82, 'view-payslip', 'web', NULL, NULL),
(83, 'make-payment', 'web', NULL, NULL),
(84, 'make-bulk_payment', 'web', NULL, NULL),
(85, 'view-paylist', 'web', NULL, NULL),
(86, 'set-salary', 'web', NULL, NULL),
(87, 'hr_report', 'web', NULL, NULL),
(88, 'report-payslip', 'web', NULL, NULL),
(89, 'report-attendance', 'web', NULL, NULL),
(90, 'report-training', 'web', NULL, NULL),
(91, 'report-project', 'web', NULL, NULL),
(92, 'report-task', 'web', NULL, NULL),
(93, 'report-employee', 'web', NULL, NULL),
(94, 'report-account', 'web', NULL, NULL),
(95, 'report-deposit', 'web', NULL, NULL),
(96, 'report-expense', 'web', NULL, NULL),
(97, 'report-transaction', 'web', NULL, NULL),
(98, 'recruitment', 'web', NULL, NULL),
(99, 'job_employer', 'web', NULL, NULL),
(100, 'view-job_employer', 'web', NULL, NULL),
(101, 'store-job_employer', 'web', NULL, NULL),
(102, 'edit-job_employer', 'web', NULL, NULL),
(103, 'delete-job_employer', 'web', NULL, NULL),
(104, 'job_post', 'web', NULL, NULL),
(105, 'view-job_post', 'web', NULL, NULL),
(106, 'store-job_post', 'web', NULL, NULL),
(107, 'edit-job_post', 'web', NULL, NULL),
(108, 'delete-job_post', 'web', NULL, NULL),
(109, 'job_candidate', 'web', NULL, NULL),
(110, 'view-job_candidate', 'web', NULL, NULL),
(111, 'store-job_candidate', 'web', NULL, NULL),
(112, 'delete-job_candidate', 'web', NULL, NULL),
(113, 'job_interview', 'web', NULL, NULL),
(114, 'view-job_interview', 'web', NULL, NULL),
(115, 'store-job_interview', 'web', NULL, NULL),
(116, 'delete-job_interview', 'web', NULL, NULL),
(117, 'project-management', 'web', NULL, NULL),
(118, 'project', 'web', NULL, NULL),
(119, 'view-project', 'web', NULL, NULL),
(120, 'store-project', 'web', NULL, NULL),
(121, 'edit-project', 'web', NULL, NULL),
(122, 'delete-project', 'web', NULL, NULL),
(123, 'task', 'web', NULL, NULL),
(124, 'view-task', 'web', NULL, NULL),
(125, 'store-task', 'web', NULL, NULL),
(126, 'edit-task', 'web', NULL, NULL),
(127, 'delete-task', 'web', NULL, NULL),
(128, 'client', 'web', NULL, NULL),
(129, 'view-client', 'web', NULL, NULL),
(130, 'store-client', 'web', NULL, NULL),
(131, 'edit-client', 'web', NULL, NULL),
(132, 'delete-client', 'web', NULL, NULL),
(133, 'invoice', 'web', NULL, NULL),
(134, 'view-invoice', 'web', NULL, NULL),
(135, 'store-invoice', 'web', NULL, NULL),
(136, 'edit-invoice', 'web', NULL, NULL),
(137, 'delete-invoice', 'web', NULL, NULL),
(138, 'ticket', 'web', NULL, NULL),
(139, 'view-ticket', 'web', NULL, NULL),
(140, 'store-ticket', 'web', NULL, NULL),
(141, 'edit-ticket', 'web', NULL, NULL),
(142, 'delete-ticket', 'web', NULL, NULL),
(143, 'import-module', 'web', NULL, NULL),
(144, 'import-attendance', 'web', NULL, NULL),
(145, 'import-employee', 'web', NULL, NULL),
(146, 'file_module', 'web', NULL, NULL),
(147, 'file_manager', 'web', NULL, NULL),
(148, 'view-file_manager', 'web', NULL, NULL),
(149, 'store-file_manager', 'web', NULL, NULL),
(150, 'edit-file_manager', 'web', NULL, NULL),
(151, 'delete-file_manager', 'web', NULL, NULL),
(152, 'view-file_config', 'web', NULL, NULL),
(153, 'official_document', 'web', NULL, NULL),
(154, 'view-official_document', 'web', NULL, NULL),
(155, 'store-official_document', 'web', NULL, NULL),
(156, 'edit-official_document', 'web', NULL, NULL),
(157, 'delete-official_document', 'web', NULL, NULL),
(158, 'event-meeting', 'web', NULL, NULL),
(159, 'meeting', 'web', NULL, NULL),
(160, 'view-meeting', 'web', NULL, NULL),
(161, 'store-meeting', 'web', NULL, NULL),
(162, 'edit-meeting', 'web', NULL, NULL),
(163, 'delete-meeting', 'web', NULL, NULL),
(164, 'event', 'web', NULL, NULL),
(165, 'view-event', 'web', NULL, NULL),
(166, 'store-event', 'web', NULL, NULL),
(167, 'edit-event', 'web', NULL, NULL),
(168, 'delete-event', 'web', NULL, NULL),
(169, 'role', 'web', NULL, NULL),
(170, 'view-role', 'web', NULL, NULL),
(171, 'store-role', 'web', NULL, NULL),
(172, 'edit-role', 'web', NULL, NULL),
(173, 'delete-role', 'web', NULL, NULL),
(174, 'assign-module', 'web', NULL, NULL),
(175, 'assign-role', 'web', NULL, NULL),
(176, 'assign-ticket', 'web', NULL, NULL),
(177, 'assign-project', 'web', NULL, NULL),
(178, 'assign-task', 'web', NULL, NULL),
(179, 'finance', 'web', NULL, NULL),
(180, 'account', 'web', NULL, NULL),
(181, 'view-account', 'web', NULL, NULL),
(182, 'store-account', 'web', NULL, NULL),
(183, 'edit-account', 'web', NULL, NULL),
(184, 'delete-account', 'web', NULL, NULL),
(185, 'view-transaction', 'web', NULL, NULL),
(186, 'view-balance_transfer', 'web', NULL, NULL),
(187, 'store-balance_transfer', 'web', NULL, NULL),
(188, 'expense', 'web', NULL, NULL),
(189, 'view-expense', 'web', NULL, NULL),
(190, 'store-expense', 'web', NULL, NULL),
(191, 'edit-expense', 'web', NULL, NULL),
(192, 'delete-expense', 'web', NULL, NULL),
(193, 'deposit', 'web', NULL, NULL),
(194, 'view-deposit', 'web', NULL, NULL),
(195, 'store-deposit', 'web', NULL, NULL),
(196, 'edit-deposit', 'web', NULL, NULL),
(197, 'delete-deposit', 'web', NULL, NULL),
(198, 'payer', 'web', NULL, NULL),
(199, 'view-payer', 'web', NULL, NULL),
(200, 'store-payer', 'web', NULL, NULL),
(201, 'edit-payer', 'web', NULL, NULL),
(202, 'delete-payer', 'web', NULL, NULL),
(203, 'payee', 'web', NULL, NULL),
(204, 'view-payee', 'web', NULL, NULL),
(205, 'store-payee', 'web', NULL, NULL),
(206, 'edit-payee', 'web', NULL, NULL),
(207, 'delete-payee', 'web', NULL, NULL),
(208, 'training_module', 'web', NULL, NULL),
(209, 'trainer', 'web', NULL, NULL),
(210, 'view-trainer', 'web', NULL, NULL),
(211, 'store-trainer', 'web', NULL, NULL),
(212, 'edit-trainer', 'web', NULL, NULL),
(213, 'delete-trainer', 'web', NULL, NULL),
(214, 'training', 'web', NULL, NULL),
(215, 'view-training', 'web', NULL, NULL),
(216, 'store-training', 'web', NULL, NULL),
(217, 'edit-training', 'web', NULL, NULL),
(218, 'delete-training', 'web', NULL, NULL),
(219, 'access-module', 'web', NULL, NULL),
(220, 'access-variable_type', 'web', NULL, NULL),
(221, 'access-variable_method', 'web', NULL, NULL),
(222, 'access-language', 'web', NULL, NULL),
(223, 'announcement', 'web', NULL, NULL),
(224, 'store-announcement', 'web', NULL, NULL),
(225, 'edit-announcement', 'web', NULL, NULL),
(226, 'delete-announcement', 'web', NULL, NULL),
(227, 'company', 'web', NULL, NULL),
(228, 'view-company', 'web', NULL, NULL),
(229, 'store-company', 'web', NULL, NULL),
(230, 'edit-company', 'web', NULL, NULL),
(231, 'delete-company', 'web', NULL, NULL),
(232, 'department', 'web', NULL, NULL),
(233, 'view-department', 'web', NULL, NULL),
(234, 'store-department', 'web', NULL, NULL),
(235, 'edit-department', 'web', NULL, NULL),
(236, 'delete-department', 'web', NULL, NULL),
(237, 'designation', 'web', NULL, NULL),
(238, 'view-designation', 'web', NULL, NULL),
(239, 'store-designation', 'web', NULL, NULL),
(240, 'edit-designation', 'web', NULL, NULL),
(241, 'delete-designation', 'web', NULL, NULL),
(242, 'location', 'web', NULL, NULL),
(243, 'view-location', 'web', NULL, NULL),
(244, 'store-location', 'web', NULL, NULL),
(245, 'edit-location', 'web', NULL, NULL),
(246, 'delete-location', 'web', NULL, NULL),
(247, 'policy', 'web', NULL, NULL),
(248, 'store-policy', 'web', NULL, NULL),
(249, 'edit-policy', 'web', NULL, NULL),
(250, 'delete-policy', 'web', NULL, NULL),
(251, 'view-cms', 'web', NULL, NULL),
(252, 'store-cms', 'web', NULL, NULL),
(253, 'store-user', 'web', NULL, NULL),
(254, 'delete-attendance', 'web', NULL, NULL),
(255, 'view-leave', 'web', NULL, NULL),
(256, 'store-leave', 'web', NULL, NULL),
(257, 'edit-leave', 'web', NULL, NULL),
(258, 'delete-leave', 'web', NULL, NULL),
(259, 'cms', 'web', NULL, NULL),
(260, 'performance', 'web', NULL, NULL),
(261, 'goal-type', 'web', NULL, NULL),
(262, 'view-goal-type', 'web', NULL, NULL),
(263, 'store-goal-type', 'web', NULL, NULL),
(264, 'edit-goal-type', 'web', NULL, NULL),
(265, 'delete-goal-type', 'web', NULL, NULL),
(266, 'goal-tracking', 'web', NULL, NULL),
(267, 'view-goal-tracking', 'web', NULL, NULL),
(268, 'store-goal-tracking', 'web', NULL, NULL),
(269, 'edit-goal-tracking', 'web', NULL, NULL),
(270, 'delete-goal-tracking', 'web', NULL, NULL),
(271, 'indicator', 'web', NULL, NULL),
(272, 'view-indicator', 'web', NULL, NULL),
(273, 'store-indicator', 'web', NULL, NULL),
(274, 'edit-indicator', 'web', NULL, NULL),
(275, 'delete-indicator', 'web', NULL, NULL),
(276, 'appraisal', 'web', NULL, NULL),
(277, 'view-appraisal', 'web', NULL, NULL),
(278, 'store-appraisal', 'web', NULL, NULL),
(279, 'edit-appraisal', 'web', NULL, NULL),
(280, 'delete-appraisal', 'web', NULL, NULL),
(281, 'assets-and-category', 'web', NULL, NULL),
(282, 'category', 'web', NULL, NULL),
(283, 'view-assets-category', 'web', NULL, NULL),
(284, 'store-assets-category', 'web', NULL, NULL),
(285, 'edit-assets-category', 'web', NULL, NULL),
(286, 'delete-assets-category', 'web', NULL, NULL),
(287, 'assets', 'web', NULL, NULL),
(288, 'view-assets', 'web', NULL, NULL),
(289, 'store-assets', 'web', NULL, NULL),
(290, 'edit-assets', 'web', NULL, NULL),
(291, 'delete-assets', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `added_by` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint UNSIGNED DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `start_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_priority` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `summary` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `project_status` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not started',
  `project_note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `project_progress` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_notify` tinyint DEFAULT NULL,
  `added_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `client_id`, `company_id`, `start_date`, `end_date`, `project_priority`, `description`, `summary`, `project_status`, `project_note`, `project_progress`, `is_notify`, `added_by`, `created_at`, `updated_at`) VALUES
(6, 'test333', 22, 3, '03/03/2023', '03/03/2023', 'highest', '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged&lt;/p&gt;', 'nhjjhjhjhjhjh', '', NULL, '57', NULL, NULL, '2023-03-03 10:26:58', '2023-03-09 10:34:03'),
(8, 'dfs', 22, 3, '03/15/2023', '03/22/2023', 'high', '&lt;p&gt;h&lt;/p&gt;', 'hj', 'not started', NULL, NULL, NULL, NULL, '2023-03-11 16:05:42', '2023-03-11 16:05:42'),
(10, 'rrrrrrr', 22, 3, '03/08/2023', '03/22/2023', 'high', '&lt;p&gt;kkkkkkkkkkkkkkkkkkkkkkkkkkk&lt;/p&gt;', 'jkkk', 'processing', NULL, NULL, NULL, NULL, '2023-03-11 16:30:08', '2023-06-23 10:47:36'),
(11, 'test new project', 22, NULL, '07/02/2023', '07/28/2023', 'medium', '&lt;p&gt;nm&lt;/p&gt;', 'm', 'not started', NULL, NULL, NULL, NULL, '2023-07-03 14:33:11', '2023-07-03 14:33:11'),
(12, 'test new project', 22, NULL, '07/02/2023', '07/28/2023', 'medium', '&lt;p&gt;nm&lt;/p&gt;', 'm', 'not started', NULL, NULL, NULL, NULL, '2023-07-03 14:33:15', '2023-07-03 14:33:15'),
(13, 'test new project', 22, NULL, '07/02/2023', '07/28/2023', 'medium', '&lt;p&gt;nm&lt;/p&gt;', 'm', 'not started', NULL, NULL, NULL, NULL, '2023-07-03 14:33:16', '2023-07-03 14:33:16'),
(14, 'test new project', 22, NULL, '07/02/2023', '07/28/2023', 'medium', '&lt;p&gt;nm&lt;/p&gt;', 'm', 'not started', NULL, NULL, NULL, NULL, '2023-07-03 14:33:17', '2023-07-03 14:33:17'),
(15, 'test new project', 22, NULL, '07/02/2023', '07/28/2023', 'medium', '&lt;p&gt;nm&lt;/p&gt;', 'm', 'not started', NULL, NULL, NULL, NULL, '2023-07-03 14:33:17', '2023-07-03 14:33:17'),
(16, 'test new project', 22, NULL, '07/02/2023', '07/28/2023', 'medium', '&lt;p&gt;nm&lt;/p&gt;', 'm', 'not started', NULL, NULL, NULL, NULL, '2023-07-03 14:33:18', '2023-07-03 14:33:18'),
(17, 'test new project', 22, NULL, '07/02/2023', '07/28/2023', 'medium', '&lt;p&gt;nm&lt;/p&gt;', 'm', 'not started', NULL, NULL, NULL, NULL, '2023-07-03 14:33:23', '2023-07-03 14:33:23'),
(18, 'test project', 22, NULL, '06/26/2023', '07/29/2023', 'medium', '&lt;p&gt;erer&lt;/p&gt;', 'r', 'not started', NULL, NULL, NULL, NULL, '2023-07-03 14:38:31', '2023-07-03 14:38:31'),
(19, '2nd test', 22, NULL, '06/22/2023', '07/27/2023', 'highest', '&lt;p&gt;rt&lt;/p&gt;', 't', 'completed', NULL, NULL, NULL, NULL, '2023-07-03 14:39:34', '2023-07-06 11:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `projects_timelogs`
--

CREATE TABLE `projects_timelogs` (
  `id` int NOT NULL,
  `project_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_hours` varchar(255) NOT NULL,
  `memo` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_bugs`
--

CREATE TABLE `project_bugs` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `title` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bug_attachment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_discussions`
--

CREATE TABLE `project_discussions` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `project_discussion` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discussion_attachment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_files`
--

CREATE TABLE `project_files` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `file_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_attachment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_notes`
--

CREATE TABLE `project_notes` (
  `id` int NOT NULL,
  `project_id` int NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `project_notes`
--

INSERT INTO `project_notes` (`id`, `project_id`, `note`, `updated_at`) VALUES
(2, 4, 'Note one', '2021-11-05 12:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint UNSIGNED NOT NULL,
  `promotion_title` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company_id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `promotion_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qualification_education_levels`
--

CREATE TABLE `qualification_education_levels` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualification_education_levels`
--

INSERT INTO `qualification_education_levels` (`id`, `company_id`, `name`, `created_at`, `updated_at`) VALUES
(3, NULL, 'Associate Degree', '2023-03-08 07:37:08', '2023-03-08 07:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `qualification_languages`
--

CREATE TABLE `qualification_languages` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qualification_skills`
--

CREATE TABLE `qualification_skills` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quoted_projects`
--

CREATE TABLE `quoted_projects` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint UNSIGNED DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `start_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `summary` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not started',
  `project_note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `progress` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_notify` tinyint DEFAULT NULL,
  `added_by` bigint UNSIGNED DEFAULT NULL,
  `project_number` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quoted_projects`
--

INSERT INTO `quoted_projects` (`id`, `title`, `client_id`, `company_id`, `start_date`, `end_date`, `priority`, `description`, `summary`, `status`, `project_note`, `progress`, `is_notify`, `added_by`, `project_number`, `created_at`, `updated_at`) VALUES
(7, 'Test title', NULL, 3, '11/11/2021', '11/16/2021', 'low', '&lt;p&gt;ghvbn&lt;/p&gt;', 'ghvb', 'processing', NULL, NULL, NULL, NULL, 'ZLTJvpk', '2021-11-16 14:55:25', '2021-11-16 15:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `quoted_projects_timelogs`
--

CREATE TABLE `quoted_projects_timelogs` (
  `id` int NOT NULL,
  `quoted_project_id` int NOT NULL,
  `company_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `memo` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resignations`
--

CREATE TABLE `resignations` (
  `id` bigint UNSIGNED NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `department_id` bigint UNSIGNED DEFAULT NULL,
  `employee_id` bigint UNSIGNED DEFAULT NULL,
  `notice_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resignation_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resignations`
--

INSERT INTO `resignations` (`id`, `description`, `company_id`, `department_id`, `employee_id`, `notice_date`, `resignation_date`, `created_at`, `updated_at`) VALUES
(3, 'gffgg', 3, 1, 15, '11/10/2021', '2021-10-28', '2021-10-30 17:34:23', '2021-11-09 16:09:07'),
(4, 'gffgg', 3, 1, 3, '2021-10-30', '2021-10-28', '2021-10-30 17:34:23', '2021-10-30 17:34:23'),
(5, 'gffgg', 3, 1, 3, '2021-10-30', '2021-10-28', '2021-10-30 17:34:23', '2021-10-30 17:34:23'),
(7, 'gffgg', 3, 1, 3, '2021-10-30', '2021-10-28', '2021-10-30 17:34:23', '2021-10-30 17:34:23'),
(8, 'gffgg', 3, 1, 3, '2021-10-30', '2021-10-28', '2021-10-30 17:34:24', '2021-10-30 17:34:24'),
(9, 'gffgg', 3, 1, 3, '2021-10-30', '2021-10-28', '2021-10-30 17:34:24', '2021-10-30 17:34:24'),
(10, 'gffgg', 3, 1, 3, '2021-10-30', '2021-10-28', '2021-10-30 17:34:24', '2021-10-30 17:34:24'),
(11, 'gffgg', 3, 1, 3, '2021-10-30', '2021-10-28', '2021-10-30 17:34:24', '2021-10-30 17:34:24'),
(12, 'gffgg', 3, 1, 3, '2021-10-30', '2021-10-28', '2021-10-30 17:34:24', '2021-10-30 17:34:24'),
(15, 'gffgg', 3, 1, 3, '2021-10-30', '2021-10-28', '2021-10-30 17:34:25', '2021-10-30 17:34:25'),
(16, 'gffgg', 3, 1, 3, '2021-10-30', '2021-10-28', '2021-10-30 17:34:25', '2021-10-30 17:34:25'),
(17, 'gffgg', 3, 1, 3, '2021-10-30', '2021-10-28', '2021-10-30 17:34:25', '2021-10-30 17:34:25'),
(18, 'gffgg', 3, 1, 3, '2021-10-30', '2021-10-28', '2021-10-30 17:34:25', '2021-10-30 17:34:25'),
(19, 'gffgg', 3, 1, 3, '2021-10-30', '2021-10-28', '2021-10-30 17:34:25', '2021-10-30 17:34:25'),
(20, 'gffgg', 3, 1, 3, '2021-10-30', '2021-10-28', '2021-10-30 17:34:26', '2021-10-30 17:34:26'),
(21, 'gffgg', 3, 1, 3, '2021-10-30', '2021-10-28', '2021-10-30 17:34:26', '2021-10-30 17:34:26'),
(22, 'gffgg', 3, 1, 3, '2021-10-30', '2021-10-28', '2021-10-30 17:34:26', '2021-10-30 17:34:26'),
(23, 'jh', 3, 1, 3, '2021-11-01', '2021-11-01', '2021-11-01 10:17:17', '2021-11-01 10:17:17'),
(24, 'jh', 3, 1, 3, '2021-11-01', '2021-11-01', '2021-11-01 10:17:28', '2021-11-01 10:17:28'),
(25, 'jh', 3, 1, 3, '2021-11-01', '2021-11-01', '2021-11-01 10:24:35', '2021-11-01 10:24:35'),
(26, 'jh', 3, 1, 3, '2021-11-01', '2021-11-01', '2021-11-01 10:27:52', '2021-11-01 10:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', 'Can access and change everything', 1, NULL, NULL),
(2, 'employee', 'web', 'Default access', 1, '2020-07-26 13:50:45', '2020-07-26 13:50:45'),
(3, 'client', 'web', 'When you create a client, this role and associated.', 1, '2020-10-08 03:10:23', '2020-10-08 03:10:23'),
(4, 'Manager', 'web', 'Can Manage', 1, '2021-02-24 10:24:58', '2021-02-24 10:24:58'),
(5, 'Editor', 'web', 'Custom access', 1, '2021-02-24 10:24:58', '2021-02-24 10:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(38, 2),
(39, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(81, 4),
(82, 4),
(83, 4),
(84, 4),
(85, 4),
(86, 4),
(158, 4),
(164, 4),
(165, 4);

-- --------------------------------------------------------

--
-- Table structure for table `salary_allowances`
--

CREATE TABLE `salary_allowances` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `month_year` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_date` date DEFAULT NULL,
  `allowance_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `allowance_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_taxable` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_basics`
--

CREATE TABLE `salary_basics` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `month_year` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_date` date DEFAULT NULL,
  `payslip_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_salary` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary_basics`
--

INSERT INTO `salary_basics` (`id`, `employee_id`, `month_year`, `first_date`, `payslip_type`, `basic_salary`, `created_at`, `updated_at`) VALUES
(1, 14, 'October-2021', '2021-10-01', 'Monthly', 1000.00, '2021-10-28 09:28:21', '2021-10-28 09:28:21'),
(2, 14, 'July-2021', '2021-07-01', 'Monthly', 100.00, '2021-10-28 09:34:50', '2021-10-28 09:34:50'),
(3, 14, 'September-2021', '2021-09-01', 'Monthly', 100.00, '2021-10-28 09:50:25', '2021-10-28 09:50:25'),
(4, 14, 'November-2021', '2021-11-01', 'Monthly', 100.00, '2021-10-28 09:50:59', '2021-10-28 09:50:59'),
(5, 15, 'October-2021', '2021-10-01', 'Monthly', 100.00, '2021-10-28 10:55:47', '2021-10-28 10:55:47'),
(6, 3, 'October-2021', '2021-10-01', 'Monthly', 100.00, '2021-10-28 10:59:34', '2021-10-28 10:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `salary_commissions`
--

CREATE TABLE `salary_commissions` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `month_year` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_date` date DEFAULT NULL,
  `commission_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_deductions`
--

CREATE TABLE `salary_deductions` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `month_year` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_date` date DEFAULT NULL,
  `deduction_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deduction_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deduction_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_loans`
--

CREATE TABLE `salary_loans` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `month_year` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_date` date DEFAULT NULL,
  `loan_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan_time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_remaining` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_remaining` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `monthly_payable` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_other_payments`
--

CREATE TABLE `salary_other_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `month_year` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_date` date DEFAULT NULL,
  `other_payment_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_payment_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_overtimes`
--

CREATE TABLE `salary_overtimes` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `month_year` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_date` date DEFAULT NULL,
  `overtime_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_days` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `overtime_hours` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `overtime_rate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `overtime_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `security_levels`
--

CREATE TABLE `security_levels` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `security_levels`
--

INSERT INTO `security_levels` (`id`, `name`, `updated_at`) VALUES
(1, 'Security', '2021-11-07 02:38:51'),
(5, 'Demooo', '2021-11-10 10:01:05'),
(6, 'Hello', '2021-11-04 18:21:34'),
(7, 'hh', '2021-11-15 10:57:51'),
(8, 'hh', '2021-11-15 10:57:59'),
(9, 'jjhjh', '2021-11-15 11:05:24'),
(10, 'jjhjh', '2021-11-15 11:05:35'),
(11, 'jsdjasdf', '2021-11-15 11:05:59'),
(12, 'das', '2021-11-15 11:07:00'),
(13, 'sdaasd', '2021-11-15 11:07:28'),
(14, 'sdaasd', '2021-11-15 11:07:29'),
(15, 'sdaasd', '2021-11-15 11:07:38'),
(16, 'adssdsa', '2021-11-15 11:08:18'),
(17, 'jk', '2023-03-09 12:24:08');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `status_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `status_title`, `created_at`, `updated_at`) VALUES
(5, 'actuive', '2023-06-23 15:06:02', '2023-06-23 15:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `sub_departments`
--

CREATE TABLE `sub_departments` (
  `id` int NOT NULL,
  `serial_no` int DEFAULT NULL,
  `department_id` int NOT NULL,
  `department_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sub_departments`
--

INSERT INTO `sub_departments` (`id`, `serial_no`, `department_id`, `department_name`, `updated_at`) VALUES
(3, NULL, 1, 'Web Development', '2021-10-30 06:11:37'),
(4, NULL, 1, 'App Development', '2021-11-08 07:22:46'),
(5, NULL, 2, 'Accounting', '2021-11-08 07:23:42'),
(6, NULL, 1, 'Software Development', '2021-11-08 07:23:58'),
(8, NULL, 13, 'Human Resource', '2023-05-21 19:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `department_id` bigint UNSIGNED DEFAULT NULL,
  `employee_id` bigint UNSIGNED DEFAULT NULL,
  `ticket_code` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_priority` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ticket_remarks` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ticket_status` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_note` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_notify` tinyint DEFAULT NULL,
  `ticket_attachment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `company_id`, `department_id`, `employee_id`, `ticket_code`, `subject`, `ticket_priority`, `description`, `ticket_remarks`, `ticket_status`, `ticket_note`, `is_notify`, `ticket_attachment`, `created_at`, `updated_at`) VALUES
(5, 3, 2, 3, 'SYMngHHs', 'djhjsd', 'low', '&lt;p&gt;xcvvxc&lt;/p&gt;', NULL, 'pending', 'Test', NULL, NULL, '2021-11-15 09:32:35', '2021-11-15 09:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint UNSIGNED NOT NULL,
  `task_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `start_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_hour` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `task_status` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not started',
  `task_note` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `task_progress` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_notify` tinyint DEFAULT NULL,
  `added_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task_name`, `project_id`, `company_id`, `start_date`, `end_date`, `task_hour`, `description`, `task_status`, `task_note`, `task_progress`, `is_notify`, `added_by`, `created_at`, `updated_at`) VALUES
(14, 'lllllll', 6, 3, '03/20/2023', '03/28/2023', '5', 'pl;plp', 'not started', NULL, NULL, NULL, 1, '2023-03-13 01:17:29', '2023-06-23 10:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `task_discussions`
--

CREATE TABLE `task_discussions` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `task_discussion` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_files`
--

CREATE TABLE `task_files` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `file_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_attachment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_notes`
--

CREATE TABLE `task_notes` (
  `id` int NOT NULL,
  `task_id` bigint NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `task_notes`
--

INSERT INTO `task_notes` (`id`, `task_id`, `note`, `updated_at`) VALUES
(1, 1, 'Note is aded', '2021-11-17 09:40:34'),
(2, 1, 'Note is adedhell', '2021-11-17 09:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `tax_types`
--

CREATE TABLE `tax_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_types`
--

INSERT INTO `tax_types` (`id`, `name`, `rate`, `type`, `description`, `created_at`, `updated_at`) VALUES
(5, 'mm', '121', 'percentage', 'm', '2023-06-27 16:45:11', '2023-06-27 16:45:11');

-- --------------------------------------------------------

--
-- Table structure for table `terminations`
--

CREATE TABLE `terminations` (
  `id` bigint UNSIGNED NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company_id` bigint UNSIGNED NOT NULL,
  `terminated_employee` bigint UNSIGNED NOT NULL,
  `termination_type` bigint UNSIGNED DEFAULT NULL,
  `termination_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terminations`
--

INSERT INTO `terminations` (`id`, `description`, `company_id`, `terminated_employee`, `termination_type`, `termination_date`, `notice_date`, `status`, `created_at`, `updated_at`) VALUES
(6, 'nnn', 3, 14, 2, '06/24/2023', '06/19/2023', '', '2023-06-24 09:57:16', '2023-06-24 09:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `termination_types`
--

CREATE TABLE `termination_types` (
  `id` bigint UNSIGNED NOT NULL,
  `termination_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `termination_types`
--

INSERT INTO `termination_types` (`id`, `termination_title`, `created_at`, `updated_at`) VALUES
(2, 'Terminated', '2021-10-30 05:09:01', '2021-10-30 05:09:01'),
(4, 'n', '2023-06-28 12:34:33', '2023-06-28 12:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_comments`
--

CREATE TABLE `ticket_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `ticket_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ticket_comments` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_notes`
--

CREATE TABLE `ticket_notes` (
  `id` int NOT NULL,
  `ticket_id` int NOT NULL,
  `user_id` int NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ticket_notes`
--

INSERT INTO `ticket_notes` (`id`, `ticket_id`, `user_id`, `note`, `updated_at`) VALUES
(2, 2, 1, 'test', '2021-11-11 22:52:16'),
(4, 2, 1, 'bhub', '2021-11-11 22:55:25'),
(6, 6, 1, 'bcb', '2023-03-04 19:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `address` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `expertise` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `first_name`, `last_name`, `email`, `contact_no`, `company_id`, `address`, `expertise`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tisga', 'dd', 'admin@mecarvi.com', '4455555555', 3, '545', '', '', '2021-10-30 06:46:11', '2021-11-13 10:21:59');

-- --------------------------------------------------------

--
-- Table structure for table `training_lists`
--

CREATE TABLE `training_lists` (
  `id` bigint UNSIGNED NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `start_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `training_cost` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `trainer_id` bigint UNSIGNED DEFAULT NULL,
  `training_type_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_lists`
--

INSERT INTO `training_lists` (`id`, `description`, `start_date`, `end_date`, `training_cost`, `status`, `remarks`, `company_id`, `trainer_id`, `training_type_id`, `created_at`, `updated_at`) VALUES
(1, 'c', '09/23/2021', '11/29/2021', '32', '', NULL, 3, 1, NULL, '2021-11-13 10:17:37', '2021-11-13 10:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `training_types`
--

CREATE TABLE `training_types` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED NOT NULL,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_types`
--

INSERT INTO `training_types` (`id`, `company_id`, `type`, `status`, `created_at`, `updated_at`) VALUES
(4, 0, 'nn', '', '2023-06-27 16:44:36', '2023-06-27 16:44:36');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint UNSIGNED NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `from_department_id` bigint UNSIGNED DEFAULT NULL,
  `to_department_id` bigint UNSIGNED DEFAULT NULL,
  `employee_id` bigint UNSIGNED DEFAULT NULL,
  `transfer_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `description`, `company_id`, `from_department_id`, `to_department_id`, `employee_id`, `transfer_date`, `created_at`, `updated_at`) VALUES
(1, 'jj', 3, 1, 2, 3, '11/18/2021', '2021-11-01 11:51:11', '2021-11-11 10:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `travels`
--

CREATE TABLE `travels` (
  `id` bigint UNSIGNED NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company_id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `travel_type` bigint UNSIGNED DEFAULT NULL,
  `start_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `purpose_of_visit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_of_visit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_budget` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actual_budget` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `travel_mode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travels`
--

INSERT INTO `travels` (`id`, `description`, `company_id`, `employee_id`, `travel_type`, `start_date`, `end_date`, `purpose_of_visit`, `place_of_visit`, `expected_budget`, `actual_budget`, `travel_mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'asd', 3, 14, NULL, '11/10/2021', '11/11/2021', 'dasdas', 'sdasd', '2323', '2313', 'By Train', 'pending', '2021-11-05 10:20:51', '2021-11-13 09:44:39'),
(2, 'hh', 3, 3, NULL, '11/13/2021', '11/20/2021', 'dasdas', 'sdasd', '2323', '2313', 'By Taxi', 'first level approval', '2021-11-13 09:43:16', '2021-11-13 09:43:16');

-- --------------------------------------------------------

--
-- Table structure for table `travel_types`
--

CREATE TABLE `travel_types` (
  `id` bigint UNSIGNED NOT NULL,
  `arrangement_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_types`
--

INSERT INTO `travel_types` (`id`, `arrangement_type`, `company_id`, `created_at`, `updated_at`) VALUES
(3, 'mm', NULL, '2023-06-27 16:45:18', '2023-06-27 16:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_bg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_users_id` bigint UNSIGNED NOT NULL,
  `is_active` tinyint DEFAULT NULL,
  `contact_no` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login_ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_date` timestamp(2) NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `email_verified_at`, `password`, `profile_photo`, `profile_bg`, `role_users_id`, `is_active`, `contact_no`, `last_login_ip`, `last_login_date`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin', 'mecarvi', 'admin@mecarvi.com', NULL, '$2y$10$pGOUA4EJhwrBonGmLX2Mc.M87rF7Fs6oURTiWL0EokKKbNt4UT5kS', 'mecarvi_1678235654.png', NULL, 1, 1, '706-621-6424', NULL, NULL, NULL, NULL, '2023-03-11 16:03:02', NULL),
(3, 'Ahmed', 'Ali', 'employe', 'employe@gmail.com', NULL, '$2y$10$pGOUA4EJhwrBonGmLX2Mc.M87rF7Fs6oURTiWL0EokKKbNt4UT5kS', 'employe_1688650699.png', NULL, 2, 1, '+92304567867637', NULL, NULL, NULL, NULL, '2023-07-06 16:38:19', NULL),
(9, 'ghulam', 'ali', 'sdds', 'test123413@gmail.com', NULL, '$2y$10$njaW1adWfawiXhvsYGIffeiJdbVTYmfIAN0BMs84oOauGoxLkHL2q', NULL, NULL, 2, 1, '+923045678676', NULL, NULL, NULL, '2021-10-16 08:03:20', '2021-10-16 08:03:20', NULL),
(14, 'Jonathan', 'Grey', 'jonathan0611', 'jgrey@mecarviprints.com', NULL, '$2y$10$kznHsTd0c3LkfEBYP2KFdezbSTj2okOSkLka6l.GZ/pmtVFwYv1Wa', NULL, NULL, 2, 1, '14243714628', NULL, NULL, NULL, '2021-10-16 12:15:24', '2023-03-03 02:04:27', NULL),
(15, 'Subrina', 'Vazquez', 'subrina1123', 'test1234231@gmail.com', NULL, '$2y$10$OmviGsG9UeamCttXfr0opeBnXhYWtW0WUG9L463eQoMz8ZN0KR0He', NULL, NULL, 2, 1, '+4708152110', NULL, NULL, NULL, '2021-10-16 12:37:25', '2023-03-04 20:05:20', NULL),
(22, 'Alana', 'Gibs', 'alana1234', 'alana@gmail.com', NULL, '$2y$10$pGOUA4EJhwrBonGmLX2Mc.M87rF7Fs6oURTiWL0EokKKbNt4UT5kS', NULL, NULL, 3, 1, '+923045678676', NULL, NULL, NULL, '2021-11-02 10:18:28', '2023-03-09 15:45:31', NULL),
(48, 'Muhammad', 'Waheed', 'admin', 'waheedm3742@gmail.com', NULL, '$2y$10$pGOUA4EJhwrBonGmLX2Mc.M87rF7Fs6oURTiWL0EokKKbNt4UT5kS', 'admin_1687522851.PNG', NULL, 4, 1, '03030220582', NULL, NULL, NULL, '2023-06-23 14:44:14', '2023-06-23 15:20:51', NULL),
(49, 'Muhammad', 'Waheed', 'user', 'waheedmwed3742@gmail.com', NULL, '$2y$10$sHsc.qwb1GpCJqnAu0Oho.vlwAohv6eLMv0T6.3buOEETpUfMi7eC', NULL, NULL, 3, 1, '03030220582', NULL, NULL, NULL, '2023-06-26 09:46:03', '2023-06-26 09:46:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warnings`
--

CREATE TABLE `warnings` (
  `id` bigint UNSIGNED NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company_id` bigint UNSIGNED NOT NULL,
  `warning_to` bigint UNSIGNED NOT NULL,
  `warning_type` bigint UNSIGNED DEFAULT NULL,
  `warning_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warnings`
--

INSERT INTO `warnings` (`id`, `subject`, `description`, `company_id`, `warning_to`, `warning_type`, `warning_date`, `status`, `created_at`, `updated_at`) VALUES
(4, 'mmm', 'mmm', 3, 3, 2, '06/24/2023', 'unsolved', '2023-06-24 09:56:32', '2023-06-24 09:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `warnings_type`
--

CREATE TABLE `warnings_type` (
  `id` bigint UNSIGNED NOT NULL,
  `warning_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warnings_type`
--

INSERT INTO `warnings_type` (`id`, `warning_title`, `created_at`, `updated_at`) VALUES
(1, 'First Warning', '2021-10-30 05:09:13', '2023-03-10 13:25:02'),
(2, 'Second Warning', '2021-10-30 05:09:22', '2021-10-30 05:09:22'),
(3, 'Final Warning', '2021-10-30 05:09:30', '2021-10-30 05:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `xin_quoted_projects_timelogs`
--

CREATE TABLE `xin_quoted_projects_timelogs` (
  `id` int NOT NULL,
  `quoted_project_id` int NOT NULL,
  `company_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `memo` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allowed_leaves`
--
ALTER TABLE `allowed_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `announcements_company_id_foreign` (`company_id`),
  ADD KEY `announcements_department_id_foreign` (`department_id`),
  ADD KEY `announcements_added_by_foreign` (`added_by`);

--
-- Indexes for table `appraisals`
--
ALTER TABLE `appraisals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assets_company_id_foreign` (`company_id`),
  ADD KEY `assets_employee_id_foreign` (`employee_id`),
  ADD KEY `assets_assets_category_id_foreign` (`assets_category_id`);

--
-- Indexes for table `asset_categories`
--
ALTER TABLE `asset_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asset_categories_company_id_foreign` (`company_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `awards_company_id_foreign` (`company_id`),
  ADD KEY `awards_department_id_foreign` (`department_id`),
  ADD KEY `awards_employee_id_foreign` (`employee_id`),
  ADD KEY `awards_award_type_id_foreign` (`award_type_id`);

--
-- Indexes for table `award_types`
--
ALTER TABLE `award_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendarables`
--
ALTER TABLE `calendarables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_interview`
--
ALTER TABLE `candidate_interview`
  ADD PRIMARY KEY (`interview_id`,`candidate_id`),
  ADD KEY `candidate_interview_candidate_id_foreign` (`candidate_id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_location_id_foreign` (`location_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaints_company_id_foreign` (`company_id`),
  ADD KEY `complaints_complaint_from_foreign` (`complaint_from`),
  ADD KEY `complaints_complaint_against_foreign` (`complaint_against`);

--
-- Indexes for table `contract_types`
--
ALTER TABLE `contract_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_m_s`
--
ALTER TABLE `c_m_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_company_id_foreign` (`company_id`),
  ADD KEY `departments_department_head_foreign` (`department_head`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designations_company_id_foreign` (`company_id`),
  ADD KEY `designations_department_id_foreign` (`department_id`);

--
-- Indexes for table `document_types`
--
ALTER TABLE `document_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_types_company_id_foreign` (`company_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_office_shift_id_foreign` (`office_shift_id`),
  ADD KEY `employees_company_id_foreign` (`company_id`),
  ADD KEY `employees_department_id_foreign` (`department_id`),
  ADD KEY `employees_designation_id_foreign` (`designation_id`),
  ADD KEY `employees_location_id_foreign` (`location_id`),
  ADD KEY `employees_role_users_id_foreign` (`role_users_id`),
  ADD KEY `employees_status_id_foreign` (`status_id`);

--
-- Indexes for table `employee_bank_accounts`
--
ALTER TABLE `employee_bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_bank_accounts_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_contacts_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `employee_contracts`
--
ALTER TABLE `employee_contracts`
  ADD PRIMARY KEY (`contract_id`);

--
-- Indexes for table `employee_documents`
--
ALTER TABLE `employee_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_documents_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_documents_document_type_id_foreign` (`document_type_id`);

--
-- Indexes for table `employee_immigrations`
--
ALTER TABLE `employee_immigrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_immigrations_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_immigrations_document_type_id_foreign` (`document_type_id`);

--
-- Indexes for table `employee_interview`
--
ALTER TABLE `employee_interview`
  ADD PRIMARY KEY (`interview_id`,`employee_id`),
  ADD KEY `employee_interview_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `employee_meetings`
--
ALTER TABLE `employee_meetings`
  ADD PRIMARY KEY (`employee_id`,`meeting_id`),
  ADD KEY `employee_meeting_meeting_id_foreign` (`meeting_id`);

--
-- Indexes for table `employee_project`
--
ALTER TABLE `employee_project`
  ADD PRIMARY KEY (`employee_id`,`project_id`),
  ADD KEY `employee_project_project_id_foreign` (`project_id`);

--
-- Indexes for table `employee_qualificaitons`
--
ALTER TABLE `employee_qualificaitons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_qualificaitons_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_qualificaitons_education_level_id_foreign` (`education_level_id`),
  ADD KEY `employee_qualificaitons_language_skill_id_foreign` (`language_skill_id`),
  ADD KEY `employee_qualificaitons_general_skill_id_foreign` (`general_skill_id`);

--
-- Indexes for table `employee_quoted_project`
--
ALTER TABLE `employee_quoted_project`
  ADD PRIMARY KEY (`employee_id`,`quoted_project_id`),
  ADD KEY `Project` (`quoted_project_id`);

--
-- Indexes for table `employee_security_levels`
--
ALTER TABLE `employee_security_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_support_ticket`
--
ALTER TABLE `employee_support_ticket`
  ADD PRIMARY KEY (`employee_id`,`support_ticket_id`),
  ADD KEY `employee_support_ticket_support_ticket_id_foreign` (`support_ticket_id`);

--
-- Indexes for table `employee_task`
--
ALTER TABLE `employee_task`
  ADD PRIMARY KEY (`employee_id`,`task_id`),
  ADD KEY `employee_task_task_id_foreign` (`task_id`);

--
-- Indexes for table `employee_training_list`
--
ALTER TABLE `employee_training_list`
  ADD PRIMARY KEY (`employee_id`,`training_list_id`),
  ADD KEY `employee_training_list_training_list_id_foreign` (`training_list_id`);

--
-- Indexes for table `employee_work_experience`
--
ALTER TABLE `employee_work_experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_work_experience_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `estimates`
--
ALTER TABLE `estimates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimate_items`
--
ALTER TABLE `estimate_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_company_id_foreign` (`company_id`),
  ADD KEY `events_department_id_foreign` (`department_id`);

--
-- Indexes for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_types_company_id_foreign` (`company_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_managers`
--
ALTER TABLE `file_managers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_managers_department_id_foreign` (`department_id`),
  ADD KEY `file_managers_added_by_foreign` (`added_by`);

--
-- Indexes for table `file_manager_settings`
--
ALTER TABLE `file_manager_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance_bank_cashes`
--
ALTER TABLE `finance_bank_cashes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance_deposits`
--
ALTER TABLE `finance_deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finance_deposits_company_id_foreign` (`company_id`),
  ADD KEY `finance_deposits_account_id_foreign` (`account_id`),
  ADD KEY `finance_deposits_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `finance_deposits_payer_id_foreign` (`payer_id`);

--
-- Indexes for table `finance_expenses`
--
ALTER TABLE `finance_expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finance_expenses_company_id_foreign` (`company_id`),
  ADD KEY `finance_expenses_account_id_foreign` (`account_id`),
  ADD KEY `finance_expenses_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `finance_expenses_payee_id_foreign` (`payee_id`),
  ADD KEY `finance_expenses_category_id_foreign` (`category_id`);

--
-- Indexes for table `finance_payees`
--
ALTER TABLE `finance_payees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance_payers`
--
ALTER TABLE `finance_payers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance_transactions`
--
ALTER TABLE `finance_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finance_transactions_company_id_foreign` (`company_id`),
  ADD KEY `finance_transactions_account_id_foreign` (`account_id`),
  ADD KEY `finance_transactions_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `finance_transactions_payee_id_foreign` (`payee_id`),
  ADD KEY `finance_transactions_payer_id_foreign` (`payer_id`),
  ADD KEY `finance_transactions_category_id_foreign` (`category_id`);

--
-- Indexes for table `finance_transfers`
--
ALTER TABLE `finance_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finance_transfers_company_id_foreign` (`company_id`),
  ADD KEY `finance_transfers_from_account_id_foreign` (`from_account_id`),
  ADD KEY `finance_transfers_to_account_id_foreign` (`to_account_id`),
  ADD KEY `finance_transfers_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal_trackings`
--
ALTER TABLE `goal_trackings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal_types`
--
ALTER TABLE `goal_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `holidays_company_id_foreign` (`company_id`),
  ADD KEY `holidays_department_id_foreign` (`department_id`);

--
-- Indexes for table `indicators`
--
ALTER TABLE `indicators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_client_id_foreign` (`client_id`),
  ADD KEY `invoices_project_id_foreign` (`project_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_items_project_id_foreign` (`project_id`);

--
-- Indexes for table `ip_settings`
--
ALTER TABLE `ip_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_candidates`
--
ALTER TABLE `job_candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_candidates_job_id_foreign` (`job_id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_interviews`
--
ALTER TABLE `job_interviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_interviews_job_id_foreign` (`job_id`),
  ADD KEY `job_interviews_added_by_foreign` (`added_by`);

--
-- Indexes for table `job_posts`
--
ALTER TABLE `job_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_posts_job_category_id_foreign` (`job_category_id`),
  ADD KEY `job_posts_company_id_foreign` (`company_id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaves_company_id_foreign` (`company_id`),
  ADD KEY `leaves_employee_id_foreign` (`employee_id`),
  ADD KEY `leaves_leave_type_id_foreign` (`leave_type_id`),
  ADD KEY `leaves_department_id_foreign` (`department_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_types_company_id_foreign` (`company_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locations_location_head_foreign` (`location_head`),
  ADD KEY `locations_country_foreign` (`country`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meetings_company_id_foreign` (`company_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `office_shifts`
--
ALTER TABLE `office_shifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `office_shifts_company_id_foreign` (`company_id`);

--
-- Indexes for table `official_documents`
--
ALTER TABLE `official_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `official_documents_company_id_foreign` (`company_id`),
  ADD KEY `official_documents_document_type_id_foreign` (`document_type_id`),
  ADD KEY `official_documents_added_by_foreign` (`added_by`);

--
-- Indexes for table `overtime_request`
--
ALTER TABLE `overtime_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_methods_company_id_foreign` (`company_id`);

--
-- Indexes for table `payslips`
--
ALTER TABLE `payslips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payslips_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `policies_company_id_foreign` (`company_id`),
  ADD KEY `policies_added_by_foreign` (`added_by`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_client_id_foreign` (`client_id`),
  ADD KEY `projects_company_id_foreign` (`company_id`),
  ADD KEY `projects_added_by_foreign` (`added_by`);

--
-- Indexes for table `projects_timelogs`
--
ALTER TABLE `projects_timelogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_bugs`
--
ALTER TABLE `project_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_bugs_user_id_foreign` (`user_id`),
  ADD KEY `project_bugs_project_id_foreign` (`project_id`);

--
-- Indexes for table `project_discussions`
--
ALTER TABLE `project_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_discussions_user_id_foreign` (`user_id`),
  ADD KEY `project_discussions_project_id_foreign` (`project_id`);

--
-- Indexes for table `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_files_user_id_foreign` (`user_id`),
  ADD KEY `project_files_project_id_foreign` (`project_id`);

--
-- Indexes for table `project_notes`
--
ALTER TABLE `project_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotions_company_id_foreign` (`company_id`),
  ADD KEY `promotions_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `qualification_education_levels`
--
ALTER TABLE `qualification_education_levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qualification_education_levels_company_id_foreign` (`company_id`);

--
-- Indexes for table `qualification_languages`
--
ALTER TABLE `qualification_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qualification_languages_company_id_foreign` (`company_id`);

--
-- Indexes for table `qualification_skills`
--
ALTER TABLE `qualification_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qualification_skills_company_id_foreign` (`company_id`);

--
-- Indexes for table `quoted_projects`
--
ALTER TABLE `quoted_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quoted_projects_client_id_foreign` (`client_id`),
  ADD KEY `quoted_projects_company_id_foreign` (`company_id`),
  ADD KEY `quoted_projects_added_by_foreign` (`added_by`);

--
-- Indexes for table `quoted_projects_timelogs`
--
ALTER TABLE `quoted_projects_timelogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resignations`
--
ALTER TABLE `resignations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resignations_company_id_foreign` (`company_id`),
  ADD KEY `resignations_department_id_foreign` (`department_id`),
  ADD KEY `resignations_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `salary_allowances`
--
ALTER TABLE `salary_allowances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_allowances_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `salary_basics`
--
ALTER TABLE `salary_basics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_basics_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `salary_commissions`
--
ALTER TABLE `salary_commissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_commissions_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `salary_deductions`
--
ALTER TABLE `salary_deductions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_deductions_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `salary_loans`
--
ALTER TABLE `salary_loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_loans_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `salary_other_payments`
--
ALTER TABLE `salary_other_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_other_payments_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `salary_overtimes`
--
ALTER TABLE `salary_overtimes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_overtimes_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `security_levels`
--
ALTER TABLE `security_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_departments`
--
ALTER TABLE `sub_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `support_tickets_ticket_code_unique` (`ticket_code`),
  ADD KEY `support_tickets_company_id_foreign` (`company_id`),
  ADD KEY `support_tickets_department_id_foreign` (`department_id`),
  ADD KEY `support_tickets_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_project_id_foreign` (`project_id`),
  ADD KEY `tasks_company_id_foreign` (`company_id`),
  ADD KEY `tasks_added_by_foreign` (`added_by`);

--
-- Indexes for table `task_discussions`
--
ALTER TABLE `task_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_discussions_user_id_foreign` (`user_id`),
  ADD KEY `task_discussions_task_id_foreign` (`task_id`);

--
-- Indexes for table `task_files`
--
ALTER TABLE `task_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_files_user_id_foreign` (`user_id`),
  ADD KEY `task_files_task_id_foreign` (`task_id`);

--
-- Indexes for table `task_notes`
--
ALTER TABLE `task_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_types`
--
ALTER TABLE `tax_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terminations`
--
ALTER TABLE `terminations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `terminations_company_id_foreign` (`company_id`),
  ADD KEY `terminations_terminated_employee_foreign` (`terminated_employee`),
  ADD KEY `terminations_termination_type_foreign` (`termination_type`);

--
-- Indexes for table `termination_types`
--
ALTER TABLE `termination_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_comments`
--
ALTER TABLE `ticket_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_comments_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ticket_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `ticket_notes`
--
ALTER TABLE `ticket_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainers_company_id_foreign` (`company_id`);

--
-- Indexes for table `training_lists`
--
ALTER TABLE `training_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `training_lists_company_id_foreign` (`company_id`),
  ADD KEY `training_lists_trainer_id_foreign` (`trainer_id`),
  ADD KEY `training_lists_training_type_id_foreign` (`training_type_id`);

--
-- Indexes for table `training_types`
--
ALTER TABLE `training_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_company_id_foreign` (`company_id`),
  ADD KEY `transfers_from_department_id_foreign` (`from_department_id`),
  ADD KEY `transfers_to_department_id_foreign` (`to_department_id`),
  ADD KEY `transfers_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `travels`
--
ALTER TABLE `travels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travels_company_id_foreign` (`company_id`),
  ADD KEY `travels_employee_id_foreign` (`employee_id`),
  ADD KEY `travels_travel_type_foreign` (`travel_type`);

--
-- Indexes for table `travel_types`
--
ALTER TABLE `travel_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travel_types_company_id_foreign` (`company_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_users_id_foreign` (`role_users_id`);

--
-- Indexes for table `warnings`
--
ALTER TABLE `warnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warnings_company_id_foreign` (`company_id`),
  ADD KEY `warnings_warning_to_foreign` (`warning_to`),
  ADD KEY `warnings_warning_type_foreign` (`warning_type`);

--
-- Indexes for table `warnings_type`
--
ALTER TABLE `warnings_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allowed_leaves`
--
ALTER TABLE `allowed_leaves`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appraisals`
--
ALTER TABLE `appraisals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `asset_categories`
--
ALTER TABLE `asset_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `award_types`
--
ALTER TABLE `award_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `calendarables`
--
ALTER TABLE `calendarables`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contract_types`
--
ALTER TABLE `contract_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `c_m_s`
--
ALTER TABLE `c_m_s`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `document_types`
--
ALTER TABLE `document_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `employee_bank_accounts`
--
ALTER TABLE `employee_bank_accounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_contracts`
--
ALTER TABLE `employee_contracts`
  MODIFY `contract_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_documents`
--
ALTER TABLE `employee_documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_immigrations`
--
ALTER TABLE `employee_immigrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_qualificaitons`
--
ALTER TABLE `employee_qualificaitons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_security_levels`
--
ALTER TABLE `employee_security_levels`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_work_experience`
--
ALTER TABLE `employee_work_experience`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimates`
--
ALTER TABLE `estimates`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `estimate_items`
--
ALTER TABLE `estimate_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `expense_types`
--
ALTER TABLE `expense_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_managers`
--
ALTER TABLE `file_managers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `file_manager_settings`
--
ALTER TABLE `file_manager_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `finance_bank_cashes`
--
ALTER TABLE `finance_bank_cashes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `finance_deposits`
--
ALTER TABLE `finance_deposits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `finance_expenses`
--
ALTER TABLE `finance_expenses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `finance_payees`
--
ALTER TABLE `finance_payees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `finance_payers`
--
ALTER TABLE `finance_payers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `finance_transactions`
--
ALTER TABLE `finance_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `finance_transfers`
--
ALTER TABLE `finance_transfers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `goal_trackings`
--
ALTER TABLE `goal_trackings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `goal_types`
--
ALTER TABLE `goal_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `indicators`
--
ALTER TABLE `indicators`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ip_settings`
--
ALTER TABLE `ip_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job_candidates`
--
ALTER TABLE `job_candidates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_interviews`
--
ALTER TABLE `job_interviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_posts`
--
ALTER TABLE `job_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `office_shifts`
--
ALTER TABLE `office_shifts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `official_documents`
--
ALTER TABLE `official_documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `overtime_request`
--
ALTER TABLE `overtime_request`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payslips`
--
ALTER TABLE `payslips`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `projects_timelogs`
--
ALTER TABLE `projects_timelogs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `project_bugs`
--
ALTER TABLE `project_bugs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_discussions`
--
ALTER TABLE `project_discussions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_files`
--
ALTER TABLE `project_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_notes`
--
ALTER TABLE `project_notes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `qualification_education_levels`
--
ALTER TABLE `qualification_education_levels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `qualification_languages`
--
ALTER TABLE `qualification_languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `qualification_skills`
--
ALTER TABLE `qualification_skills`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quoted_projects`
--
ALTER TABLE `quoted_projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quoted_projects_timelogs`
--
ALTER TABLE `quoted_projects_timelogs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resignations`
--
ALTER TABLE `resignations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `salary_allowances`
--
ALTER TABLE `salary_allowances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_basics`
--
ALTER TABLE `salary_basics`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `salary_commissions`
--
ALTER TABLE `salary_commissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_deductions`
--
ALTER TABLE `salary_deductions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_loans`
--
ALTER TABLE `salary_loans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_other_payments`
--
ALTER TABLE `salary_other_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_overtimes`
--
ALTER TABLE `salary_overtimes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `security_levels`
--
ALTER TABLE `security_levels`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_departments`
--
ALTER TABLE `sub_departments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `task_discussions`
--
ALTER TABLE `task_discussions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_files`
--
ALTER TABLE `task_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_notes`
--
ALTER TABLE `task_notes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tax_types`
--
ALTER TABLE `tax_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `terminations`
--
ALTER TABLE `terminations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `termination_types`
--
ALTER TABLE `termination_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ticket_comments`
--
ALTER TABLE `ticket_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_notes`
--
ALTER TABLE `ticket_notes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `training_lists`
--
ALTER TABLE `training_lists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `training_types`
--
ALTER TABLE `training_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `travels`
--
ALTER TABLE `travels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `travel_types`
--
ALTER TABLE `travel_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `warnings`
--
ALTER TABLE `warnings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `warnings_type`
--
ALTER TABLE `warnings_type`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `announcements_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_assets_category_id_foreign` FOREIGN KEY (`assets_category_id`) REFERENCES `asset_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assets_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assets_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `asset_categories`
--
ALTER TABLE `asset_categories`
  ADD CONSTRAINT `asset_categories_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_award_type_id_foreign` FOREIGN KEY (`award_type_id`) REFERENCES `award_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `awards_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `awards_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `awards_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `candidate_interview`
--
ALTER TABLE `candidate_interview`
  ADD CONSTRAINT `candidate_interview_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `job_candidates` (`id`),
  ADD CONSTRAINT `candidate_interview_interview_id_foreign` FOREIGN KEY (`interview_id`) REFERENCES `job_interviews` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `complaints_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `complaints_complaint_against_foreign` FOREIGN KEY (`complaint_against`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `complaints_complaint_from_foreign` FOREIGN KEY (`complaint_from`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `departments_department_head_foreign` FOREIGN KEY (`department_head`) REFERENCES `employees` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `designations`
--
ALTER TABLE `designations`
  ADD CONSTRAINT `designations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `designations_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `document_types`
--
ALTER TABLE `document_types`
  ADD CONSTRAINT `document_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employees_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_office_shift_id_foreign` FOREIGN KEY (`office_shift_id`) REFERENCES `office_shifts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_role_users_id_foreign` FOREIGN KEY (`role_users_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_bank_accounts`
--
ALTER TABLE `employee_bank_accounts`
  ADD CONSTRAINT `employee_bank_accounts_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  ADD CONSTRAINT `employee_contacts_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_documents`
--
ALTER TABLE `employee_documents`
  ADD CONSTRAINT `employee_documents_document_type_id_foreign` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employee_documents_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_immigrations`
--
ALTER TABLE `employee_immigrations`
  ADD CONSTRAINT `employee_immigrations_document_type_id_foreign` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employee_immigrations_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_interview`
--
ALTER TABLE `employee_interview`
  ADD CONSTRAINT `employee_interview_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `employee_interview_interview_id_foreign` FOREIGN KEY (`interview_id`) REFERENCES `job_interviews` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_meetings`
--
ALTER TABLE `employee_meetings`
  ADD CONSTRAINT `employee_meeting_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_meeting_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_project`
--
ALTER TABLE `employee_project`
  ADD CONSTRAINT `employee_project_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_project_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_qualificaitons`
--
ALTER TABLE `employee_qualificaitons`
  ADD CONSTRAINT `employee_qualificaitons_education_level_id_foreign` FOREIGN KEY (`education_level_id`) REFERENCES `qualification_education_levels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employee_qualificaitons_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_qualificaitons_general_skill_id_foreign` FOREIGN KEY (`general_skill_id`) REFERENCES `qualification_skills` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employee_qualificaitons_language_skill_id_foreign` FOREIGN KEY (`language_skill_id`) REFERENCES `qualification_languages` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_quoted_project`
--
ALTER TABLE `employee_quoted_project`
  ADD CONSTRAINT `Project` FOREIGN KEY (`quoted_project_id`) REFERENCES `quoted_projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_support_ticket`
--
ALTER TABLE `employee_support_ticket`
  ADD CONSTRAINT `employee_support_ticket_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_support_ticket_support_ticket_id_foreign` FOREIGN KEY (`support_ticket_id`) REFERENCES `support_tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_task`
--
ALTER TABLE `employee_task`
  ADD CONSTRAINT `employee_task_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_task_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_training_list`
--
ALTER TABLE `employee_training_list`
  ADD CONSTRAINT `employee_training_list_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_training_list_training_list_id_foreign` FOREIGN KEY (`training_list_id`) REFERENCES `training_lists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_work_experience`
--
ALTER TABLE `employee_work_experience`
  ADD CONSTRAINT `employee_work_experience_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD CONSTRAINT `expense_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `file_managers`
--
ALTER TABLE `file_managers`
  ADD CONSTRAINT `file_managers_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `file_managers_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `finance_deposits`
--
ALTER TABLE `finance_deposits`
  ADD CONSTRAINT `finance_deposits_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `finance_bank_cashes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_deposits_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_deposits_payer_id_foreign` FOREIGN KEY (`payer_id`) REFERENCES `finance_payers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_deposits_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `finance_expenses`
--
ALTER TABLE `finance_expenses`
  ADD CONSTRAINT `finance_expenses_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `finance_bank_cashes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_expenses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `expense_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_expenses_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_expenses_payee_id_foreign` FOREIGN KEY (`payee_id`) REFERENCES `finance_payees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_expenses_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `finance_transactions`
--
ALTER TABLE `finance_transactions`
  ADD CONSTRAINT `finance_transactions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `finance_bank_cashes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_transactions_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `expense_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_transactions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_transactions_payee_id_foreign` FOREIGN KEY (`payee_id`) REFERENCES `finance_payees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_transactions_payer_id_foreign` FOREIGN KEY (`payer_id`) REFERENCES `finance_payers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `finance_transfers`
--
ALTER TABLE `finance_transfers`
  ADD CONSTRAINT `finance_transfers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_transfers_from_account_id_foreign` FOREIGN KEY (`from_account_id`) REFERENCES `finance_bank_cashes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_transfers_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_transfers_to_account_id_foreign` FOREIGN KEY (`to_account_id`) REFERENCES `finance_bank_cashes` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `holidays`
--
ALTER TABLE `holidays`
  ADD CONSTRAINT `holidays_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `holidays_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `invoices_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `job_candidates`
--
ALTER TABLE `job_candidates`
  ADD CONSTRAINT `job_candidates_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `job_posts` (`id`);

--
-- Constraints for table `job_interviews`
--
ALTER TABLE `job_interviews`
  ADD CONSTRAINT `job_interviews_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `job_interviews_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `job_posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_posts`
--
ALTER TABLE `job_posts`
  ADD CONSTRAINT `job_posts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_posts_job_category_id_foreign` FOREIGN KEY (`job_category_id`) REFERENCES `job_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leads`
--
ALTER TABLE `leads`
  ADD CONSTRAINT `leads_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leaves_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leaves_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `leaves_leave_type_id_foreign` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD CONSTRAINT `leave_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_country_foreign` FOREIGN KEY (`country`) REFERENCES `countries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `locations_location_head_foreign` FOREIGN KEY (`location_head`) REFERENCES `employees` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `office_shifts`
--
ALTER TABLE `office_shifts`
  ADD CONSTRAINT `office_shifts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `official_documents`
--
ALTER TABLE `official_documents`
  ADD CONSTRAINT `official_documents_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `official_documents_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `official_documents_document_type_id_foreign` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD CONSTRAINT `payment_methods_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `payslips`
--
ALTER TABLE `payslips`
  ADD CONSTRAINT `payslips_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `policies`
--
ALTER TABLE `policies`
  ADD CONSTRAINT `policies_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `projects_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `projects_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `project_bugs`
--
ALTER TABLE `project_bugs`
  ADD CONSTRAINT `project_bugs_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_bugs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `project_discussions`
--
ALTER TABLE `project_discussions`
  ADD CONSTRAINT `project_discussions_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `project_files`
--
ALTER TABLE `project_files`
  ADD CONSTRAINT `project_files_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `qualification_education_levels`
--
ALTER TABLE `qualification_education_levels`
  ADD CONSTRAINT `qualification_education_levels_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `qualification_languages`
--
ALTER TABLE `qualification_languages`
  ADD CONSTRAINT `qualification_languages_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `qualification_skills`
--
ALTER TABLE `qualification_skills`
  ADD CONSTRAINT `qualification_skills_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quoted_projects`
--
ALTER TABLE `quoted_projects`
  ADD CONSTRAINT `quoted_projects_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `quoted_projects_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `quoted_projects_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `resignations`
--
ALTER TABLE `resignations`
  ADD CONSTRAINT `resignations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `resignations_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `resignations_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_allowances`
--
ALTER TABLE `salary_allowances`
  ADD CONSTRAINT `salary_allowances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_basics`
--
ALTER TABLE `salary_basics`
  ADD CONSTRAINT `salary_basics_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_commissions`
--
ALTER TABLE `salary_commissions`
  ADD CONSTRAINT `salary_commissions_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_deductions`
--
ALTER TABLE `salary_deductions`
  ADD CONSTRAINT `salary_deductions_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_loans`
--
ALTER TABLE `salary_loans`
  ADD CONSTRAINT `salary_loans_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_other_payments`
--
ALTER TABLE `salary_other_payments`
  ADD CONSTRAINT `salary_other_payments_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_overtimes`
--
ALTER TABLE `salary_overtimes`
  ADD CONSTRAINT `salary_overtimes_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD CONSTRAINT `support_tickets_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `support_tickets_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `support_tickets_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tasks_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_discussions`
--
ALTER TABLE `task_discussions`
  ADD CONSTRAINT `task_discussions_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `task_files`
--
ALTER TABLE `task_files`
  ADD CONSTRAINT `task_files_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `terminations`
--
ALTER TABLE `terminations`
  ADD CONSTRAINT `terminations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `terminations_terminated_employee_foreign` FOREIGN KEY (`terminated_employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `terminations_termination_type_foreign` FOREIGN KEY (`termination_type`) REFERENCES `termination_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ticket_comments`
--
ALTER TABLE `ticket_comments`
  ADD CONSTRAINT `ticket_comments_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `support_tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticket_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `trainers`
--
ALTER TABLE `trainers`
  ADD CONSTRAINT `trainers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `training_lists`
--
ALTER TABLE `training_lists`
  ADD CONSTRAINT `training_lists_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `training_lists_trainer_id_foreign` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `training_lists_training_type_id_foreign` FOREIGN KEY (`training_type_id`) REFERENCES `training_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_from_department_id_foreign` FOREIGN KEY (`from_department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_to_department_id_foreign` FOREIGN KEY (`to_department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `travels`
--
ALTER TABLE `travels`
  ADD CONSTRAINT `travels_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travels_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travels_travel_type_foreign` FOREIGN KEY (`travel_type`) REFERENCES `travel_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `travel_types`
--
ALTER TABLE `travel_types`
  ADD CONSTRAINT `travel_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_users_id_foreign` FOREIGN KEY (`role_users_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `warnings`
--
ALTER TABLE `warnings`
  ADD CONSTRAINT `warnings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `warnings_warning_to_foreign` FOREIGN KEY (`warning_to`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `warnings_warning_type_foreign` FOREIGN KEY (`warning_type`) REFERENCES `warnings_type` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
