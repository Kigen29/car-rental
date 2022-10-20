-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 11:10 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-07-05 11:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `jeep`
--

CREATE TABLE `jeep` (
  `Jeep_id` int(10) NOT NULL,
  `model` varchar(25) NOT NULL,
  `vehicle title` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(6, 'emmanuelkigen133@gmail.com', 7, '05/06/2022', '06/06/2022', 'I need a car', 1, '2022-06-05 09:40:16'),
(7, 'emmanuelkigen133@gmail.com', 8, '12/12/2022', '13/12/2022', 'I need the car asap', 2, '2022-06-05 14:10:46'),
(8, 'emmanuelkigen133@gmail.com', 9, '11/12/2000', '12/12/2000', 'i need the car now', 1, '2022-06-08 07:32:54'),
(9, 'emmanuelkigen133@gmail.com', 7, '11/12/2000', '12/12/2000', 'I need car', 2, '2022-06-08 13:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(9, 'Mercedes', '2022-06-05 08:55:48', NULL),
(11, 'Honda', '2022-06-05 09:14:36', NULL),
(12, 'Toyota', '2022-06-05 13:50:28', NULL),
(13, 'Audi', '2022-06-05 13:50:38', NULL),
(14, 'BMW', '2022-06-05 13:50:48', NULL),
(15, 'Volkswagen', '2022-06-05 13:51:00', NULL),
(16, 'Nissan', '2022-06-05 13:51:12', NULL),
(17, 'Cadillac', '2022-06-05 13:54:29', NULL),
(18, 'Chevrolet', '2022-06-05 13:54:39', NULL),
(19, 'Dodge', '2022-06-05 13:54:59', NULL),
(20, 'Ford', '2022-06-05 13:55:06', NULL),
(21, 'Jaguar', '2022-06-05 13:55:42', NULL),
(22, 'Mazda', '2022-06-05 13:56:04', NULL),
(23, 'Mitsubishi', '2022-06-05 13:56:27', NULL),
(24, 'Subaru', '2022-06-05 13:56:50', NULL),
(25, 'Volvo', '2022-06-05 13:56:55', NULL),
(26, 'suzuki', '2022-06-08 14:02:16', NULL),
(27, 'jeep', '2022-06-20 08:33:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `category_id` int(25) NOT NULL,
  `category_name` varchar(25) NOT NULL,
  `id` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Parliament Rd, Biashara Street																								', 'info@modernspin.ke', '0721383087');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Emmanuel Kigen', 'emmanuelkigen133@gmail.com', '0721383087', 'I have an issue', '2022-06-07 10:47:22', 1),
(3, 'Emmanuel Kigen', 'emmanuelkigen133@gmail.com', '0721383087', 'i have another issue', '2022-06-07 10:50:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Founded in 2021, Modern Spin Kenya is an upcoming car rental service in Kenya. The company owns a couple cars which are rented out to our loyal customers.</span></div>'),
(11, 'FAQs', 'faqs', '										<h6 style=\"text-align: justify;\"><span style=\"font-size: large; font-family: georgia;\"><span style=\"color: rgb(0, 0, 0);\">1.What is the most common picked car? A </span><span style=\"color: rgb(0, 0, 0);\">Hyundai</span><span style=\"color: rgb(0, 0, 0);\">&nbsp;is the most common car </span><span style=\"color: rgb(0, 0, 0);\">picked since its economica</span><span style=\"color: rgb(0, 0, 0);\">l.</span></span></h6>\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(2, 'emmanuelkigen133@gmail.com', '2022-06-05 09:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(4, 'emmanuelkigen133@gmail.com', 'This car rental service is elite', '2022-06-05 09:41:47', 1),
(5, 'emmanuelkigen133@gmail.com', 'the car service received was goog', '2022-06-08 13:58:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(8, 'Emmanuel Kigen', 'emmanuelkigen133@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '0705117576', '29/12/2001', 'Nyayo Highrise, Nairobi.', 'Nairobi', 'Kenya', '2022-06-05 09:38:22', '2022-06-08 13:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(7, 'Honda Civic', 11, 'A family type car, 4 seater, prestigious.', 25, 'Petrol', 2022, 4, '2022-honda-civic-si-front.jpg', 'download (2).jpg', 'download (3).jpg', 'download (4).jpg', 'honda-civic-sedan-e-hev-2023.webp', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-06-05 09:20:53', NULL),
(8, 'Ford Mustang', 20, '2 seater ', 35, 'Diesel', 2015, 2, '2015-ford-mustang-apollo-edition_100518873_h.jpg', '202106-f9e143ffe40a47fe894cb995ba69866f.jpg', '33052073350_f5567e6376_b.jpg', 'Ford-Mustang-ADV5-Track-Spec-SL-Series-Wheels-14.jpg', '1086940-1024.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-06-05 14:08:47', NULL),
(9, 'mazda demio', 22, '2500cc', 30, 'Petrol', 2015, 5, 'mazda-demio-2014-2021-1585291431.96.jpg', 'images (1).jpg', 'Mazda-Demio-2015-gray.jpg', '6247_a1651244435626bfd935b807.jpeg', 'BG464101_4ecf6b.jpg', 1, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, NULL, 1, '2022-06-08 07:31:19', NULL),
(14, 'toyota rav 4', 12, 'efficient', 34, 'Petrol', 2021, 5, '2021-toyota-rav4-prime-11.webp', '', '', '', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-06-20 18:03:00', NULL),
(16, 'Toyota V8', 12, 'Smooth and sleek', 45, 'Petrol', 2021, 6, 'toyotaV8.jpg', '', '', '', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-06-21 14:44:17', NULL),
(17, 'BMW M4', 14, 'Smooth', 50, 'Petrol', 2021, 4, 'bmwM4.jpg', '', '', '', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-06-21 16:00:23', NULL),
(18, 'jeep cherokee', 27, 'efficient', 34, 'Diesel', 2021, 5, 'Jeep-Cherokee-Limited-2020.jpg', '', '', '', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-06-21 16:50:26', NULL),
(19, 'jeep compass', 27, 'Fast and efficient', 34, 'Diesel', 2021, 5, 'jeep compass.jpg', '', '', '', '', 1, 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, '2022-06-21 16:51:27', NULL),
(21, 'volkswagen golf', 15, 'smooth', 34, 'Petrol', 2021, 5, 'volkswagen golf.jpg', '', '', '', '', 1, 1, 1, NULL, NULL, 1, 1, 1, NULL, NULL, 1, NULL, '2022-06-21 16:55:14', NULL),
(22, 'cadillac escalade', 17, 'fast', 50, 'CNG', 2021, 6, 'cadillac escalade.webp', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 16:57:21', NULL),
(23, 'Mercedes C class', 9, 'fast', 34, 'CNG', 2021, 4, 'mercedes-benz-c-class.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 16:59:55', NULL),
(24, 'chevrolet camaro', 18, 'efficient', 45, 'Diesel', 2021, 2, 'Chevrolet Camaro.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 17:11:10', NULL),
(25, 'dodge challenger', 19, 'Classy', 50, 'Petrol', 2021, 2, 'dodge challenge.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 17:16:23', NULL),
(26, 'jeep cherokee', 27, 'b kjnlmp;[l]', 12, 'CNG', 2007, 6, 'Jeep-Cherokee-Limited-2020.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 17:22:12', NULL),
(27, 'Audi A3', 13, 'sleek', 45, 'CNG', 2021, 2, 'AudiA3.webp', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 17:27:49', NULL),
(28, 'Jaguar XF', 21, 'Classy', 34, 'Petrol', 2021, 5, 'jaguar XF.webp', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 17:35:34', NULL),
(29, 'Mitsubishi Pajero', 23, 'Smooth', 45, 'Diesel', 2021, 5, 'mitsubishi pajero.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 17:37:41', NULL),
(30, 'Subaru Impreza', 24, 'Loud', 34, 'Diesel', 2021, 5, 'subaru impreza.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 17:41:43', NULL),
(31, 'Volvo 360 SEDAN', 25, 'Vintage', 34, 'CNG', 2021, 5, 'volvo 360 sedan.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 17:49:12', NULL),
(32, 'Toyota Land Cruiser', 12, 'Efficient', 45, 'Diesel', 2007, 6, 'Toyota_Land_Cruiser_70_LX.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 18:04:18', NULL),
(33, 'volvo v 60', 25, 'Efficient', 50, 'Petrol', 2021, 5, 'volvo v-60.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 18:11:02', NULL),
(34, 'Volvo Xc60', 25, 'Fast', 34, 'Petrol', 2021, 5, 'volvo xc60.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 18:12:38', NULL),
(35, 'volvo s 90', 25, 'classy', 34, 'Petrol', 2021, 5, 'Volvo S 90.webp', '', '', '', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-06-21 21:41:12', NULL),
(36, 'Ford Raptor', 20, 'Muscle', 45, 'Diesel', 2021, 5, 'ford raptor.webp', '', '', '', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-06-21 21:49:48', NULL),
(37, 'Ford Ranger', 20, 'Muscle', 45, 'Diesel', 2021, 5, 'Ford Ranger.webp', '', '', '', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-06-21 21:53:38', NULL),
(38, 'Dodge Demon', 19, 'Muscle', 34, 'CNG', 2021, 2, 'dodge demon.jpg', '', '', '', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-06-22 10:55:55', NULL),
(39, 'Ford Thunder', 20, 'Big', 45, 'Diesel', 2021, 5, 'Ford Thunder.jpg', '', '', '', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-06-22 10:59:43', NULL),
(40, 'Subaru WRX', 24, 'Classy', 45, 'Diesel', 2021, 5, 'Subaru WRX.jpg', '', '', '', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-06-22 11:03:59', NULL),
(41, 'Mazda RX7', 22, 'Efficient', 34, 'Petrol', 2021, 5, 'mazda RX 7.jpg', '', '', '', '', 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-06-22 12:57:14', NULL),
(42, 'volkswagen tiguan', 15, 'Efficient', 34, 'Diesel', 2021, 5, 'Volkswagen-Tiguan-SE-2021.jpg', '', '', '', '', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, '2022-06-27 07:39:19', NULL),
(43, 'Dodge Durango', 19, 'Classy', 34, 'Diesel', 2021, 6, 'Dodge Durango.jpg', '', '', '', '', 1, 1, 1, NULL, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2022-06-27 07:47:45', NULL),
(44, 'Subaru Outback', 24, 'Fast', 34, 'Diesel', 2021, 6, 'subaru outback.webp', '', '', '', '', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 07:56:43', NULL),
(45, 'Volkswagen Polo', 15, 'Classy', 45, 'Petrol', 2021, 6, 'Volswagen Polo.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 08:00:27', NULL),
(46, 'Cadillac CTS', 17, 'Modern', 45, 'Petrol', 2021, 7, 'cadillac CTS.webp', '', '', '', '', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-06-27 08:01:55', NULL),
(47, 'Cadillac XT5', 17, 'Modern', 50, 'Diesel', 2021, 6, 'cadillac xt5.jpg', '', '', '', '', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, '2022-06-27 08:04:37', NULL),
(48, 'Mercedes Benz Gle', 9, 'Classy', 34, 'Diesel', 2021, 2, 'mercedes benz gle.webp', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 08:06:50', NULL),
(49, 'Mercedes S class', 9, 'Classy', 34, 'Petrol', 2021, 4, 'Mercedes S-Class.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 08:12:21', NULL),
(50, 'BMW 18', 14, 'Classy', 45, 'Petrol', 2021, 5, 'BMW I8.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 08:20:12', NULL),
(51, 'BMW X6', 14, 'Classy', 34, 'Petrol', 2021, 2, 'bmwX6.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 08:22:30', NULL),
(52, 'Chevrolet Tahoe', 18, 'Big', 50, 'Diesel', 2021, 6, 'Chevrolet Tahoe.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 08:24:05', NULL),
(53, 'Chevrolet Suburban', 18, 'Big', 34, 'Diesel', 2021, 6, 'Chevrolet Suburban.jpg', '', '', '', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 08:25:29', NULL),
(54, 'Mitsubishi Lancer', 23, 'Small', 34, 'Petrol', 2007, 6, 'mitsubishi lancer.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 08:27:13', NULL),
(55, 'Mitsubishi Outlander', 23, 'Modern', 34, 'Petrol', 2021, 6, '2022_Mitsubishi_Outlander_1.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 08:28:36', NULL),
(56, 'Mazda 3', 22, 'Classy', 34, 'Petrol', 2021, 6, 'Mazda 3.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 08:33:28', NULL),
(57, 'Jaguar F PACE', 21, 'Classy', 34, 'Petrol', 2021, 6, 'Jaguar F pace.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 08:35:03', NULL),
(58, 'Jaguar F type', 21, 'Fast', 34, 'Petrol', 2021, 5, 'jaguar f type.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 08:36:54', NULL),
(59, 'Audi R8', 13, 'Fast', 34, 'Petrol', 2021, 5, 'Audi R8.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 08:38:49', NULL),
(60, 'Audi Q3', 13, 'Fast', 34, 'Petrol', 2021, 2, 'AudiQ3.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 08:39:47', NULL),
(61, 'Audi Q3', 13, 'Fast', 34, 'Petrol', 2021, 2, 'AudiQ3.jpg', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 08:47:42', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jeep`
--
ALTER TABLE `jeep`
  ADD PRIMARY KEY (`Jeep_id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `category_id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD CONSTRAINT `tblcategory_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tblvehicles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
