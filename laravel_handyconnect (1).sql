-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2022 at 07:36 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_handyconnect`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_crms`
--

CREATE TABLE `admin_crms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `crm_unique_id` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stage` int(11) NOT NULL,
  `delivery_date` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `company_id` int(20) NOT NULL,
  `assign_sales_person` int(20) DEFAULT NULL,
  `field_visit_employee_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_visit_approve` int(11) NOT NULL DEFAULT 0,
  `assign_to_vendor_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_crms`
--

INSERT INTO `admin_crms` (`id`, `crm_unique_id`, `stage`, `delivery_date`, `customer_id`, `company_id`, `assign_sales_person`, `field_visit_employee_id`, `field_visit_approve`, `assign_to_vendor_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'HCL0000001', 3, '2022-02-07', 3, 7, 5, '6', 0, '1', 1, '2022-02-07 18:40:08', '2022-03-18 23:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `admin_crm_services`
--

CREATE TABLE `admin_crm_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_crm_id` int(11) NOT NULL,
  `service_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `uom_id` int(11) NOT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_crm_services`
--

INSERT INTO `admin_crm_services` (`id`, `admin_crm_id`, `service_id`, `quantity`, `uom_id`, `tax`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, '2', 2, 2, '5,15', '44.00', '2022-02-07 18:40:08', '2022-02-14 11:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `company_id`, `created_at`, `updated_at`) VALUES
(2, 'DOOR REPAIR', 10, '2021-12-16 17:40:37', '2022-03-11 06:06:45'),
(5, 'PAINTING', 7, '2022-03-10 08:12:15', '2022-03-10 08:12:15'),
(6, 'LOCKSMITH', 10, '2022-03-10 08:12:52', '2022-03-10 08:12:52'),
(7, 'FURNITURE ASSEMBLY', 7, '2022-03-10 08:13:05', '2022-03-10 08:13:05'),
(8, 'ELECTRICAL', 7, '2022-03-10 08:13:18', '2022-03-10 08:13:18'),
(9, 'DRILLING', 7, '2022-03-10 08:13:41', '2022-03-10 08:13:41'),
(10, 'WATER HEATER', 7, '2022-03-10 08:13:56', '2022-03-10 08:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `commercial`
--

CREATE TABLE `commercial` (
  `id` int(50) NOT NULL,
  `type_name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `commercial`
--

INSERT INTO `commercial` (`id`, `type_name`) VALUES
(1, 'Resturant/ Care'),
(2, 'Retail Shop'),
(3, 'Club / Pub'),
(4, 'School'),
(5, 'Clinic'),
(6, 'Office'),
(7, 'Shophouse'),
(8, 'Industrial / Warehouse'),
(9, 'Reinstatement'),
(10, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(7, 'Goodman Enterprise Pte Ltd', NULL, '2021-12-16 17:39:54', '2022-03-10 08:09:14'),
(9, 'Goodman Interior (S) Pte Ltd', 'Company_logo/Goodman Interior (S) Pte Ltd10_Mar_22_38.jpg', '2021-12-30 20:06:15', '2022-03-10 08:09:38'),
(10, 'Goodman Creatives Pte Ltd', 'Company_logo/Goodman Creatives Pte Ltd10_Mar_22_03.png', '2022-03-10 08:10:03', '2022-03-10 08:10:03'),
(11, 'Goodman Interior Pte Ltd', 'Company_logo/Goodman Interior Pte Ltd10_Mar_22_28.png', '2022-03-10 08:10:28', '2022-03-10 08:10:28');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_unique_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(20) NOT NULL,
  `type` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_treatment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_unique_id`, `user_id`, `type`, `logo`, `name`, `email`, `mobile`, `password`, `address`, `state`, `zip_code`, `country`, `website`, `tag`, `gst_treatment`, `gst_no`, `status`, `created_at`, `updated_at`) VALUES
(2, 'HCC0000001', 14, 'Individual', 'Customer_Logo/Demo15_Dec_21.png', 'Demo', 'debasis@gmail.com', '444', '$2y$10$5IC691/TS4Ggo35J4DouKuylqMdPp1eqXcIPurqSKR3dFNLrCy3Ty', '11', '11', '11', '11', '11', '11', NULL, NULL, 1, '2021-12-15 16:33:40', '2021-12-15 16:33:40'),
(3, 'HCC0000002', 16, 'Individual', NULL, 'Debasis', 'debasissahoochinku@gmail.com', '45454545', '$2y$10$DW2efRhnJsUFQ.R9NAWwsuh6hTI6ZXFvQM7bVF2Y5OAzhQV6LgH9S', '11', '11', '11', '11', '11', '11', NULL, NULL, 1, '2021-12-15 16:39:02', '2021-12-15 16:39:02'),
(4, 'HCC0000003', 17, 'Company', NULL, 'Demo', 'admin123@gmail.com', '22', '$2y$10$SJnhzcKX4/pFwvMI7U6i3.j4wgM81x.MgM9S296zmgvq/RnWNzh5W', '22', '22', '22', '22', '22', '22', '22', '22', 1, '2021-12-15 16:43:39', '2021-12-15 16:43:39'),
(5, 'HCC0000004', 18, 'Individual', NULL, 'Debasis', 'ram@gmail.com', '444', '$2y$10$M2szLBq/xZ9oWUsvDkUCTO6G6eIeetKMjt8vn1DahDaI5eHG3Y02.', 'asd', 'as', '11', '11', '11', '11', NULL, NULL, 1, '2021-12-15 18:27:43', '2021-12-15 18:27:43'),
(6, 'HCC0000005', 97, 'Individual', NULL, 'Maisie', 'admin@admin.com', '8899999999', '$2y$10$vtgKwi1qYUb8zMZI1VNAJuiHp2kQavtF6E0nwqv9HUSw23FZdC8ea', 'Aut deleniti corpori', 'Maxime iure et ut qu', '212222', 'Aliqua Non pariatur', NULL, NULL, NULL, NULL, 1, '2022-03-21 02:16:21', '2022-03-21 02:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `designers`
--

CREATE TABLE `designers` (
  `id` int(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `designers`
--

INSERT INTO `designers` (`id`, `name`, `designation`, `contact`, `email`) VALUES
(1, 'Eddie Tan', 'Creative Director', '96642229', 'eddietan@goodmaninterior.com		'),
(2, 'Dawn Tan', 'Business Development', '96646661', 'dawntan@goodmaninterior.com		'),
(3, 'Deon Kang', 'Creative Manager', '93679367', 'deonkang@goodmaninterior.com		'),
(4, 'Darren Toh	', 'Senior Creative Designer', '97962800', 'darrentoh@goodmaninterior.com		'),
(5, 'Samsol Idris', 'Senior Creative Designer', '96155971', 'samsol@goodmaninterior.com		'),
(6, 'Sean Chiang', 'Creative Designer', '87939441', 'seanchiang@goodmaninterior.com		'),
(7, 'Nicklus Lim', 'Creative Designer', '82001504', 'lim.zhiho@goodmaninterior.com		'),
(8, 'Jayden Teo', 'Creative Designer', '88669974', 'jaydenteo@goodmaninterior.com		'),
(9, 'Nick Khoo', 'Creative Designer', '87198414', 'nickkhoo@goodmaninterior.com		'),
(10, 'Inez Goh', 'Creative Designer', '94571348', 'inezgoh@goodmaninterior.com		'),
(11, 'Natalie Ooi', 'Creative Designer', '97931101', 'natalieooi@goodmaninterior.com	');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int(20) DEFAULT NULL,
  `user_id` int(20) NOT NULL,
  `designation_id` int(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `mobile`, `password`, `image`, `vendor_id`, `user_id`, `designation_id`, `created_at`, `updated_at`) VALUES
(2, 'Ram', 'ram@gmail.com', '88', '$2y$10$5NMDny3pe5cruT..OCeq8uwSpyP84BgzzkqzdeJ/2Su9mx9wWi/2O', NULL, NULL, 44, 2, '2021-12-31 15:51:52', '2021-12-31 15:51:52'),
(5, 'Debasis', 'debasis@gmail.com', '888', '$2y$10$UCpR9EMVKiZibPqk5jiTOeaRdcSZo8q4hyWN0w20BiNEKYrxba/5C', NULL, NULL, 49, 1, '2022-01-31 12:10:32', '2022-02-02 16:34:13'),
(6, 'Demo', 'demp@gmail.com', '9090990909', '$2y$10$RPkaiJ/RtxqaQ8RmbSvuGeYHYCjgDDkvpkdTsvu4YuTojIs6h8Zr.', NULL, NULL, 96, 2, '2022-03-18 23:53:23', '2022-03-18 23:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `handy_connect_quotations`
--

CREATE TABLE `handy_connect_quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_unique_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `hc_cat_id` int(11) DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postalcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_registration_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_per_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` decimal(20,2) DEFAULT NULL,
  `unit_quantity` int(11) DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_price` decimal(20,2) DEFAULT NULL,
  `final_price_with_tax` decimal(20,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interior_quotation`
--

CREATE TABLE `interior_quotation` (
  `id` int(20) UNSIGNED NOT NULL,
  `customer_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_contact` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `residential_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commercial_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `list_of_work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope_of_work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designer_id` int(100) DEFAULT NULL,
  `cost_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform_fee` decimal(20,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `markup_percent` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `markup_amount` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `margin_percent` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_percent` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `net_price` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interior_quotation`
--

INSERT INTO `interior_quotation` (`id`, `customer_name`, `customer_contact`, `date`, `company_name`, `company_address`, `company_country`, `company_state`, `company_zip`, `company_email`, `company_mobile`, `service_type`, `residential_value`, `commercial_value`, `list_of_work`, `scope_of_work`, `designer_id`, `cost_price`, `uom`, `tax`, `platform_fee`, `created_at`, `updated_at`, `markup_percent`, `markup_amount`, `margin_percent`, `discount_percent`, `net_price`) VALUES
(62, NULL, NULL, '03-15-2022', 'Q-GI-1647340939', NULL, NULL, NULL, NULL, NULL, NULL, 'Club / Pub', NULL, NULL, '2', '13,14,15', 1, ',,', ',,', NULL, NULL, NULL, NULL, ',,', ',,', ',,', ',,', NULL),
(63, NULL, NULL, '03-15-2022', 'Q-GI-1647342553', NULL, NULL, NULL, NULL, NULL, NULL, 'Club / Pub', NULL, NULL, '2', '15,24,25', 1, ',,,,', ',,,,', NULL, NULL, NULL, NULL, ',,,,', ',,,,', ',,,,', ',,,,', NULL),
(64, NULL, NULL, '03-15-2022', 'Q-GI-1647342565', NULL, NULL, NULL, NULL, NULL, NULL, 'Club / Pub', NULL, NULL, '2', '15,22,23,24', 1, ',,,,,,,,,,,', ',,,,,,,,,,,', NULL, NULL, NULL, NULL, ',,,,,,,,,,,', ',,,,,,,,,,,', ',,,,,,,,,,,', ',,,,,,,,,,,', NULL),
(65, NULL, NULL, '03-15-2022', 'Q-GI-2022 03 15', NULL, NULL, NULL, NULL, NULL, NULL, 'Resturant/ Care', NULL, NULL, '3', '27,28,29', 1, ',,', ',,', NULL, NULL, NULL, NULL, ',,', ',,', ',,', ',,', NULL),
(66, NULL, NULL, '03-15-2022', 'Q-GI-2022 03 15', NULL, NULL, NULL, NULL, NULL, NULL, 'Resturant/ Care', NULL, NULL, '3', '27,28,29,30', 1, ',,,', ',,,', NULL, NULL, NULL, NULL, ',,,', ',,,', ',,,', ',,,', NULL),
(67, NULL, NULL, '03-16-2022', 'Q-GI-2022 03 16', NULL, NULL, NULL, NULL, NULL, NULL, 'Resturant/ Care', NULL, NULL, '7', '40,41,42', 1, ',,', ',,', NULL, NULL, NULL, NULL, ',,', ',,', ',,', ',,', NULL),
(68, NULL, NULL, '03-16-2022', 'Q-GI-2022 03 16', NULL, NULL, NULL, NULL, NULL, NULL, 'Resturant/ Care', NULL, NULL, '7', '41,42,43', 1, ',,,,,,,,', ',,,,,,,,', NULL, NULL, NULL, NULL, ',,,,,,,,', ',,,,,,,,', ',,,,,,,,', ',,,,,,,,', NULL),
(69, NULL, NULL, '03-16-2022', 'Q-GI-2022 03 16', NULL, NULL, NULL, NULL, NULL, NULL, 'Resturant/ Care', NULL, NULL, '18', '81,82,83', 1, ',,', ',,', NULL, NULL, NULL, NULL, ',,', ',,', ',,', ',,', NULL),
(70, NULL, NULL, '03-16-2022', 'Q-GI-2022 03 16', NULL, NULL, NULL, NULL, NULL, NULL, 'Others', NULL, NULL, '2', '15,16,17', 1, ',,', ',,', NULL, NULL, NULL, NULL, ',,', ',,', ',,', ',,', NULL),
(71, NULL, NULL, '03-16-2022', 'Q-GI-2022 03 16', NULL, NULL, NULL, NULL, NULL, NULL, 'Clinic', NULL, NULL, '4', '31,32,33', 1, ',,', ',,', NULL, NULL, NULL, NULL, ',,', ',,', ',,', ',,', NULL),
(72, 'Audrey Nunez', '26', '03-17-2022', 'Q-GC-2022 03 17', 'Fugiat nulla odio m', 'Suscipit quia commod', 'Asperiores dolores v', '42361', 'wonypepuso@mailinator.com', 'Rerum nesciunt ea e', 'Pte Condo/Apartment', NULL, NULL, '5', '36', 1, '21', '22', NULL, NULL, NULL, NULL, '', '', '', '1', '784');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(50) NOT NULL,
  `office_address` varchar(250) DEFAULT NULL,
  `office_contact` varchar(250) DEFAULT NULL,
  `office_email` varchar(250) DEFAULT NULL,
  `residential` varchar(250) DEFAULT NULL,
  `commercial` varchar(250) DEFAULT NULL,
  `postalcode` varchar(250) DEFAULT NULL,
  `type_of_work` varchar(250) DEFAULT NULL,
  `scope_of_work` varchar(250) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `customer_name` varchar(250) DEFAULT NULL,
  `customer_phone` varchar(250) DEFAULT NULL,
  `customer_address` varchar(250) DEFAULT NULL,
  `customer_signature` varchar(250) DEFAULT NULL,
  `contract_no` varchar(250) DEFAULT NULL,
  `payment_terms` varchar(250) DEFAULT NULL,
  `quotation` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `office_address`, `office_contact`, `office_email`, `residential`, `commercial`, `postalcode`, `type_of_work`, `scope_of_work`, `date`, `customer_name`, `customer_phone`, `customer_address`, `customer_signature`, `contract_no`, `payment_terms`, `quotation`) VALUES
(11, NULL, NULL, NULL, '1', '1', NULL, '1', '1', '2022-03-07 01:38:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'showroom', 'telo', 'email', NULL, NULL, 'postal code', 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:39:36', 'customer Name', '123456789', 'address', 'customer signature', NULL, NULL, NULL),
(13, NULL, NULL, NULL, '1', '1', NULL, '1', '1', '2022-03-07 01:51:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, '1', '1', NULL, '1', '1', '2022-03-07 01:54:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, '1', '1', NULL, '1', '1', '2022-03-07 01:56:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, '1', '1', NULL, '1', '1', '2022-03-07 01:58:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, '1', '1', NULL, '1', '1', '2022-03-07 01:58:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, '1', '1', NULL, '1', NULL, '2022-03-07 02:03:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, '1', '1', NULL, '1', NULL, '2022-03-07 02:07:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, '4', '1', NULL, '1', '5', '2022-03-07 02:26:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, '1', '1', NULL, '4', '31', '2022-03-07 02:31:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, '6', '1', NULL, '10', '63', '2022-03-07 02:32:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, NULL, NULL, '6', '1', NULL, '10', '63', '2022-03-07 02:34:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, '3', '1', NULL, '10', NULL, '2022-03-07 02:34:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, NULL, NULL, '3', '1', NULL, '10', NULL, '2022-03-07 02:39:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, NULL, NULL, NULL, '1', '2', NULL, '1', NULL, '2022-03-07 02:39:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, '1', '7', NULL, '1', NULL, '2022-03-07 02:41:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, '1', '1', NULL, '2', '13', '2022-03-07 02:42:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, NULL, NULL, NULL, '1', '1', NULL, '2', '13', '2022-03-07 02:43:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, NULL, NULL, NULL, '1', '1', NULL, '2', '13', '2022-03-07 10:18:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, NULL, NULL, NULL, '5', '1', NULL, '2', NULL, '2022-03-07 10:20:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, NULL, NULL, NULL, '5', '1', NULL, '2', NULL, '2022-03-07 10:25:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, NULL, NULL, NULL, '5', '1', NULL, '2', NULL, '2022-03-07 10:25:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, NULL, NULL, NULL, '5', '1', NULL, '2', NULL, '2022-03-07 10:25:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, NULL, NULL, NULL, '5', '1', NULL, '2', NULL, '2022-03-07 10:26:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, NULL, NULL, NULL, '1', '1', NULL, '8', '56', '2022-03-07 13:20:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, NULL, NULL, '1', '1', NULL, '8', '56', '2022-03-07 13:22:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, NULL, NULL, NULL, '1', '1', NULL, '8', '56', '2022-03-07 13:52:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, NULL, NULL, '1', '1', NULL, '1', NULL, '2022-03-07 14:01:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, NULL, NULL, '1', '1', NULL, '1', NULL, '2022-03-07 14:08:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, NULL, NULL, '1', '1', NULL, '1', NULL, '2022-03-07 14:33:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, NULL, NULL, NULL, '1', '1', NULL, '1', NULL, '2022-03-07 14:38:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, NULL, NULL, NULL, '1', '1', NULL, '13', '78', '2022-03-07 14:39:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, NULL, NULL, NULL, '1', '1', NULL, '1', NULL, '2022-03-07 15:43:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, NULL, NULL, NULL, '1', '1', NULL, '1', NULL, '2022-03-07 15:43:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, NULL, NULL, NULL, '2', '1', NULL, '9', '60', '2022-03-07 15:44:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, NULL, NULL, NULL, '2', '1', NULL, '9', '60', '2022-03-07 16:03:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, NULL, NULL, NULL, '2', '1', NULL, '9', '60', '2022-03-07 16:04:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, NULL, NULL, NULL, '5', '1', NULL, '6', '39', '2022-03-07 16:05:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, NULL, NULL, NULL, '1', '5', NULL, '11', '70', '2022-03-07 18:52:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, NULL, NULL, NULL, '1', '3', NULL, '7', '40', '2022-03-07 19:03:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, NULL, NULL, NULL, '1', '1', NULL, '4', '31', '2022-03-10 13:14:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, NULL, NULL, NULL, '1', '1', NULL, '4', '31', '2022-03-10 13:17:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, NULL, NULL, NULL, '1', '1', NULL, '\"15\"', '7', '2022-03-10 17:06:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, NULL, NULL, NULL, '1', '1', NULL, '6', '13', '2022-03-10 17:07:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, NULL, NULL, NULL, '1', '1', NULL, '6', '13', '2022-03-10 17:07:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, NULL, NULL, NULL, '1', '1', NULL, '6', '13', '2022-03-10 17:09:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, NULL, NULL, NULL, '4', '1', NULL, '6', '1', '2022-03-10 17:13:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, '2022-03-11 10:58:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, NULL, NULL, NULL, '1', '1', NULL, '10', '63', '2022-03-11 11:35:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, '2022-03-11 11:38:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, '2022-03-11 11:42:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, NULL, NULL, NULL, '1', '1', NULL, '10', '63', '2022-03-11 12:02:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, NULL, NULL, NULL, '1', '1', NULL, '13', '78', '2022-03-11 12:35:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, NULL, NULL, NULL, '1', '1', NULL, '11', '70', '2022-03-11 19:36:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, NULL, NULL, NULL, '1', '1', NULL, '1', NULL, '2022-03-12 11:01:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, NULL, NULL, NULL, '1', '1', NULL, '6', '37', '2022-03-12 14:47:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, NULL, NULL, NULL, '1', '1', NULL, '6', '37', '2022-03-12 14:56:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, NULL, NULL, NULL, '1', '1', NULL, '6', '37', '2022-03-12 14:58:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, NULL, NULL, NULL, '1', '1', NULL, '6', '37', '2022-03-12 15:15:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, NULL, NULL, NULL, '1', '1', NULL, '5', '36', '2022-03-12 15:53:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, NULL, NULL, NULL, '1', '5', NULL, '12', '75', '2022-03-14 10:41:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, NULL, NULL, NULL, '1', '1', NULL, '1', NULL, '2022-03-14 13:42:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, NULL, NULL, NULL, '1', '1', NULL, '1', NULL, '2022-03-14 13:45:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, NULL, NULL, NULL, '1', '1', NULL, '12', NULL, '2022-03-17 10:48:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_commercial`
--

CREATE TABLE `invoice_commercial` (
  `id` int(50) NOT NULL,
  `office_address` varchar(250) DEFAULT NULL,
  `office_contact` varchar(250) DEFAULT NULL,
  `office_email` varchar(250) DEFAULT NULL,
  `residential` varchar(250) DEFAULT NULL,
  `commercial` varchar(250) DEFAULT NULL,
  `postalcode` varchar(250) DEFAULT NULL,
  `type_of_work` varchar(250) DEFAULT NULL,
  `scope_of_work` varchar(250) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `customer_name` varchar(250) DEFAULT NULL,
  `customer_phone` varchar(250) DEFAULT NULL,
  `customer_address` varchar(250) DEFAULT NULL,
  `customer_signature` varchar(250) DEFAULT NULL,
  `contract_no` varchar(250) DEFAULT NULL,
  `payment_terms` varchar(250) DEFAULT NULL,
  `quotation` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_residential`
--

CREATE TABLE `invoice_residential` (
  `id` int(50) NOT NULL,
  `office_address` varchar(250) DEFAULT NULL,
  `office_contact` varchar(250) DEFAULT NULL,
  `office_email` varchar(250) DEFAULT NULL,
  `residential` varchar(250) DEFAULT NULL,
  `commercial` varchar(250) DEFAULT NULL,
  `postalcode` varchar(250) DEFAULT NULL,
  `type_of_work` varchar(250) DEFAULT NULL,
  `scope_of_work` varchar(250) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `customer_name` varchar(250) DEFAULT NULL,
  `customer_phone` varchar(250) DEFAULT NULL,
  `customer_address` varchar(250) DEFAULT NULL,
  `customer_signature` varchar(250) DEFAULT NULL,
  `contract_no` varchar(250) DEFAULT NULL,
  `payment_terms` varchar(250) DEFAULT NULL,
  `quotation` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_residential`
--

INSERT INTO `invoice_residential` (`id`, `office_address`, `office_contact`, `office_email`, `residential`, `commercial`, `postalcode`, `type_of_work`, `scope_of_work`, `date`, `customer_name`, `customer_phone`, `customer_address`, `customer_signature`, `contract_no`, `payment_terms`, `quotation`) VALUES
(1, 'showroom', 'telo', 'email', NULL, NULL, 'postal code', 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:42:52', 'customer Name', '123456789', 'address', 'customer signature', NULL, NULL, NULL),
(2, 'showroom', 'telo', 'email', NULL, NULL, 'postal code', 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:43:55', 'customer Name', '123456789', 'address', 'customer signature', 'contract no', NULL, NULL),
(3, 'showroom', 'telo', 'email', NULL, NULL, 'postal code', 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:44:26', 'customer Name', '123456789', 'address', 'customer signature', 'contract no', 'payment terms', NULL),
(4, 'showroom', 'telo', 'email', NULL, NULL, 'postal code', 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:49:33', 'customer Name', '123456789', 'address', 'customer signature', 'contract no', 'payment terms', NULL),
(5, 'showroom', 'telo', 'email', NULL, NULL, 'postal code', 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:50:05', 'customer Name', '123456789', 'address', 'customer signature', 'contract no', 'payment terms', NULL),
(6, 'showroom', 'telo', 'email', NULL, NULL, 'postal code', 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:50:57', 'customer Name', '123456789', 'address', 'customer signature', 'contract no', 'payment terms', NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:51:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:52:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:52:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:52:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:53:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:54:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:54:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:55:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL, NULL, NULL, 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:56:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL, NULL, NULL, 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:56:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL, NULL, NULL, 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:58:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL, NULL, NULL, 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:58:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL, NULL, NULL, 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:58:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL, NULL, NULL, 'Hacking and Demolition Works', 'To supply labour & tools to hack away existing  $100', '2022-03-07 01:58:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_positions`
--

CREATE TABLE `job_positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_positions`
--

INSERT INTO `job_positions` (`id`, `job_name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Sales Person', 1, '2021-12-30 15:40:20', '2021-12-30 15:40:20'),
(2, 'Field Verification', 1, '2021-12-31 15:51:33', '2021-12-31 15:51:33');

-- --------------------------------------------------------

--
-- Table structure for table `list_of_works`
--

CREATE TABLE `list_of_works` (
  `id` int(2) NOT NULL,
  `work_name` varchar(250) DEFAULT NULL,
  `scope_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `list_of_works`
--

INSERT INTO `list_of_works` (`id`, `work_name`, `scope_id`) VALUES
(1, '	Hacking and Demolition Works', 1),
(2, '	Masonry Works (Cost of tiles cap @ $4.00 per square foot)	', 2),
(3, '	Plumbing Works', 3),
(4, '	Flooring Works	', 4),
(5, '	Plastering Work	', 5),
(6, '	Ceiling Works	', 6),
(7, '	Carpentry Works	', 7),
(8, '	Work Top	', 8),
(9, '	Glass Works	', 9),
(10, '	Aluminium Works', 10),
(11, '	Wooden Door And Gate', 11),
(12, '	Bathroom Door', 12),
(13, '	Roofing Works', 13),
(14, '	Aircon Works', 14),
(15, '	Electrical Works', 15),
(16, '	Any Other Works (Open Field for Designers to Type in Other Works)', 16),
(17, '	Optional Works	', 17),
(18, '	Miscellaneous Works	', 18);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_04_044745_create_permission_tables', 1),
(6, '2021_12_15_054051_create_customers_table', 2),
(7, '2021_12_16_053736_create_companies_table', 3),
(8, '2021_12_16_093343_create_categories_table', 4),
(9, '2021_12_16_135847_create_unit_of_measures_table', 5),
(10, '2021_12_17_050348_create_taxes_table', 6),
(11, '2021_12_17_053229_create_services_table', 7),
(12, '2021_12_18_061650_create_vendors_table', 8),
(13, '2021_12_21_081903_create_employees_table', 9),
(14, '2021_12_22_124331_create_admin_crms_table', 10),
(15, '2021_12_27_051939_create_admin_crm_services_table', 11),
(16, '2021_12_28_051050_create_vendor_crms_table', 12),
(18, '2021_12_30_070822_create_job_positions_table', 13),
(19, '2022_01_28_114720_create_quotations_table', 14),
(20, '2016_06_01_000001_create_oauth_auth_codes_table', 15),
(21, '2016_06_01_000002_create_oauth_access_tokens_table', 15),
(22, '2016_06_01_000003_create_oauth_refresh_tokens_table', 15),
(23, '2016_06_01_000004_create_oauth_clients_table', 15),
(24, '2016_06_01_000005_create_oauth_personal_access_clients_table', 15),
(26, '2022_03_11_044422_create_handy_connect_quotations_table', 16),
(27, '2022_03_11_115823_create_hc__categories_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 27),
(2, 'App\\Models\\User', 26),
(2, 'App\\Models\\User', 28),
(2, 'App\\Models\\User', 29),
(2, 'App\\Models\\User', 30),
(2, 'App\\Models\\User', 45),
(2, 'App\\Models\\User', 46),
(2, 'App\\Models\\User', 95),
(2, 'App\\Models\\User', 96),
(3, 'App\\Models\\User', 49);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0fb9ec87839ab534faaf810d1c70f81bf8aa27a699d58442ca2fd2c8192c9472c28da4d119862ecf', 83, 3, 'MyApp', '[]', 0, '2022-03-07 07:22:21', '2022-03-07 07:22:21', '2023-03-07 12:52:21'),
('119fe27295e431bb2439c59824af43a7722dbbe3631de5879ee472947e3fd62c4a1d1bba9a7cc6ca', 89, 3, 'myApp', '[]', 0, '2022-03-08 04:30:12', '2022-03-08 04:30:12', '2023-03-08 10:00:12'),
('184eddaa8ab5f0724fd9c5ccec32ffe896068c613f143a9e83c9ad7e16adf167b9efd71d08e39d9a', 90, 3, 'myApp', '[]', 0, '2022-03-08 04:54:40', '2022-03-08 04:54:40', '2023-03-08 10:24:40'),
('188c54e65b6cf2ac4b9c03e457f26695c4b288a88e024130225b6787c040c1025231a75ab7bf98a9', 88, 3, 'myApp', '[]', 0, '2022-03-08 01:00:00', '2022-03-08 01:00:00', '2023-03-08 06:30:00'),
('25a68f8211db758a81abe5be82f5c4ffb9d8458348c01e9cd55f9ccc61c997524207e9e562969e50', 84, 3, 'MyApp', '[]', 0, '2022-03-08 00:20:26', '2022-03-08 00:20:26', '2023-03-08 05:50:26'),
('2924bf720383607e05d2b4f0e015c66649bd0cdb3f5d8b56265bedaf6d7b94f3c4d24802d6d438e4', 86, 3, 'myApp', '[]', 0, '2022-03-07 23:51:07', '2022-03-07 23:51:07', '2023-03-08 05:21:07'),
('34b558f540b3171e69c1219972de4251d2e69b4b08fe57415bfe55536ac45f9d07963270adf1b0d9', 84, 3, 'myApp', '[]', 0, '2022-03-07 23:10:45', '2022-03-07 23:10:45', '2023-03-08 04:40:45'),
('427fe10f28baa135c226a2be0a79e5e08b09232040703967e33943d44be80412bada3f753b0fe3f6', 92, 3, 'MyApp', '[]', 0, '2022-03-08 05:42:04', '2022-03-08 05:42:04', '2023-03-08 11:12:04'),
('446db795e4f44f02482c0920b7e6d7f2ed085c2a70ed964d054fd1a6a24b72e16a68b7f1a3ccfd5b', 83, 3, 'myApp', '[]', 0, '2022-03-07 07:02:36', '2022-03-07 07:02:36', '2023-03-07 12:32:36'),
('4c1241c96c7016905f8bd00804122f59dce2abc27588ae8ebf83097ca6fbf9c9bf4ccee2882461ac', 82, 3, 'MyApp', '[]', 0, '2022-03-07 06:30:44', '2022-03-07 06:30:44', '2023-03-07 12:00:44'),
('62062612b146faf33c1aba0134de931866467db13530df4cb7f4271829b97d9097164efef141eab6', 76, 1, 'MyApp', '[]', 0, '2022-03-07 02:27:12', '2022-03-07 02:27:12', '2023-03-07 07:57:12'),
('67a377075802d4b43d04412958cd5d048227b1d9ee7272202e530c11972e575017cc66588ee6a012', 87, 3, 'myApp', '[]', 0, '2022-03-08 00:01:52', '2022-03-08 00:01:52', '2023-03-08 05:31:52'),
('6add598669e427d0852c8bba807a0c788ce1f183f05619af3703cab592b4c20a41bc109303d5e8dc', 79, 1, 'MyApp', '[]', 0, '2022-03-07 02:28:36', '2022-03-07 02:28:36', '2023-03-07 07:58:36'),
('729947612885b4e0d501330fc50c207489f07e16e38013ed3bd2cc707aa8e5f2afc02860d3f6f4b0', 76, 1, 'MyApp', '[]', 0, '2022-03-07 02:28:09', '2022-03-07 02:28:09', '2023-03-07 07:58:09'),
('7331ee0ec3279542ea4e6fec006850649d6fe0624c256c890e6a9692904cd2c2f1d9d58ac94af10e', 79, 1, 'myApp', '[]', 0, '2022-03-07 02:26:36', '2022-03-07 02:26:36', '2023-03-07 07:56:36'),
('7bc31ff2aea300fc8b2897a31f4771329ba3592c2ca3f1b9ac27ecef236f9d39947514c464edbe1b', 81, 3, 'myApp', '[]', 0, '2022-03-07 06:26:23', '2022-03-07 06:26:23', '2023-03-07 11:56:23'),
('9a6b533ab98d0f8b78d1ed8e5fde84505e5b3af10b184548f98b355d406f2023f9d4ef0aeea95c83', 88, 3, 'MyApp', '[]', 0, '2022-03-08 01:00:56', '2022-03-08 01:00:56', '2023-03-08 06:30:56'),
('a55868f00c6493592ce4d0eb6e0589afc14d0a72b20338d87c22dd4d3709fda65fe0a3e1f2873f92', 94, 3, 'myApp', '[]', 0, '2022-03-09 01:55:55', '2022-03-09 01:55:55', '2023-03-09 07:25:55'),
('a581252cc67b960401c80c9bb6083ce7dfdc222d39460c52ce10c2a4638c1b7a383cf81ae4dca8c7', 83, 3, 'MyApp', '[]', 0, '2022-03-07 07:21:06', '2022-03-07 07:21:06', '2023-03-07 12:51:06'),
('b29b4a65a14d60b1a9b20a9a9b893e1a0dcd75797ddced2763305eabba76d5b1ead51b00e167c7ee', 92, 3, 'myApp', '[]', 0, '2022-03-08 05:30:27', '2022-03-08 05:30:27', '2023-03-08 11:00:27'),
('bf28a4b47b2bde2eebf0b7b9bae3644bdaa0639318b3b9f8478797e36ca606b9b7b1dc30f08130fe', 80, 3, 'myApp', '[]', 0, '2022-03-07 05:58:15', '2022-03-07 05:58:15', '2023-03-07 11:28:15'),
('c0977157c76f1f65a5010c42094c2e62f852813c7d595bd8ece04e013a1847a33021127498caaeb9', 83, 3, 'MyApp', '[]', 0, '2022-03-07 07:07:30', '2022-03-07 07:07:30', '2023-03-07 12:37:30'),
('c72e0eb3ba4ebd7ac023b4a8dbcdaaca78efb19f464f107348adaed72e14afe8d990c7230f4515d6', 85, 3, 'myApp', '[]', 0, '2022-03-07 23:48:01', '2022-03-07 23:48:01', '2023-03-08 05:18:01'),
('c784ef264534e76485644f58c8acd71cc90c49d536358fcfbdfbb4c5a187db0c50405a8a02e17d16', 93, 3, 'MyApp', '[]', 0, '2022-03-09 00:32:58', '2022-03-09 00:32:58', '2023-03-09 06:02:58'),
('d694feec84da849cdd31b854d705b57a39d14c5a669931958e3d7f0e542a6341d13d09aa885f9c1c', 92, 3, 'MyApp', '[]', 0, '2022-03-08 05:36:45', '2022-03-08 05:36:45', '2023-03-08 11:06:45'),
('ea31621f5273159defb8ddafc4cb5c61da7089bc53dc55e67008ef99fd4847fc7e6a428fbd191d42', 93, 3, 'myApp', '[]', 0, '2022-03-09 00:32:18', '2022-03-09 00:32:18', '2023-03-09 06:02:18'),
('f366aa7956d97619269cb4f6cc0b2156392b667397834b5bef2df5212431325db05b9d6a7afa7cb1', 91, 3, 'myApp', '[]', 0, '2022-03-08 05:01:28', '2022-03-08 05:01:28', '2023-03-08 10:31:28'),
('fb087a85fbc5f0686f2cbde631766ef7a3b53a5be0277db3650fe0b27f5d5e9b3f38f03c2a8c009c', 82, 3, 'myApp', '[]', 0, '2022-03-07 06:28:23', '2022-03-07 06:28:23', '2023-03-07 11:58:23');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'rJVZrE91Y4yc3AbURzIP1FhtLHqYh03uEJh0YUBR', NULL, 'http://localhost', 1, 0, 0, '2022-03-07 02:06:00', '2022-03-07 02:06:00'),
(2, NULL, 'Laravel Password Grant Client', 'JkeJ7GXT1IUaxRMmiIP483nHUNhNqAhq7zXLTDjL', 'users', 'http://localhost', 0, 1, 0, '2022-03-07 02:06:00', '2022-03-07 02:06:00'),
(3, NULL, 'Laravel Personal Access Client', 'Pubz1xEx7YmqbeU9AZYtgRZtZt9hmmP5uuyHg1i6', NULL, 'http://localhost', 1, 0, 0, '2022-03-07 03:22:21', '2022-03-07 03:22:21'),
(4, NULL, 'Laravel Password Grant Client', 'ArZMLUSFgdpLNLGpAidmAQxF2T5bGeMEe5747FM8', 'users', 'http://localhost', 0, 1, 0, '2022-03-07 03:22:22', '2022-03-07 03:22:22'),
(5, NULL, 'Laravel Personal Access Client', 'pSKXzof2s3ZwMryckIL8rUWNf1ShATRM4sSuvT61', NULL, 'http://localhost', 1, 0, 0, '2022-03-17 01:45:50', '2022-03-17 01:45:50'),
(6, NULL, 'Laravel Password Grant Client', '0u3ehjGSpWl1JPkfQYnCVbPaNqf6HCVvdRFt1iSp', 'users', 'http://localhost', 0, 1, 0, '2022-03-17 01:45:50', '2022-03-17 01:45:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-03-07 02:06:00', '2022-03-07 02:06:00'),
(2, 3, '2022-03-07 03:22:22', '2022-03-07 03:22:22'),
(3, 5, '2022-03-17 01:45:50', '2022-03-17 01:45:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('dhenu.vmj@gmail.com', 'TD2L78ZcErTD9RXdiV2MUPX3yOCfArlj29woiLiRmoD0fSSbccLwPUKSsfR90JeI', NULL),
('dhenu.vmj@gmail.com', 'w0A93oQv6QENPg8fVxrXMecqLESxXDvKhK6tDDVcTX3XkIFpzXJ9hzFL0Wc98MKW', NULL),
('dhenu.vmj@gmail.com', 'na93OYp9hw3IuQtowmDCqKl9tFCxsA04bBrse35OYY95BPahplq9CaCP3a6v5h9m', NULL),
('dhenu.vmj@gmail.com', 'IG0wzUYvF3RBEuCmKkdU51EooLVi8Z7Np1TN8MzwYlKTlOey7yKz0CMm7gNQxosA', NULL),
('dhenu.vmj@gmail.com', 'DZDaTOCZ1FYvQMuujhxPuF8H58hA94tPQ6Xn8nfHBePCOjweRlghuH92o9I5zd75', NULL),
('dhenu.vmj@gmail.com', 'IfwZ8lQl3XkIV4WudZTEjKLN0ZNnwQWma6uu5Q2SuPwBk77m8bxs0rR0OdpnvmSW', NULL),
('dhenu.vmj@gmail.com', 'ykooryiiEHel0dP8jRVLhUEmXqYrZ882jDCn3K8ObBao6935bbuh5pXi788rUapR', NULL),
('dhenu.vmj@gmail.com', '6i7Xk4l36IaytIsiVSmh5JOsZ4RogajOf74pkpxYvsFLEB86CLV3U1ymN4cynF1x', NULL),
('laravel8.demo@gmail.com', 'NVLwKzpYVNMxWdAmnYIYlqUchAivs0WNug8SPr6t9NpLVwHJmDDdz9VulFZFwR7q', NULL),
('laravel8.demo@gmail.com', 'xuMhR36xfSx7slpWPfJM1urEUz8LBwOESfVWob7EdDsaQGrHZF7FRE6jgtGy6HDZ', NULL),
('laravel8.demo@gmail.com', 'sw81jlAF2ny7zImtvTrQ8U5nhMtOGaqmd12HdvW3u7DsyzkzW9i59i2dQnINNhjG', NULL),
('dhenu.vmj@gmail.com', 'U5iA10AJC2eMk3VulkRBF78faKJjoccqgLXNOpmVDqjXI6FqMIbo4RstFv55LLk7', NULL),
('dhenu.vmj@gmail.com', 'spLzHUwd8C6xGr1zdIXGi2BQkYV0k1WR62LcRTVFuU2DVH9QcKWJA0T85k2bjKpD', NULL),
('dhenu.vmj@gmail.com', 'kjuzWtWEvCHgjjzaDXCT6DkBQ1crpg7IKRHgseT1FS1VSraDtDriboOvagAiWIg6', NULL),
('dhenu.vmj@gmail.com', 'u1fUjY6qZ3D5QvaxDDgOS9fS7w9sjOhsf2OUo89oOdlLa8sXpCvnKSj6b71MIcGs', NULL),
('dhenu.vmj@gmail.com', 'L3JPAmiH7SCXs2Tn2s2xpkkTDjPVMfO7Y3Co1mrLAOPLal4lPu3YrKzEr3lMXUva', NULL),
('dhenu.vmj@gmail.com', '9aVdNVBfXuX7j7vs5qqEsSHXVlydh6nwWtNpF4YkFrTLt32HO990G7wT2nverONA', NULL),
('dhenu.vmj@gmail.com', 'PkHzk4jS8X3TPpuqsyKmxeFALGbHPPA3jU2C6UlNXKpwP0KQz16F3t08Y7psOuuF', NULL),
('dhenu.vmj@gmail.com', 'fl3hjz30bgLEaR6Ltk29tIkNmAa4J9l3pfIQYtfJcGMGF8i8YgHtT61bm7LKjxXe', NULL),
('dhenu.vmj@gmail.com', 'VTnGlEmTDFma2ePDhizv0iVoCLJi05KDihobRs6Coej72VqKsLWsdxJ4G2LOV8JF', NULL),
('dhenu.vmj@gmail.com', 'pufII0Iucr7m50b7CbwIJv8XadF17ytlWvt611mrWjEYSae9AW4scg2gtBQZ1u6L', NULL),
('dhenu.vmj@gmail.com', 'C6YRpM8U7LsPJKNFk4MihfONLqMrClR0mt3DYqOvxwdA6fbOCLzcgoiJOF9fw6Ho', NULL),
('dhenu.vmj@gmail.com', 'u3IhVAWrK0wN6ktKIVOYhmvsnp6t9VAAYy6rcOzGa68FNryvxCHWSskxxQ3JdKzG', NULL),
('dhenu.vmj@gmail.com', 'BfQt8cNVgNSJBVbue1T73iYsShqt1tmYakONYcryvIj9cI3swbgKvCQbAdYbdbMK', NULL),
('dhenu.vmj@gmail.com', 'mgLmbYeCU0Z2idlEjImiZV3n39wwJToQiNWN4K4dKM8YE2Fmq3jkUXGWiV2BBJ1g', NULL),
('dhenu.vmj@gmail.com', 'h99fuYtOE0H9l0b701TABurEcDhP1vzsvit9Xjof5eWntyGDLdiTl0L0pIIRc1UK', NULL),
('dhenu.vmj@gmail.com', 'zzjJyYL1FXtyfZJbGvh0aVYQf9JxqNCEPI6H6QdTUTcWsTAwZc7vZoBwSYRc6LQI', NULL),
('dhenu.vmj@gmail.com', 'P2kLbFz2bdP0k2pgNr5thT3aVeqtF9cqZYndG5ZBp1wl5gx9V7sui6oyryQ4ee3p', NULL),
('dhenu.vmj@gmail.com', 'XMwWoZNPI1l17QMsvWyyNlXnBCkPQwhYyh2pXoI8bfgB3AGw81Er4vXDMNb5jlOU', NULL),
('dhenu.vmj@gmail.comsds', 'lNIv6fEJmfr7mW1QlqbYGNqXz3j8mCINR6hE5sf1qobIrWTFDtyiHNpBb9RffhUM', NULL),
('dhenu.vmj@gmail.comsds', 'rR0Jn2o60JIhHmp3iZZwXsGc3MGbkzciaGHQ79eqVSyPtb9Fnjh3ZC5oTSEVeiGT', NULL),
('dhenu.vmj@gmail.comsds', 'lC4K6wze4XCYdyHFRwsAMmqiWV4RASFOlploYaCqDVGh1s1HJHc9EKm6IqxIpYNi', NULL),
('dhenu.vmj@gmail.comsds', 'ilh8fjmmVTgQQL5d6gjgmNldmUmVesxnOvbxrJv65Wj72zEA3UNNbaRCiiKvG5SF', NULL),
('dhenu.vmj@gmail.com', 'eXVQLU2Qby1NuQGy201x8N558Xsn6hFgMimXBzEiEPHs61GgAVRNcfuEvCvqhlej', NULL),
('dhenu.vmj@gmail.com', 'm2wz1swjSoi8KtSEfZyE1j2RtwYtKE18PNaQqMhgo4i5kbu6fTnS1k3NMEiT6RAO', NULL),
('dhenu.vmj@gmail.com', '971Ta7854y4YwegmQmKiuZOCfXwwzIGMhn9elDJyUNNpobl1UPFZWUBNfoxrgXoU', NULL),
('dhenu.vmj@gmail.com', '7JXNrKAo1Abwgcj7uwOgRniHhBZP8ogYnTgIbwkGmpKHGqUAJ2gbSArE5T4xwJHE', NULL),
('dhenu.vmj@gmail.com', 'FyhsBSXlwWpjHsi8prSK4IMAZJaXVVYquA6tlRdwxT8rQKOynv3K1nawEtqLVojr', NULL),
('dhenu.vmj@gmail.com', '9pAAGe9C8aDC3tsG3a6nXJfST4LASNtFylnKBCcRPnZ7hClfMJzBDCUuwDxbdeom', NULL),
('dhenu.vmj@gmail.comaaa', 'DNyMJEnTKjEuT5HKx1Tjrm57zw0IIQHjx5gzq0EELpOhDRv01ZMTrnH6yWWKOEwY', NULL),
('dhenu.vmj@gmail.comaaa', 'lKtVjxDmvwRY6bS4K9Hz15o0XjaAmJzImugLs3X2ALL8U37EcWQyKW4oKBqzUdEe', NULL),
('dhenu.vmj@gmail.comaaa', 'tFSTDXqfOqYYh4abaDMoBNkRlqfjbod8hoxhmXDguW0tFmVYKW7FTNwCRqdokhGZ', NULL),
('laravel8.demo@gmail.com', 'GIc8R8BcJHsZn6o3NGNtBcH4MYW8NJSMHZtiU8JsYd05cdpK3OYcwPVJvQmMAnXA', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user.view', 'web', '2021-12-06 21:52:39', '2021-12-06 21:52:39'),
(2, 'user.add', 'web', '2021-12-06 21:52:45', '2021-12-06 21:52:45'),
(3, 'user.edit', 'web', '2021-12-06 21:52:48', '2021-12-06 21:52:48'),
(4, 'user.delete', 'web', '2021-12-06 21:52:51', '2021-12-06 21:52:51'),
(5, 'role.view', 'web', '2021-12-07 17:12:44', '2021-12-07 17:12:44'),
(6, 'role.add', 'web', '2021-12-07 17:12:48', '2021-12-07 17:12:48'),
(7, 'role.edit', 'web', '2021-12-07 17:12:53', '2021-12-07 17:12:53'),
(8, 'role.delete', 'web', '2021-12-07 17:12:58', '2021-12-07 17:12:58'),
(9, 'customer.view', 'web', '2021-12-15 19:06:48', '2021-12-15 19:06:48'),
(10, 'customer.add', 'web', '2021-12-15 19:06:53', '2021-12-15 19:06:53'),
(11, 'customer.edit', 'web', '2021-12-15 19:06:58', '2021-12-15 19:06:58'),
(12, 'customer.delete', 'web', '2021-12-15 19:07:02', '2021-12-15 19:07:02'),
(13, 'company.view', 'web', '2021-12-18 13:33:23', '2021-12-18 13:33:23'),
(14, 'company.add', 'web', '2021-12-18 13:33:28', '2021-12-18 13:33:28'),
(15, 'company.edit', 'web', '2021-12-18 13:33:33', '2021-12-18 13:33:33'),
(16, 'company.delete', 'web', '2021-12-18 13:33:37', '2021-12-18 13:33:37'),
(17, 'category.view', 'web', '2021-12-18 13:48:58', '2021-12-18 13:48:58'),
(18, 'category.add', 'web', '2021-12-18 13:49:02', '2021-12-18 13:49:02'),
(19, 'category.edit', 'web', '2021-12-18 13:49:06', '2021-12-18 13:49:06'),
(20, 'category.delete', 'web', '2021-12-18 13:49:11', '2021-12-18 13:49:11'),
(21, 'service.view', 'web', '2021-12-18 13:56:03', '2021-12-18 13:56:03'),
(22, 'service.add', 'web', '2021-12-18 13:56:07', '2021-12-18 13:56:07'),
(23, 'service.edit', 'web', '2021-12-18 13:56:09', '2021-12-18 13:56:09'),
(24, 'service.delete', 'web', '2021-12-18 13:56:12', '2021-12-18 13:56:12'),
(25, 'employee.view', 'web', '2021-12-21 20:19:23', '2021-12-21 20:19:23'),
(26, 'employee.edit', 'web', '2021-12-21 20:19:27', '2021-12-21 20:19:27'),
(27, 'employee.add', 'web', '2021-12-21 20:19:32', '2021-12-21 20:19:32'),
(28, 'employee.delete', 'web', '2021-12-21 20:19:35', '2021-12-21 20:19:35'),
(29, 'admin_crm.view', 'web', '2021-12-29 12:51:35', '2021-12-29 12:51:35'),
(30, 'admin_crm.addLead', 'web', '2021-12-29 12:54:08', '2021-12-29 12:54:08'),
(31, 'admin_crm.show', 'web', '2021-12-29 12:57:52', '2021-12-29 12:57:52'),
(32, 'vendor_crm.view', 'web', '2022-01-29 12:49:13', '2022-01-29 12:49:13'),
(33, 'assign_sales_person', 'web', '2022-02-01 15:36:24', '2022-02-01 15:36:24'),
(34, 'assign_field_verification', 'web', '2022-02-01 15:38:17', '2022-02-01 15:38:17'),
(35, 'request_for_quotation', 'web', '2022-02-01 15:39:14', '2022-02-01 15:39:14'),
(36, 'create.quotation', 'web', '2022-02-01 15:40:35', '2022-02-01 15:40:35'),
(37, 'sales_person_crm.view', 'web', '2022-02-04 17:34:26', '2022-02-04 17:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_unique_id` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lead_id` int(11) NOT NULL,
  `total_price` decimal(20,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `final_price` decimal(20,2) DEFAULT NULL,
  `tax_price` decimal(20,2) NOT NULL,
  `final_price_with_tax` decimal(20,2) NOT NULL,
  `create_by` int(11) NOT NULL,
  `vendor_id` int(20) DEFAULT NULL,
  `vendor_crm_id` int(20) DEFAULT NULL,
  `approve` int(11) NOT NULL DEFAULT 0,
  `approve_date` timestamp NULL DEFAULT NULL,
  `platform_tax_type` int(11) DEFAULT NULL,
  `platform_tax` int(20) DEFAULT NULL,
  `platform_fee` decimal(20,2) DEFAULT NULL,
  `final_fee_with_platform` decimal(20,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `quotation_unique_id`, `lead_id`, `total_price`, `quantity`, `tax`, `final_price`, `tax_price`, `final_price_with_tax`, `create_by`, `vendor_id`, `vendor_crm_id`, `approve`, `approve_date`, `platform_tax_type`, `platform_tax`, `platform_fee`, `final_fee_with_platform`, `created_at`, `updated_at`) VALUES
(1, 'HCQ0000001', 1, '44.00', 2, '5', NULL, '2.20', '46.20', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-26 01:47:55', '2022-03-26 01:47:55'),
(2, 'HCQ0000002', 1, '44.00', 2, '5', NULL, '2.20', '46.20', 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-26 02:55:37', '2022-03-26 02:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `residential`
--

CREATE TABLE `residential` (
  `id` int(50) NOT NULL,
  `type_name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `residential`
--

INSERT INTO `residential` (`id`, `type_name`) VALUES
(1, 'HDB-BTO'),
(2, 'HDB - Resale'),
(3, 'Pte Condo/Apartment'),
(4, 'Landed Property'),
(5, 'Shophouse'),
(6, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `is_default`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 0, 'web', '2021-12-06 21:52:58', '2021-12-06 21:52:58'),
(2, 'Vendor', 0, 'web', '2021-12-18 16:47:35', '2021-12-18 16:47:35'),
(3, 'Sales Person', 0, 'web', '2022-01-31 11:47:21', '2022-01-31 11:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(30, 1),
(31, 1),
(32, 2),
(33, 1),
(34, 1),
(35, 1),
(35, 3),
(36, 1),
(37, 3);

-- --------------------------------------------------------

--
-- Table structure for table `scope_of_works`
--

CREATE TABLE `scope_of_works` (
  `id` int(50) NOT NULL,
  `work_description` varchar(276) DEFAULT NULL,
  `work_cost` varchar(62) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `scope_id` varchar(28) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scope_of_works`
--

INSERT INTO `scope_of_works` (`id`, `work_description`, `work_cost`, `unit`, `scope_id`) VALUES
(1, 'To supply labour & tools to hack away existing ', '10.0', 'per/sqft', '1'),
(2, 'To supply labour & tools to hack away existing wall and floor tiles at ', '10.0', 'per/sqft', '1'),
(3, 'To supply labour & tools to hack away existing built-in carpentry at ', '10.0', 'per/sqft', '1'),
(4, 'To supply labour & tools to hack away existing built-in wardrobe at ', '10.0', 'per/sqft', '1'),
(5, 'To supply labour & tools to hack away existing built-in cabinets at ', '10.0', 'per/sqft', '1'),
(6, 'To supply labour & tools to hack away existing window and window grilles at ', '10.0', 'per/sqft', '1'),
(7, 'To supply labour & tools to hack away existing wall at   / between master room and kitchen	', '10.0', 'per/sqft', '1'),
(8, 'To supply labour & tools to hack away existing wall and floor tiles at kitchen area ', '10.0', 'per/sqft', '1'),
(9, 'To supply labour & tools to hack away existing kitchen work top  kitchen cabinets  hood  hob  kitchen sink  tap and basin outside common bathroom ', '10.0', 'per/sqft', '1'),
(10, 'To supply labour & tools to hack away existing sanitary fittings and accessories at 02 x bathrooms including doors and door frames ', '10.0', 'per/sqft', '1'),
(11, 'To supply labour & tools to hack away existing wall and floor tiles at 02 x bathrooms', '10.0', 'per/sqft', '1'),
(12, 'To supply labour & tools to hack away existing aluminium sliding door at balcony area ', '10.0', 'per/sqft', '1'),
(13, 'To supply labour & material to make good affected area at', '4.0', 'per/sqft', '2'),
(14, 'To supply labour & material to lay/overlay new non-slip homogeneous floor tiles at', '4.0', 'per/sqft', '2'),
(15, 'To supply labour & material to lay/overlay new homogeneous wall tiles at', '4.0', 'per/sqft', '2'),
(16, 'To supply labour & material to lay 3-in-1 waterproof membrane at ', '4.0', 'per/sqft', '2'),
(17, 'To supply labour & material to construct a new kerb at', '4.0', 'per/sqft', '2'),
(18, 'To supply labour & material to construct new full/half height hollow/celcon block wall at', '4.0', 'per/sqft', '2'),
(19, 'To supply labour & material to construct new kitchen concrete base with tiles skirting finish', '4.0', 'per/sqft', '2'),
(20, 'To supply labour & material to lay/overlay new homogeneous wall tiles at kitchen (exposed area only)', '4.0', 'per/sqft', '2'),
(21, 'To supply labour & material to lay 3-in-1 waterproof membrane at kitchen', '4.0', 'per/liter', '2'),
(22, 'To supply labour & material to lay/overlay new non-slip homogeneous floor tiles at kitchen', '4.0', 'per/sqft', '2'),
(23, 'To supply labour & material to construct kitchen cabinet base with side tiling', '4.0', 'per/sqft', '2'),
(24, 'To supply labour & material to lay 3-in-1 waterproof membrane at 02 x bathrooms', '4.0', 'per/sqft', '2'),
(25, 'To supply labour & material to lay/overlay new homogeneous wall tiles at 02 x bathrooms', '4.0', 'per/meter', '2'),
(26, 'To supply labour & material to lay new non-slip homogeneous floor tiles at 02 x bathrooms', '4.0', 'per/sqft', '2'),
(27, 'To supply labour & tools to', '3.0', 'per/meter', '3'),
(28, 'To supply labour & material to lay new stainless steel water inlet piping and PVC outlet piping', '3.0', 'per/meter', '3'),
(29, 'at 02 x bathroom and kitchen including main inlet piping', '3.0', 'per/meter', '3'),
(30, 'To supply labour & tools to install all sanitary fittings and accessories at 02 x bathrooms and kitchen', '3.0', 'per/meter', '3'),
(31, 'To supply labour & material to', '2.0', 'per/sqft', '4'),
(32, 'To supply labour & material to lay self-leveling screed for entire unit except 02 X bathrooms and kitchen floor (est. XXX sqft)', '2.0', 'per/sqft', '4'),
(33, 'To supply labour & material to overlay new vinyl flooring with skirting at living  dining store balcony and 03 x bedrooms (est. XXX sqft ). Made in Korea.', '2.0', 'per/sqft', '4'),
(34, 'balcony and 03 x bedrooms (est. XXX sqft ). Made in Korea.', '2.0', 'per/sqft', '4'),
(35, 'To supply labour & tools to polish existing marble flooring at ', '2.0', 'per/sqft', '4'),
(36, 'To supply labour and material to plaster smooth the entire unit wall and ceiling using easi plaster', '6.0', 'per/sqft', '5'),
(37, 'To supply labour & material to construct false ceiling at', '', '50', '6'),
(39, 'L-box false ceiling with cove light holder at living room', '', '50', '6'),
(40, 'To design fabricate & install a ', '7.0', 'per/sqft', '7'),
(41, 'To supply labour & material to replace ', '7.0', 'per/sqft', '7'),
(42, 'To design fabricate & install a L 1500mm of full height shoe cabinet using solid plywood in laminated finish with soft closing mechanism and colour pvc interior at foyer ', '7.0', 'per/sqft', '7'),
(43, 'To design fabricate & install a L 2250mm of full height TV feature using solid plywood in laminated finish with colour pvc interior at living room ', '7.0', 'per/sqft', '7'),
(44, 'To design fabricate & install a L 3000mm of sliding door wardrobe using solid plywood in laminated finish with soft closing mechanism and colour pvc interior at master bedroom ', '7.0', 'per/sqft', '7'),
(45, 'To design fabricate & install a L 2250mm of sliding door wardrobe using solid plywood in laminated finish with soft closing mechanism and colour pvc interior at bedroom 2 ', '7.0', 'per/sqft', '7'),
(46, 'To design fabricate & install a L 1500mm of sliding door wardrobe using solid plywood in laminated finish with soft closing mechanism and colour pvc interior at bedroom 3 ', '7.0', 'per/sqft', '7'),
(47, 'To design fabricate & install total L 8400mm of top and bottom kitchen cabinet using solid plywood in laminated finish with soft closing mechanism and colour pvc interior at left kitchen wall as proposed (Inclusive of Excel 304 dish rack and Aventos HK Blum stay lift system) ', '7.0', 'per/sqft', '7'),
(48, 'wall as proposed (Inclusive of Excel 304 dish rack and Aventos HK Blum stay lift system) ', '7.0', 'per/sqft', '7'),
(49, 'To design fabricate & install total L 3750mm of top and bottom kitchen cabinet using solid plywood in laminated finish with soft closing mechanism and colour pvc interior at right kitchen ', '7.0', 'per/sqft', '7'),
(50, 'wall as proposed (L 900mm of top cabinet above fridge', '7.0', 'per/sqft', '7'),
(51, 'To design fabricate & install a L 600mm of suspended vanity cabinet using solid plywood in laminated finish with soft closing mechanism and colour pvc interior at master bathroom ', '7.0', 'per/sqft', '7'),
(52, 'To design fabricate & install a L 600mm of top hung mirror cabinet using solid plywood in laminated finish with soft closing mechanism and colour pvc interior at master bathroom ', '7.0', 'per/sqft', '7'),
(53, 'To design fabricate & install a L 2300mm of full height casement storage cabinet using solid plywood in laminated finish with soft closing mechanism and colour pvc interior at dining room  ', '7.0', 'per/sqft', '7'),
(54, 'To supply labour & material to replace total 04 x DB door using solid plywood in laminated finish with white PVC interior ', '7.0', 'per/sqft', '7'),
(56, 'To supply labour & material to fabricate and install', '3.0', 'per/sqft', '8'),
(57, 'To supply labour & material to fabricate and install a total L 6900mm of selected quartz as kitchen cabinet work top at kitchen', '3.0', 'per/sqft', '8'),
(59, 'To supply labour & material to fabricate and install', '9.0', 'per/sqft', '9'),
(60, 'To supply labour & material to fabricate and install 02 nos of 10mm clear tempered glass sliding door with aluminium pelmet at', '9.0', 'per/sqft', '9'),
(61, 'To supply labour & material to fabricate and install 01 no of 10mm clear tempered glass fixed panel c/w black frame at master bathroom shower area', '9.0', 'per/sqft', '9'),
(63, 'To supply labour & material to fabricate and install', '4.0', 'per/sqft', '10'),
(64, 'To supply labour & material to install x 01 set of slide and swing doors at kitchen entrance / service yard', '4.0', 'per/sqft', '10'),
(65, 'To supply labour & material to fabricate and install 02 sets of top hung windows at 02 x bathrooms (white powder coated frame with translucent lami glass)', '4.0', 'per/sqft', '10'),
(66, 'To supply labour & material to fabricate and install 05 sets of sliding door windows at living room kitchen  balcony and 03 x bedrooms (white powder coated with clear glass)', '4.0', 'per/sqft', '10'),
(67, 'To supply labour & material to fabricate and install 05 sets of sliding window grilles at living room kitchen  balcony and 03 x bedrooms (white powder coated)', '4.0', 'per/sqft', '10'),
(68, 'To supply labour & material to fabricate and install 01 set of collapsible tempered glass door at living room (black powder coated with clear glass)', '4.0', 'per/sqft', '10'),
(70, 'To supply labour & material to', '4.0', 'per/sqft', '11'),
(71, 'To supply labour & material to fabrciate and install 03 sets of soild core laminated door c/w stainless steel lever lock and lock set at 03 x bedrooms', '4.0', 'per/sqft', '11'),
(72, 'To supply labour & material to fabricate and install 01 set of main gate using galvanized mild steel c/w lever lock set at main entrance (L 900mm x H 2100mm)', '4.0', 'per/sqft', '11'),
(74, 'To supply labour & material to fabricate and install', '4.0', 'per/sqft', '12'),
(75, 'To supply labour & material to fabricate and install 02 sets of aluminium powder coated slide and swing door at 02 x bathroom entrance', '4.0', 'per/sqft', '12'),
(77, 'To supply labour and material to construct roofing at balcony area using wood struture with	', '5.0', 'per/sqft', '13'),
(78, 'Germany clay tiles and zinc flashing finished with false ceiling', '5.0', 'per/sqft', '13'),
(80, 'To supply labour & material to sand and varnish', '8.0', 'per/sqft', '18'),
(81, 'To supply labour & material to polish existing marble flooring at', '8.0', 'per/sqft', '18'),
(82, 'To supply labour & material to construct a new poly carbonate roof at', '8.0', 'per/sqft', '18'),
(83, 'To supply labour & material to construct a new concrete settee with tiles finish at', '8.0', 'per/sqft', '18'),
(84, 'To supply labour & material to paint the whole house using Nippon / ICI paint with sealer including door and door frame', '8.0', 'per/sqft', '18'),
(85, 'To supply labour & material to lay protective covers during renovation', '8.0', 'per/sqft', '18'),
(86, 'Haulage and clearing of debris', '8.0', 'per/sqft', '18'),
(87, 'General cleaning and chemical wash before handing over', '8.0', 'per/sqft', '18');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_unique_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `unit_of_measure_id` int(11) NOT NULL,
  `tax` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_unique_id`, `service_name`, `category_id`, `price`, `unit_of_measure_id`, `tax`, `service_image`, `created_at`, `updated_at`) VALUES
(2, 'HCS0000002', 'DOOR LOCK REPLACEMENT', 2, '22.00', 2, '5,15', 'Service_image/Demo2218_Dec_21_00.jpg', '2021-12-17 14:05:42', '2022-03-12 02:02:28'),
(5, 'HCS0000003', 'ONE HALL', 5, '200.00', 2, '5', 'Service_image/ONE HALL12_Mar_22_44.png', '2022-03-12 03:04:45', '2022-03-12 03:04:45'),
(6, 'HCS0000004', 'MAISONETTE / EXECUTIVE FLAT', 5, '21.00', 1, '5', NULL, '2022-03-18 23:51:11', '2022-03-18 23:51:11'),
(7, 'HCS0000005', '1ST STRAIGHT GRAB BAR', 8, '211.00', 3, '5', NULL, '2022-03-25 03:25:08', '2022-03-25 03:25:08'),
(8, 'HCS0000006', 'INSTALL CURTAIN RODS', 9, '32.00', 1, '5', NULL, '2022-03-25 03:26:35', '2022-03-25 03:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `sow`
--

CREATE TABLE `sow` (
  `id` int(50) NOT NULL,
  `work_description` varchar(276) DEFAULT NULL,
  `cost` varchar(28) DEFAULT NULL,
  `scope_id` varchar(62) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sow`
--

INSERT INTO `sow` (`id`, `work_description`, `cost`, `scope_id`) VALUES
(1, 'To supply labour & tools to hack away existing ', '1', '$100 '),
(2, 'To supply labour & tools to hack away existing wall and floor tiles at ', '1', '$100 '),
(3, 'To supply labour & tools to hack away existing built-in carpentry at ', '1', '$100 '),
(4, 'To supply labour & tools to hack away existing built-in wardrobe at ', '1', '$100 '),
(5, 'To supply labour & tools to hack away existing built-in cabinets at ', '1', '$100 '),
(6, 'To supply labour & tools to hack away existing window and window grilles at ', '1', '$100 '),
(7, 'To supply labour & tools to hack away existing wall at   / between master room and kitchen	', '1', '$100 '),
(8, 'To supply labour & tools to hack away existing wall and floor tiles at kitchen area ', '1', '$100 '),
(9, 'To supply labour & tools to hack away existing kitchen work top  kitchen cabinets  hood  hob  kitchen sink  tap and basin outside common bathroom ', '1', '$100 '),
(10, 'To supply labour & tools to hack away existing sanitary fittings and accessories at 02 x bathrooms including doors and door frames ', '1', '$100 '),
(11, 'To supply labour & tools to hack away existing wall and floor tiles at 02 x bathrooms', '1', '$100 '),
(12, 'To supply labour & tools to hack away existing aluminium sliding door at balcony area ', '1', '$100 '),
(13, 'To supply labour & material to make good affected area at', '2', '$100 '),
(14, 'To supply labour & material to lay/overlay new non-slip homogeneous floor tiles at', '2', '$100 '),
(15, 'To supply labour & material to lay/overlay new homogeneous wall tiles at', '2', '$100 '),
(16, 'To supply labour & material to lay 3-in-1 waterproof membrane at ', '2', '$100 '),
(17, 'To supply labour & material to construct a new kerb at', '2', '$100 '),
(18, 'To supply labour & material to construct new full/half height hollow/celcon block wall at', '2', '$100 '),
(19, 'To supply labour & material to construct new kitchen concrete base with tiles skirting finish', '2', '$100 '),
(20, 'To supply labour & material to lay/overlay new homogeneous wall tiles at kitchen (exposed area only)', '2', '$100 '),
(21, 'To supply labour & material to lay 3-in-1 waterproof membrane at kitchen', '2', '$100 '),
(22, 'To supply labour & material to lay/overlay new non-slip homogeneous floor tiles at kitchen', '2', '$100 '),
(23, 'To supply labour & material to construct kitchen cabinet base with side tiling', '2', '$100 '),
(24, 'To supply labour & material to lay 3-in-1 waterproof membrane at 02 x bathrooms', '2', '$100 '),
(25, 'To supply labour & material to lay/overlay new homogeneous wall tiles at 02 x bathrooms', '2', '$100 '),
(26, 'To supply labour & material to lay new non-slip homogeneous floor tiles at 02 x bathrooms', '2', '$100 '),
(27, 'To supply labour & tools to', '3', '$100 '),
(28, 'To supply labour & material to lay new stainless steel water inlet piping and PVC outlet piping', '3', '$100 '),
(29, 'at 02 x bathroom and kitchen including main inlet piping', '3', '$100 '),
(30, 'To supply labour & tools to install all sanitary fittings and accessories at 02 x bathrooms and kitchen', '3', '$100 '),
(31, 'To supply labour & material to', '4', '$100 '),
(32, 'To supply labour & material to lay self-leveling screed for entire unit except 02 X bathrooms and kitchen floor (est. XXX sqft)', '4', '$100 '),
(33, 'To supply labour & material to overlay new vinyl flooring with skirting at living  dining store balcony and 03 x bedrooms (est. XXX sqft ). Made in Korea.', '4', '$100 '),
(34, 'balcony and 03 x bedrooms (est. XXX sqft ). Made in Korea.', '4', '$100 '),
(35, 'To supply labour & tools to polish existing marble flooring at ', '4', '$100 '),
(36, 'To supply labour and material to plaster smooth the entire unit wall and ceiling using easi plaster', '5', '$100 '),
(37, 'To supply labour & material to construct false ceiling at', '6', '$100 '),
(39, 'L-box false ceiling with cove light holder at living room', '6', '$100  '),
(40, 'To design fabricate & install a ', '7', '$100 '),
(41, 'To supply labour & material to replace ', '7', '$100 '),
(42, 'To design fabricate & install a L 1500mm of full height shoe cabinet using solid plywood in laminated finish with soft closing mechanism and colour pvc interior at foyer ', '7', '$100 '),
(43, 'To design fabricate & install a L 2250mm of full height TV feature using solid plywood in laminated finish with colour pvc interior at living room ', '7', '$100 '),
(44, 'To design fabricate & install a L 3000mm of sliding door wardrobe using solid plywood in laminated finish with soft closing mechanism and colour pvc interior at master bedroom ', '7', '$100 '),
(45, 'To design fabricate & install a L 2250mm of sliding door wardrobe using solid plywood in laminated finish with soft closing mechanism and colour pvc interior at bedroom 2 ', '7', '$100 '),
(46, 'To design fabricate & install a L 1500mm of sliding door wardrobe using solid plywood in laminated finish with soft closing mechanism and colour pvc interior at bedroom 3 ', '7', '$100 '),
(47, 'To design fabricate & install total L 8400mm of top and bottom kitchen cabinet using solid plywood in laminated finish with soft closing mechanism and colour pvc interior at left kitchen wall as proposed (Inclusive of Excel 304 dish rack and Aventos HK Blum stay lift system) ', '7', '$100 '),
(48, 'wall as proposed (Inclusive of Excel 304 dish rack and Aventos HK Blum stay lift system) ', '7', '$100 '),
(49, 'To design fabricate & install total L 3750mm of top and bottom kitchen cabinet using solid plywood in laminated finish with soft closing mechanism and colour pvc interior at right kitchen ', '7', '$100 '),
(50, 'wall as proposed (L 900mm of top cabinet above fridge', '7', '$100'),
(51, 'To design fabricate & install a L 600mm of suspended vanity cabinet using solid plywood in laminated finish with soft closing mechanism and colour pvc interior at master bathroom ', '7', '$100 '),
(52, 'To design fabricate & install a L 600mm of top hung mirror cabinet using solid plywood in laminated finish with soft closing mechanism and colour pvc interior at master bathroom ', '7', '$100 '),
(53, 'To design fabricate & install a L 2300mm of full height casement storage cabinet using solid plywood in laminated finish with soft closing mechanism and colour pvc interior at dining room  ', '7', '$100 '),
(54, 'To supply labour & material to replace total 04 x DB door using solid plywood in laminated finish with white PVC interior ', '7', '$100 '),
(56, 'To supply labour & material to fabricate and install', '8', '$100 '),
(57, 'To supply labour & material to fabricate and install a total L 6900mm of selected quartz as kitchen cabinet work top at kitchen', '8', '$100 '),
(59, 'To supply labour & material to fabricate and install', '9', '$100 '),
(60, 'To supply labour & material to fabricate and install 02 nos of 10mm clear tempered glass sliding door with aluminium pelmet at', '9', '$100 '),
(61, 'To supply labour & material to fabricate and install 01 no of 10mm clear tempered glass fixed panel c/w black frame at master bathroom shower area', '9', '$100 '),
(63, 'To supply labour & material to fabricate and install', '10', '$100 '),
(64, 'To supply labour & material to install x 01 set of slide and swing doors at kitchen entrance / service yard', '10', '$100 '),
(65, 'To supply labour & material to fabricate and install 02 sets of top hung windows at 02 x bathrooms (white powder coated frame with translucent lami glass)', '10', '$100 '),
(66, 'To supply labour & material to fabricate and install 05 sets of sliding door windows at living room kitchen  balcony and 03 x bedrooms (white powder coated with clear glass)', '10', '$100 '),
(67, 'To supply labour & material to fabricate and install 05 sets of sliding window grilles at living room kitchen  balcony and 03 x bedrooms (white powder coated)', '10', '$100 '),
(68, 'To supply labour & material to fabricate and install 01 set of collapsible tempered glass door at living room (black powder coated with clear glass)', '10', '$100 '),
(70, 'To supply labour & material to', '11', '$100 '),
(71, 'To supply labour & material to fabrciate and install 03 sets of soild core laminated door c/w stainless steel lever lock and lock set at 03 x bedrooms', '11', '$100 '),
(72, 'To supply labour & material to fabricate and install 01 set of main gate using galvanized mild steel c/w lever lock set at main entrance (L 900mm x H 2100mm)', '11', '$100 '),
(74, 'To supply labour & material to fabricate and install', '12', '$100 '),
(75, 'To supply labour & material to fabricate and install 02 sets of aluminium powder coated slide and swing door at 02 x bathroom entrance', '12', '$100 '),
(77, 'To supply labour and material to construct roofing at balcony area using wood struture with	', '13', '$100 '),
(78, 'Germany clay tiles and zinc flashing finished with false ceiling', '13', '$100 '),
(80, 'To supply labour & material to sand and varnish', '18', '$100 '),
(81, 'To supply labour & material to polish existing marble flooring at', '18', '$100 '),
(82, 'To supply labour & material to construct a new poly carbonate roof at', '18', '$100 '),
(83, 'To supply labour & material to construct a new concrete settee with tiles finish at', '18', '$100 '),
(84, 'To supply labour & material to paint the whole house using Nippon / ICI paint with sealer including door and door frame', '18', '$100 '),
(85, 'To supply labour & material to lay protective covers during renovation', '18', '$100 '),
(86, 'Haulage and clearing of debris', '18', '$100 '),
(87, 'General cleaning and chemical wash before handing over', '18', '$100 ');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `tax`, `created_at`, `updated_at`) VALUES
(1, '5', '2021-12-17 13:06:37', '2021-12-17 13:06:37'),
(2, '15', '2021-12-17 13:21:35', '2021-12-17 13:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `unit_of_measures`
--

CREATE TABLE `unit_of_measures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unit_of_measures`
--

INSERT INTO `unit_of_measures` (`id`, `unit`, `created_at`, `updated_at`) VALUES
(1, 'Sq ft', '2021-12-16 22:48:53', '2021-12-16 22:48:53'),
(2, 'Sq yd', '2021-12-16 22:50:35', '2021-12-16 22:50:35'),
(3, 'meter', '2021-12-20 13:32:25', '2021-12-20 13:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `vendor_id` int(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desciption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `vendor_id`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `location`, `desciption`, `otp`, `remember_token`, `created_at`, `updated_at`, `token`) VALUES
(1, 'Admin', NULL, 'Admin', 'admin@gmail.com', NULL, '$2y$10$6ArZROAEBQQn7vinSoIKneIxRhnYuusRCOKz9eUcsDxhz1k..5RyG', NULL, NULL, '', '', NULL, '2021-12-06 16:23:42', '2021-12-06 16:23:42', NULL),
(44, 'Employee', NULL, 'Ram', 'ram@gmail.com', NULL, '$2y$10$7zoQjUQmY69MagT/NMH1juj3QgwZzB6CvOeoW/zakXimJ3gH4k3LS', NULL, NULL, '', '', NULL, '2021-12-31 10:21:52', '2021-12-31 10:21:52', NULL),
(45, 'Vendor', 1, 'maa', 'maa@gmail.com', NULL, '$2y$10$HsM5lL5z2tT23.hUhS/xHedqKaAFOGJI8/3nYH0THWvCAzLIJoX.K', NULL, NULL, '', '', NULL, '2021-12-31 12:04:56', '2021-12-31 12:04:57', NULL),
(46, 'Vendor', 2, 'maa2', 'maa2@gmail.com', NULL, '$2y$10$lkUy5ZU8T9oBi9T57mUjuOOWL61uYm/ZsNi/vopusHzKIAqMuyq7C', NULL, NULL, '', '', NULL, '2021-12-31 12:07:28', '2021-12-31 12:07:28', NULL),
(49, 'Employee', NULL, 'Debasis', 'debasis@gmail.com', NULL, '$2y$10$fvDACvn8ke0BLX3Dz0DkGePnABaZSd/cK9rFT4N3Kd.89Sq7lr/fa', NULL, NULL, '', '', NULL, '2022-01-31 06:40:32', '2022-02-02 11:04:13', NULL),
(74, 'user', NULL, 'Test', 'Test@gmail.co', NULL, '$2y$10$jxGte3RFyFrsnmpKLhB.L.L9cDCZLUNx98Louz8GE.oefLvGLjmC.', NULL, NULL, NULL, '', NULL, '2022-03-03 18:39:43', '2022-03-03 18:39:43', NULL),
(76, 'Employee', NULL, 'emp21', 'empl21@gmail.co', NULL, '$2y$10$jB8UC2vBhNQC2Fpb.p4R1uflMUWyK.7PMvkXg6OqelR0wWqbrhuKe', NULL, NULL, NULL, '', NULL, '2022-03-03 18:42:53', '2022-03-03 18:42:53', NULL),
(77, 'user', NULL, 'user1', 'user23@gmail.com', NULL, '$2y$10$hvlR7jc5BcopUKBTWH94POHxq6VePaJotDTm24YJ0w4rx117pJq56', NULL, NULL, NULL, '', NULL, '2022-03-03 18:44:33', '2022-03-03 18:44:33', NULL),
(78, 'user', NULL, 'userdemo', 'userdemo@gmail.co', NULL, '$2y$10$5LNjYxedLt7iVhfZmSPX8.EEVUTmKM8qEUFwQ3un63v9gmtMUyMvW', NULL, NULL, NULL, '', NULL, '2022-03-03 18:45:09', '2022-03-03 18:45:09', NULL),
(90, 'Employee', NULL, 'VMJ Dhenu', 'demo@gmail.com', NULL, '$2y$10$xChr1A975Ot9KqucSM2qzeGevXuo.lI1eP31v1A7oU5xDWeqWLe1W', NULL, NULL, NULL, NULL, NULL, '2022-03-08 04:54:35', '2022-03-08 04:54:35', NULL),
(91, 'Employee', NULL, 'VMJ Dhenu', 'demo@gmai', NULL, '$2y$10$7RLm.ot0c7le4YvjpYy.8.9RPjGsN3va72grBOiCtay9aTOaGDmxK', NULL, NULL, NULL, NULL, NULL, '2022-03-08 05:01:28', '2022-03-08 05:01:28', NULL),
(94, 'Employee', NULL, 'VMJ Dhenu', 'dhenu.vmj@gmail.com', NULL, '$2y$10$ow/R55RzOKN1v65ndaN4teZph9CCtqL4EbHtUgMyR61Blof9R/AGG', NULL, NULL, NULL, NULL, NULL, '2022-03-09 01:55:54', '2022-03-09 01:55:54', NULL),
(95, 'Vendor', 3, 'Devloper', 'devlop@gmil.com', NULL, '$2y$10$18rLZy2HZFwPEo6AjRmf7OCM3bCsUDkeHnm.aioj2IYRPxbo4VwDi', NULL, NULL, NULL, NULL, NULL, '2022-03-14 03:08:09', '2022-03-14 03:08:11', NULL),
(96, 'Employee', NULL, 'Demo', 'demp@gmail.com', NULL, '$2y$10$h2JhyNiTogDESh4v7Z/eReCvMCDa.RkDvpr.R80DzSJdpWthg0vhy', NULL, NULL, NULL, NULL, NULL, '2022-03-18 23:53:22', '2022-03-18 23:53:22', NULL),
(97, 'Customer', NULL, 'Maisie', 'admin@admin.com', NULL, '$2y$10$pDZvtkfI0vjk6oYNH9Wr4.c2rRtt8RbMGR2urij4gHL0Vs4gw7.zW', NULL, NULL, NULL, NULL, NULL, '2022-03-21 02:16:21', '2022-03-21 02:16:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_unique_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `vendor_unique_id`, `user_id`, `type`, `logo`, `name`, `email`, `mobile`, `password`, `address`, `state`, `zip_code`, `country`, `service_id`, `website`, `gst_no`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HCV0000001', 45, 'Individual', NULL, 'maa', 'maa@gmail.com', '88', '$2y$10$CH4MwEbyrc.hPjts22c62epWio/QH53kR30.ZvjSGOJYPu1NUJXPi', 'asd', 'Debasis', '123', 'india', '2,4', NULL, NULL, 1, '2021-12-31 17:34:57', '2021-12-31 17:34:57'),
(2, 'HCV0000002', 46, 'Individual', NULL, 'maa2', 'maa2@gmail.com', '88', '$2y$10$hJILhckdhExZTE9mFhMZuu14I4cpgZ1uk3A.nKEAkcAHRkPRleK7q', 'asd', 'Debasis', '123', 'india', '4', NULL, NULL, 1, '2021-12-31 17:37:28', '2021-12-31 17:37:28'),
(3, 'HCV0000003', 95, 'Individual', 'vendor_Logo/Devloper14_Mar_22_09.png', 'Devloper', 'devlop@gmil.com', '9988777788', '$2y$10$2S9nDy6o0/GEZdlJR14lF.rjieb3vjyd1KP6AJcqXMdO/sYJ0h88S', 'a deno devlop', 'Gujarat', '566677', 'India', '2,5', 'www.google.com', NULL, 1, '2022-03-14 03:08:10', '2022-03-14 03:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_crms`
--

CREATE TABLE `vendor_crms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `admin_crm_id` int(20) NOT NULL,
  `crm_unique_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stage` int(11) NOT NULL,
  `delivery_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_crms`
--

INSERT INTO `vendor_crms` (`id`, `vendor_id`, `admin_crm_id`, `crm_unique_id`, `stage`, `delivery_date`, `customer_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'HCL0000001', 1, '2022-02-07', 3, 1, '2022-02-07 18:41:35', '2022-02-07 18:41:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_crms`
--
ALTER TABLE `admin_crms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_crm_services`
--
ALTER TABLE `admin_crm_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commercial`
--
ALTER TABLE `commercial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `handy_connect_quotations`
--
ALTER TABLE `handy_connect_quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interior_quotation`
--
ALTER TABLE `interior_quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_commercial`
--
ALTER TABLE `invoice_commercial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_residential`
--
ALTER TABLE `invoice_residential`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_positions`
--
ALTER TABLE `job_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_of_works`
--
ALTER TABLE `list_of_works`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `residential`
--
ALTER TABLE `residential`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `scope_of_works`
--
ALTER TABLE `scope_of_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sow`
--
ALTER TABLE `sow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit_of_measures`
--
ALTER TABLE `unit_of_measures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_crms`
--
ALTER TABLE `vendor_crms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_crms`
--
ALTER TABLE `admin_crms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_crm_services`
--
ALTER TABLE `admin_crm_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `commercial`
--
ALTER TABLE `commercial`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `handy_connect_quotations`
--
ALTER TABLE `handy_connect_quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interior_quotation`
--
ALTER TABLE `interior_quotation`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `invoice_commercial`
--
ALTER TABLE `invoice_commercial`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_residential`
--
ALTER TABLE `invoice_residential`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `job_positions`
--
ALTER TABLE `job_positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `list_of_works`
--
ALTER TABLE `list_of_works`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `residential`
--
ALTER TABLE `residential`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scope_of_works`
--
ALTER TABLE `scope_of_works`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sow`
--
ALTER TABLE `sow`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `unit_of_measures`
--
ALTER TABLE `unit_of_measures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vendor_crms`
--
ALTER TABLE `vendor_crms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
