-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 01, 2024 at 01:46 PM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u859569470_intrust`
--

-- --------------------------------------------------------

--
-- Table structure for table `aauth_groups`
--

CREATE TABLE `aauth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `definition` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `aauth_groups`
--

INSERT INTO `aauth_groups` (`id`, `name`, `definition`) VALUES
(1, 'Admin', 'Superadmin Group'),
(2, 'Public', 'Public Group'),
(3, 'Default', 'Default Access Group'),
(4, 'Member', 'Member Access Group'),
(5, 'Intrust Api', ''),
(6, 'IntrustAdmin', '');

-- --------------------------------------------------------

--
-- Table structure for table `aauth_group_to_group`
--

CREATE TABLE `aauth_group_to_group` (
  `group_id` int(11) UNSIGNED NOT NULL,
  `subgroup_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aauth_login_attempts`
--

CREATE TABLE `aauth_login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(39) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `login_attempts` tinyint(2) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `aauth_login_attempts`
--

INSERT INTO `aauth_login_attempts` (`id`, `ip_address`, `timestamp`, `login_attempts`) VALUES
(0, '125.167.113.156', '2024-10-12 11:03:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `aauth_perms`
--

CREATE TABLE `aauth_perms` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `definition` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `aauth_perms`
--

INSERT INTO `aauth_perms` (`id`, `name`, `definition`) VALUES
(1, 'menu_dashboard', NULL),
(2, 'menu_crud_builder', NULL),
(3, 'menu_api_builder', NULL),
(4, 'menu_page_builder', NULL),
(5, 'menu_form_builder', NULL),
(6, 'menu_menu', NULL),
(7, 'menu_auth', NULL),
(8, 'menu_user', NULL),
(9, 'menu_group', NULL),
(10, 'menu_access', NULL),
(11, 'menu_permission', NULL),
(12, 'menu_api_documentation', NULL),
(13, 'menu_web_documentation', NULL),
(14, 'menu_settings', NULL),
(15, 'user_list', NULL),
(16, 'user_update_status', NULL),
(17, 'user_export', NULL),
(18, 'user_add', NULL),
(19, 'user_update', NULL),
(20, 'user_update_profile', NULL),
(21, 'user_update_password', NULL),
(22, 'user_profile', NULL),
(23, 'user_view', NULL),
(24, 'user_delete', NULL),
(25, 'blog_list', NULL),
(26, 'blog_export', NULL),
(27, 'blog_add', NULL),
(28, 'blog_update', NULL),
(29, 'blog_view', NULL),
(30, 'blog_delete', NULL),
(31, 'form_list', NULL),
(32, 'form_export', NULL),
(33, 'form_add', NULL),
(34, 'form_update', NULL),
(35, 'form_view', NULL),
(36, 'form_manage', NULL),
(37, 'form_delete', NULL),
(38, 'crud_list', NULL),
(39, 'crud_export', NULL),
(40, 'crud_add', NULL),
(41, 'crud_update', NULL),
(42, 'crud_view', NULL),
(43, 'crud_delete', NULL),
(44, 'rest_list', NULL),
(45, 'rest_export', NULL),
(46, 'rest_add', NULL),
(47, 'rest_update', NULL),
(48, 'rest_view', NULL),
(49, 'rest_delete', NULL),
(50, 'group_list', NULL),
(51, 'group_export', NULL),
(52, 'group_add', NULL),
(53, 'group_update', NULL),
(54, 'group_view', NULL),
(55, 'group_delete', NULL),
(56, 'permission_list', NULL),
(57, 'permission_export', NULL),
(58, 'permission_add', NULL),
(59, 'permission_update', NULL),
(60, 'permission_view', NULL),
(61, 'permission_delete', NULL),
(62, 'access_list', NULL),
(63, 'access_add', NULL),
(64, 'access_update', NULL),
(65, 'menu_list', NULL),
(66, 'menu_add', NULL),
(67, 'menu_update', NULL),
(68, 'menu_delete', NULL),
(69, 'menu_save_ordering', NULL),
(70, 'menu_type_add', NULL),
(71, 'page_list', NULL),
(72, 'page_export', NULL),
(73, 'page_add', NULL),
(74, 'page_update', NULL),
(75, 'page_view', NULL),
(76, 'page_delete', NULL),
(77, 'blog_list', NULL),
(78, 'blog_export', NULL),
(79, 'blog_add', NULL),
(80, 'blog_update', NULL),
(81, 'blog_view', NULL),
(82, 'blog_delete', NULL),
(83, 'setting', NULL),
(84, 'setting_update', NULL),
(85, 'dashboard', NULL),
(86, 'extension_list', NULL),
(87, 'extension_activate', NULL),
(88, 'extension_deactivate', NULL),
(89, 'keys_list', ''),
(90, 'keys_delete', ''),
(91, 'keys_add', ''),
(92, 'api_banks_all', ''),
(93, 'api_banks_detail', ''),
(94, 'api_banks_add', ''),
(95, 'api_banks_update', ''),
(96, 'api_banks_delete', ''),
(97, 'rest_edit', ''),
(98, 'table_user_add', ''),
(99, 'table_user_update', ''),
(100, 'table_user_view', ''),
(101, 'table_user_delete', ''),
(102, 'table_user_list', ''),
(0, 'accounts_list', ''),
(0, 'accounts___add', ''),
(0, 'accounts___update', ''),
(0, 'accounts___view', ''),
(0, 'accounts___delete', ''),
(0, 'accounts___list', ''),
(0, 'panel_add', ''),
(0, 'panel_update', ''),
(0, 'panel_view', ''),
(0, 'panel_delete', ''),
(0, 'panel_list', ''),
(0, 'lot_add', ''),
(0, 'lot_update', ''),
(0, 'lot_view', ''),
(0, 'lot_delete', ''),
(0, 'lot_list', ''),
(0, 'menu_lot', ''),
(0, 'accounts___export', ''),
(0, 'log_list', ''),
(0, 'log_view', ''),
(0, 'log_update', '');

-- --------------------------------------------------------

--
-- Table structure for table `aauth_perm_to_group`
--

CREATE TABLE `aauth_perm_to_group` (
  `perm_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `aauth_perm_to_group`
--

INSERT INTO `aauth_perm_to_group` (`perm_id`, `group_id`) VALUES
(92, 5),
(93, 5),
(1, 6),
(8, 6),
(0, 6),
(85, 6),
(98, 6),
(99, 6),
(100, 6),
(101, 6),
(102, 6),
(0, 6),
(0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `aauth_perm_to_user`
--

CREATE TABLE `aauth_perm_to_user` (
  `perm_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aauth_pms`
--

CREATE TABLE `aauth_pms` (
  `id` int(11) UNSIGNED NOT NULL,
  `sender_id` int(11) UNSIGNED NOT NULL,
  `receiver_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(225) NOT NULL,
  `message` text DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `date_read` datetime DEFAULT NULL,
  `pm_deleted_sender` int(1) DEFAULT NULL,
  `pm_deleted_receiver` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aauth_user`
--

CREATE TABLE `aauth_user` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `definition` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aauth_users`
--

CREATE TABLE `aauth_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `oauth_uid` text DEFAULT NULL,
  `oauth_provider` varchar(100) DEFAULT NULL,
  `pass` varchar(64) NOT NULL,
  `username` varchar(100) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `avatar` text NOT NULL,
  `banned` tinyint(1) DEFAULT 0,
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `forgot_exp` text DEFAULT NULL,
  `remember_time` datetime DEFAULT NULL,
  `remember_exp` text DEFAULT NULL,
  `verification_code` text DEFAULT NULL,
  `top_secret` varchar(16) DEFAULT NULL,
  `ip_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `aauth_users`
--

INSERT INTO `aauth_users` (`id`, `email`, `oauth_uid`, `oauth_provider`, `pass`, `username`, `full_name`, `avatar`, `banned`, `last_login`, `last_activity`, `date_created`, `forgot_exp`, `remember_time`, `remember_exp`, `verification_code`, `top_secret`, `ip_address`) VALUES
(1, 'nanang.programmer@gmail.com', NULL, NULL, 'aeb86e9c625f3ea63f16e7645333e7cd1d8e910ce1be9bb3a7f8b84ce5be9a51', 'nanangprogrammer', 'nanangprogrammer', '', 0, '2024-10-11 04:56:58', '2024-10-11 04:56:58', '2024-10-08 11:56:09', NULL, '2024-10-14 00:00:00', 'IOdUpsTa17SuLXAq', NULL, NULL, '2a09:bac1:3480:18::17:24d'),
(2, 'testes@testes.com', NULL, NULL, 'b778efd029a720b8d2121d2714d693ec68e614cb3c913de71e249774ed6a8aaf', 'testes', 'Tester', 'default.png', 0, '2024-10-08 19:04:33', NULL, '2024-10-08 18:59:50', NULL, NULL, NULL, NULL, NULL, '104.28.217.184'),
(3, 'admin@admin.com', NULL, NULL, 'b855f5513f645872168bc4786a6afcfd57f40039cffcb1def88b3cdabc752199', 'admin', 'Admin Intrust', 'default.png', 0, '2024-11-01 20:08:14', '2024-11-01 20:08:14', '2024-10-09 16:02:04', NULL, '2024-10-22 00:00:00', 'sKb3ecNr7Q0DCTHU', NULL, NULL, '112.215.239.238');

-- --------------------------------------------------------

--
-- Table structure for table `aauth_user_to_group`
--

CREATE TABLE `aauth_user_to_group` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `aauth_user_to_group`
--

INSERT INTO `aauth_user_to_group` (`user_id`, `group_id`) VALUES
(1, 1),
(1, 3),
(2, 3),
(2, 5),
(3, 3),
(3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `aauth_user_variables`
--

CREATE TABLE `aauth_user_variables` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `data_key` varchar(100) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `income` double DEFAULT 0,
  `balance` decimal(19,2) DEFAULT 0.00,
  `referal` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL,
  `country` varchar(30) NOT NULL,
  `currency` varchar(10) DEFAULT 'IDR',
  `photo` varchar(256) DEFAULT NULL,
  `pin` varchar(6) DEFAULT NULL,
  `fname` varchar(10) DEFAULT NULL,
  `lname` varchar(10) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `nomor` varchar(50) DEFAULT NULL,
  `network` varchar(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `investasi` int(10) NOT NULL DEFAULT 0,
  `profit` int(10) NOT NULL DEFAULT 0,
  `login_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `gift_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `phone`, `income`, `balance`, `referal`, `password`, `country`, `currency`, `photo`, `pin`, `fname`, `lname`, `nama`, `bank`, `nomor`, `network`, `address`, `investasi`, `profit`, `login_at`, `created_at`, `updated_at`, `gift_code`) VALUES
(1, '0878123456', 0, 0.00, 'cf178fa6', '$2y$10$SfhYIDtn.iOuCW7zfoFLuuZHX6lja4lF4XA4JqNmpiH/.P3zB8JCa', '', NULL, NULL, NULL, 'Andrian', 'Oki', 'Reas', 'Mandiri', '356788', NULL, NULL, 0, 0, '2024-10-08 02:15:41', '2024-10-04 00:00:00', NULL, 'eecc5611d62490b7e772'),
(2, '0878123457', 0, 0.00, '02623234', '$2y$10$SfhYIDtn.iOuCW7zfoFLuuZHX6lja4lF4XA4JqNmpiH/.P3zB8JCa', '', NULL, NULL, NULL, 'Andrian', 'Oki', '', '', '', NULL, NULL, 0, 0, '2024-10-06 02:21:21', '2024-10-04 01:00:00', NULL, 'db071f119c2ee5fa02fc'),
(3, '0878123458', 0, 0.00, 'fbc42b5d', '$2y$10$SfhYIDtn.iOuCW7zfoFLuuZHX6lja4lF4XA4JqNmpiH/.P3zB8JCa', '', 'USD', '9723582.jpg', '131311', 'Andrian', 'Oki', 'Za', 'BNI', '121314', NULL, NULL, 0, 0, '2024-10-11 09:46:52', '2024-10-04 02:00:00', '2024-10-09 08:35:59', '870fb40999292e2b127e'),
(4, '0878608932', 2503.903177767779, 193800.00, 'c963d4fb', '$2y$10$p5G4JdMfiQwUsxAVLPsnf.2dIasDaI5XgL/gEW6ND0.BDwtbbflLm', 'Taiwan', NULL, NULL, NULL, 'Adi', 'Mutra', '', '', '', NULL, NULL, 0, 0, '2024-10-04 02:18:15', '2024-10-04 07:17:32', NULL, '67108b1e946393010648'),
(5, '082388020323', 80074421.71679842, 96900.00, 'a67b2ffb', '$2y$10$/ELuKwl4o3fsai/BpccVP.XJB1PX8tpElI1xEVga9t0HnlfCtf35q', 'Indonesia', 'IDR', '17284478772942755128816464033282.jpg', '451550', 'Oki', 'Andrian', 'Oki andrian', 'BCA', '8335215113', NULL, NULL, 0, 14, '2024-10-23 01:54:51', '2024-10-04 15:37:00', '2024-10-09 02:54:00', '9e19352ecefb7d35badd'),
(6, '082339954269', 0, 0.00, 'c1b3c5c9', '$2y$10$5LQACCbzcb2S0gw.9Qq5Ku701bI0gGF6byodqBDOJx6xASXDCppXK', 'South Georgia', 'USD', '17285461817367637711093072380595.jpg', '000000', 'Rahmat', 'Hidayat', 'RAHMAT HIDAYAT', 'BCA', '8335504450', NULL, NULL, 0, 0, '2024-10-13 12:29:00', '2024-10-04 15:41:00', '2024-10-10 02:42:00', 'dac7c085fe9e5af7411e'),
(7, '082298248721', 1118.557780430483, 73820.00, '1da44f4f', '$2y$10$6JsqvpBXdx0YxcIiR57yauX9myz5t.lf1s1Fzlj2tkR3IJZYomSiG', 'Indonesia', 'IDR', 'image.jpg', '111111', 'Endean', 'Syah', 'Endeansyah', 'BNI', '1810329243', NULL, NULL, 0, 0, '2024-10-12 08:15:00', '2024-10-04 15:44:00', '2024-10-10 02:42:00', '501fca42dbd33e55f313'),
(8, '085315446744', 0, 0.00, '05df91c1', '$2y$10$wxaMsuEkXJqYdvZu0erane2Aj0b2nFuODZ1qoQKdNZ.5Xvs5gqMU2', 'Indonesia', NULL, NULL, NULL, 'Alzan', 'Zea', '', '', '', NULL, NULL, 0, 0, '2024-10-04 10:44:37', '2024-10-04 15:44:37', NULL, 'f839fa2b558898959fe5'),
(9, '087893238805', 0, 0.00, 'fcef5e5a', '$2y$10$SU13vcjQ.D2qqkx4JpMS4uwB6z1vrNvDjY.F1oKeWFd7ZFrV4iU.i', 'Indonesia', NULL, 'images.jpeg', '301197', 'Amri', 'Ramsadi Mu', 'Sea bank', 'SEABANK', '901517127585', NULL, NULL, 0, 0, '2024-10-10 03:24:08', '2024-10-04 15:45:49', '2024-10-10 03:25:26', '1c14f8c86f231272d8ea'),
(10, '081242289379', 0, 0.00, '5139d3fe', '$2y$10$Q8MXQFCj9qw0YwKGfq1vnuPHSigASYdE4GclwpbFMBVpazxNdLsAC', 'Indonesia', NULL, NULL, NULL, 'NIj', 'Ar', '', '', '', NULL, NULL, 0, 0, '2024-10-04 10:54:33', '2024-10-04 15:54:33', NULL, 'a1a6437c464207ad7020'),
(11, '0811442387', 0, 0.00, '6cd2dcbe', '$2y$10$8DrMCZIdLmpDSSyUoxERFe59tZZXTKSc27XrhE4Yw9UseIF5yhzMq', 'Indonesia', NULL, NULL, NULL, 'Muh', 'Yasin', '', '', '', NULL, NULL, 0, 0, '2024-10-04 11:56:59', '2024-10-04 16:56:59', NULL, 'a4e2e54b24a986e9be1e'),
(12, '082298248722', 0, 0.00, '62669066', '$2y$10$R3DO9NjVTNQKEvB9YlFTCO796S65lI7IdS0sLd30AgxCxS/DRgUfi', 'Indonesia', 'IDR', '20241015180743-2024-10-15accounts__180742.jpg', '555555', 'Endean', 'Syah', 'Endeansyah', 'BNI', '1810329243', NULL, NULL, 0, 0, '2024-10-15 06:12:17', '2024-10-04 17:05:00', '2024-10-15 06:10:20', 'a408950f35711adc4b6b'),
(13, '0878123426', 0, 0.00, 'f7748dad', '$2y$10$L/mcBWdhtP5iiWk5tDEpguAfDhETLdNVN0HpZyH9HnFs.E2ID7WEq', 'Barbados', NULL, '20241008_205028.JPG', '146777', 'Are', 'Syr', 'V', 'Mandiri', '356788', NULL, NULL, 0, 0, '2024-10-14 11:51:34', '2024-10-07 17:19:41', '2024-10-13 10:31:30', '1035028c9eb9be25f973'),
(14, '0878123436', 0, 0.00, 'eb8964d1', '$2y$10$Sm.RUnOLOOXmGMxayHVuieoaQJ6Eii/AVuSHkohCGEoJu09/QCBPu', 'Taiwan', NULL, NULL, NULL, 'Gui', 'Huo', '', '', '', NULL, NULL, 0, 0, '2024-10-08 12:54:06', '2024-10-07 17:21:15', NULL, '710a54f33347a0685077'),
(15, '082388020324', 0, 0.00, 'e09b5119', '$2y$10$cbIZc9Xg7QESfuslxLjRpe3dy2hN/Reqw9tdoMX3rf9mYrXyYfwcy', 'Indonesia', NULL, NULL, NULL, 'OKi', 'Andrian', '', '', '', NULL, NULL, 0, 0, '2024-10-14 12:11:50', '2024-10-07 17:32:38', NULL, '1c152ad64022e9505c1e'),
(16, '082339954268', 0, 0.00, 'f3c24f78', '$2y$10$1AKhRAr9D437RO.ZoZPW2e14tFWtju.2LxKL5dLTdI38gtvRpnUu2', 'Indonesia', NULL, NULL, NULL, 'RAHMAT', 'HIDAYAT', '', '', '', NULL, NULL, 0, 0, '2024-10-16 01:57:40', '2024-10-07 17:53:19', NULL, '6f699c19f6d1f2707227'),
(17, '082298248723', 0, 0.00, '20d9e666', '$2y$10$cn4EcxNzgbUEXsQGmAjjh.SifKlX8b8fT1M1KexStxXQm0Cdbue2W', 'Indonesia', NULL, NULL, NULL, 'Callme', 'Mong', '', '', '', NULL, NULL, 0, 0, '2024-10-12 08:15:19', '2024-10-07 17:53:41', NULL, 'dd9e9422c1f3a05ac536'),
(18, '0812819281', 0, 0.00, '5cf3efd1', '$2y$10$yoQA18PmIDExM5hhirGqy.1dsOGOvQ3/NSt2EuZ6dlTb37aQ3MdYG', 'Laos', NULL, '1341632.png', NULL, 'Zainal', 'Abidin', '', '', '', NULL, NULL, 0, 0, '2024-10-09 03:21:28', '2024-10-08 07:05:04', NULL, '79c30cfa965084a1603a'),
(19, '0879123436', 0, 0.00, 'f4cbb69d', '$2y$10$LCcioq/FGpU.8qvP8udA7uvClWIq.HYMAPhc9ycGOS5ypsObTQu.C', 'Indonesia', NULL, '17284191752857109466885904517373.jpg', NULL, 'Adi', 'Dar', '', '', '', NULL, NULL, 0, 0, '2024-10-09 03:25:40', '2024-10-08 07:09:21', NULL, 'e052f7e1276c0a572a56'),
(21, '082116332525', 0, 0.00, '7cbaffd1', '$2y$10$cAZiyKRzJMnHF9UQRuzrJek0.tffgfaudAahfdpGfs9KAlOmYngI.', 'Indonesia', NULL, NULL, NULL, 'Arvi', 'Queen', '', '', '', NULL, NULL, 0, 0, '2024-10-08 10:49:12', '2024-10-08 15:42:43', NULL, '04ce567209cd90c58409'),
(22, '123456789', 0, 0.00, 'e63810ff', '$2y$10$N01X5gEwC85EtIGvHUTYb.fu4RsT7BDMXmIUPwRljFAke2i.dACse', 'Indonesia', NULL, '78463586_10213406764718671_3200537610967580672_n.jpg', NULL, 'Pengayoman', 'Makassar', '', '', '', NULL, NULL, 0, 0, '2024-10-09 07:33:03', '2024-10-08 17:58:42', NULL, '8409bdd7746f976a769c'),
(23, '0878126426', 0, 0.00, '90a53370', '$2y$10$hBGOmtf0A28kr9LVq1VqFuZH9r4kNzJBog2LVwuDObVYDmVWaTDgq', 'Indonesia', NULL, '20241008_205028.JPG', NULL, 'Voli', 'Sore', '', '', '', NULL, NULL, 0, 0, '2024-10-09 03:15:31', '2024-10-08 20:13:55', NULL, '47097a2357ec4e641ce4'),
(24, '0889123436', 0, 0.00, '837d0c7a', '$2y$10$Jzx31mPfz8L6cFrKL4vRMOLPchDOgSMJcgcSJhf9DJ2Qfsgob/F2O', 'Indonesia', NULL, '17284192843068224988165387526578.jpg', NULL, 'Arek', 'Banjeng', '', '', '', NULL, NULL, 0, 0, '2024-10-09 03:28:35', '2024-10-08 20:27:40', NULL, '4437d407d25a8e313484'),
(25, '081268934753', 0, 0.00, 'bc548397', '$2y$10$IMBb4Tqz9hXuuYBI4Nz2pO7hM2k7SQabP6UusUfhXYpyyCsURksIS', 'Indonesia', NULL, '17284471060888403739768073870529.jpg', NULL, 'Sri', 'bulan', 'Sri Bulan Melati', 'DANA', '082388020323', NULL, NULL, 0, 0, '2024-10-09 11:24:14', '2024-10-09 04:08:38', NULL, '8aa7b10cd8b5a711265c'),
(26, '0889123499', 0, 0.00, '68d48b8f', '$2y$10$sTTYeR3/LKS2qRubCkHvpuzYrTwYhxlG1T8TBnBABJbmi8QDrRO4a', 'South Georgia', NULL, '17284512316819120184567611468617.jpg', NULL, 'Cacs', 'Fiu', '', '', '', NULL, NULL, 0, 0, '2024-10-09 12:18:00', '2024-10-09 05:13:43', NULL, '79a70847131fdb169a03'),
(27, '0889123488', 0, 0.00, 'a2ff282a', '$2y$10$RkeDnLApHQsR.0za4VDEHOAqgCKn7u69AnfpDGpF0LUvmaZqrmEa2', 'Indonesia', NULL, NULL, NULL, 'Nanang', 'Pro', '', '', '', NULL, NULL, 0, 0, '2024-10-09 02:40:30', '2024-10-09 07:40:30', NULL, 'd7047a54bf1375a3deb0'),
(28, '088912377', 0, 0.00, 'b9a13e64', '$2y$10$gbjuZx82IcSEyQnUvl1pA.R9fiChIPuldNynJrVMZcRLrFbPq3E5W', 'Indonesia', NULL, '17284601467174545822717349750072.jpg', '138773', 'Nanang', 'Dar', 'Zainal', 'BCA', '1246778988652', NULL, NULL, 0, 0, '2024-10-10 01:36:33', '2024-10-09 07:47:57', '2024-10-10 07:50:59', '8b1fe0110dd41136eba3'),
(29, '081277524996', 0, 0.00, '7c21c7e2', '$2y$10$So2Kiqm.FgqfvWIaGAhKiOHXhGwQR0Cs8yA.2ZM5sDQ.rq9dQlj6K', 'Indonesia', 'IDR', 'IMG-20241005-WA0009.jpeg', '190994', 'Hardiansya', 'Sang Putra', 'Hardiansyah Sangputra Purnama ', 'DANA', '081277524996', NULL, NULL, 0, 0, '2024-10-15 09:32:18', '2024-10-09 08:57:00', '2024-10-09 03:58:00', '66291f5f047d5816dd4a'),
(30, '087865463097', 0, 0.00, '4022e644', '$2y$10$JAnz2RPv3W/jl.sNumS8V.HqQBT980zl2HptN9tFguiUzWWZzgwaK', 'Indonesia', NULL, 'IMG_20230423_121925_894.webp', '023477', 'Mohammad i', 'Wahyudi', 'MOH IMAM WAHYUDI', 'BRI', '0429 0104 2513 506', NULL, NULL, 0, 0, '2024-10-15 06:03:07', '2024-10-09 18:36:16', '2024-10-10 01:37:46', '565e28b2fb490481f0f0'),
(31, '085855123109', 0, 0.00, 'e65232ee', '$2y$10$ieY.DOFSJoB2FKxkLXdtJOcRuaC9jd/slezMwWYNTIGshMUPliJvG', 'Indonesia', NULL, 'Screenshot_20241010_134058.jpg', '123456', 'Ahmad', 'Munir', 'Ahmad munir', 'BCA', '5610300181', NULL, NULL, 0, 0, '2024-10-15 11:50:07', '2024-10-10 06:36:07', '2024-10-10 01:37:37', '5b9fd3fdaed463c520ef'),
(32, '087855798670', 0, 0.00, '9f3d953b', '$2y$10$9u/GR61jiIDnkGyuMvNj2edfqw5UcKvywZkF8TmRGnB69bEsmIdfe', 'Indonesia', NULL, '17285457260475010830811025335736.jpg', '290122', 'DWI', 'WIDIANTO', 'DWI WIDIANTO', 'SEABANK', '901908110938', NULL, NULL, 0, 0, '2024-10-15 12:24:05', '2024-10-10 07:32:32', '2024-10-10 02:34:52', 'b3b7ed390698630c41f0'),
(33, '082246799846', 0, 0.00, 'a0c8e5aa', '$2y$10$Q8srn2jWi.nl2XCd40JrNuphrPkykcWUj4tEvB.svVOJNwE8ifcyi', 'Indonesia', NULL, NULL, '070589', 'Budi', 'Nurmansah', 'Budi Nurmansah', 'SEABANK', '901688032080', NULL, NULL, 0, 0, '2024-10-15 05:10:32', '2024-10-10 07:45:54', '2024-10-10 02:48:09', '279990728f0ca8f5c1f0'),
(34, '085728675589', 0, 0.00, 'fee3481f', '$2y$10$ne2psmiuuLLo2jqR24OriOnbr9P5j0ByEjGCN.Qe.Bu.a6FPk.YGK', 'Indonesia', NULL, NULL, '102429', 'Ristya', 'Daffa', 'Ristyadaffa', 'DANA', '8528085728675589', NULL, NULL, 0, 0, '2024-10-10 02:52:35', '2024-10-10 07:47:59', '2024-10-10 02:49:55', 'f4c768c5a4cdae954576'),
(35, '089514039366', 0, 0.00, '6908b019', '$2y$10$rQT/J2LCOBCjm0xrk1PziuztkpVW62LdKs01TB/b7T.woflaM2r6y', 'Indonesia', NULL, NULL, '230292', 'Desi', 'Teknik', 'Desinawati ', 'BCA', '1440694906', NULL, NULL, 0, 0, '2024-10-15 07:42:48', '2024-10-10 07:48:17', '2024-10-10 02:49:22', '8d738d2f518b2343a2a5'),
(37, '085758889365', 0, 0.00, '6dec6928', '$2y$10$/vjHg7k6qN5neUP775MhIeQ8S5sJyAnFRVcVuxMndI4ak7PrlhLHi', 'Indonesia', NULL, '9. 3172041411881001_FOTOP3K.jpg', '242426', 'Nanang', 'Diantara', 'Nanang Diantara', 'BRI', '069701016991507', NULL, NULL, 0, 0, '2024-10-15 12:09:50', '2024-10-10 09:06:18', '2024-10-10 04:06:59', '6bf9e7868d75cffc3981'),
(39, '0878123459', 0, 0.00, 'edc3f2de', '$2y$10$CS8fnDBqoBwYslCa6xgFRe2llCapogflcT6TeuJ4SjfrAGH0ZNJX2', 'South Georgia', 'USD', 'man.png', '344422', 'Zainal', 'Asia', 'Zainal Abidin', 'SEABANK', '666666667788', NULL, NULL, 0, 0, '2024-10-10 08:07:11', '2024-10-10 13:07:11', '2024-10-10 08:07:31', '0bbf665f5a113c9f34f7'),
(40, '0878123499', 0, 0.00, '530a20cd', '$2y$10$O1LTfFYVUbOSCHvh7SgmCeNFgGtlzGfcVvtqFLMgdRMJaHDZsC0hy', 'Indonesia', 'IDR', 'logo.svg', '777777', 'Abs', 'Asa', 'Novan', 'BRI', '898067563432', NULL, NULL, 0, 0, '2024-10-11 09:11:21', '2024-10-10 13:08:52', '2024-10-10 08:09:13', 'f0cb1171c1197b7bfc72'),
(41, '088912366', 0, 0.00, '37edc47f', '$2y$10$61l.vcoGg8Jq7Rs.VOh8yO5fS4KjV3LkYmSiWHp5N1w.ewJGwK7SO', 'Wallis and Futuna', 'USD', '17286147068514418850344291693924.jpg', '146797', 'John', 'Syr', 'John', 'SEABANK', '67898788', NULL, NULL, 0, 0, '2024-10-11 09:43:55', '2024-10-11 02:43:55', '2024-10-11 09:44:36', 'eb9cc45e6e1dc22d0b44'),
(42, '088933333', 0, 0.00, 'c7cf5c47', '$2y$10$H2oLmKLt2bydd9g9x13ugepzWV0yux2fPOXxTldrdYCYdoXo9B76i', 'Indonesia', 'IDR', '17286150025438589305675137444100.jpg', '338733', 'Hadi', 'Boyo', 'Hadi', 'BRI', '67898788', NULL, NULL, 0, 0, '2024-10-11 09:49:25', '2024-10-11 02:49:25', '2024-10-11 09:50:00', 'f79d89c1018084f52d56'),
(44, '085726905055', 0, 0.00, 'f72de346', '$2y$10$vGVkAi53QTNeylWcp71BCedXrvNBAQIUH8QCVgGZiyQXuNrsivmh6', 'Indonesia', 'IDR', 'Screenshot_2024-10-12-01-00-18-447_com.facebook.katana.jpg', '085726', 'kris', 'tanto', 'kristanto', 'BRI', '100601001858534', NULL, NULL, 0, 0, '2024-10-12 01:13:10', '2024-10-11 17:48:21', '2024-10-12 12:58:10', '2846b14390a1e3952cd6'),
(45, '082332556908', 0, 0.00, 'dc1a4b6e', '$2y$10$65zmas1qT9yuW/S/DUciwOzl77r7wpr2LKsx/b3eXe6P64CoS57lG', 'Indonesia', 'IDR', 'IMG_20240927_212257-picsay.jpg', '904091', 'LUTFI', 'FIRMANSYAH', 'LUTFI FIRMANSYAH ', 'BRI', '640001009341500', NULL, NULL, 0, 0, '2024-10-12 08:12:35', '2024-10-12 01:12:35', '2024-10-12 08:13:13', '807d5d2aebce61556662'),
(46, '+6282169419513', 93058.74085914886, 596900.99, '6ac5f214', '$2y$10$yHfrkYpaLW8J9/DqPtRHgeOyUSAeUzpxoqase4TQNxDXAjNN24N2K', 'Indonesia', 'IDR', 'unnamed.jpg', '212121', 'Bambang', 'Rahmat', 'Bambang Rahmat Hidayat', 'BCA', '3080206835', NULL, NULL, 0, 0, '2024-10-29 07:36:49', '2024-10-12 03:27:00', '2024-10-12 11:03:00', '9c60474c8e3de8610765'),
(47, '+628997306601', 0.12201766203723423, 10.00, 'fc4de164', '$2y$10$rjErBBHXA6wUmRKZjZs4Wu0LkcWHkDJaDs5MGeGOe6HSC8orN6OuS', 'Malaysia', 'USD', NULL, NULL, 'klausus', 'hanjabi', NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-10-12 08:43:09', '2024-10-12 13:41:50', NULL, '33c3462ef8f209591359'),
(48, '085655304001', 0, 0.00, '2aca54ef', '$2y$10$pR.kyttZkO/nGnsPan2bCuIoA9P1LszMvKZP84LCHStqFJGyIrYla', 'Indonesia', 'IDR', 'Screenshot_20241010-195406.png', '071983', 'Hilmi', 'Yulianto ', 'Hilmi Yulianto ', 'GOPAY', '085655304001', NULL, NULL, 0, 0, '2024-10-15 04:22:17', '2024-10-12 13:53:00', '2024-10-12 08:54:03', '848cfc59f9050eb4f8af'),
(49, '089699393775', 0, 0.00, 'e926874d', '$2y$10$79dA5Wv2oPzLCbOitWy4euM3SA5Dr.d4Ol59rRXQtCNqsDvO7YN4G', 'Indonesia', 'IDR', 'IMG_20240714_174539_813.jpg', '457071', 'Muhammad', 'Asrori', 'Muhammad Asrori', 'BRI', '013001015271534  ', NULL, NULL, 0, 0, '2024-10-12 11:55:47', '2024-10-12 16:51:26', '2024-10-12 11:53:01', 'e6c2f587b9fabf875f03'),
(50, '087809662245', 0, 0.00, '4fe26911', '$2y$10$juLEqi6N/5x6HfN0N9EnQOc7.WLc4kaaQceDPhzxS9lZT7m449OAK', 'Indonesia', 'IDR', NULL, '005357', 'Mustofa', 'Mustofa', 'Mustofa,se', 'BCA', '2450374817', NULL, NULL, 0, 0, '2024-10-13 06:16:22', '2024-10-12 23:16:22', '2024-10-13 06:20:37', '18bed3de222e5651f5bf'),
(52, '085826216077', 0, 0.00, 'd1c980d4', '$2y$10$h7ib42DcpVX1..QXxu8M3Oo0iRoq8XeDFGTqAeD3Kc7SHdiZBKLcO', 'Indonesia', 'IDR', 'Raharjo.jpg', '249100', 'harun', 'alrosid', 'HARUN ALROSID', 'DANA', '08586216077', NULL, NULL, 0, 0, '2024-10-14 07:40:35', '2024-10-14 00:09:25', '2024-10-14 07:10:34', '2aae781a8e2fcf880906'),
(60, '089682546356', 2825.257175920865, 200000.00, '0a553eb0', '$2y$10$t4xCEamDS2nlNIWgSAeHa.48fb.HrAMua8ox7SfmqYTjWqJe9HTmO', 'Indonesia', 'IDR', '20241015115315-2024-10-15accounts__115313.jpg', '546356', 'qim', 'cuk', 'Nasirul mustakim', 'BCA', '0190735869', NULL, NULL, 0, 0, '2024-10-31 02:35:50', '2024-10-15 04:36:00', '2024-10-15 12:02:00', 'add2f0fcdd0f7b87ecd3'),
(62, '082257919969', 0, 0.00, 'a2c3bd03', '$2y$10$PaTmoA5bQKIG8r.Msag.aOXP/5U1iQlJ56ItDU0aJ8szP.XZRzYLm', 'Indonesia', 'IDR', NULL, NULL, 'Iyul', 'Qim', NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-10-15 11:55:29', '2024-10-15 04:55:01', NULL, 'faa063a857458d422456'),
(63, '083869940214', 0, 0.00, 'd16df7b3', '$2y$10$PAofbNOHHgVzqZV./fuEceULlwq4Xzq9RlcxIv0sznahGFEjyaDYa', 'Indonesia', 'IDR', '20241015181047-2024-10-15accounts__181046.png', '940214', 'Charly', 'Ana', 'Carliana', 'DANA', '082229272376', NULL, NULL, 0, 0, '2024-10-15 06:30:00', '2024-10-15 11:01:00', '2024-10-15 06:31:00', ''),
(64, '082140844158', 0, 0.00, 'c035a29d', '$2y$10$oBisvQbr/UQjGrZbXmS1Mems8lmoCeQ9Gw8wHrri4vtzNX3chqOyy', 'Indonesia', 'IDR', '20241015222356-2024-10-15accounts__222354.png', '844158', 'Hudi', 'Prasetyo', 'Hudi prasetyo', 'BCA', '2710651364', NULL, NULL, 0, 0, '2024-10-15 10:29:00', '2024-10-15 15:18:00', '2024-10-15 10:26:00', ''),
(65, '081270083990', 0, 0.00, 'c87d4679', '$2y$10$tiMq/gbXUEnnBF9h/HBvfO3Q4yIY/dQi4lWeVpO.eLNxA5ZFKH2e6', 'Indonesia', 'IDR', '20241015222749-2024-10-15accounts__222748.png', '083990', 'Bilyanto', 'Jaya', 'Bilyanto jaya', 'BCA', '8520078631', NULL, NULL, 0, 0, '2024-10-15 10:26:00', '2024-10-15 15:26:00', '2024-10-15 22:00:00', ''),
(66, '087860487490', 0, 0.00, '677e3abe', '$2y$10$Wkx//.HRupzqs3FpqQqWXOYVUxmgI968Vn4BGS0Xp8EwbdvF7XkJi', 'South Georgia', 'USD', NULL, NULL, 'Zainal', 'Abidin', NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-10-15 10:30:27', '2024-10-15 15:30:27', NULL, ''),
(67, '087860487491', 0, 0.00, '6da95465', '$2y$10$b2uAOfe6x1Pqkb.zQp33cuIIbVlm2/fGl3PS3pAxuSUBD5PNjC9kG', 'South Georgia', 'USD', '17290084409157088634008858334292.jpg', '123456', 'Aer', 'Bender', 'Aer', 'SEABANK', '123456', NULL, NULL, 0, 0, '2024-10-15 11:08:28', '2024-10-15 16:06:25', '2024-10-15 11:07:02', NULL),
(74, '082169419524', 1.122284131963607, 10.00, '42952056', '$2y$10$WlK/PGiVUxyTstD9eQOWAeqDPYcGs1KAhXs2flIFEERZLMzprTDFS', 'Indonesia', 'IDR', 'logo.jpg', '333111', 'yonos', 'putra', 'yono', 'BCA', '9872144124', NULL, NULL, 0, 0, '2024-10-16 09:20:49', '2024-10-16 02:20:49', '2024-10-16 09:21:50', NULL),
(75, '081368652478', 2221.2516203726336, 200000.00, 'e6601096', '$2y$10$JJdSvtbdaYpFOocQE7h2meJrOQOpOtsms0HqmzZxT9.PMRmO.ljPS', 'Indonesia', 'IDR', 'Screenshot 2024-10-16 115301.png', '451550', 'Ba', 'iyah', 'Baiyah', 'Mandiri', '1220012580695', NULL, NULL, 0, 0, '2024-10-21 11:52:36', '2024-10-16 04:48:00', '2024-10-16 11:51:00', NULL),
(76, '085657257215', 0, 0.00, '8efdace9', '$2y$10$WQRI3dj0hm22AfB/USB3BuYndhUI1BDweE5X0bUgAdA2HfIGXwVba', 'South Georgia', 'USD', 'WIN_20240925_12_25_03_Pro.jpg', '331323', 'Indra', 'Rani', 'Indra rani', 'DANA', '085657257215', NULL, NULL, 0, 0, '2024-10-16 01:19:11', '2024-10-16 06:19:11', '2024-10-16 01:19:44', NULL),
(77, '082339954260', 13546.207964098505, 1000.00, '43fe736e', '$2y$10$OCwqdpM10Nyg25ZeEFJf7uhjJ70vseVPiA13mv36ibIL0zwtJOG/6', 'South Georgia', 'USD', '17290719407411473898561590565694.jpg', '111111', 'Rahmat', 'Hidayat', 'Rahmat ', 'DANA', 'Hidayat', NULL, NULL, 0, 0, '2024-10-22 08:00:10', '2024-10-16 09:44:00', '2024-10-16 04:45:00', NULL),
(78, '081918873040', 0, 0.00, '47ba7e69', '$2y$10$akzqYEUYiQU5ZdK8umSYNez8u/Dvs6WSlj8me0I9wClKG.cfcL/iu', 'Indonesia', 'IDR', 'IMG-20241007-WA0004.jpg', '760222', 'Arya', 'Fajar', 'Arya fajar mahardik', 'GOPAY', '081918873040', NULL, NULL, 0, 0, '2024-10-16 06:21:54', '2024-10-16 11:17:50', '2024-10-16 06:18:43', NULL),
(79, '081930706415', 0, 0.00, '977c9f13', '$2y$10$qpv87UE1aOIBOwkvC9Ypeu8i8kMk7owvROENTsjMvKZ5nX00tPhiu', 'Indonesia', 'IDR', '97B106A1-1E60-45A3-9497-6D3D7E769EFF.jpeg', '555555', 'Miranda', 'Ananda', 'Miranda', 'BNI', '1817483867', NULL, NULL, 0, 0, '2024-10-16 11:06:24', '2024-10-16 16:06:24', '2024-10-16 11:08:22', NULL),
(80, '085263793777', 2678.206250000219, 200000.00, 'b50e7dcd', '$2y$10$MU1dPUi3rmg6I5C/IMljZOVGI9eZWOGaXV37JvJe4pSMEwbDrD5Ou', 'Indonesia', 'IDR', '17290974472916502745140522498447.jpg', '212415', 'Bian', 'Sun', 'Mandiri', 'Mandiri', '1080011410835', NULL, NULL, 0, 0, '2024-10-29 01:41:13', '2024-10-16 16:43:00', '2024-10-16 11:44:00', NULL),
(81, '08562484096', 0, 0.00, '1955cb56', '$2y$10$dq.BC26yhW95/qn8D.LdEeaJ7BjXQYRHXPewQMUdrfrFiLSy.V6Bm', 'Indonesia', 'IDR', 'IMG-20240927-WA0010.jpg', '112233', 'mas ', 'rudi', 'Sayidah Amini', 'SEABANK', '901526696118', NULL, NULL, 0, 0, '2024-10-17 01:18:29', '2024-10-17 04:55:58', '2024-10-17 11:58:49', NULL),
(82, '082174657095', 7475.6324520596545, 581400.00, '0a3f7978', '$2y$10$ZUqBYXOXmyhEdSZKE08J/eBSd5nNjo7v3yG0GzhUIJr5IXNTquP.2', 'Indonesia', 'IDR', 'BRI LINK - Bengkong YKB.png', '451550', 'Meli', 'anti', 'Melianti', 'BNI', '1180606801', NULL, NULL, 0, 0, '2024-10-17 07:22:10', '2024-10-17 06:21:26', '2024-10-17 01:22:51', NULL),
(83, '082388020327', 0, 0.00, '0ec6f2ab', '$2y$10$LH5ueOM7qUbGXtTwlP9lP.SMRUfdkyXJ7DgPwxG4wRRyCMrCsGeZ6', 'Indonesia', 'IDR', '17292251793171633016540044473392.jpg', '123457', 'Guni', 'Guno', 'Guni', 'BCA', '356788', NULL, NULL, 0, 0, '2024-10-18 11:18:41', '2024-10-18 04:18:41', '2024-10-18 11:19:05', NULL),
(84, '088223343005', 112586.86342554512, 10000000.00, 'c992eec6', '$2y$10$Pgqe3kIuw3yKa12l2MSKDOhbxua3qARPllQFYRUoa4akWkIcoIP.K', 'Indonesia', 'IDR', '20241019111710-2024-10-19accounts__111707.png', '43005', 'Muhamad', 'Sujana', 'Muhamad sujana', 'BCA', '3761805795', NULL, NULL, 0, 0, '2024-10-19 10:25:00', '2024-10-19 03:25:00', '2024-10-19 10:26:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accounts__`
--

CREATE TABLE `accounts__` (
  `id` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `income` decimal(9,2) NOT NULL,
  `balance` decimal(9,2) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country` varchar(30) NOT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `photo` varchar(256) DEFAULT NULL,
  `pin` varchar(6) DEFAULT NULL,
  `fname` varchar(10) DEFAULT NULL,
  `lname` varchar(10) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `nomor` varchar(50) DEFAULT NULL,
  `investasi` int(10) NOT NULL DEFAULT 0,
  `profit` int(10) NOT NULL DEFAULT 0,
  `login_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `accounts__`
--

INSERT INTO `accounts__` (`id`, `phone`, `income`, `balance`, `password`, `country`, `currency`, `photo`, `pin`, `fname`, `lname`, `nama`, `bank`, `nomor`, `investasi`, `profit`, `login_at`, `created_at`, `updated_at`) VALUES
(1, '0878123456', 0.00, 0.00, '$2y$10$SfhYIDtn.iOuCW7zfoFLuuZHX6lja4lF4XA4JqNmpiH/.P3zB8JCa', '', NULL, NULL, NULL, 'Andrian', 'Oki', 'Reas', 'Mandiri', '356788', 0, 0, '2024-10-08 02:15:41', '2024-10-04 00:00:00', NULL),
(2, '0878123457', 0.00, 0.00, '$2y$10$SfhYIDtn.iOuCW7zfoFLuuZHX6lja4lF4XA4JqNmpiH/.P3zB8JCa', '', NULL, NULL, NULL, 'Andrian', 'Oki', '', '', '', 0, 0, '2024-10-06 02:21:21', '2024-10-04 01:00:00', NULL),
(3, '0878123458', 0.00, 0.00, '$2y$10$SfhYIDtn.iOuCW7zfoFLuuZHX6lja4lF4XA4JqNmpiH/.P3zB8JCa', '', NULL, '9723582.jpg', '131311', 'Andrian', 'Oki', 'Za', 'BNI', '121314', 0, 0, '2024-10-10 07:40:04', '2024-10-04 02:00:00', '2024-10-09 08:35:59'),
(4, '0878608932', 0.00, 0.00, '$2y$10$p5G4JdMfiQwUsxAVLPsnf.2dIasDaI5XgL/gEW6ND0.BDwtbbflLm', 'Taiwan', NULL, NULL, NULL, 'Adi', 'Mutra', '', '', '', 0, 0, '2024-10-04 02:18:15', '2024-10-04 07:17:32', NULL),
(5, '082388020323', 0.00, 0.00, '$2y$10$/ELuKwl4o3fsai/BpccVP.XJB1PX8tpElI1xEVga9t0HnlfCtf35q', 'Palestine', NULL, '17284478772942755128816464033282.jpg', '451550', 'Oki', 'Andrian', 'Oki andrian', 'BCA', '8335215113', 0, 0, '2024-10-10 09:50:11', '2024-10-04 15:37:36', '2024-10-09 02:54:10'),
(6, '082339954268', 0.00, 0.00, '$2y$10$5LQACCbzcb2S0gw.9Qq5Ku701bI0gGF6byodqBDOJx6xASXDCppXK', 'Indonesia', NULL, '17285461817367637711093072380595.jpg', '000000', 'Rahmat', 'Hidayat', 'RAHMAT HIDAYAT', 'BCA', '8335504450', 0, 0, '2024-10-10 04:25:56', '2024-10-04 15:41:16', '2024-10-10 02:42:37'),
(7, '082298248722', 0.00, 0.00, '$2y$10$6JsqvpBXdx0YxcIiR57yauX9myz5t.lf1s1Fzlj2tkR3IJZYomSiG', 'Indonesia', NULL, 'image.jpg', '555555', 'Endean', 'Syah', 'Endeansyah', 'BNI', '1810329243', 0, 0, '2024-10-10 04:25:18', '2024-10-04 15:44:12', '2024-10-10 02:42:47'),
(8, '085315446744', 0.00, 0.00, '$2y$10$wxaMsuEkXJqYdvZu0erane2Aj0b2nFuODZ1qoQKdNZ.5Xvs5gqMU2', 'Indonesia', NULL, NULL, NULL, 'Alzan', 'Zea', '', '', '', 0, 0, '2024-10-04 10:44:37', '2024-10-04 15:44:37', NULL),
(9, '087893238805', 0.00, 0.00, '$2y$10$SU13vcjQ.D2qqkx4JpMS4uwB6z1vrNvDjY.F1oKeWFd7ZFrV4iU.i', 'Indonesia', NULL, 'images.jpeg', '301197', 'Amri', 'Ramsadi Mu', 'Sea bank', 'SEABANK', '901517127585', 0, 0, '2024-10-10 03:24:08', '2024-10-04 15:45:49', '2024-10-10 03:25:26'),
(10, '081242289379', 0.00, 0.00, '$2y$10$Q8MXQFCj9qw0YwKGfq1vnuPHSigASYdE4GclwpbFMBVpazxNdLsAC', 'Indonesia', NULL, NULL, NULL, 'NIj', 'Ar', '', '', '', 0, 0, '2024-10-04 10:54:33', '2024-10-04 15:54:33', NULL),
(11, '0811442387', 0.00, 0.00, '$2y$10$8DrMCZIdLmpDSSyUoxERFe59tZZXTKSc27XrhE4Yw9UseIF5yhzMq', 'Indonesia', NULL, NULL, NULL, 'Muh', 'Yasin', '', '', '', 0, 0, '2024-10-04 11:56:59', '2024-10-04 16:56:59', NULL),
(12, '082298248722', 0.00, 0.00, '$2y$10$R3DO9NjVTNQKEvB9YlFTCO796S65lI7IdS0sLd30AgxCxS/DRgUfi', 'Switzerland', NULL, NULL, NULL, 'Endean', 'Syah', '', '', '', 0, 0, '2024-10-10 04:25:18', '2024-10-04 17:05:20', NULL),
(13, '0878123426', 0.00, 0.00, '$2y$10$L/mcBWdhtP5iiWk5tDEpguAfDhETLdNVN0HpZyH9HnFs.E2ID7WEq', 'Barbados', NULL, '20241008_205028.JPG', NULL, 'Are', 'Syr', '', '', '', 0, 0, '2024-10-09 03:25:22', '2024-10-07 17:19:41', NULL),
(14, '0878123436', 0.00, 0.00, '$2y$10$Sm.RUnOLOOXmGMxayHVuieoaQJ6Eii/AVuSHkohCGEoJu09/QCBPu', 'Taiwan', NULL, NULL, NULL, 'Gui', 'Huo', '', '', '', 0, 0, '2024-10-08 12:54:06', '2024-10-07 17:21:15', NULL),
(15, '082388020323', 0.00, 0.00, '$2y$10$cbIZc9Xg7QESfuslxLjRpe3dy2hN/Reqw9tdoMX3rf9mYrXyYfwcy', 'Indonesia', NULL, NULL, NULL, 'OKi', 'Andrian', '', '', '', 0, 0, '2024-10-10 09:50:11', '2024-10-07 17:32:38', NULL),
(16, '082339954268', 0.00, 0.00, '$2y$10$1AKhRAr9D437RO.ZoZPW2e14tFWtju.2LxKL5dLTdI38gtvRpnUu2', 'Indonesia', NULL, NULL, NULL, 'RAHMAT', 'HIDAYAT', '', '', '', 0, 0, '2024-10-10 04:25:56', '2024-10-07 17:53:19', NULL),
(17, '082298248722', 0.00, 0.00, '$2y$10$cn4EcxNzgbUEXsQGmAjjh.SifKlX8b8fT1M1KexStxXQm0Cdbue2W', 'Indonesia', NULL, NULL, NULL, 'Callme', 'Mong', '', '', '', 0, 0, '2024-10-10 04:25:18', '2024-10-07 17:53:41', NULL),
(18, '0812819281', 0.00, 0.00, '$2y$10$yoQA18PmIDExM5hhirGqy.1dsOGOvQ3/NSt2EuZ6dlTb37aQ3MdYG', 'Laos', NULL, '1341632.png', NULL, 'Zainal', 'Abidin', '', '', '', 0, 0, '2024-10-09 03:21:28', '2024-10-08 07:05:04', NULL),
(19, '0879123436', 0.00, 0.00, '$2y$10$LCcioq/FGpU.8qvP8udA7uvClWIq.HYMAPhc9ycGOS5ypsObTQu.C', 'Indonesia', NULL, '17284191752857109466885904517373.jpg', NULL, 'Adi', 'Dar', '', '', '', 0, 0, '2024-10-09 03:25:40', '2024-10-08 07:09:21', NULL),
(21, '082116332525', 0.00, 0.00, '$2y$10$cAZiyKRzJMnHF9UQRuzrJek0.tffgfaudAahfdpGfs9KAlOmYngI.', 'Indonesia', NULL, NULL, NULL, 'Arvi', 'Queen', '', '', '', 0, 0, '2024-10-08 10:49:12', '2024-10-08 15:42:43', NULL),
(22, '123456789', 0.00, 0.00, '$2y$10$N01X5gEwC85EtIGvHUTYb.fu4RsT7BDMXmIUPwRljFAke2i.dACse', 'Indonesia', NULL, '78463586_10213406764718671_3200537610967580672_n.jpg', NULL, 'Pengayoman', 'Makassar', '', '', '', 0, 0, '2024-10-09 07:33:03', '2024-10-08 17:58:42', NULL),
(23, '0878126426', 0.00, 0.00, '$2y$10$hBGOmtf0A28kr9LVq1VqFuZH9r4kNzJBog2LVwuDObVYDmVWaTDgq', 'Indonesia', NULL, '20241008_205028.JPG', NULL, 'Voli', 'Sore', '', '', '', 0, 0, '2024-10-09 03:15:31', '2024-10-08 20:13:55', NULL),
(24, '0889123436', 0.00, 0.00, '$2y$10$Jzx31mPfz8L6cFrKL4vRMOLPchDOgSMJcgcSJhf9DJ2Qfsgob/F2O', 'Indonesia', NULL, '17284192843068224988165387526578.jpg', NULL, 'Arek', 'Banjeng', '', '', '', 0, 0, '2024-10-09 03:28:35', '2024-10-08 20:27:40', NULL),
(25, '081268934753', 0.00, 0.00, '$2y$10$IMBb4Tqz9hXuuYBI4Nz2pO7hM2k7SQabP6UusUfhXYpyyCsURksIS', 'Indonesia', NULL, '17284471060888403739768073870529.jpg', NULL, 'Sri', 'bulan', 'Sri Bulan Melati', 'DANA', '082388020323', 0, 0, '2024-10-09 11:24:14', '2024-10-09 04:08:38', NULL),
(26, '0889123499', 0.00, 0.00, '$2y$10$sTTYeR3/LKS2qRubCkHvpuzYrTwYhxlG1T8TBnBABJbmi8QDrRO4a', 'South Georgia', NULL, '17284512316819120184567611468617.jpg', NULL, 'Cacs', 'Fiu', '', '', '', 0, 0, '2024-10-09 12:18:00', '2024-10-09 05:13:43', NULL),
(27, '0889123488', 0.00, 0.00, '$2y$10$RkeDnLApHQsR.0za4VDEHOAqgCKn7u69AnfpDGpF0LUvmaZqrmEa2', 'Indonesia', NULL, NULL, NULL, 'Nanang', 'Pro', '', '', '', 0, 0, '2024-10-09 02:40:30', '2024-10-09 07:40:30', NULL),
(28, '088912377', 0.00, 0.00, '$2y$10$gbjuZx82IcSEyQnUvl1pA.R9fiChIPuldNynJrVMZcRLrFbPq3E5W', 'Indonesia', NULL, '17284601467174545822717349750072.jpg', '138773', 'Nanang', 'Dar', 'Zainal', 'BCA', '1246778988652', 0, 0, '2024-10-10 01:36:33', '2024-10-09 07:47:57', '2024-10-10 07:50:59'),
(29, '081277524996', 0.00, 0.00, '$2y$10$So2Kiqm.FgqfvWIaGAhKiOHXhGwQR0Cs8yA.2ZM5sDQ.rq9dQlj6K', 'Indonesia', NULL, 'IMG-20241005-WA0009.jpeg', '190994', 'Hardiansya', 'Sang Putra', 'Hardiansyah Sangputra Purnama ', 'DANA', '081277524996', 0, 0, '2024-10-09 07:16:46', '2024-10-09 08:57:48', '2024-10-09 03:58:51'),
(30, '087865463097', 0.00, 0.00, '$2y$10$JAnz2RPv3W/jl.sNumS8V.HqQBT980zl2HptN9tFguiUzWWZzgwaK', 'Indonesia', NULL, 'IMG_20230423_121925_894.webp', '023477', 'Mohammad i', 'Wahyudi', 'MOH IMAM WAHYUDI', 'BRI', '0429 0104 2513 506', 0, 0, '2024-10-10 01:24:09', '2024-10-09 18:36:16', '2024-10-10 01:37:46'),
(31, '085855123109', 0.00, 0.00, '$2y$10$ieY.DOFSJoB2FKxkLXdtJOcRuaC9jd/slezMwWYNTIGshMUPliJvG', 'Indonesia', NULL, 'Screenshot_20241010_134058.jpg', '123456', 'Ahmad', 'Munir', 'Ahmad munir', 'BCA', '5610300181', 0, 0, '2024-10-10 04:02:26', '2024-10-10 06:36:07', '2024-10-10 01:37:37'),
(32, '087855798670', 0.00, 0.00, '$2y$10$9u/GR61jiIDnkGyuMvNj2edfqw5UcKvywZkF8TmRGnB69bEsmIdfe', 'Indonesia', NULL, '17285457260475010830811025335736.jpg', '290122', 'DWI', 'WIDIANTO', 'DWI WIDIANTO', 'SEABANK', '901908110938', 0, 0, '2024-10-10 02:36:02', '2024-10-10 07:32:32', '2024-10-10 02:34:52'),
(33, '082246799846', 0.00, 0.00, '$2y$10$Q8srn2jWi.nl2XCd40JrNuphrPkykcWUj4tEvB.svVOJNwE8ifcyi', 'Indonesia', NULL, NULL, '070589', 'Budi', 'Nurmansah', 'Budi Nurmansah', 'SEABANK', '901688032080', 0, 0, '2024-10-10 02:51:31', '2024-10-10 07:45:54', '2024-10-10 02:48:09'),
(34, '085728675589', 0.00, 0.00, '$2y$10$ne2psmiuuLLo2jqR24OriOnbr9P5j0ByEjGCN.Qe.Bu.a6FPk.YGK', 'Indonesia', NULL, NULL, '102429', 'Ristya', 'Daffa', 'Ristyadaffa', 'DANA', '8528085728675589', 0, 0, '2024-10-10 02:52:35', '2024-10-10 07:47:59', '2024-10-10 02:49:55'),
(35, '089514039366', 0.00, 0.00, '$2y$10$rQT/J2LCOBCjm0xrk1PziuztkpVW62LdKs01TB/b7T.woflaM2r6y', 'Indonesia', NULL, NULL, '230292', 'Desi', 'Teknik', 'Desinawati ', 'BCA', '1440694906', 0, 0, '2024-10-10 06:01:57', '2024-10-10 07:48:17', '2024-10-10 02:49:22'),
(36, '088223343005', 0.00, 0.00, '$2y$10$GDc9mVTu6oRiZDD3OyAgwOyVRXkAjTDAywkf2ZQ/ngR.ahXmx.y5G', 'Indonesia', NULL, 'FB_IMG_1728463340467.jpg', '112233', 'Muhamad', 'Sujana', 'Muhamad sujana', 'BCA', '3761805795', 0, 0, '2024-10-10 08:32:17', '2024-10-10 08:51:12', '2024-10-10 03:52:03'),
(37, '085758889365', 0.00, 0.00, '$2y$10$/vjHg7k6qN5neUP775MhIeQ8S5sJyAnFRVcVuxMndI4ak7PrlhLHi', 'Indonesia', NULL, '9. 3172041411881001_FOTOP3K.jpg', '242426', 'Nanang', 'Diantara', 'Nanang Diantara', 'BRI', '069701016991507', 0, 0, '2024-10-10 04:06:18', '2024-10-10 09:06:18', '2024-10-10 04:06:59'),
(38, '081235401617', 1.00, 2.00, '$2y$10$0byyIKVcRIisetUChicCouG1imZpjQ3iaONZxypxaMegupIvtV9wK', 'Indonesia', NULL, '10464146_10201561411712249_4344017568155739967_n.jpg', '100499', 'Hana', 'Rusti', '123', 'BCA', '123', 0, 0, '2024-10-10 05:43:00', '2024-10-10 10:43:00', '2024-10-10 05:43:00'),
(39, '0878123459', 0.00, 0.00, '$2y$10$CS8fnDBqoBwYslCa6xgFRe2llCapogflcT6TeuJ4SjfrAGH0ZNJX2', 'South Georgia', 'USD', 'man.png', '344422', 'Zainal', 'Asia', 'Zainal Abidin', 'SEABANK', '666666667788', 0, 0, '2024-10-10 08:07:11', '2024-10-10 13:07:11', '2024-10-10 08:07:31'),
(40, '0878123499', 0.00, 0.00, '$2y$10$O1LTfFYVUbOSCHvh7SgmCeNFgGtlzGfcVvtqFLMgdRMJaHDZsC0hy', 'Indonesia', 'IDR', 'logo.svg', '777777', 'Abs', 'Asa', 'Novan', 'BRI', '898067563432', 0, 0, '2024-10-10 08:08:52', '2024-10-10 13:08:52', '2024-10-10 08:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(11) NOT NULL,
  `persentase` double(11,2) NOT NULL,
  `second` int(11) NOT NULL,
  `refferal` double NOT NULL,
  `fee_admin` double NOT NULL,
  `fee_admin_crypto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `persentase`, `second`, `refferal`, `fee_admin`, `fee_admin_crypto`) VALUES
(1, 0.23, 86400, 0.1, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'MANDIRI_VA', 'Bank Mandiri Virtual Account ', '2024-10-06 06:46:21', NULL),
(2, 'BCA_VA', 'Bank BCA Virtual Account ', '2024-10-06 07:10:23', NULL),
(3, 'BRI_VA', 'Bank BRI Virtual Account ', '2024-10-06 07:23:39', NULL),
(4, 'BNI_VA', 'Bank BNI Virtual Account ', '2024-10-06 07:23:57', NULL),
(5, 'ACEH', 'Bank Aceh', '2024-10-06 07:24:29', NULL),
(6, 'ACEH_UUS', 'BPD Aceh UUS', '2024-10-06 07:26:02', NULL),
(7, 'AGRIS', 'Bank Agris', '2024-10-06 07:27:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `image` text NOT NULL,
  `tags` text NOT NULL,
  `category` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL,
  `author` varchar(100) NOT NULL,
  `viewers` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `slug`, `content`, `image`, `tags`, `category`, `status`, `author`, `viewers`, `created_at`, `updated_at`) VALUES
(1, 'Hello Wellcome To Cicool Builder', 'Hello-Wellcome-To-Ciool-Builder', 'greetings from our team I hope to be happy! ', 'wellcome.jpg', 'greetings', '1', 'publish', 'admin', 0, '2024-10-08 11:56:09', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `category_id` int(11) UNSIGNED NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `category_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`category_id`, `category_name`, `category_desc`) VALUES
(1, 'Technology', ''),
(2, 'Lifestyle', '');

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `captcha_id` int(11) UNSIGNED NOT NULL,
  `captcha_time` int(10) DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `word` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cc_options`
--

CREATE TABLE `cc_options` (
  `id` int(11) UNSIGNED NOT NULL,
  `option_name` varchar(200) NOT NULL,
  `option_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `cc_options`
--

INSERT INTO `cc_options` (`id`, `option_name`, `option_value`) VALUES
(1, 'landing_page_id', 'login'),
(2, 'active_theme', 'cicool'),
(3, 'limit_pagination', '10'),
(4, 'timezone', 'Asia/Jakarta'),
(5, 'site_name', 'INTRUST ADMIN'),
(6, 'site_description', ''),
(7, 'keywords', ''),
(8, 'author', ''),
(9, 'email', 'nanang.programmer@gmail.com'),
(10, 'google_id', ''),
(11, 'google_secret', ''),
(12, 'logo', '20241009160734-2024-10-09setting160731.png');

-- --------------------------------------------------------

--
-- Table structure for table `cc_session`
--

CREATE TABLE `cc_session` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) NOT NULL,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crud`
--

CREATE TABLE `crud` (
  `id` int(11) UNSIGNED NOT NULL,
  `crud_modal` varchar(20) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `table_name` varchar(200) NOT NULL,
  `sort_by` varchar(50) DEFAULT NULL,
  `sort_field` varchar(255) DEFAULT NULL,
  `javascript` text DEFAULT NULL,
  `style` text DEFAULT NULL,
  `javascript_setting_detail` text DEFAULT NULL,
  `javascript_setting_update` text DEFAULT NULL,
  `javascript_setting_create` text DEFAULT NULL,
  `javascript_setting_list` text DEFAULT NULL,
  `primary_key` varchar(200) NOT NULL,
  `page_read` varchar(20) DEFAULT NULL,
  `page_create` varchar(20) DEFAULT NULL,
  `page_update` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `crud`
--

INSERT INTO `crud` (`id`, `crud_modal`, `title`, `subject`, `table_name`, `sort_by`, `sort_field`, `javascript`, `style`, `javascript_setting_detail`, `javascript_setting_update`, `javascript_setting_create`, `javascript_setting_list`, `primary_key`, `page_read`, `page_create`, `page_update`) VALUES
(1, NULL, 'Table User', 'Table User', 'table_user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'id', 'yes', 'yes', 'yes'),
(0, NULL, 'Accounts', 'Accounts', 'accounts__', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'id', 'yes', 'yes', 'yes'),
(0, NULL, 'Panel', 'Panel', 'panel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'id', 'yes', 'yes', 'yes'),
(0, NULL, 'Lot', 'Lot', 'lot', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'id', 'yes', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `crud_action`
--

CREATE TABLE `crud_action` (
  `id` int(11) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `action` varchar(200) NOT NULL,
  `meta` text DEFAULT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crud_custom_option`
--

CREATE TABLE `crud_custom_option` (
  `id` int(11) UNSIGNED NOT NULL,
  `crud_field_id` int(11) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `option_label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crud_field`
--

CREATE TABLE `crud_field` (
  `id` int(11) UNSIGNED NOT NULL,
  `crud_id` int(11) NOT NULL,
  `field_name` varchar(200) NOT NULL,
  `field_label` varchar(200) DEFAULT NULL,
  `input_type` varchar(200) NOT NULL,
  `help_block` text DEFAULT NULL,
  `placeholder` text DEFAULT NULL,
  `auto_generate_help_block` varchar(40) DEFAULT NULL,
  `wrapper_class` text DEFAULT NULL,
  `show_column` varchar(10) DEFAULT NULL,
  `show_add_form` varchar(10) DEFAULT NULL,
  `show_update_form` varchar(10) DEFAULT NULL,
  `show_detail_page` varchar(10) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `relation_table` varchar(200) DEFAULT NULL,
  `relation_value` varchar(200) DEFAULT NULL,
  `relation_label` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `crud_field`
--

INSERT INTO `crud_field` (`id`, `crud_id`, `field_name`, `field_label`, `input_type`, `help_block`, `placeholder`, `auto_generate_help_block`, `wrapper_class`, `show_column`, `show_add_form`, `show_update_form`, `show_detail_page`, `sort`, `relation_table`, `relation_value`, `relation_label`) VALUES
(1, 1, 'id', 'id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', ''),
(2, 1, 'nama_user', 'nama_user', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', ''),
(3, 1, 'total_invest', 'total_invest', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 3, '', '', ''),
(4, 1, 'profit_income', 'profit_income', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 4, '', '', ''),
(5, 1, 'username', 'username', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 5, '', '', ''),
(6, 1, 'email', 'email', 'email', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 6, '', '', ''),
(7, 1, 'no_hp', 'no_hp', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 7, '', '', ''),
(8, 1, 'pin', 'pin', 'input', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 8, '', '', ''),
(9, 1, 'photo_user', 'photo_user', 'file', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 9, '', '', ''),
(0, 0, 'id', 'id', 'number', '', '', 'yes', NULL, '', '', '', 'yes', 1, '', '', ''),
(0, 0, 'amount', 'amount', 'number', '', '', 'yes', NULL, 'yes', 'yes', 'yes', 'yes', 2, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `crud_field_condition`
--

CREATE TABLE `crud_field_condition` (
  `id` int(11) UNSIGNED NOT NULL,
  `crud_field_id` int(11) NOT NULL,
  `reff` text DEFAULT NULL,
  `crud_id` int(11) NOT NULL,
  `cond_field` text DEFAULT NULL,
  `cond_operator` text DEFAULT NULL,
  `cond_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crud_field_configuration`
--

CREATE TABLE `crud_field_configuration` (
  `id` int(11) UNSIGNED NOT NULL,
  `crud_field_id` int(11) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `group_config` varchar(200) NOT NULL,
  `config_name` text NOT NULL,
  `config_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crud_field_validation`
--

CREATE TABLE `crud_field_validation` (
  `id` int(11) UNSIGNED NOT NULL,
  `crud_field_id` int(11) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `validation_name` varchar(200) NOT NULL,
  `validation_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `crud_field_validation`
--

INSERT INTO `crud_field_validation` (`id`, `crud_field_id`, `crud_id`, `validation_name`, `validation_value`) VALUES
(1, 2, 1, 'required', ''),
(2, 2, 1, 'max_length', '200'),
(3, 3, 1, 'required', ''),
(4, 3, 1, 'max_length', '11'),
(5, 4, 1, 'required', ''),
(6, 4, 1, 'max_length', '11'),
(7, 5, 1, 'required', ''),
(8, 5, 1, 'max_length', '52'),
(9, 6, 1, 'required', ''),
(10, 6, 1, 'max_length', '52'),
(11, 7, 1, 'required', ''),
(12, 7, 1, 'max_length', '52'),
(13, 8, 1, 'required', ''),
(14, 8, 1, 'max_length', '52'),
(15, 9, 1, 'required', ''),
(16, 9, 1, 'max_length', '122'),
(0, 0, 0, 'required', ''),
(0, 0, 0, 'max_length', '11');

-- --------------------------------------------------------

--
-- Table structure for table `crud_function`
--

CREATE TABLE `crud_function` (
  `id` int(11) UNSIGNED NOT NULL,
  `slug` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crud_input_chained`
--

CREATE TABLE `crud_input_chained` (
  `id` int(11) UNSIGNED NOT NULL,
  `chain_field` varchar(250) DEFAULT NULL,
  `chain_field_eq` varchar(250) DEFAULT NULL,
  `crud_field_id` int(11) DEFAULT NULL,
  `crud_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crud_input_type`
--

CREATE TABLE `crud_input_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(200) NOT NULL,
  `relation` varchar(20) NOT NULL,
  `custom_value` int(11) NOT NULL,
  `validation_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `crud_input_type`
--

INSERT INTO `crud_input_type` (`id`, `type`, `relation`, `custom_value`, `validation_group`) VALUES
(1, 'input', '0', 0, 'input'),
(2, 'textarea', '0', 0, 'text'),
(3, 'select', '1', 0, 'select'),
(4, 'editor_wysiwyg', '0', 0, 'editor'),
(5, 'password', '0', 0, 'password'),
(6, 'email', '0', 0, 'email'),
(7, 'address_map', '0', 0, 'address_map'),
(8, 'file', '0', 0, 'file'),
(9, 'file_multiple', '0', 0, 'file_multiple'),
(10, 'datetime', '0', 0, 'datetime'),
(11, 'date', '0', 0, 'date'),
(12, 'timestamp', '0', 0, 'timestamp'),
(13, 'number', '0', 0, 'number'),
(14, 'yes_no', '0', 0, 'yes_no'),
(15, 'time', '0', 0, 'time'),
(16, 'year', '0', 0, 'year'),
(17, 'select_multiple', '1', 0, 'select_multiple'),
(18, 'checkboxes', '1', 0, 'checkboxes'),
(19, 'options', '1', 0, 'options'),
(20, 'true_false', '0', 0, 'true_false'),
(21, 'current_user_username', '0', 0, 'user_username'),
(22, 'current_user_id', '0', 0, 'current_user_id'),
(23, 'custom_option', '0', 1, 'custom_option'),
(24, 'custom_checkbox', '0', 1, 'custom_checkbox'),
(25, 'custom_select_multiple', '0', 1, 'custom_select_multiple'),
(26, 'custom_select', '0', 1, 'custom_select'),
(27, 'chained', '1', 0, 'chained');

-- --------------------------------------------------------

--
-- Table structure for table `crud_input_validation`
--

CREATE TABLE `crud_input_validation` (
  `id` int(11) UNSIGNED NOT NULL,
  `validation` varchar(200) NOT NULL,
  `input_able` varchar(20) NOT NULL,
  `group_input` text NOT NULL,
  `input_placeholder` text NOT NULL,
  `call_back` varchar(10) NOT NULL,
  `input_validation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `crud_input_validation`
--

INSERT INTO `crud_input_validation` (`id`, `validation`, `input_able`, `group_input`, `input_placeholder`, `call_back`, `input_validation`) VALUES
(1, 'required', 'no', 'input, file, number, text, datetime, select, password, email, editor, date, yes_no, time, year, select_multiple, options, checkboxes, true_false, address_map, custom_option, custom_checkbox, custom_select_multiple, custom_select, file_multiple, chained', '', '', ''),
(2, 'max_length', 'yes', 'input, number, text, select, password, email, editor, yes_no, time, year, select_multiple, options, checkboxes, address_map', '', '', 'numeric'),
(3, 'min_length', 'yes', 'input, number, text, select, password, email, editor, time, year, select_multiple, address_map', '', '', 'numeric'),
(4, 'valid_email', 'no', 'input, email', '', '', ''),
(5, 'valid_emails', 'no', 'input, email', '', '', ''),
(6, 'regex', 'yes', 'input, number, text, datetime, select, password, email, editor, date, yes_no, time, year, select_multiple, options, checkboxes', '', 'yes', 'callback_valid_regex'),
(7, 'decimal', 'no', 'input, number, text, select', '', '', ''),
(8, 'allowed_extension', 'yes', 'file, file_multiple', 'ex : jpg,png,..', '', 'callback_valid_extension_list'),
(9, 'max_width', 'yes', 'file, file_multiple', '', '', 'numeric'),
(10, 'max_height', 'yes', 'file, file_multiple', '', '', 'numeric'),
(11, 'max_size', 'yes', 'file, file_multiple', '... kb', '', 'numeric'),
(12, 'max_item', 'yes', 'file_multiple', '', '', 'numeric'),
(13, 'valid_url', 'no', 'input, text', '', '', ''),
(14, 'alpha', 'no', 'input, text, select, password, editor, yes_no', '', '', ''),
(15, 'alpha_numeric', 'no', 'input, number, text, select, password, editor', '', '', ''),
(16, 'alpha_numeric_spaces', 'no', 'input, number, text,select, password, editor', '', '', ''),
(17, 'valid_number', 'no', 'input, number, text, password, editor, true_false', '', 'yes', ''),
(18, 'valid_datetime', 'no', 'input, datetime, text', '', 'yes', ''),
(19, 'valid_date', 'no', 'input, datetime, date, text', '', 'yes', ''),
(20, 'valid_max_selected_option', 'yes', 'select_multiple, custom_select_multiple, custom_checkbox, checkboxes', '', 'yes', 'numeric'),
(21, 'valid_min_selected_option', 'yes', 'select_multiple, custom_select_multiple, custom_checkbox, checkboxes', '', 'yes', 'numeric'),
(22, 'valid_alpha_numeric_spaces_underscores', 'no', 'input, text,select, password, editor', '', 'yes', ''),
(23, 'matches', 'yes', 'input, number, text, password, email', 'any field', 'no', 'callback_valid_alpha_numeric_spaces_underscores'),
(24, 'valid_json', 'no', 'input, text, editor', '', 'yes', ' '),
(25, 'valid_url', 'no', 'input, text, editor', '', 'no', ' '),
(26, 'exact_length', 'yes', 'input, text, number', '0 - 99999*', 'no', 'numeric'),
(27, 'alpha_dash', 'no', 'input, text', '', 'no', ''),
(28, 'integer', 'no', 'input, text, number', '', 'no', ''),
(29, 'differs', 'yes', 'input, text, number, email, password, editor, options, select', 'any field', 'no', 'callback_valid_alpha_numeric_spaces_underscores'),
(30, 'is_natural', 'no', 'input, text, number', '', 'no', ''),
(31, 'is_natural_no_zero', 'no', 'input, text, number', '', 'no', ''),
(32, 'less_than', 'yes', 'input, text, number', '', 'no', 'numeric'),
(33, 'less_than_equal_to', 'yes', 'input, text, number', '', 'no', 'numeric'),
(34, 'greater_than', 'yes', 'input, text, number', '', 'no', 'numeric'),
(35, 'greater_than_equal_to', 'yes', 'input, text, number', '', 'no', 'numeric'),
(36, 'in_list', 'yes', 'input, text, number, select, options', '', 'no', 'callback_valid_multiple_value'),
(37, 'valid_ip', 'no', 'input, text', '', 'no', '');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE `dashboard` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `sort_order` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(11) NOT NULL,
  `id_user` text NOT NULL,
  `amount` int(11) NOT NULL,
  `proof` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(20) NOT NULL,
  `date_verify` datetime NOT NULL,
  `pesan` text NOT NULL,
  `crypto` text DEFAULT NULL,
  `notif` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `id_user`, `amount`, `proof`, `date`, `status`, `date_verify`, `pesan`, `crypto`, `notif`) VALUES
(4, '46', 100000, 'uploads/proof/6710d779524b5-removebg-preview.png', '2024-10-17 09:23:05', '2', '2024-10-17 09:23:05', 'tes', NULL, ''),
(5, '5', 100000, 'uploads/proof/6710de9f75337-BRI LINK - Bengkong YKB.png', '2024-10-17 09:53:35', '2', '2024-10-17 09:53:35', '', NULL, ''),
(6, '82', 600000, 'uploads/proof/671101b4a7c88-Screenshot 2024-10-07 221355.png', '2024-10-17 12:23:16', '2', '2024-10-17 12:23:16', 'tes', NULL, ''),
(10, '671a0820404db', 52504, './uploads/proof/671c4df3c0b82-WhatsApp Image 2024-10-01 at 07.58.59.jpeg', '2024-10-26 02:03:31', '2', '2024-10-26 02:03:31', 'Accept', 'Y', ''),
(11, '6719uyhnuwuh', 52500, './uploads/proof/672103b6b7ac2-removebg-preview.png', '2024-10-29 15:48:06', '2', '2024-10-29 15:48:06', 'payment Sudah Di Accept Admin', 'Y', 'Response: Error: That amount is larger than your balance!\n'),
(12, '6721067ee01bf', 105000, './uploads/proof/672109626a65c-Screenshot 2024-10-07 133324.png', '2024-10-29 16:12:18', '2', '2024-10-29 16:12:18', '', 'Y', '');

-- --------------------------------------------------------

--
-- Table structure for table `lot`
--

CREATE TABLE `lot` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lot`
--

INSERT INTO `lot` (`id`, `amount`) VALUES
(2, 200000),
(3, 12);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) UNSIGNED NOT NULL,
  `label` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `icon_color` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `menu_type_id` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `label`, `type`, `icon_color`, `link`, `sort`, `parent`, `icon`, `menu_type_id`, `active`) VALUES
(1, 'MAIN NAVIGATION', 'label', '', '{admin_url}/dashboard', 1, 0, '', 1, 1),
(2, 'Dashboard', 'menu', '', '{admin_url}/panel', 2, 0, 'fa-dashboard', 1, 1),
(3, 'CRUD Builder', 'menu', '', '{admin_url}/crud', 6, 0, 'fa-table', 1, 1),
(4, 'API Builder', 'menu', '', '{admin_url}/rest', 7, 0, 'fa-code', 1, 1),
(5, 'Page Builder', 'menu', '', '{admin_url}/page', 8, 0, 'fa-file-o', 1, 1),
(6, 'Form Builder', 'menu', '', '{admin_url}/form', 9, 0, 'fa-newspaper-o', 1, 1),
(7, 'Blog', 'menu', '', '{admin_url}/blog', 10, 0, 'fa-file-text-o', 1, 0),
(8, 'Menu', 'menu', '', '{admin_url}/menu', 11, 0, 'fa-bars', 1, 1),
(9, 'Auth', 'menu', '', '', 12, 0, 'fa-shield', 1, 1),
(10, 'User', 'menu', '', '{admin_url}/user', 13, 9, '', 1, 1),
(11, 'Groups', 'menu', '', '{admin_url}/group', 14, 9, '', 1, 1),
(12, 'Access', 'menu', '', '{admin_url}/access', 15, 9, '', 1, 1),
(13, 'Permission', 'menu', '', '{admin_url}/permission', 16, 9, '', 1, 1),
(14, 'API Keys', 'menu', '', '{admin_url}/keys', 17, 9, '', 1, 1),
(15, 'Extension', 'menu', '', '{admin_url}/extension', 18, 0, 'fa-puzzle-piece', 1, 0),
(16, 'Database', 'menu', '', '{admin_url}/database', 19, 0, 'fa-database', 1, 0),
(17, 'OTHER', 'label', '', '', 20, 0, '', 1, 1),
(18, 'Settings', 'menu', 'text-red', '{admin_url}/setting', 21, 0, 'fa-circle-o', 1, 1),
(19, 'Web Documentation', 'menu', 'text-blue', '{admin_url}/doc/web', 22, 0, 'fa-circle-o', 1, 1),
(20, 'API Documentation', 'menu', 'text-yellow', '{admin_url}/doc/api', 23, 0, 'fa-circle-o', 1, 1),
(21, 'Home', 'menu', '', '/', 1, 0, '', 2, 1),
(22, 'Blog', 'menu', '', 'blog', 4, 0, '', 2, 1),
(23, 'Dashboard', 'menu', '', '{admin_url}/dashboard', 5, 0, '', 2, 1),
(24, 'User', 'menu', 'text-yellow', 'administrator/table_user', 5, 0, 'fa-users', 1, 0),
(25, 'Account', 'menu', 'text-aqua', 'administrator/accounts__', 3, 0, 'fa-user', 1, 1),
(26, 'LOT', 'menu', 'text-green', 'administrator/lot', 4, 0, 'fa-money', 1, 1),
(27, 'App Setting', 'menu', 'text-green', 'administrator/appsetting', 5, 0, 'fa-home', 1, 1),
(28, 'Withdraw', 'menu', 'text-green', 'administrator/withdraw', 5, 0, 'fa-money', 1, 1),
(29, 'Deposit', 'menu', 'text-green', 'administrator/deposit', 5, 0, 'fa-money', 1, 1),
(30, 'Refferal', 'menu', 'text-green', 'administrator/refferal', 5, 0, 'fa-users', 1, 1),
(31, 'Topup Crypto', 'menu', 'text-green', 'administrator/topupcrypto', 5, 0, 'fa-money', 1, 1),
(32, 'Swap Crypto', 'menu', 'text-green', 'administrator/swap', 5, 0, 'fa-money', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_type`
--

CREATE TABLE `menu_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `definition` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `menu_type`
--

INSERT INTO `menu_type` (`id`, `name`, `definition`) VALUES
(1, 'side menu', NULL),
(2, 'top menu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `panel`
--

CREATE TABLE `panel` (
  `id` int(11) NOT NULL,
  `narasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_user_affilate` int(11) NOT NULL,
  `commision` float DEFAULT 0,
  `status` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `referral`
--

INSERT INTO `referral` (`id`, `id_user`, `id_user_affilate`, `commision`, `status`, `created_at`, `updated_at`) VALUES
(1, 46, 47, 0.126812, 1, '2024-10-14', '2024-10-18 00:00:00'),
(3, 46, 74, 0.126812, 1, '2024-10-16', '2024-10-18 00:00:00'),
(4, 5, 75, 9657.08, 1, '2024-10-16', '2024-10-17 00:00:00'),
(5, 76, 76, 0, 1, '2024-10-16', '2024-10-18 00:00:00'),
(6, 5, 77, 138.25, 1, '2024-10-16', '2024-10-17 00:00:00'),
(7, 78, 78, 0, 1, '2024-10-16', '2024-10-18 00:00:00'),
(8, 5, 79, 0, 1, '2024-10-16', '2024-01-17 00:00:00'),
(9, 5, 80, 9659.28, 1, '2024-10-16', '2024-01-17 00:00:00'),
(10, 5, 81, 0, 1, '2024-10-17', '2024-10-17 00:00:00'),
(11, 5, 82, 28109.4, 1, '2024-10-17', '2024-10-18 00:00:00'),
(12, 83, 83, 0, 1, '2024-10-18', '2024-10-18 04:18:41'),
(13, 75, 84, 482359, 1, '2024-10-19', '2024-10-19 03:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `swap_crypto`
--

CREATE TABLE `swap_crypto` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `coin` text NOT NULL DEFAULT 'trx,doge,shib,usdt,refill',
  `status` int(11) NOT NULL,
  `trx_id` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `exchange` text NOT NULL,
  `metode` text NOT NULL,
  `status_receipt` int(11) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `swap_crypto`
--

INSERT INTO `swap_crypto` (`id`, `user_id`, `amount`, `coin`, `status`, `trx_id`, `created_at`, `updated_at`, `exchange`, `metode`, `status_receipt`, `pesan`) VALUES
(27, 5, 22281, '10', 2, '6724d29a490a0', '2024-11-01 13:07:38', '0000-00-00 00:00:00', 'DOGE', 'Junada 92384928344 BNI', 1, 'Pencarian sudah dilakukan Ke nomor Rekening');

-- --------------------------------------------------------

--
-- Table structure for table `table_user`
--

CREATE TABLE `table_user` (
  `id` int(11) NOT NULL,
  `nama_user` varchar(200) NOT NULL,
  `total_invest` int(11) NOT NULL,
  `profit_income` int(11) NOT NULL,
  `username` varchar(52) NOT NULL,
  `email` varchar(52) NOT NULL,
  `no_hp` varchar(52) NOT NULL,
  `pin` varchar(52) NOT NULL,
  `photo_user` varchar(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topup_crypto`
--

CREATE TABLE `topup_crypto` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `amount` int(11) NOT NULL,
  `coin` text NOT NULL DEFAULT 'trx,doge,shib,usdt,refill',
  `status` int(11) NOT NULL,
  `trx_id` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `exchange` text NOT NULL,
  `metode` text NOT NULL,
  `status_receipt` int(11) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topup_crypto`
--

INSERT INTO `topup_crypto` (`id`, `email`, `address`, `amount`, `coin`, `status`, `trx_id`, `created_at`, `updated_at`, `exchange`, `metode`, `status_receipt`, `pesan`) VALUES
(1, 'bbrsoftdream@gmail.com', '0xbb10b1f770785e7e84a2eba879080f2d329e8564', 50000, '1.83300609', 1, '6719uyhnuwuh', '2024-10-24 07:44:29', '0000-00-00 00:00:00', 'SHIB', 'QRIS', 0, 'Paymnet Sudah di Accept'),
(24, 'yuhder@gmail.com', '943hfim3io trh3iworjc3iu4r3r3khjnskfnkasjfkhwifii', 10010, '3.97056782', 1, '671ded84dac96', '2024-10-27 07:36:36', '0000-00-00 00:00:00', 'TRX', 'QRIS', 1, ''),
(25, 'cv.danamitrasukses@gmail.com', '3456768uoiugfhdfsgfsfdsf', 100000, '39.66601218', 1, '6721067ee01bf', '2024-10-29 15:59:58', '0000-00-00 00:00:00', 'TRX', 'QRIS', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `user_crypto`
--

CREATE TABLE `user_crypto` (
  `id` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `income` double DEFAULT 0,
  `balance` decimal(19,2) DEFAULT 0.00,
  `referal` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL,
  `country` varchar(30) NOT NULL,
  `currency` varchar(10) DEFAULT 'IDR',
  `photo` varchar(256) DEFAULT NULL,
  `pin` varchar(6) DEFAULT NULL,
  `fname` varchar(10) DEFAULT NULL,
  `lname` varchar(10) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `nomor` varchar(50) DEFAULT NULL,
  `network` varchar(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `investasi` int(10) NOT NULL DEFAULT 0,
  `profit` int(10) NOT NULL DEFAULT 0,
  `login_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `gift_code` varchar(20) DEFAULT NULL,
  `bl_trx` double NOT NULL,
  `adr_trx` text NOT NULL,
  `bl_doge` double NOT NULL,
  `adr_doge` text NOT NULL,
  `bl_shib` double NOT NULL,
  `adr_shib` text NOT NULL,
  `bl_usdt` double NOT NULL,
  `ard_usdt` text NOT NULL,
  `bl_refill` double NOT NULL,
  `adr_refill` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `user_crypto`
--

INSERT INTO `user_crypto` (`id`, `phone`, `income`, `balance`, `referal`, `password`, `country`, `currency`, `photo`, `pin`, `fname`, `lname`, `nama`, `bank`, `nomor`, `network`, `address`, `investasi`, `profit`, `login_at`, `created_at`, `updated_at`, `gift_code`, `bl_trx`, `adr_trx`, `bl_doge`, `adr_doge`, `bl_shib`, `adr_shib`, `bl_usdt`, `ard_usdt`, `bl_refill`, `adr_refill`) VALUES
(1, '082388020323', 0, 0.00, '', '$2y$10$nBVSIG9e8VqJgx9pmbDdXuDNT.DAYa3SZFfb1sy0ep12qCL95ZtiG', 'Indonesia', 'IDR', NULL, NULL, 'oki', 'andrian', NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-10-31 10:39:24', '2024-10-31 15:39:24', NULL, NULL, 100, 'TKms69q8FGFhY14BaK5vwQjW9jUHRZtUH8', 100, 'D7YgxHZaJfwfnqJcuLAxhXzRyyk3oUd99y', 100, '0x75fd5b5eb94b52e2c24943ee9dfbc243f4348748', 100, '3FVaKkY7Rk3XPhNMGCHHsDCXxPU8eBz7Qy', 100, 'X2nIL75MhJSlZyoA'),
(5, '+6282169419513', 0, 0.00, '', '$2y$10$nNEs1q9Q1d1mGpDF2GKgGOrbGnRlkrfV15KH0PgmiL90ZvFMgSjmG', 'Indonesia', 'IDR', NULL, NULL, 'Banda', 'Estigo', NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-11-01 12:50:25', '2024-11-01 04:10:12', NULL, NULL, 0.9, 'TWUxwyrpCxrxtK37YvB9CbCzuwJhYx6nk9', 980, 'DBjjKavBHVraKCaZJwPn5i4sAPqRdK58pG', 0.1, '0xd34d2d01373629ede5a0c5338f4354cfc58ea7c6', 0.4, '3DHoQkALzA7qSE6fSY3tBE9CbWv188uBxM', 0.3, 'n7jUAolONwC8P4g1');

-- --------------------------------------------------------

--
-- Table structure for table `widgeds`
--

CREATE TABLE `widgeds` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `dashboard_id` int(11) DEFAULT NULL,
  `widged_uuid` varchar(250) DEFAULT NULL,
  `widged_type` varchar(250) DEFAULT NULL,
  `sort_number` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `note` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(20) NOT NULL,
  `date_verify` datetime NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `id_user`, `amount`, `note`, `date`, `status`, `date_verify`, `pesan`) VALUES
(1, 46, 100000, 'Rek BCA 3080206835 an Bambang  Rahmat ', '2024-10-14 00:49:16', '2', '2024-10-14 00:49:16', ''),
(3, 32, 100000, 'DWI WIDIANTO SEABANK 901908110938', '2024-10-15 05:14:07', '1', '2024-10-15 05:14:07', ''),
(5, 46, 1000000, 'Bambang Rahmat Hidayat BCA 3080206835', '2024-10-15 10:03:42', '3', '2024-10-15 10:03:42', 'stroke tidak valid'),
(6, 5, 100000, 'Oki andrian BCA 8335215113', '2024-10-16 03:21:53', '1', '2024-10-16 03:21:53', ''),
(20, 46, 11125, 'BCA 3080206835 an Bambang Rahmat Hidayat', '2024-10-17 16:02:25', '1', '2024-10-17 16:02:25', ''),
(21, 5, 4871500, 'BCA 8335215113 an Oki andrian', '2024-10-18 14:04:33', '2', '2024-10-18 14:04:33', ''),
(22, 5, 2434000, 'BCA 8335215113 an Oki andrian', '2024-10-18 14:04:57', '2', '2024-10-18 14:04:57', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_phone` (`phone`);

--
-- Indexes for table `accounts__`
--
ALTER TABLE `accounts__`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard`
--
ALTER TABLE `dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lot`
--
ALTER TABLE `lot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel`
--
ALTER TABLE `panel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `swap_crypto`
--
ALTER TABLE `swap_crypto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topup_crypto`
--
ALTER TABLE `topup_crypto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trx_id` (`trx_id`) USING HASH;

--
-- Indexes for table `user_crypto`
--
ALTER TABLE `user_crypto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgeds`
--
ALTER TABLE `widgeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `accounts__`
--
ALTER TABLE `accounts__`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dashboard`
--
ALTER TABLE `dashboard`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lot`
--
ALTER TABLE `lot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `panel`
--
ALTER TABLE `panel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `swap_crypto`
--
ALTER TABLE `swap_crypto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `table_user`
--
ALTER TABLE `table_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topup_crypto`
--
ALTER TABLE `topup_crypto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_crypto`
--
ALTER TABLE `user_crypto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `widgeds`
--
ALTER TABLE `widgeds`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
