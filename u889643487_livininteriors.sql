-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 20, 2024 at 05:42 AM
-- Server version: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u889643487_livininteriors`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'LIVIN', 'livin@gmail.com', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `imageOne` varchar(255) NOT NULL,
  `imageTwo` varchar(255) NOT NULL,
  `imageThree` varchar(255) NOT NULL,
  `imageFour` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `image`, `title`, `description`, `imageOne`, `imageTwo`, `imageThree`, `imageFour`, `created_on`, `status`) VALUES
(2, 'download.jpeg', 'title content', 'description content', '', '', '', '', '2024-01-24 15:43:19', 0),
(3, 'Image_created_with_a_mobile_phone.png', 'e', 'ef', '', '', '', '', '2024-01-24 15:50:00', 0),
(4, 'blog1.webp', 'Budget-Friendly Modular Kitchen Designs That Don’t Skimp on Style.', 'Is your kitchen looking tired and dated, and have you been longing to give it a makeover? A beautiful modular kitchen is something all of us would love to have—but shy away from because we think it’s probably too expensive!\r\nIf that sounds like you, we’ve got you covered. Here are some lovely budget-friendly modular kitchen hacks that are big on style but won’t make much of a dent in your pocket.\r\nLooking to design the kitchen of your dreams, but at a fraction of the cost? Here are some low-cost materials you can explore: \r\n\r\nPrelaminated particle board: An engineered wood product that is made of wood chips, particle board is known for its cost effectiveness, versatility and easy workability.\r\nMDF: Another engineered wood product, medium density fibreboard (MDF) is more expensive and durable than particle board, but at the same time less costly than plywood. MDF can be painted or laminated to get a smooth and uniform finish and is a popular choice for budget kitchens.\r\nLaminate: Durable and budget-friendly, laminates are available in a wide variety of patterns and colours, and can be used to finish cabinets and even kitchen countertops.\r\nCeramic tiles: Think of using ceramic tiles on the backsplash for a low cost and visually appealing finish. Choose quirky patterns to add a dash of personality and style to your kitchen.\r\nReclaimed or Upcycled Materials: Why not use reclaimed wood, salvaged doors, or upcycled materials in your cost effective modular kitchen? You’ll save on costs, and help to save the earth as well!', 'blog2.webp', 'blog3.jpg', 'blog1.webp', 'blog2.webp', '2024-01-25 09:20:21', 1),
(5, 'blog2.webp', 'Small Spaces, Big Style: Home Interior Decor Ideas for Cosy Homes', 'Small spaces are always cosy and cute—but designing them could prove to be the biggest problem of all! For starters, there’s the functionality. Even if your space falls short on square footage, you can’t be faulted for expecting that it should be as functional as its more spacious counterparts. And so, if you’re planning to downsize, you could be worried about how you’re going to decorate your tiny apartment without cramping it up.\r\n\r\nFear not! Our design experts have taken up the challenge, and curated the best interior home décor ideas for cosy homes. Read on for some serious small-space inspiration!\r\nLet’s first understand why small homes are so popular in today’s world. With urban spaces coming at a steep premium, apartment sizes are shrinking. Tiny pocket-sized homes are now no longer an exception but the norm, especially in metropolitan cities.\r\n\r\nAgain, there’s a growing number of young twenty-somethings who have left the nest and are seeking jobs in urban hubs. This demographic shift, together with the need for a more minimalist lifestyle, has fuelled the popularity of small homes. Youngsters are looking for efficient and manageable living spaces, and cosy homes fit the bill!\r\nDespite their size, small homes must find room for a kitchen, sleeping space, a zone for entertaining, and more often now a home office as well. It goes without saying that you’ll need adequate storage space too. How will you manage to fit all these requirements into a matchbox-sized home, without compromising on space flow and aesthetics?\r\n\r\nClever interior ideas with space-saving solutions are the answer! Think of innovative ideas to separate zones, clever solutions to your storage problems, and expandable and multipurpose furniture.\r\n\r\nIf you’re struggling to decorate your smaller-than-you’d-like home, here’s how you can do it right.', 'blog1.webp', 'blog2.webp', 'blog3.jpg', 'blog1.webp', '2024-01-25 09:22:43', 1),
(6, 'blog3.jpg', 'Designed for Comfort, This Ahmedabad Home is a Visual Treat!', 'Avinash and Anshu had met with at least a dozen local vendors and interior brands, before they decided to choose HomeLane as their interior service provider. They fell in love with HomeLane the moment they stepped into the nearest Experience Centre.  As Avinash put it, “HomeLane’s quality of workmanship and cost-effective rates were very convincing, so we chose them without a second thought!” \r\n\r\nThe soft-spoken couple wanted a home that was designed around their distinctive preferences and styles, embracing an aesthetic that was midway between tradition and modernity. They had a very clear vision of what their dream home would look like, which they shared with the HomeLane team. In alignment with this brief, the HomeLane designer curated the colours, furniture and textiles to match their tastes and reflect their lifestyle.\r\n\r\nAnshu laughs as she tells us about their home interior journey. “We argued a lot…we were disagreeing on every aspect!” They even disagreed with the designers, insisting on having certain things just the way they had visualised. And the end result was an amalgamation of their dreams and the HomeLane team’s practical perceptions, giving them a home that is as functional as it is beautiful!\r\n\r\nLet’s take a look at Avinash and Anshu’s dream home, and listen to the story of how it all unfolded!\r\nThe design ethos for the living room prioritises comfort, crafting a tranquil space that integrates elements of handcrafted design for a personal touch. The L-shaped sectional sofa is piled high with textured cushions, inviting you to sink in and relax. The balanced use of colours and materials creates visual harmony.\r\n\r\nThis space opens out into a lovely terrace area, where Anshu indulges in her favourite pastime—gardening! As she tells us, “The house we lived in previously did not have a lot of space. In my childhood home, my mother used to enjoy gardening and helping her made me feel good. Now that we have our own terrace, I am able to pursue my old hobby!”', 'blog3.jpg', 'blog1.webp', 'blog2.webp', 'blog3.jpg', '2024-01-25 09:24:37', 1),
(7, 'download.jpeg', 'tst', 'dfdf', 'Image_created_with_a_mobile_phone.png', '', '', '', '2024-01-29 11:52:02', 0),
(8, 'download.jpeg', 'mk', 'kk', 'overview_65a959723a075.png', '', '', '', '2024-01-29 11:56:55', 0),
(9, 'download.jpeg', 'dd', 'dd', 'Image_created_with_a_mobile_phone.png', '', '', '', '2024-01-29 12:08:43', 0),
(10, 'certificate_65a959723902a_2.png', 'test', 'et', 'certificate_65a959723537a_1.png', 'overview_65a959723a075.png', 'Image_created_with_a_mobile_phone.png', 'download.jpeg', '2024-01-29 12:28:33', 0),
(11, 'side-view-smiley-couple-indoors_23-2149903726.jpg', 'new title', 'df', 'side-view-smiley-couple-indoors_23-2149903726.jpg', 'side-view-smiley-couple-indoors_23-2149903726.jpg', 'side-view-smiley-couple-indoors_23-2149903726.jpg', 'side-view-smiley-couple-indoors_23-2149903726.jpg', '2024-01-30 11:30:43', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customize`
--

CREATE TABLE `tbl_customize` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `colorcode` varchar(100) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_customize`
--

INSERT INTO `tbl_customize` (`id`, `category_id`, `subcategory_id`, `image1`, `image2`, `colorcode`, `status`, `created_on`) VALUES
(1, 21, 8, 'Image_created_with_a_mobile_phone.png', 'download.jpeg', '', 0, '2024-01-23 06:19:39'),
(2, 22, 10, 'download.jpeg', 'Image_created_with_a_mobile_phone.png', '', 0, '2024-01-23 06:22:04'),
(3, 22, 13, 'Image_created_with_a_mobile_phone.png', 'download.jpeg', '', 0, '2024-01-23 06:26:02'),
(4, 21, 8, 'Image_created_with_a_mobile_phone.png', 'download.jpeg', '', 0, '2024-01-23 06:27:22'),
(5, 22, 9, 'Image_created_with_a_mobile_phone.png', 'download.jpeg', '', 0, '2024-01-23 07:18:50'),
(6, 3, 1, 'Image_created_with_a_mobile_phone.png', 'download.jpeg', '', 0, '2024-01-24 07:22:49'),
(7, 3, 1, 'Image_created_with_a_mobile_phone.png', 'download.jpeg', '', 0, '2024-01-24 10:02:20'),
(8, 2, 5, 'download.jpeg', 'Image_created_with_a_mobile_phone.png', '', 0, '2024-01-24 10:03:45'),
(9, 2, 5, 'Image_created_with_a_mobile_phone.png', 'download.jpeg', '', 0, '2024-01-24 10:04:30'),
(10, 3, 2, 'Image_created_with_a_mobile_phone.png', 'download.jpeg', '', 0, '2024-01-24 10:06:47'),
(11, 22, 12, 'ammy-virk-lacquered-glass-modular-kitchen-interior-design.jpg', 'petal-pink-lacquered-glass.jpg', '#9D828E', 0, '2024-01-25 10:18:13'),
(12, 22, 12, 'aqua-blue-lacquered-glass-modular-kitchen-interior-design.jpg', 'aqua-blue-lacquered-glass.jpg', '#10434B', 0, '2024-01-25 10:18:32'),
(13, 22, 12, 'aquamarine-lacquered-glass-modular-kitchen-interior-designs.jpg', 'aquamarine-lacquered-glass.jpg', '#8BA9A8', 0, '2024-01-25 10:18:48'),
(14, 22, 12, 'argent-metallise-lacquered-glass-modular-kitchen-interiors.jpg', 'argent-metallise-lacquered-glass.jpg', '#6F6F6F', 0, '2024-01-25 10:19:14'),
(15, 22, 12, 'flame-red-lacquered-glass-modular-kitchen-interior-design.jpg', 'flame-red-lacquered-glass.jpg', '#5A1516', 0, '2024-01-25 10:21:19'),
(16, 22, 12, 'ultra-white-lacquered-glass-modular-kitchen-interior-design.jpg', 'ultra-white-lacquered-glass.jpg', '#C6C6C6', 0, '2024-01-25 10:21:36'),
(17, 22, 12, 'solar-yellow-lacquered-glass-modular-kitchen-interior-design.jpg', 'solar-yellow-lacquered-glass.jpg', '#A68C50', 0, '2024-01-25 10:22:07'),
(18, 22, 12, 'mint-green-lacquered-glass-modular-kitchen-interior-design.jpg', 'mint-green-lacquered-glass.jpg', '#4D736B', 0, '2024-01-25 10:22:34'),
(19, 22, 12, 'multiethnic-group-young-cheerful-students-walking.jpg', 'download.jpeg', '', 0, '2024-01-29 07:09:40'),
(20, 22, 12, 'multiethnic-group-young-cheerful-students-walking.jpg', 'download.jpeg', '', 0, '2024-01-29 07:09:46'),
(21, 22, 12, 'logoll.png', 'logoll.png', 'white', 0, '2024-01-29 07:41:58'),
(22, 27, 20, 'side-view-smiley-couple-indoors_23-2149903726.jpg', 'side-view-smiley-couple-indoors_23-2149903726.jpg', '', 0, '2024-01-30 12:29:55'),
(23, 29, 21, '0ff4f478-056d-40a3-b3b2-dfd20627b884.jpg', '1ea52c6c9a8b486c1c515574de822209.jpg', '', 0, '2024-02-07 07:37:20'),
(24, 30, 23, '50113hgls silver gerey 50114hgls gothic grey.png', '50114 gothic grey.png', '50113hgls silver gerey 50114hgls gothic grey', 0, '2024-02-07 11:47:37'),
(25, 30, 23, '50113hgls silver gerey 50114hgls gothic grey.png', '50114 gothic grey.png', '50113hgls silver grey 50114hgls gothic grey', 0, '2024-02-07 11:49:15'),
(26, 30, 23, '50109hgls wool 50182 hgls fab gold.png', '50182 fab gold.png', '50109hgls wool 50182hgls fab gold', 0, '2024-02-07 11:52:16'),
(27, 30, 23, '50109hgls wool 50194hgls english greem.png', '50194 english green.png', '50109hgls wool 50194hgls english green', 0, '2024-02-07 11:53:28'),
(28, 30, 23, '50113hgls silver gerey 50170hgls charcoal.png', '50107 charcoal.png', '50113hgls silver grey 50170hgls charcoal', 0, '2024-02-07 11:54:26'),
(29, 30, 23, '50113hgls silver gerey 50191hgls hershey grey.png', '50191 hershey grey.png', '50113hgls silver grey 50191hgls hershey grey', 0, '2024-02-07 11:56:28'),
(30, 30, 35, '50113hgls silver gerey 50191hgls hershey grey.jpg', '50191 hershey grey.png', '50113hgls silver grey 50191hgls hershey grey', 0, '2024-02-07 12:52:18'),
(31, 30, 35, '50113hgls silver gerey 50170hgls charcoal.jpg', '50107 charcoal.png', '50113hgls silver grey 50170hgls charcoal', 0, '2024-02-07 12:52:53'),
(32, 30, 35, '50113hgls silver gerey 50114hgls gothic grey.jpg', '50114 gothic grey.png', '50113hgls silver grey 50114hgls gothic grey', 0, '2024-02-07 12:53:32'),
(33, 30, 35, '50109hgls wool 50194hgls english greem.jpg', '50194 english green.png', '50109hgls wool 50194hgls English green', 0, '2024-02-07 12:54:31'),
(34, 30, 35, '50109hgls wool 50182 hgls fab gold.png', '50182 fab gold.png', '50109hgls wool 50182hgls fab gold', 0, '2024-02-07 12:55:22'),
(35, 30, 36, '50195 hgls pista green 50109 hgls wool.png', '50195 hgls pista green 50109 hgls wool.png.jpg', '50195hgls pista green 50109hgls wool', 0, '2024-02-08 06:51:42'),
(36, 30, 36, '50185hgls skin grey 50109hgls wool.png', '50185hgls skin grey 50109hgls wool.png', '50185hgls skin grey 50109hgls wool', 0, '2024-02-08 06:55:58'),
(37, 30, 36, '50185hgls skin grey 50109hgls wool.png', '50185hgls skin grey 50109hgls wool.png', '50185hgls skin grey 50109hgls wool', 0, '2024-02-08 06:56:48'),
(38, 30, 36, '50185hgls skin grey 50109hgls wool.png', '50185hgls s.png', '50185hgls skin grey 50109hgls wool', 0, '2024-02-08 06:57:49'),
(39, 30, 36, '50185hgls skin grey 50109hgls wool.png', '50185hgls s.png', '50185hgls skin grey 50109hgls wool', 0, '2024-02-08 06:58:50'),
(40, 30, 36, 'hg 136stylish beige hg 104frosty white.png', '50185hgls s.png', '50185hgls skin grey 50109hgls wool', 0, '2024-02-08 06:59:41'),
(41, 30, 36, '50185hgls skin grey 50109hgls wool.png', '50185hgls s.png', '50185hgls skin grey 50109hgls wool', 0, '2024-02-08 07:01:25'),
(42, 30, 36, '50185hgls skin grey 50109hgls wool.jpg', '50185hgls s.png', '50185hgls skin grey 50109hgls wool', 0, '2024-02-08 07:02:39'),
(43, 30, 36, '15128 15326.png', '15128 15326.png.jpg', '15128 15326', 0, '2024-02-08 07:09:16'),
(44, 30, 36, '15301 15201.png', 'Untitled-1.jpg', '15301 15201', 0, '2024-02-08 07:15:22'),
(45, 30, 36, '15326.png', '15326.png.jpg', '15326', 0, '2024-02-08 07:18:31'),
(46, 30, 37, '50109hgls wool 50182 hgls fab gold.jpg', '50109hgls wool 50182 hgls fab gold.jpg', '50109hgls wool 50182hgls fab gold', 0, '2024-02-08 07:26:49'),
(47, 30, 37, '50109hgls wool 50194hgls english greem.jpg', '50109hgls wool 50194hgls english green.jpg', '50109hgls wool 50194hgls English green', 0, '2024-02-08 07:29:10'),
(48, 30, 37, '50113hgls silver gerey 50114hgls gothic grey.jpg', '50113hgls silver gerey 50114hgls gothic grey.jpg', '50113hgls silver grey 50114hgls gothic grey', 0, '2024-02-08 07:32:08'),
(49, 30, 37, '50109hgls wool 50182 hgls fab gold.jpg', '50109hgls wool 50182 hgls fab gold.jpg', '50109hgls wool 50182hgls fab gold', 0, '2024-02-08 07:33:36'),
(50, 30, 37, '50109hgls wool 50182 hgls fab gold.jpg', 'Untitled-1.png', '50109hgls wool 50182hgls fab gold', 0, '2024-02-08 07:34:50'),
(51, 30, 37, '50109hgls wool 50182 hgls fab gold.png', 'Untitled-1.png', '50109hgls wool 50182hgls fab gold', 0, '2024-02-08 07:37:30'),
(52, 30, 37, '50113hgls silver gerey 50114hgls gothic grey.png', '50113hgls silver gerey 50114hgls gothic grey.jpg', '50113hgls silver grey 50114hgls gothic grey', 0, '2024-02-08 07:39:19'),
(53, 30, 37, '50113hgls silver gerey 50114hgls gothic grey.png', '5011.jpg', '50113hgls silver grey 50114hgls gothic grey', 0, '2024-02-08 08:01:38'),
(54, 30, 37, '50113hgls silver gerey 50170hgls charcoal.png', 'GJH.jpg', '50113hgls silver grey 50170hgls charcoal', 0, '2024-02-08 08:04:08'),
(55, 30, 37, '50113hgls silver gerey 50191hgls hershey grey.jpg', 'GHHH.jpg', '50113hgls silver grey 50191hgls hershey grey', 0, '2024-02-08 08:06:38'),
(56, 30, 37, '15106 50109 wool.jpg', 'HHH.png', '15106 50109 wool', 0, '2024-02-08 09:10:12'),
(57, 30, 37, '50193hgls alovera 50109hgls wool.png', 'QQ.png', '50193hgls aloe vera 50109hgls wool', 0, '2024-02-08 09:17:17'),
(58, 30, 37, '50196hgls ocean blue 50109hgls wool.png', 'gghh.png', '50196hgls ocean blue 50109hgls wool', 0, '2024-02-08 09:25:08'),
(59, 30, 38, '893 801.png', 'ff.png', '893 801', 0, '2024-02-08 10:15:29'),
(60, 30, 38, '15109,50109 wool.png', 'Untitled-1.png', '15109 50109 wool', 0, '2024-02-08 10:17:57'),
(61, 30, 38, '15109,50109 wool.png', 'ilkll.png', '15109 50109 wool', 0, '2024-02-08 10:19:50'),
(62, 30, 38, '15120.png', 'hjk.png', '15120', 0, '2024-02-08 10:22:12'),
(63, 30, 38, '50109hgls wool 501 hgls turquoise blue.png', '12.png', '50109hgls wool 50176hgls turquoise blue', 0, '2024-02-08 10:24:35'),
(64, 30, 38, '50113hgls silver grey 50188 flt peach brown.png', 'hkk.png', '50113hgls silver grey 50188flt peach brown', 0, '2024-02-08 10:28:50'),
(65, 30, 38, '50113hgls silver grey 50194 flt english green.png', 'eng.png', '50113hgls silver grey 50194flt English green', 0, '2024-02-08 10:32:13'),
(66, 30, 38, '50185hgls skin grey 50187 flt roasted almond.png', 'hkkkl.png', '50185hgls skin grey 50187flt roasted almond', 0, '2024-02-08 10:34:54'),
(67, 30, 38, '50193 flt alovera 50109hgls wool.png', 'Untitled-1hkk.png', '50193flt aloe vera 50109hgls wool', 0, '2024-02-08 10:37:31'),
(68, 30, 38, '50207 flt cloud 50182 hgls fab gold.png', 'jlklk;.png', '50207flt cloud 50182hgls fab gold', 0, '2024-02-08 10:39:38'),
(69, 30, 38, '50207 flt gothic grey 50113 hgls silver grey.png', 'Untitled-g.png', '50207flt gothic grey 50113hgls silver grey', 0, '2024-02-08 10:44:07'),
(70, 30, 39, '804.png', '804.png', '804', 0, '2024-02-08 11:18:31'),
(71, 30, 39, '804.png', 'CHGHC.png', '804', 0, '2024-02-08 11:19:30'),
(72, 30, 39, '804.png', 'CHGHC.png.jpg', '804', 0, '2024-02-08 11:22:20'),
(73, 30, 39, '804 GG.png', 'CHGHC.png.jpg', '804', 1, '2024-02-08 11:28:12'),
(74, 30, 39, '807.png', 'HF.png', '807', 1, '2024-02-08 11:33:37'),
(75, 30, 39, '808,801.png', 'HFF.png', '808 801', 1, '2024-02-08 11:34:56'),
(76, 30, 39, '809 801.png', 'TDTD.png', '809 801', 0, '2024-02-08 11:36:26'),
(77, 30, 39, '827 801.png', 'GDDF.png', '827 801', 1, '2024-02-08 11:46:45'),
(78, 30, 39, '830,801.png', 'GGGGG.png', '830 801', 1, '2024-02-08 11:48:23'),
(79, 30, 39, '831.png', 'HHHJK.png', '831', 1, '2024-02-08 11:50:55'),
(80, 30, 39, '809 801.png', 'TDTD.png', '809 801', 0, '2024-02-08 11:55:16'),
(81, 30, 39, '809 801.png', 'TDTD.png', '809 801', 0, '2024-02-08 11:56:53'),
(82, 30, 39, 'VVV.png', 'TDTGGD.png', '809 801', 1, '2024-02-08 11:58:28'),
(83, 30, 39, '893 801.png', 'GRRE.png', '893 801', 0, '2024-02-08 12:44:39'),
(84, 30, 39, '894,801.png', 'GRREN.png', '894 801', 1, '2024-02-08 12:46:47'),
(85, 30, 39, '15121,15102.png', 'HHKKK.png', '15121 15102', 1, '2024-02-08 12:48:24'),
(86, 30, 39, '15127,15102.png', 'KKK.png', '15127 15102', 1, '2024-02-08 12:50:27'),
(87, 30, 39, '50198 hgls kyber blue 50109 hgls wool.png', 'KYBER.png', '50198hgls kyber blue 50109hgls wool', 1, '2024-02-08 12:52:37'),
(88, 30, 40, '15213,15102.png', 'l.png', '15213 15102', 1, '2024-02-08 13:06:39'),
(89, 30, 40, '15102 13003.png', 'm.png', '15102 13003', 1, '2024-02-08 13:09:04'),
(90, 30, 40, '15102 13001.png', 'g.png', '15102 13001', 1, '2024-02-08 13:10:38'),
(91, 30, 40, '897 801.png', 'b.png', '897 801', 1, '2024-02-08 13:12:24'),
(92, 30, 40, '896 801.png', 'dg.png', '896 801', 1, '2024-02-08 13:14:24'),
(93, 30, 40, '850 801.png', 'fr.png', '850 801', 1, '2024-02-08 13:15:24'),
(94, 30, 40, '837 801.png', 'y.png', '837 801', 1, '2024-02-08 13:16:46'),
(95, 30, 40, '828 801.png', 'dgr.png', '828 801', 1, '2024-02-08 13:17:52'),
(96, 30, 40, '818 801.png', 'llb.png', '818 801', 1, '2024-02-08 13:19:08'),
(97, 30, 40, '817 801.png', 'lb.png', '817 801', 1, '2024-02-08 13:20:23'),
(98, 31, 41, '50109hgls wool 50185hgls skin grey.png', '50185hgls s.png', '50109hgls wool 50185hgls skin grey', 0, '2024-02-09 05:43:10'),
(99, 31, 41, '50109hgls wool 50194hgls english greem.png', 'hjj.png', '50109hgls wool 50194hgls English green', 0, '2024-02-09 05:45:42'),
(100, 31, 41, '50109hgls wool 50194hgls english.png', 'hjj.png', '50109hgls wool 50194hgls english green', 0, '2024-02-09 05:47:03'),
(101, 31, 41, '50113hgls silver gerey 50191hgls hershey grey.png', 'jj.png', '50113hgls silvergrey 50191hgls hershey grey', 0, '2024-02-09 05:49:18'),
(102, 31, 41, '50113hgls silver gerey 50191hgls hershey.png', 'jj.png', '50113hgls silvergrey 50191hgls hershey grey', 0, '2024-02-09 05:51:11'),
(103, 31, 41, '50113mm silver  50191mm hershey grey.png', 'jj.png', '50113mm silver grey  50191mm hershey grey', 0, '2024-02-09 05:52:15'),
(104, 31, 41, '50113mm silver grey 50205mm mocha brown.png', 'hklkl.png', '50113mm silver grey 50205mm mocha brown', 0, '2024-02-09 05:54:44'),
(105, 31, 41, '50114flt gothic grey 50114mm gothic grey.png', 'ggg.png', '50114flt gothic grey 50114mm gothic grey', 0, '2024-02-09 05:56:32'),
(106, 31, 41, '50188mm peach brown 50113mm wool.png', '50188mm peach brown 50113mm wool.png', '50188mm peach brown 50113mm wool', 0, '2024-02-09 05:58:15'),
(107, 31, 41, '50193flt alovera 50113 silver grey.png', 'alsl.png', '50193flt aloevera 50113 silver grey', 0, '2024-02-09 06:00:15'),
(108, 31, 41, '50188mm peach brown 50113mm wool.png', 'bbnm.png', '50188mm peach brown 50113mm wool', 0, '2024-02-09 06:01:30'),
(109, 31, 41, '50200mm cyclone 50191lvr hershey grey.png', 'asss.png', '50200mm cyclone 50191lvr hershey grey', 0, '2024-02-09 06:03:48'),
(110, 31, 41, '50204mm ash grey 50109mm wool.png', 'asgre.png', '50204mm ash grey 50109mm wool', 0, '2024-02-09 06:06:34'),
(111, 31, 43, '502011 mm sage.png', 'ssge.png', '502011 mm sage', 0, '2024-02-09 06:21:40'),
(112, 31, 43, '50198hgls kyber blue 50109hgls.png', 'kyber.png', '50198hgls kyber blue 50109hgls wool', 0, '2024-02-09 06:23:27'),
(113, 31, 43, '50195hgls pista green 50109hgls.png', 'pista.png', '50195hgls Pista green 50109hgls wool', 0, '2024-02-09 06:24:59'),
(114, 31, 43, '50188flt peach brown 50113mm skin grey.png', 'PEACHBR.png', '50188flt peach brown 50113mm skin grey', 0, '2024-02-09 06:27:02'),
(115, 31, 43, '50185hgls skin  50109hgls wool.png', 'SKN.png', '50185hgls skin grey  50109hgls wool', 0, '2024-02-09 06:29:09'),
(116, 31, 43, '50114mm gothic grey.png', 'gothic.png', '50114mm gothic grey', 0, '2024-02-09 06:37:05'),
(117, 31, 43, '50114mm gothic grey 50207flt cloud.png', 'cloudflt.png', '50114mm gothic grey 50207flt cloud', 0, '2024-02-09 06:38:43'),
(118, 31, 43, '50113mm silver grey 50185mm skin grey.png', 'slivskn.png', '50113mm silver grey 50185mm skin grey', 0, '2024-02-09 06:42:22'),
(119, 31, 47, '65d5bd0e5b813.png', '65d5bd0e5b817.png', '50113mm silver grey 50185mm skin grey', 1, '2024-02-21 09:06:22'),
(120, 31, 47, '65d5bd6649b9b.png', '65d5bd6649b9f.png', '50114mm gothic grey 50207flt cloud', 1, '2024-02-21 09:07:50'),
(121, 31, 47, '65d5bd9dd7276.png', '65d5bd9dd727a.png', '50114mm gothic grey', 1, '2024-02-21 09:08:45'),
(122, 31, 47, '65d5bdd0d566c.png', '65d5bdd0d5672.png', '50185hgls skin  50109hgls wool', 1, '2024-02-21 09:09:36'),
(123, 31, 47, '65d5be28d85d4.png', '65d5be28d85d8.png', '50188flt peach brown 50113mm skin grey', 1, '2024-02-21 09:11:04'),
(124, 31, 47, '65d5be5e7484f.png', '65d5be5e74853.png', '50195hgls pista green 50109hgls wool', 1, '2024-02-21 09:11:58'),
(125, 31, 47, '65d5bea0b2cec.png', '65d5bea0b2cef.png', '50198hgls kyber blue 50109hgls wool', 1, '2024-02-21 09:13:04'),
(126, 31, 47, '65d5bec40e57c.png', '65d5bec40e57f.png', '502011 mm sage', 1, '2024-02-21 09:13:40'),
(127, 31, 48, '65d5bf6f1066d.png', '65d5bf6f10671.png', '50109hgls wool 50185hgls skin grey', 1, '2024-02-21 09:16:31'),
(128, 31, 48, '65d5bf72cfb81.png', '65d5bf72cfb85.png', '50109hgls wool 50185hgls skin grey', 0, '2024-02-21 09:16:34'),
(129, 31, 48, '65d5bfa194ced.png', '65d5bfa194cf0.png', '50109hgls wool 50194hgls English green', 1, '2024-02-21 09:17:21'),
(130, 31, 48, '65d5c000a4cdc.png', '65d5c000a4ce0.png', '50113hgls silver grey 50191hgls hershey grey', 1, '2024-02-21 09:18:56'),
(131, 31, 48, '65d5c078029ed.png', '65d5c078029f1.png', '50113mm silver grey 50191mm hershey grey', 1, '2024-02-21 09:20:56'),
(132, 31, 48, '65d5c0bf00962.png', '65d5c0bf00967.png', '50113mm silver grey 50205mm mocha brown', 1, '2024-02-21 09:22:07'),
(133, 31, 48, '65d5c0f2e0d5d.png', '65d5c0f2e0d60.png', '50114flt gothic grey 50114mm gothic grey', 1, '2024-02-21 09:22:58'),
(134, 31, 48, '65d5c13de1d62.png', '65d5c13de1d66.png', '50188mm peach brown 50113mm wool', 1, '2024-02-21 09:24:13'),
(135, 31, 48, '65d5c237a3bbb.png', '65d5c237a3bbe.png', '50193flt aloevera 50113 silver grey', 1, '2024-02-21 09:28:23'),
(136, 31, 48, '65d5c29479772.png', '65d5c29479775.png', '50200mm cyclone 50191lvr hershey grey', 1, '2024-02-21 09:29:56'),
(137, 31, 48, '65d5c2bb7a258.png', '65d5c2bb7a25b.png', '50204mm ash grey 50109mm wool', 1, '2024-02-21 09:30:35'),
(138, 30, 49, '65d5c451b74c8.jpg', '65d5c451b74cb.jpg', '50113hgls silver grey 50191hgls hershey grey', 0, '2024-02-21 09:37:21'),
(139, 30, 49, '65d5c4a858beb.jpg', '65d5c4a858bee.jpg', '50113hgls silver grey 50170hgls charcoal', 0, '2024-02-21 09:38:48'),
(140, 30, 49, '65d5c4dce2932.jpg', '65d5c4dce2936.jpg', '50113hgls silver grey 50114hgls gothic grey', 0, '2024-02-21 09:39:40'),
(141, 30, 49, '65d5c50a9cb81.jpg', '65d5c50a9cb84.jpg', '50109hgls wool 50194hgls English green', 0, '2024-02-21 09:40:26'),
(142, 30, 49, '65d5c53b8eb31.jpg', '65d5c53b8eb34.png', '50109hgls wool 50182hgls fab gold', 0, '2024-02-21 09:41:15'),
(143, 30, 49, '65d5c5d01eee2.png', '65d5c5d01eee6.jpg', '15128 15326', 0, '2024-02-21 09:43:44'),
(144, 30, 49, '65d5c60bf4130.png', '65d5c60bf4133.jpg', '15128 15326', 0, '2024-02-21 09:44:44'),
(145, 30, 49, '65d5c6567204c.png', '65d5c6567204f.jpg', '15301 15201', 0, '2024-02-21 09:45:58'),
(146, 30, 49, '65d5c6b6c5c93.png', '65d5c6b6c5c97.png', '50185hgls skin grey 50109hgls wool', 0, '2024-02-21 09:47:34'),
(147, 30, 50, '65d5c7d3683ad.png', '65d5c7d3683b1.jpg', '15128 15326', 1, '2024-02-21 09:52:19'),
(148, 30, 50, '65d5c89749f1e.png', '65d5c89749f22.jpg', '15301 15201', 1, '2024-02-21 09:55:35'),
(149, 30, 50, '65d5c8b74ac00.png', '65d5c8b74ac04.jpg', '15326', 1, '2024-02-21 09:56:07'),
(150, 30, 50, '65d5c8f8ad1f5.jpg', '65d5c8f8ad1f8.png', '50185hgls skin grey 50109hgls wool', 1, '2024-02-21 09:57:12'),
(151, 30, 50, '65d5c93470430.png', '65d5c93470435.jpg', '50195hgls pista green 50109hgls wool', 1, '2024-02-21 09:58:12'),
(152, 30, 51, '65d5cba69d896.jpg', '65d5cba69d899.png', '15106 50109 wool', 1, '2024-02-21 10:08:38'),
(153, 30, 51, '65d5cbe2744ad.png', '65d5cbe2744b1.png', '50109hgls wool 50182hgls fab gold', 1, '2024-02-21 10:09:38'),
(154, 30, 51, '65d5cc19e6c87.png', '65d5cc19e6c8a.jpg', '50109hgls wool 50194hgls English green', 1, '2024-02-21 10:10:33'),
(155, 30, 51, '65d5cc5d3a4cd.png', '65d5cc5d3a4d0.jpg', '', 0, '2024-02-21 10:11:41'),
(156, 30, 51, '65d5ccb5875c9.png', '65d5ccb5875cc.jpg', '50113hgls silver grey 50114hgls gothic grey', 1, '2024-02-21 10:13:09'),
(157, 30, 51, '65d5cd4e2a4b6.png', '65d5cd4e2a4bb.jpg', '50113hgls silver grey 50170hgls charcoal', 1, '2024-02-21 10:15:42'),
(158, 30, 51, '65d5cdaecb47d.png', '65d5cdaecb481.jpg', '50113hgls silver grey 50191hgls hershey grey', 1, '2024-02-21 10:17:18'),
(159, 30, 51, '65d5cde11bd93.png', '65d5cde11bd97.png', '50193hgls aloevera 50109hgls wool', 1, '2024-02-21 10:18:09'),
(160, 30, 51, '65d5ce432a88a.png', '65d5ce432a88e.png', '50196hgls ocean blue 50109hgls wool', 1, '2024-02-21 10:19:47'),
(161, 30, 52, '65d5d76739f45.png', '65d5d76739f49.png', '893 801', 1, '2024-02-21 10:58:47'),
(162, 30, 52, '65d5d7a0f1fcd.png', '65d5d7a0f1fd1.png', '15109 50109 wool', 1, '2024-02-21 10:59:44'),
(163, 30, 52, '65d5d7c8c0319.png', '65d5d7c8c031e.png', '15120', 1, '2024-02-21 11:00:24'),
(164, 30, 52, '65d5d7ec187bb.png', '65d5d7ec187be.png', '50109hgls wool 50176hgls turquoise blue', 1, '2024-02-21 11:01:00'),
(165, 30, 52, '65d5d824709fc.png', '65d5d824709ff.png', '50113hgls silver grey 50188flt peach brown', 1, '2024-02-21 11:01:56'),
(166, 30, 52, '65d5d86f8cce2.png', '65d5d86f8cce5.png', '50113hgls silver grey 50194flt english green', 1, '2024-02-21 11:03:11'),
(167, 30, 52, '65d5d8b54caf6.png', '65d5d8b54cafa.png', '50185hgls skin grey 50187flt roasted almond', 1, '2024-02-21 11:04:21'),
(168, 30, 52, '65d5da2c743f0.png', '65d5da2c743f3.png', '50193flt aloe vera 50109hgls wool', 1, '2024-02-21 11:10:36'),
(169, 30, 52, '65d5da96ec01f.png', '65d5da96ec022.png', '50207flt cloud 50182hgls fab gold', 1, '2024-02-21 11:12:22'),
(170, 30, 52, '65d5dc3f83bf4.png', '65d5dc3f83bf7.png', '50114flt gothic grey 50113hgls silver grey', 1, '2024-02-21 11:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customize_category`
--

CREATE TABLE `tbl_customize_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_customize_category`
--

INSERT INTO `tbl_customize_category` (`id`, `name`, `created_on`, `status`) VALUES
(1, 'onee', '2024-01-24 06:36:57', 0),
(2, 'teeee', '2024-01-24 06:38:02', 0),
(3, 'dkdk', '2024-01-24 06:58:10', 0),
(4, 'sdsd', '2024-01-24 06:59:28', 0),
(5, 'sdsd', '2024-01-24 07:00:34', 0),
(6, 'cuscat', '2024-01-24 09:08:33', 0),
(7, 'catt', '2024-01-24 09:14:20', 0),
(8, 'cat', '2024-01-24 09:15:32', 0),
(9, 'catddldl', '2024-01-24 09:16:02', 0),
(10, 'd', '2024-01-24 09:19:29', 0),
(11, 'k ', '2024-01-24 09:19:45', 0),
(12, 'mm', '2024-01-24 09:24:34', 0),
(13, 'dwlll', '2024-01-24 09:26:36', 0),
(14, 'pk', '2024-01-24 09:27:19', 0),
(15, 'sc', '2024-01-24 09:27:33', 0),
(16, 'kl', '2024-01-24 09:27:51', 0),
(17, 's', '2024-01-24 09:28:02', 0),
(18, 'sd', '2024-01-24 09:30:00', 0),
(19, 'ef', '2024-01-24 09:30:28', 0),
(20, 'ppp', '2024-01-24 09:35:55', 0),
(21, 'lllll', '2024-01-24 09:56:06', 0),
(22, 'Modular Kitchen', '2024-01-25 10:02:59', 0),
(23, 'Bedroom', '2024-01-25 10:03:12', 0),
(24, 'Kids Room', '2024-01-25 10:03:24', 0),
(25, 'Living Room', '2024-01-25 10:03:40', 0),
(26, 'Wardrobe', '2024-01-25 10:03:59', 0),
(27, 'one', '2024-01-30 12:29:07', 0),
(28, 'Pooja Room', '2024-02-02 07:34:53', 0),
(29, 'Test', '2024-02-07 07:34:59', 0),
(30, 'Modular Kitchen', '2024-02-07 08:47:35', 1),
(31, 'Bedrooms', '2024-02-09 04:38:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customize_subcategory`
--

CREATE TABLE `tbl_customize_subcategory` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_customize_subcategory`
--

INSERT INTO `tbl_customize_subcategory` (`id`, `category_id`, `category_name`, `name`, `image`, `created_on`, `status`) VALUES
(1, 3, 'dkdk', 'kdkd', 'Image_created_with_a_mobile_phone.png', '2024-01-24 07:13:56', 0),
(2, 3, 'dkdk', 'dfdfd', 'Image_created_with_a_mobile_phone.png', '2024-01-24 07:14:28', 0),
(3, 2, 'teeee', 'one', 'download.jpeg', '2024-01-24 07:18:12', 0),
(4, 8, 'cat', 'cate', 'download.jpeg', '2024-01-24 09:30:56', 0),
(5, 2, 'teeee', '3', 'Image_created_with_a_mobile_phone.png', '2024-01-24 09:42:06', 0),
(6, 2, 'teeee', ' ', 'Image_created_with_a_mobile_phone.png', '2024-01-24 09:51:39', 0),
(7, 2, 'teeee', 'kkllll', 'Image_created_with_a_mobile_phone.png', '2024-01-24 09:53:06', 0),
(8, 2, 'teeee', 'kkk', 'Image_created_with_a_mobile_phone.png', '2024-01-24 09:56:27', 0),
(9, 23, 'Bedroom', 'First Design', 'bedroom-c1.jpg', '2024-01-25 10:10:54', 0),
(10, 23, 'Bedroom', 'Design', 'bedroom-c2.jpg', '2024-01-25 10:12:31', 0),
(11, 24, 'Kids Room', 'Design_two', 'kids-bedroom-a1.jpg', '2024-01-25 10:14:10', 0),
(12, 22, 'Modular Kitchen', 'L-Shape-one', 'kitchen-L1.jpg', '2024-01-25 10:14:50', 0),
(13, 22, 'Modular Kitchen', 'U-Shape', 'kitchen-U1.jpg', '2024-01-25 10:15:21', 0),
(14, 22, 'Modular Kitchen', 'L-Shape-two', 'kitchen-L2.jpg', '2024-01-25 10:16:22', 0),
(15, 22, 'Modular Kitchen', 'U-Shape-two', 'kitchen-U2.jpg', '2024-01-25 10:16:53', 0),
(16, 22, 'Modular Kitchen', 'Side Design', 'kitchen-side1.jpg', '2024-01-25 10:17:12', 0),
(17, 23, 'Bedroom', 'Design_New', 'bedroom-r1.jpg', '2024-01-25 12:54:42', 0),
(18, 23, 'Bedroom', 'Design_Three', 'bedroom-s1.jpg', '2024-01-25 12:55:08', 0),
(19, 23, 'Bedroom', 'Design_nkj', 'bedroom-s2.jpg', '2024-01-25 12:55:47', 0),
(20, 27, 'one', 'L-Shape', 'side-view-smiley-couple-indoors_23-2149903726.jpg', '2024-01-30 12:29:31', 0),
(21, 29, 'Test', 'Sub test', '0-2.jpg', '2024-02-07 07:35:58', 0),
(22, 30, 'Modular Kitchen', 'Modular Straight kitchen', '50113hgls silver gerey 50191hgls hershey grey.png', '2024-02-07 11:40:41', 0),
(23, 30, 'Modular Kitchen', 'Modular Straight kitchen', '50113hgls silver gerey 50191hgls hershey grey.png', '2024-02-07 11:41:42', 0),
(24, 30, 'Modular Kitchen', 'Modular Straight kitchen', '50113hgls silver gerey 50191hgls hershey grey.png', '2024-02-07 12:09:44', 0),
(25, 30, 'Modular Kitchen', 'Modular Straight kitchen', '50113hgls silver gerey 50191hgls hershey grey.png', '2024-02-07 12:10:57', 0),
(26, 30, 'Modular Kitchen', 'Modular Straight kitchen', '50113hgls silver gerey 50191hgls hershey grey.jpg', '2024-02-07 12:18:32', 0),
(27, 30, 'Modular Kitchen', 'Modular Straight kitchen', '50109hgls wool 50182 hgls fab gold.jpg', '2024-02-07 12:21:17', 0),
(28, 30, 'Modular Kitchen', 'Modular Straight kitchen', '50109hgls wool 50182 hgls fab gold.jpg', '2024-02-07 12:22:33', 0),
(29, 30, 'Modular Kitchen', 'Modular Straight kitchen', '50109hgls wool 50182 hgls fab gold.jpg', '2024-02-07 12:23:34', 0),
(30, 30, 'Modular Kitchen', 'Modular Straight kitchen', '50109hgls wool 50182 hgls fab gold.jpg', '2024-02-07 12:25:27', 0),
(31, 30, 'Modular Kitchen', 'Modular Straight kitchen', 'HG-146(DORBY),HL-1556(DORBY).png', '2024-02-07 12:26:47', 0),
(32, 30, 'Modular Kitchen', 'Modular Straight kitchen', '50113hgls silver gerey 50191hgls hershey grey.png', '2024-02-07 12:39:47', 0),
(33, 30, 'Modular Kitchen', 'Modular Straight kitchen', '50113hgls silver gerey 50191hgls hershey grey.png.jpg', '2024-02-07 12:42:53', 0),
(34, 30, 'Modular Kitchen', 'Modular Straight kitchen', '50109hgls wool 50182 hgls fab gold.jpg.png', '2024-02-07 12:50:17', 0),
(35, 30, 'Modular Kitchen', 'Modular Straight kitchen', '50113hgls silver gerey 50191hgls hershey grey.jpg', '2024-02-07 12:51:10', 0),
(36, 30, 'Modular Kitchen', 'Modular Straight kitchen', '50195 hgls pista green 50109 hgls wool.png', '2024-02-08 06:49:30', 0),
(37, 30, 'Modular Kitchen', 'Modular Straight kitchen with loft', '50113hgls silver gerey 50191hgls hershey grey.png', '2024-02-08 07:20:36', 0),
(38, 30, 'Modular Kitchen', 'L Shape Modular kitchen', '50109hgls wool 501 hgls turquoise blue.png', '2024-02-08 10:12:40', 0),
(39, 30, 'Modular Kitchen', 'L Shape With Loft Modular kitchen', '15127,15102.png', '2024-02-08 11:13:10', 1),
(40, 30, 'Modular Kitchen', 'L Shape with Tall Unit and Loft Modular kitchen', '15213,15102.png', '2024-02-08 12:59:33', 1),
(41, 31, 'Bedrooms', 'Sliding Wardrobe', '50114flt gothic grey 50114mm gothic grey.png', '2024-02-09 05:41:34', 0),
(42, 30, 'Modular Kitchen', 'Swing Wardrobe', '50198hgls kyber blue 50109hgls wool.png', '2024-02-09 06:18:07', 0),
(43, 31, 'Bedrooms', 'Swing Wardrobe', '50198hgls kyber blue 50109hgls wool.png', '2024-02-09 06:20:14', 0),
(44, 31, 'Bedrooms', 'L-Shape', '50114flt gothic grey 50114mm gothic grey.webp', '2024-02-19 06:39:53', 0),
(45, 31, 'Bedrooms', 'L-Shape', '65d30a59c7f4b.webp', '2024-02-19 07:59:21', 0),
(46, 31, 'Bedrooms', 'Swing Wardrobe', '65d5a10eb025c.png', '2024-02-21 07:06:54', 0),
(47, 31, 'Bedrooms', 'Swing Wardrobe', '65d5a1402a830.png', '2024-02-21 07:07:44', 1),
(48, 31, 'Bedrooms', 'Sliding Wardrobe', '65d5a18042041.png', '2024-02-21 07:08:48', 1),
(49, 30, 'Modular Kitchen', 'Modular Straight kitchen', '65d5c38f11b8c.jpg', '2024-02-21 09:34:07', 0),
(50, 30, 'Modular Kitchen', 'Modular Straight kitchen', '65d5c7772b7ef.png', '2024-02-21 09:50:47', 1),
(51, 30, 'Modular Kitchen', 'Modular Straight kitchen with loft', '65d5caac26678.png', '2024-02-21 10:04:28', 1),
(52, 30, 'Modular Kitchen', 'L Shape Modular kitchen', '65d5d6a57c5d4.png', '2024-02-21 10:55:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry`
--

CREATE TABLE `tbl_enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `property_type` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `budget` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created _on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_enquiry`
--

INSERT INTO `tbl_enquiry` (`id`, `name`, `mobile`, `location`, `property_type`, `start_date`, `budget`, `status`, `created _on`) VALUES
(1, 'cf', '2147483647', 'cv', 'Villa', 'Start Immediately', 'Less Than 4Lacs', 1, '2024-02-08 08:20:58'),
(2, 's', '2147483647', 's', 'Individual House', '60-90 Days', 'Less Than 4Lacs', 1, '2024-02-08 08:21:49'),
(3, 'jack', '9876543210', 'salem', '2BHK', '30-60 Days', '7-10 Lacs', 1, '2024-02-08 08:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `id` int(11) NOT NULL,
  `department_from` varchar(100) NOT NULL,
  `department_to` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`id`, `department_from`, `department_to`, `message`, `created_on`, `status`) VALUES
(63, 'Design', 'Design', 'rgrgr', '2024-01-25 15:44:38', 0),
(64, 'Production', 'Design', 'sddd', '2024-01-25 15:48:52', 1),
(65, 'Marketing', 'Sales', 'Livin Interiors in Bangalore has been at the forefront of the Interiors Designs and Decorators in Kalyan Nagar, Bangalore, delivering exceptional service and unparalleled results. Elevate your space with Livin Interiors in Bangalore,', '2024-01-26 11:58:18', 1),
(66, 'Marketing', 'Sales', 'hey this is aswome', '2024-01-26 12:20:58', 1),
(67, 'Sales', 'Design', 'i am new herer', '2024-01-26 13:27:41', 1),
(68, 'Sales', 'Production', 'Nice done', '2024-01-27 03:50:45', 1),
(69, 'Design', 'Marketing', 'asdsdddwd', '2024-01-31 04:56:11', 1),
(70, 'Design', 'Production', 'Test', '2024-03-16 15:21:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id`, `category_id`, `category_name`, `subcategory_id`, `subcategory_name`, `image`, `title`, `description`, `created_on`, `status`) VALUES
(12, 21, 'kitchen', 8, 'L Shape', 'download.jpeg', 'tilteee', 'descritiolnn', '2024-01-22 05:55:12', 0),
(13, 22, 'bedroom', 9, 'V Shape', 'Image_created_with_a_mobile_phone.png', 'title', 'description', '2024-01-22 05:56:05', 0),
(14, 23, 'tv unit', 10, 'U Shape', 'download.jpeg', 'titl', 'desc', '2024-01-22 05:56:24', 0),
(15, 4, 'four', 1, 'fourone', 'Image_created_with_a_mobile_phone.png', 'tile', 'desc', '2024-01-24 08:36:42', 0),
(16, 8, 'theena', 5, 'ak', 'Image_created_with_a_mobile_phone.png', 'mm', 'mm', '2024-01-24 10:34:04', 0),
(17, 8, 'theena', 5, 'ak', 'Image_created_with_a_mobile_phone.png', '88', 'mm', '2024-01-24 10:51:37', 0),
(18, 10, 'Modular Kitchen', 7, 'L-Shape', 'kitchen-L1.jpg', 'This is L shape Kitchen', 'Livin Interiors in Bangalore has been at the forefront of the Interiors Designs and Decorators in Kalyan Nagar, Bangalore, delivering exceptional service and unparalleled results.', '2024-01-25 10:37:14', 1),
(19, 10, 'Modular Kitchen', 7, 'L-Shape', 'kitchen-L2.jpg', 'This is L shape design', 'Livin Interiors in Bangalore has been at the forefront of the Interiors Designs and Decorators in Kalyan Nagar, Bangalore, delivering exceptional service and unparalleled results.', '2024-01-25 10:37:49', 1),
(20, 10, 'Modular Kitchen', 8, 'U-Shape', 'kitchen-U1.jpg', 'This U shaped design', 'Livin Interiors in Bangalore has been at the forefront of the Interiors Designs and Decorators in Kalyan Nagar, Bangalore, delivering exceptional service and unparalleled results.', '2024-01-25 10:38:20', 1),
(21, 10, 'Modular Kitchen', 7, 'L-Shape', 'bedroom-r1.jpg', 'This is design L shape', 'Livin Interiors in Bangalore has been at the forefront of the Interiors Designs and Decorators in Kalyan Nagar, Bangalore, delivering exceptional service and unparalleled results.', '2024-01-25 13:14:14', 1),
(22, 11, 'Bedroom', 9, 'Model One', 'bedroom-c1.jpg', 'This Model one shaped design', 'Livin Interiors in Bangalore has been at the forefront of the Interiors Designs and Decorators in Kalyan Nagar, Bangalore, delivering exceptional service and unparalleled results.', '2024-01-25 14:07:34', 1),
(23, 11, 'Bedroom', 9, 'Model One', 'bedroom-c2.jpg', 'This Model Two shaped design', 'Livin Interiors in Bangalore has been at the forefront of the Interiors Designs and Decorators in Kalyan Nagar, Bangalore, delivering exceptional service and unparalleled results.', '2024-01-25 14:08:16', 1),
(24, 11, 'Bedroom', 10, 'model Two', 'bedroom-s1.jpg', 'This Model Two shaped design', 'Livin Interiors in Bangalore has been at the forefront of the Interiors Designs and Decorators in Kalyan Nagar, Bangalore, delivering exceptional service and unparalleled results.', '2024-01-25 14:08:50', 1),
(25, 11, 'Bedroom', 10, 'model Two', 'bedroom-s2.jpg', 'This Model One shaped design', 'Livin Interiors in Bangalore has been at the forefront of the Interiors Designs and Decorators in Kalyan Nagar, Bangalore, delivering exceptional service and unparalleled results.', '2024-01-25 14:09:22', 1),
(26, 14, 'one', 14, 'L-Shape', 'wp5171420-iron-man-mark-suits-wallpapers.jpg', 'fdgftdf', 'gggggggggggggu7th3', '2024-01-30 12:40:45', 0),
(27, 11, 'Bedroom', 9, 'Model One', '65d30c1d1cd30.webp', 'dfgdgg', 'dfssssssssssssssssssssgtgertet', '2024-02-19 08:06:53', 0),
(28, 11, 'Bedroom', 9, 'Model One', '65d30c5490f05.webp', 'aasdsd`dcf', 'sdfdf', '2024-02-19 08:07:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery_category`
--

CREATE TABLE `tbl_gallery_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT current_timestamp(),
  `status` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_gallery_category`
--

INSERT INTO `tbl_gallery_category` (`id`, `name`, `created_on`, `status`) VALUES
(1, 'one', '2024-01-24 07:38:44', 0),
(2, 'twoo', '2024-01-24 07:39:42', 0),
(3, 'three', '2024-01-24 07:40:39', 0),
(4, 'four', '2024-01-24 07:40:54', 0),
(5, 'five', '2024-01-24 07:41:18', 0),
(6, 'eight', '2024-01-24 08:28:02', 0),
(7, 'nine', '2024-01-24 08:28:21', 0),
(8, 'theena', '2024-01-24 10:13:04', 0),
(9, 'kk', '2024-01-24 10:23:14', 0),
(10, 'Modular Kitchen', '2024-01-25 10:31:58', 1),
(11, 'Bedroom', '2024-01-25 10:32:05', 1),
(12, 'Kids Room', '2024-01-25 10:32:15', 1),
(13, 'Living Room', '2024-01-25 10:32:22', 0),
(14, 'one', '2024-01-30 12:38:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery_subcategory`
--

CREATE TABLE `tbl_gallery_subcategory` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_gallery_subcategory`
--

INSERT INTO `tbl_gallery_subcategory` (`id`, `category_id`, `category_name`, `name`, `image`, `created_on`, `status`) VALUES
(1, 4, 'four', 'fourone', 'Image_created_with_a_mobile_phone.png', '2024-01-24 08:31:57', 0),
(2, 2, 'twoo', 'twooone', 'download.jpeg', '2024-01-24 08:32:13', 0),
(3, 8, 'theena', 'ak3', 'Image_created_with_a_mobile_phone.png', '2024-01-24 10:27:25', 0),
(4, 8, 'theena', '233', 'Image_created_with_a_mobile_phone.png', '2024-01-24 10:27:41', 0),
(5, 8, 'theena', 'ak', 'Image_created_with_a_mobile_phone.png', '2024-01-24 10:29:18', 0),
(6, 1, 'one', 'L-Shape', 'kitchen-U2.jpg', '2024-01-25 10:09:16', 0),
(7, 10, 'Modular Kitchen', 'L-Shape', 'mint-green-lacquered-glass-modular-kitchen-interior-design.jpg', '2024-01-25 10:33:50', 1),
(8, 10, 'Modular Kitchen', 'U-Shape', 'mint-green-lacquered-glass-modular-kitchen-interior-design.jpg', '2024-01-25 10:34:05', 1),
(9, 11, 'Bedroom', 'Model One', 'mint-green-lacquered-glass-modular-kitchen-interior-design.jpg', '2024-01-25 10:34:47', 1),
(10, 11, 'Bedroom', 'model Two', 'mint-green-lacquered-glass-modular-kitchen-interior-design.jpg', '2024-01-25 10:35:09', 1),
(11, 12, 'Kids Room', 'Square', 'kids-bedroom-a4.jpg', '2024-01-25 13:55:32', 1),
(12, 12, 'Kids Room', 'Design', 'kids-bedroom-a5.jpg', '2024-01-25 13:55:50', 1),
(13, 12, 'Kids Room', 'test', '', '2024-01-26 13:46:39', 1),
(14, 14, 'one', 'L-Shape', '', '2024-01-30 12:38:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site_category`
--

CREATE TABLE `tbl_site_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_site_category`
--

INSERT INTO `tbl_site_category` (`id`, `name`, `image`, `created_on`, `status`) VALUES
(1, 'one', '', '2024-01-24 13:27:53', 0),
(2, 'oneee', '', '2024-01-25 10:52:43', 0),
(3, 'twooo', '', '2024-01-25 10:52:46', 0),
(4, 'Modular Kitchen', '', '2024-02-14 03:54:15', 0),
(5, 'Bedroom', '', '2024-02-14 03:54:21', 0),
(6, 'Kids Room', '', '2024-02-14 03:54:27', 0),
(7, 'one', '', '2024-01-30 12:42:37', 0),
(8, 'Modular Kitchen', '65f95db61ec2f.png', '2024-03-19 09:41:10', 1),
(9, 'Living Room', '65f95df6817b7.png', '2024-03-19 09:42:14', 1),
(10, 'Pooja', '65f95e377abcf.png', '2024-03-19 09:43:19', 1),
(11, 'Foyer', '65f9604ee1d19.png', '2024-03-19 09:52:14', 1),
(12, 'Dining Room', '65f95eeb0e149.png', '2024-03-19 09:46:19', 1),
(13, 'Bedrooms', '65f95f1f57ae5.png', '2024-03-19 09:47:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site_subcategory`
--

CREATE TABLE `tbl_site_subcategory` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_site_subcategory`
--

INSERT INTO `tbl_site_subcategory` (`id`, `category_id`, `category_name`, `name`, `image`, `created_on`, `status`) VALUES
(1, 3, 'twooo', 'ok', 'download.jpeg', '2024-01-24 13:34:06', 0),
(2, 2, 'oneee', 'jjj', 'Image_created_with_a_mobile_phone.png', '2024-01-24 13:34:24', 0),
(3, 2, 'oneee', 'jjk', 'Image_created_with_a_mobile_phone.png', '2024-01-24 13:41:21', 0),
(4, 2, 'oneee', 'nlll', 'Image_created_with_a_mobile_phone.png', '2024-01-24 13:41:46', 0),
(5, 4, 'Modular Kitchen', 'L-Shape', 'kitchen-L2.jpg', '2024-01-25 10:53:31', 0),
(6, 4, 'Modular Kitchen', 'U-Shape', 'kitchen-U2.jpg', '2024-01-25 10:53:49', 0),
(7, 5, 'Bedroom', 'Design_One', 'bedroom-c2.jpg', '2024-01-25 10:54:12', 0),
(8, 5, 'Bedroom', 'Design_Two', 'bedroom-s1.jpg', '2024-01-25 10:54:31', 0),
(9, 6, 'Kids Room', 'Round', 'kids-bedroom-a1.jpg', '2024-01-25 10:54:52', 0),
(10, 6, 'Kids Room', 'Square', 'kids-bedroom-a4.jpg', '2024-01-25 10:55:08', 0),
(11, 7, 'one', 'Round', 'wp5171420-iron-man-mark-suits-wallpapers.jpg', '2024-01-30 12:42:26', 0),
(12, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '11(46)_47)_48)_49)_50)Adjust_ED.jpg', '2024-02-14 03:58:17', 0),
(13, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '11(36)_37)_38)_39)_40)Adjust_ED.jpg', '2024-02-14 04:04:00', 1),
(14, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '11(41)_2)_3)_4)_5)Adjust_ED.jpg', '2024-02-14 04:04:17', 1),
(15, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '11(46)_47)_48)_49)_50)Adjust_ED.jpg', '2024-02-14 04:04:38', 1),
(16, 8, 'Modular Kitchen', 'Parallel kitchen', '6.jpg', '2024-02-14 04:06:46', 0),
(17, 8, 'Modular Kitchen', 'Parallel kitchen', '7.jpg', '2024-02-14 04:07:17', 0),
(18, 8, 'Modular Kitchen', 'Parallel kitchen', '8.jpg', '2024-02-14 04:07:54', 0),
(19, 8, 'Modular Kitchen', 'U Shape Kitchen', '12(66)-12(70)_ED.jpg', '2024-02-14 04:09:22', 1),
(20, 8, 'Modular Kitchen', 'U Shape Kitchen', '12(71)-12(75)_ED.jpg', '2024-02-14 04:10:15', 1),
(21, 8, 'Modular Kitchen', 'U Shape Kitchen', '12(61)-12(65)_ED.jpg', '2024-02-14 04:11:53', 1),
(22, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '11(16)-11(20)_ED.jpg', '2024-02-14 04:15:12', 1),
(23, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '11(21)-11(25)_ED.jpg', '2024-02-14 04:15:28', 1),
(24, 8, 'Modular Kitchen', 'Parallel kitchen', '11(71)-11(75)_ED.jpg', '2024-02-14 04:16:13', 1),
(25, 8, 'Modular Kitchen', 'Parallel kitchen', '11(66)-11(70)_ED.jpg', '2024-02-14 04:16:58', 1),
(26, 8, 'Modular Kitchen', 'Parallel kitchen', '11(61)-11(65)_ED.jpg', '2024-02-14 04:17:13', 1),
(27, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '11(26)-11(30)_ED.jpg', '2024-02-14 04:18:45', 0),
(28, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '11(31)-11(35)_ED.jpg', '2024-02-14 04:19:08', 1),
(29, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '11(26)-11(30)_ED.jpg', '2024-02-14 04:19:49', 1),
(30, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '11(36)-11(40)_ED.jpg', '2024-02-14 04:20:25', 1),
(31, 8, 'Modular Kitchen', 'Parallel kitchen', '11(31)-11(35)_ED.jpg', '2024-02-14 04:21:41', 0),
(32, 8, 'Modular Kitchen', 'Parallel kitchen', '11(36)-11(40)_ED.jpg', '2024-02-14 04:22:12', 0),
(33, 8, 'Modular Kitchen', 'Parallel kitchen', '11(31)-11(35)_ED.jpg', '2024-02-14 04:23:04', 0),
(34, 8, 'Modular Kitchen', 'Parallel kitchen', 'k.jpg', '2024-02-14 04:23:58', 1),
(35, 8, 'Modular Kitchen', 'Parallel kitchen', 'k1.jpg', '2024-02-14 04:24:32', 1),
(36, 8, 'Modular Kitchen', 'Parallel kitchen', 'k2.jpg', '2024-02-14 04:29:02', 1),
(37, 8, 'Modular Kitchen', 'Parallel kitchen', '12(66)-12(70)_ED.jpg', '2024-02-14 04:29:52', 0),
(38, 8, 'Modular Kitchen', 'Parallel kitchen', 'kk.jpg', '2024-02-14 04:30:48', 1),
(39, 8, 'Modular Kitchen', 'Parallel kitchen', 'kkk.jpg', '2024-02-14 04:31:22', 1),
(40, 8, 'Modular Kitchen', 'Parallel kitchen', 'kkkk.jpg', '2024-02-14 04:32:00', 1),
(41, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '5.jpg', '2024-02-14 04:32:48', 1),
(42, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '6.jpg', '2024-02-14 04:33:19', 0),
(43, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '61.jpg', '2024-02-14 04:34:07', 1),
(44, 8, 'Modular Kitchen', 'Parallel kitchen', 'pk.jpg', '2024-02-14 04:35:43', 1),
(45, 8, 'Modular Kitchen', 'Parallel kitchen', 'pk1.jpg', '2024-02-14 04:36:18', 1),
(46, 8, 'Modular Kitchen', 'Parallel kitchen', 'pk2.jpg', '2024-02-14 04:36:46', 1),
(47, 8, 'Modular Kitchen', 'U Shape Kitchen', 'u1.jpg', '2024-02-14 04:37:59', 1),
(48, 8, 'Modular Kitchen', 'U Shape Kitchen', 'u2.jpg', '2024-02-14 04:38:39', 1),
(49, 8, 'Modular Kitchen', 'U Shape Kitchen', 'u3.jpg', '2024-02-14 04:39:05', 1),
(50, 8, 'Modular Kitchen', 'U Shape Kitchen', 'u4.jpg', '2024-02-14 04:40:40', 1),
(51, 8, 'Modular Kitchen', 'U Shape Kitchen', 'u5.jpg', '2024-02-14 04:41:11', 1),
(52, 8, 'Modular Kitchen', 'U Shape Kitchen', 'u6.jpg', '2024-02-14 04:41:55', 1),
(53, 8, 'Modular Kitchen', 'Parallel kitchen', '5 (1)-5 (4)_ED.jpg', '2024-02-14 04:43:40', 0),
(54, 8, 'Modular Kitchen', 'Parallel kitchen', '6 (1)-6 (3)_ED.jpg', '2024-02-14 04:44:12', 0),
(55, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '11(51)-11(55)_ED.jpg', '2024-02-14 04:44:56', 1),
(56, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '11(56)-11(60)_ED.jpg', '2024-02-14 04:45:29', 1),
(57, 8, 'Modular Kitchen', 'U Shape Kitchen', '11(86)-11(90)_ED.jpg', '2024-02-14 04:47:47', 1),
(58, 8, 'Modular Kitchen', 'U Shape Kitchen', '11(91)-11(95)_ED.jpg', '2024-02-14 04:48:13', 1),
(59, 8, 'Modular Kitchen', 'U Shape Kitchen', '12(11)-12(15)_ED.jpg', '2024-02-14 04:48:37', 1),
(60, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '12(21)-12(25)_ED.jpg', '2024-02-14 04:49:28', 1),
(61, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '12(26)-12(30)_ED.jpg', '2024-02-14 04:49:48', 1),
(62, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '12(31)-12(35)_ED.jpg', '2024-02-14 04:50:17', 1),
(63, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '11(31)-11(35)_ED.jpg', '2024-02-14 04:50:59', 0),
(64, 8, 'Modular Kitchen', 'L Shape Modular kitchen', 'l1.jpg', '2024-02-14 04:51:38', 1),
(65, 8, 'Modular Kitchen', 'L Shape Modular kitchen', 'l2.jpg', '2024-02-14 04:52:00', 1),
(66, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '11(46)-11(50)_ED.jpg', '2024-02-14 04:53:21', 0),
(67, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '11(56)-11(60)_ED.jpg', '2024-02-14 04:54:00', 0),
(68, 8, 'Modular Kitchen', 'L Shape Modular kitchen', 'lk1.jpg', '2024-02-14 04:55:16', 1),
(69, 8, 'Modular Kitchen', 'L Shape Modular kitchen', 'lk2.jpg', '2024-02-14 04:56:01', 1),
(70, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '11(31)-11(35)_ED.jpg', '2024-02-14 04:56:57', 0),
(71, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '0)_ED.jpg', '2024-02-14 04:57:57', 1),
(72, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '1)ED.jpg', '2024-02-14 04:58:38', 1),
(73, 8, 'Modular Kitchen', 'L Shape Modular kitchen', 'ED.jpg', '2024-02-14 04:59:20', 1),
(74, 8, 'Modular Kitchen', 'Parallel kitchen', 'Modular Kitchen 1.jpg', '2024-02-14 05:00:19', 0),
(75, 8, 'Modular Kitchen', 'Parallel kitchen', 'Modular Kitchen 2.jpg', '2024-02-14 05:01:00', 0),
(76, 8, 'Modular Kitchen', 'Parallel kitchen', 'Modular Kitchen.jpg', '2024-02-14 05:01:38', 0),
(77, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '6 (1)-6 (3)_ED.jpg', '2024-02-14 05:02:29', 0),
(78, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '6 )_ED.jpg', '2024-02-14 05:03:23', 0),
(79, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '7 (1_ED.jpg', '2024-02-14 05:04:12', 0),
(80, 8, 'Modular Kitchen', 'U Shape Kitchen', 'hihlo.jpg', '2024-02-14 05:05:16', 1),
(81, 8, 'Modular Kitchen', 'U Shape Kitchen', 'kll.jpg', '2024-02-14 05:05:56', 1),
(82, 8, 'Modular Kitchen', 'U Shape Kitchen', 'll;;;.jpg', '2024-02-14 05:06:37', 1),
(83, 8, 'Modular Kitchen', 'U Shape Kitchen', '11(11)-11(15)_ED.jpg', '2024-02-14 05:07:28', 0),
(84, 8, 'Modular Kitchen', 'U Shape Kitchen', '11(16)-11(20)_ED.jpg', '2024-02-14 05:08:07', 0),
(85, 8, 'Modular Kitchen', 'U Shape Kitchen', 'uu.jpg', '2024-02-14 05:08:54', 1),
(86, 8, 'Modular Kitchen', 'U Shape Kitchen', 'uuu.jpg', '2024-02-14 05:09:36', 1),
(87, 8, 'Modular Kitchen', 'U Shape Kitchen', 'ww.jpg', '2024-02-14 05:11:30', 1),
(88, 8, 'Modular Kitchen', 'U Shape Kitchen', 'kkllg.jpg', '2024-02-14 05:12:06', 1),
(89, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '12 modular kitchen.jpg', '2024-02-14 05:12:58', 0),
(90, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '13.jpg', '2024-02-14 05:13:34', 1),
(91, 8, 'Modular Kitchen', 'U Shape Kitchen', 'u6.jpg', '2024-02-14 05:14:47', 0),
(92, 8, 'Modular Kitchen', 'U Shape Kitchen', 'uk6.jpg', '2024-02-14 05:15:40', 1),
(93, 8, 'Modular Kitchen', 'U Shape Kitchen', 'uk7.jpg', '2024-02-14 05:16:10', 1),
(94, 8, 'Modular Kitchen', 'U Shape Kitchen', 'uk8.jpg', '2024-02-14 05:16:53', 1),
(95, 8, 'Modular Kitchen', 'U Shape Kitchen', '11(71)-11(75)_ED.jpg', '2024-02-14 05:17:46', 0),
(96, 8, 'Modular Kitchen', 'U Shape Kitchen', '11(75)_ED.jpg', '2024-02-14 05:18:47', 1),
(97, 8, 'Modular Kitchen', 'U Shape Kitchen', '11(80)_ED.jpg', '2024-02-14 05:19:23', 1),
(98, 8, 'Modular Kitchen', 'U Shape Kitchen', '11(85)_ED.jpg', '2024-02-14 05:19:58', 1),
(99, 8, 'Modular Kitchen', 'U Shape Kitchen', '11(60)_ED.jpg', '2024-02-14 05:21:19', 1),
(100, 8, 'Modular Kitchen', 'U Shape Kitchen', '11(65)_ED.jpg', '2024-02-14 05:21:55', 1),
(101, 8, 'Modular Kitchen', 'U Shape Kitchen', '11(70)_ED.jpg', '2024-02-14 05:22:28', 1),
(102, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '4.jpg', '2024-02-14 05:23:16', 1),
(103, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '5.jpg', '2024-02-14 05:23:38', 0),
(104, 8, 'Modular Kitchen', 'L Shape Modular kitchen', 'l5.jpg', '2024-02-14 05:24:38', 1),
(105, 8, 'Modular Kitchen', 'U Shape Kitchen', '11(40)_ED.jpg', '2024-02-14 05:26:04', 1),
(106, 8, 'Modular Kitchen', 'U Shape Kitchen', '11(45)_ED.jpg', '2024-02-14 05:26:33', 0),
(107, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '11(50)_ED.jpg', '2024-02-14 05:27:11', 1),
(108, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '5a7a6357aligned-5a7a6361aligned_ED.jpg', '2024-02-14 05:29:37', 0),
(109, 8, 'Modular Kitchen', 'U Shape Kitchen', '5a7a6357aligned-5a7a6361aligned_ED.jpg', '2024-02-14 05:30:47', 1),
(110, 8, 'Modular Kitchen', 'U Shape Kitchen', '5a7a6367aligned-5a7a6371aligned_ED.jpg', '2024-02-14 05:31:25', 1),
(111, 8, 'Modular Kitchen', 'U Shape Kitchen', '5a7a6372aligned-5a7a6376aligned_ED.jpg', '2024-02-14 05:32:03', 1),
(112, 9, 'Living Room', 'TV Unit', '11(11)_2)_3)_4)_5)Adjust_ED.jpg', '2024-02-14 08:21:10', 0),
(113, 9, 'Living Room', 'TV Unit with Pooja Unit', '11(11)_2)_3)_4)_5)Adjust_ED.jpg', '2024-02-14 08:22:20', 0),
(114, 9, 'Living Room', 'TV Unit with Pooja', '11(11)_2)_3)_4)_5)Adjust_ED.jpg', '2024-02-14 08:23:32', 1),
(115, 9, 'Living Room', 'Beam Panel', '11(16)_17)_18)_19)_20)Adjust_ED.jpg', '2024-02-14 08:24:33', 1),
(116, 9, 'Living Room', 'TV Unit with Pooja', '11(66)_67)_68)_69)_70)Adjust_ED.jpg', '2024-02-14 08:25:09', 1),
(117, 9, 'Living Room', 'TV Unit with Pooja', '11(61)_2)_3)_4)_5)Adjust_ED.jpg', '2024-02-14 08:26:01', 1),
(118, 9, 'Living Room', 'TV Unit', '2.jpg', '2024-02-14 08:27:48', 1),
(119, 9, 'Living Room', 'TV Unit', '12(46)-12(50)_ED.jpg', '2024-02-14 08:29:00', 1),
(120, 9, 'Living Room', 'TV Unit', '12(51)-12(55)_ED.jpg', '2024-02-14 08:29:24', 1),
(121, 9, 'Living Room', 'TV Unit', '12(56)-12(60)_ED.jpg', '2024-02-14 08:29:53', 1),
(122, 9, 'Living Room', 'TV Unit with Pooja', '11(46)-11(50)_ED.jpg', '2024-02-14 08:32:01', 0),
(123, 9, 'Living Room', 'TV Unit with Pooja', '(50)_ED.jpg', '2024-02-14 08:33:10', 1),
(124, 9, 'Living Room', 'TV Unit', '11(11)-11(15)_ED.jpg', '2024-02-14 08:34:10', 0),
(125, 9, 'Living Room', 'TV Unit', '11(15)_ED.jpg', '2024-02-14 08:35:03', 1),
(126, 9, 'Living Room', 'TV Unit', '11(20)_ED.jpg', '2024-02-14 08:35:28', 1),
(127, 9, 'Living Room', 'TV Unit', '11(45)_ED.jpg', '2024-02-14 08:36:01', 0),
(128, 9, 'Living Room', 'TV Unit', '115)_ED.jpg', '2024-02-14 08:36:37', 1),
(129, 9, 'Living Room', 'TV Unit', '11(11)-11(15)_ED.jpg', '2024-02-14 08:37:32', 0),
(130, 9, 'Living Room', 'TV Unit', 'tv.jpg', '2024-02-14 08:38:30', 1),
(131, 9, 'Living Room', 'TV Unit', 'tv1.jpg', '2024-02-14 08:38:56', 1),
(132, 9, 'Living Room', 'TV Unit', 'tv2.jpg', '2024-02-14 08:39:29', 1),
(133, 9, 'Living Room', 'TV Unit', 'tv3.jpg', '2024-02-14 08:40:01', 1),
(134, 9, 'Living Room', 'TV Unit with Pooja', 'tvp.jpg', '2024-02-14 08:41:23', 1),
(135, 9, 'Living Room', 'TV Unit with Pooja', 'tvp1.jpg', '2024-02-14 08:41:55', 1),
(136, 9, 'Living Room', 'TV Unit with Pooja', 'tvp2.jpg', '2024-02-14 08:42:15', 1),
(137, 9, 'Living Room', 'TV Unit with Pooja', 'tvp3.jpg', '2024-02-14 08:42:40', 1),
(138, 9, 'Living Room', 'TV Unit', '12(46)-12(50)_ED.jpg', '2024-02-14 08:44:07', 0),
(139, 9, 'Living Room', 'TV Unit', 'tvv.jpg', '2024-02-14 08:45:15', 1),
(140, 9, 'Living Room', 'TV Unit', 'tvv1.jpg', '2024-02-14 08:45:49', 1),
(141, 9, 'Living Room', 'TV Unit', 'tvv2.jpg', '2024-02-14 08:46:21', 1),
(142, 9, 'Living Room', 'Wall Design', 'dw.jpg', '2024-02-14 08:47:05', 1),
(143, 9, 'Living Room', 'Wall Design', 'dw1.jpg', '2024-02-14 08:47:36', 1),
(144, 9, 'Living Room', 'TV Unit', '0.jpg', '2024-02-14 08:48:10', 1),
(145, 9, 'Living Room', 'TV Unit', '1.jpg', '2024-02-14 08:48:44', 1),
(146, 9, 'Living Room', 'Beam Panel', '2.jpg', '2024-02-14 08:49:29', 0),
(147, 9, 'Living Room', 'TV Unit', 't.jpg', '2024-02-14 08:50:22', 1),
(148, 9, 'Living Room', 'Beam Panel', 'bp.jpg', '2024-02-14 08:50:48', 1),
(149, 9, 'Living Room', 'TV Unit', '11(26)-11(30)_ED.jpg', '2024-02-14 08:51:26', 0),
(150, 9, 'Living Room', 'TV Unit', 'tvvb.jpg', '2024-02-14 08:52:29', 1),
(151, 9, 'Living Room', 'TV Unit', 'tvvb1.jpg', '2024-02-14 08:52:52', 1),
(152, 9, 'Living Room', 'TV Unit', 'tvvb2.jpg', '2024-02-14 08:53:14', 1),
(153, 9, 'Living Room', 'TV Unit', '11(16)-11(20)_ED.jpg', '2024-02-14 08:53:52', 0),
(154, 9, 'Living Room', 'TV Unit', 't1.jpg', '2024-02-14 08:54:39', 1),
(155, 9, 'Living Room', 'TV Unit', 't1.jpg', '2024-02-14 08:55:01', 0),
(156, 9, 'Living Room', 'TV Unit', 't.jpg', '2024-02-14 08:55:24', 0),
(157, 9, 'Living Room', 'TV Unit', 't2.jpg', '2024-02-14 08:55:56', 1),
(158, 8, 'Modular Kitchen', 'TV Unit', 't3.jpg', '2024-02-14 08:56:36', 0),
(159, 8, 'Modular Kitchen', 'TV Unit', 'hhh.jpg', '2024-02-14 08:57:51', 0),
(160, 9, 'Living Room', 'TV Unit', 'hhh1.jpg', '2024-02-14 08:58:26', 1),
(161, 9, 'Living Room', 'TV Unit', 'hhh2.jpg', '2024-02-14 08:58:57', 1),
(162, 9, 'Living Room', 'TV Unit with Pooja', 'tvwp.jpg', '2024-02-15 04:38:10', 1),
(163, 9, 'Living Room', 'TV Unit', '11(16)-11(20)_ED.jpg', '2024-02-15 04:53:59', 0),
(164, 9, 'Living Room', 'TV Unit', 'tvl.jpg', '2024-02-15 04:55:33', 1),
(165, 9, 'Living Room', 'TV Unit', 'tvl2.jpg', '2024-02-15 04:56:03', 1),
(166, 9, 'Living Room', 'Partition', 'partition.jpg', '2024-02-15 04:56:59', 1),
(167, 9, 'Living Room', 'French Moulding', 'fren.jpg', '2024-02-15 04:57:44', 1),
(168, 9, 'Living Room', 'TV Unit with Partition', 'tvpar.jpg', '2024-02-15 04:59:50', 1),
(169, 9, 'Living Room', 'TV Unit with Partition', 'tvpar1.jpg', '2024-02-15 05:00:30', 1),
(170, 9, 'Living Room', 'TV Unit', 'TVU.jpg', '2024-02-15 05:02:14', 1),
(171, 9, 'Living Room', 'TV Unit', 'TVU1.jpg', '2024-02-15 05:02:40', 1),
(172, 9, 'Living Room', 'TV Unit', 'TVU2.jpg', '2024-02-15 05:03:04', 1),
(173, 9, 'Living Room', 'Living Room', 'LIVING.jpg', '2024-02-15 05:03:54', 1),
(174, 9, 'Living Room', 'TV Unit', 'tvb.jpg', '2024-02-15 05:05:37', 1),
(175, 9, 'Living Room', 'TV Unit', 'tvb1.jpg', '2024-02-15 05:05:59', 1),
(176, 9, 'Living Room', 'Beam Panel', 'beam.jpg', '2024-02-15 05:06:31', 1),
(177, 9, 'Living Room', 'TV Unit', 'tvd.jpg', '2024-02-15 05:08:14', 1),
(178, 9, 'Living Room', 'TV Unit', 'tvd2.jpg', '2024-02-15 05:08:33', 1),
(179, 9, 'Living Room', 'TV Unit', 'tvd1.jpg', '2024-02-15 05:09:02', 1),
(180, 9, 'Living Room', 'TV Unit', 'tvbb.jpg', '2024-02-15 05:10:21', 1),
(181, 9, 'Living Room', 'TV Unit', 'tvbb1.jpg', '2024-02-15 05:10:55', 1),
(182, 9, 'Living Room', 'TV Unit', 'tvbb2.jpg', '2024-02-15 05:11:28', 1),
(183, 9, 'Living Room', 'TV Unit', 'Modular Tv Unit 1.jpg', '2024-02-15 05:12:34', 0),
(184, 9, 'Living Room', 'TV Unit', 'Modular Tv Unit 2.jpg', '2024-02-15 05:14:57', 0),
(185, 9, 'Living Room', 'TV Unit', 'tv unit partiotion.jpg', '2024-02-15 05:17:08', 0),
(186, 9, 'Living Room', 'TV Unit', 'tv unit partition1.jpg', '2024-02-15 05:17:42', 0),
(187, 9, 'Living Room', 'TV Unit', '11(21)-11(25)_ED.jpg', '2024-02-15 05:18:53', 0),
(188, 9, 'Living Room', 'TV Unit', 'tvt.jpg', '2024-02-15 05:19:49', 1),
(189, 9, 'Living Room', 'TV Unit', 'tvt1.jpg', '2024-02-15 05:20:20', 1),
(190, 9, 'Living Room', 'TV Unit', 'tvt2.jpg', '2024-02-15 05:21:39', 1),
(191, 9, 'Living Room', 'TV Unit', 'tvwaa.jpg', '2024-02-15 05:24:00', 1),
(192, 9, 'Living Room', 'TV Unit', 'tvwaa1.jpg', '2024-02-15 05:24:56', 1),
(193, 9, 'Living Room', 'TV Unit', 'tvwaa2.jpg', '2024-02-15 05:26:16', 1),
(194, 9, 'Living Room', 'TV Unit', 'tvwp.jpg', '2024-02-15 05:27:49', 0),
(195, 9, 'Living Room', 'TV Unit', 'tvwwp.jpg', '2024-02-15 05:29:06', 1),
(196, 9, 'Living Room', 'TV Unit', 'tvwwp1.jpg', '2024-02-15 05:29:45', 1),
(197, 9, 'Living Room', 'TV Unit', 'tvwwp2.jpg', '2024-02-15 05:30:23', 1),
(198, 9, 'Living Room', 'TV Unit', '2 tv unit.jpg', '2024-02-15 05:31:53', 0),
(199, 9, 'Living Room', 'TV Unit', '3 tv unit.jpg', '2024-02-15 05:32:40', 0),
(200, 9, 'Living Room', 'TV Unit', '4 tv unit.jpg', '2024-02-15 05:33:16', 0),
(201, 9, 'Living Room', 'TV Unit', 'tvcp.jpg', '2024-02-15 05:34:13', 1),
(202, 9, 'Living Room', 'TV Unit', 'tvpbp.jpg', '2024-02-15 05:51:19', 1),
(203, 9, 'Living Room', 'TV Unit', 'tvpbp1.jpg', '2024-02-15 05:52:01', 1),
(204, 8, 'Modular Kitchen', 'TV Unit', 'tved.jpg', '2024-02-15 05:53:00', 0),
(205, 9, 'Living Room', 'TV Unit', 'tved2.jpg', '2024-02-15 05:53:38', 1),
(206, 9, 'Living Room', 'Wall Design', 'design.jpg', '2024-02-15 05:55:13', 1),
(207, 9, 'Living Room', 'Partition', 'part.jpg', '2024-02-15 05:56:22', 1),
(208, 9, 'Living Room', 'TV Unit', 'tvs.jpg', '2024-02-15 05:57:55', 1),
(209, 9, 'Living Room', 'TV Unit', 'tvs1.jpg', '2024-02-15 05:58:32', 1),
(210, 9, 'Living Room', 'TV Unit', '5a7a6306aligned-5a7a6311aligned_ED.jpg', '2024-02-15 05:59:59', 1),
(211, 9, 'Living Room', 'TV Unit', '5a7a6312aligned-5a7a6316aligned_ED.jpg', '2024-02-15 06:00:49', 1),
(212, 9, 'Living Room', 'TV Unit', '5a7a6327aligned-5a7a6331aligned_ED.jpg', '2024-02-15 06:01:28', 1),
(213, 10, 'Pooja', 'Pooja', '5.jpg', '2024-02-15 06:03:00', 0),
(214, 10, 'Pooja', 'Pooja', 'poo.jpg', '2024-02-15 06:04:52', 0),
(215, 10, 'Pooja', 'Pooja', '12(76)-12(80)_ED.jpg', '2024-02-15 06:06:00', 0),
(216, 10, 'Pooja', 'Pooja', '11(21)-11(25)_ED.jpg', '2024-02-15 06:07:25', 0),
(217, 10, 'Pooja', 'Pooja', 'poo3.jpg', '2024-02-15 06:08:19', 0),
(218, 10, 'Pooja', 'Pooja with cnc shutter', 'poo.jpg', '2024-02-15 06:11:21', 1),
(219, 10, 'Pooja', 'pooja with glass shutter', '12(76)-12(80)_ED.jpg', '2024-02-15 06:12:09', 1),
(220, 10, 'Pooja', 'open pooja', 'poo3.jpg', '2024-02-15 06:12:56', 1),
(221, 10, 'Pooja', 'Pooja with cnc shutter', 'poo4.jpg', '2024-02-15 06:13:58', 1),
(222, 10, 'Pooja', 'Pooja with cnc shutter', 'poo5.jpg', '2024-02-15 06:15:23', 1),
(223, 10, 'Pooja', 'Pooja with cnc shutter', 'poo6.jpg', '2024-02-15 06:16:37', 1),
(224, 10, 'Pooja', 'pooja with glass shutter', 'poo7.jpg', '2024-02-15 06:19:17', 1),
(225, 10, 'Pooja', 'Pooja with cnc shutter', 'pooja8.jpg', '2024-02-15 06:21:13', 1),
(226, 10, 'Pooja', 'Pooja with cnc shutter', 'poo9.jpg', '2024-02-15 06:22:41', 1),
(227, 10, 'Pooja', 'Pooja with cnc shutter', 'pooja10.jpg', '2024-02-15 06:23:42', 1),
(228, 10, 'Pooja', 'pooja with glass shutter', 'poo11.jpg', '2024-02-15 06:25:21', 1),
(229, 10, 'Pooja', 'Pooja with cnc shutter', 'Pooja Unit.jpg', '2024-02-15 06:26:17', 0),
(230, 10, 'Pooja', 'Pooja with cnc shutter', 'Pooja Unit 1.jpg', '2024-02-15 06:26:54', 0),
(231, 10, 'Pooja', 'Pooja with cnc shutter', 'poo12.jpg', '2024-02-15 06:28:16', 1),
(232, 10, 'Pooja', 'Pooja with cnc shutter', 'pooj13.jpg', '2024-02-15 06:30:46', 1),
(233, 10, 'Pooja', 'pooja with glass shutter', 'poo14.jpg', '2024-02-15 06:32:37', 1),
(234, 10, 'Pooja', 'Pooja with cnc shutter', '5 pooja unit.jpg', '2024-02-15 06:33:26', 0),
(235, 10, 'Pooja', 'pooja with glass shutter', 'poo15.jpg', '2024-02-15 06:34:47', 1),
(236, 8, 'Modular Kitchen', 'open pooja', 'poo16.jpg', '2024-02-15 06:36:06', 0),
(237, 10, 'Pooja', 'Pooja with cnc shutter', '5a7a6337aligned-5a7a6341aligned_ED.jpg', '2024-02-15 06:37:26', 1),
(238, 11, 'Foyer', 'Shoe Rack', 'sr.jpg', '2024-02-15 06:39:15', 1),
(239, 11, 'Foyer', 'Shoe Rack', 'sr1.jpg', '2024-02-15 06:40:59', 1),
(240, 11, 'Foyer', 'Shoe Rack', 'sr2.jpg', '2024-02-15 06:42:19', 1),
(241, 11, 'Foyer', 'Shoe Rack', 'sr3.jpg', '2024-02-15 06:44:11', 1),
(242, 11, 'Foyer', 'Shoe Rack', 'sr4.jpg', '2024-02-15 06:44:49', 1),
(243, 11, 'Foyer', 'Shoe Rack', 'sr5.jpg', '2024-02-15 06:45:30', 1),
(244, 11, 'Foyer', 'Shoe Rack', 'shoe 6.jpg', '2024-02-15 06:51:19', 0),
(245, 11, 'Foyer', 'Shoe Rack', 'sh7.jpg', '2024-02-15 06:52:51', 1),
(246, 11, 'Foyer', 'Shoe Rack', 'shr9.jpg', '2024-02-15 06:55:11', 1),
(247, 11, 'Foyer', 'Shoe Rack', 'shr9.jpg', '2024-02-15 06:55:11', 0),
(248, 11, 'Foyer', 'Shoe Rack', 'shoe11.jpg', '2024-02-15 06:57:45', 1),
(249, 11, 'Foyer', 'Shoe Rack', '1 entrance.jpg', '2024-02-15 06:59:28', 0),
(250, 11, 'Foyer', 'Shoe Rack', 'sr12.jpg', '2024-02-15 07:00:51', 1),
(251, 11, 'Foyer', 'Shoe Rack', 'sr13.jpg', '2024-02-15 07:02:53', 1),
(252, 11, 'Foyer', 'Partition', 'partition10.jpg', '2024-02-15 07:05:00', 1),
(253, 11, 'Foyer', 'Shoe Rack', 'sr15.jpg', '2024-02-15 07:06:15', 1),
(254, 11, 'Foyer', 'Shoe Rack', '5a7a6352aligned-5a7a6356aligned_ED.jpg', '2024-02-15 07:07:15', 1),
(255, 12, 'Dining Room', 'Crockery Unit', 'cro.jpg', '2024-02-15 07:09:10', 1),
(256, 12, 'Dining Room', 'Vanity', 'van.jpg', '2024-02-15 07:09:58', 1),
(257, 12, 'Dining Room', 'Vanity', 'va1.jpg', '2024-02-15 07:11:29', 1),
(258, 12, 'Dining Room', 'Crockery Unit', 'cr01.jpg', '2024-02-15 07:13:01', 1),
(259, 12, 'Dining Room', 'Dining Table', 'din.jpg', '2024-02-15 07:13:46', 1),
(260, 12, 'Dining Room', 'Crockery Unit', 'cro2.jpg', '2024-02-15 07:14:44', 1),
(261, 12, 'Dining Room', 'Dining Table', 'din1.jpg', '2024-02-15 07:16:44', 1),
(262, 12, 'Dining Room', 'Crockery Unit', 'croc3.jpg', '2024-02-15 07:17:23', 1),
(263, 12, 'Dining Room', 'Crockery With Pooja', 'crocwp.jpg', '2024-02-15 07:19:49', 1),
(264, 12, 'Dining Room', 'Crockery Unit', 'cro4.jpg', '2024-02-15 07:25:56', 0),
(265, 12, 'Dining Room', 'Crockery Unit', 'cro4.jpg', '2024-02-15 07:25:56', 1),
(266, 12, 'Dining Room', 'Crockery Unit', 'cro5.jpg', '2024-02-15 07:26:29', 1),
(267, 12, 'Dining Room', 'Vanity', 'va3.jpg', '2024-02-15 07:28:09', 1),
(268, 12, 'Dining Room', 'Dining Table', 'din4.jpg', '2024-02-15 07:29:04', 1),
(269, 12, 'Dining Room', 'Crockery Unit', 'cro5.jpg', '2024-02-15 07:29:44', 0),
(270, 12, 'Dining Room', 'Crockery Unit', 'cro6.jpg', '2024-02-15 07:30:53', 1),
(271, 12, 'Dining Room', 'Crockery Unit', 'croc7.jpg', '2024-02-15 07:32:27', 1),
(272, 12, 'Dining Room', 'Crockery Unit', 'croc8.jpg', '2024-02-15 07:33:42', 1),
(273, 12, 'Dining Room', 'Crockery With Pooja', 'cro9.jpg', '2024-02-15 07:34:52', 1),
(274, 12, 'Dining Room', 'Crockery With Pooja', 'croc10.jpg', '2024-02-15 07:35:33', 1),
(275, 12, 'Dining Room', 'Crockery Unit', 'Crockery Unit 1.jpg', '2024-02-15 07:36:27', 0),
(276, 12, 'Dining Room', 'Crockery Unit', 'Crockery Unit.jpg', '2024-02-15 07:37:16', 0),
(277, 12, 'Dining Room', 'Crockery Unit', 'Living Room.jpg', '2024-02-15 07:37:54', 0),
(278, 12, 'Dining Room', 'Crockery Unit', 'cro12.jpg', '2024-02-15 07:39:08', 1),
(279, 12, 'Dining Room', 'Crockery With Pooja', 'croc13.jpg', '2024-02-15 07:40:27', 1),
(280, 12, 'Dining Room', 'Crockery With Pooja', 'croc14.jpg', '2024-02-15 07:41:06', 1),
(281, 12, 'Dining Room', 'Crockery Unit', '6 crockery unit.jpg', '2024-02-15 07:42:45', 0),
(282, 12, 'Dining Room', 'Crockery Unit', 'croc14.jpg', '2024-02-15 07:44:00', 0),
(283, 12, 'Dining Room', 'Crockery Unit', 'croc16.jpg', '2024-02-15 07:44:53', 1),
(284, 12, 'Dining Room', 'Vanity', 'va6.jpg', '2024-02-15 07:46:10', 1),
(285, 12, 'Dining Room', 'Crockery Unit', 'va7.jpg', '2024-02-15 07:46:37', 1),
(286, 12, 'Dining Room', 'Crockery Unit', 'croc17.jpg', '2024-02-15 07:48:18', 1),
(287, 12, 'Dining Room', 'Crockery Unit', '5a7a6387aligned-5a7a6391aligned_ED.jpg', '2024-02-15 07:49:13', 1),
(288, 13, 'Bedrooms', 'Sliding Wardrobe', '11(21)_2)_3)_4)_5)Adjust_ED.jpg', '2024-02-15 09:07:00', 1),
(289, 13, 'Bedrooms', 'Sliding Wardrobe', '11(26)_27)_28)_29)_30)Adjust_ED.jpg', '2024-02-15 09:07:41', 1),
(290, 13, 'Bedrooms', 'Dresser', '11(31)_2)_3)_4)_5)Adjust_ED.jpg', '2024-02-15 09:08:28', 1),
(291, 13, 'Bedrooms', 'Swing Wardrobe and Study', '9.jpg', '2024-02-15 09:10:38', 1),
(292, 13, 'Bedrooms', 'Swing Wardrobe', '10.jpg', '2024-02-15 09:11:15', 1),
(293, 13, 'Bedrooms', 'Cot and Swing wardrobe', '11.jpg', '2024-02-15 09:12:37', 1),
(294, 13, 'Bedrooms', 'Dresser and Tv unit', '12.jpg', '2024-02-15 09:13:24', 1),
(295, 13, 'Bedrooms', 'Wardrobe with Seater', '12(86)-12(90)_ED.jpg', '2024-02-15 09:15:02', 1),
(296, 13, 'Bedrooms', 'Dresser', '12(81)-12(85)_ED.jpg', '2024-02-15 09:16:19', 1),
(297, 13, 'Bedrooms', 'Sliding Wardrobe', 'a__0000_5a7a9976-a__0003_5a7a9979_ED.jpg', '2024-02-15 09:17:00', 1),
(298, 13, 'Bedrooms', 'Swing Wardrobe', '11(36)-11(40)_ED.jpg', '2024-02-15 09:18:19', 0),
(299, 13, 'Bedrooms', 'Swing Wardrobe', 'sw1.jpg', '2024-02-15 09:19:03', 1),
(300, 13, 'Bedrooms', 'Swing Wardrobe', 'sw2.jpg', '2024-02-15 09:19:52', 1),
(301, 13, 'Bedrooms', 'Sliding Wardrobe', 'a__0000_5a7a1973-a__0004_5a7a1977_ED.jpg', '2024-02-15 09:20:25', 1),
(302, 13, 'Bedrooms', 'Sliding Wardrobe', 'sdw.jpg', '2024-02-15 09:22:48', 1),
(303, 13, 'Bedrooms', 'Sliding Wardrobe', 'sdw1.jpg', '2024-02-15 09:23:27', 1),
(304, 13, 'Bedrooms', 'study', 'cot study.jpg', '2024-02-15 09:24:20', 0),
(305, 13, 'Bedrooms', 'study', 'cot study1.jpg', '2024-02-15 09:25:15', 0),
(306, 13, 'Bedrooms', 'Dresser', 'cot and dre.jpg', '2024-02-15 09:27:20', 0),
(307, 13, 'Bedrooms', 'Sliding Wardrobe', 'sd3.jpg', '2024-02-15 09:29:54', 1),
(308, 13, 'Bedrooms', 'Swing Wardrobe', 'swq4.jpg', '2024-02-15 09:30:36', 1),
(309, 13, 'Bedrooms', 'Sliding Wardrobe', 'sd4.jpg', '2024-02-15 09:31:14', 1),
(310, 13, 'Bedrooms', 'Dresser', 'dress.jpg', '2024-02-15 09:31:55', 1),
(311, 13, 'Bedrooms', 'Sliding Wardrobe', 'slws.jpg', '2024-02-15 09:33:35', 1),
(312, 13, 'Bedrooms', 'study', 'sty.jpg', '2024-02-15 09:34:27', 1),
(313, 13, 'Bedrooms', 'Wardrobe with Study', 'wsws.jpg', '2024-02-15 09:35:33', 1),
(314, 13, 'Bedrooms', 'Swing Wardrobe', 'wsws1.jpg', '2024-02-15 09:36:23', 1),
(315, 13, 'Bedrooms', 'side table', 'st1.jpg', '2024-02-15 09:38:58', 1),
(316, 13, 'Bedrooms', 'side table', 'st.jpg', '2024-02-15 09:39:38', 1),
(317, 13, 'Bedrooms', 'Sliding Wardrobe', 'sd5.jpg', '2024-02-15 09:40:18', 1),
(318, 13, 'Bedrooms', 'Swing Wardrobe', 'sw5.jpg', '2024-02-15 09:41:12', 1),
(319, 13, 'Bedrooms', 'Swing Wardrobe', 'sw4.jpg', '2024-02-15 09:41:53', 1),
(320, 13, 'Bedrooms', 'study', 'stdy.jpg', '2024-02-15 09:42:36', 1),
(321, 13, 'Bedrooms', 'Sliding Wardrobe', 'sdl7.jpg', '2024-02-15 09:44:16', 1),
(322, 13, 'Bedrooms', 'Sliding Wardrobe', 'sdl8.jpg', '2024-02-15 09:45:02', 1),
(323, 13, 'Bedrooms', 'Sliding Wardrobe', 'sd9.jpg', '2024-02-15 09:46:24', 1),
(324, 13, 'Bedrooms', 'study', 'sdy5.jpg', '2024-02-15 09:47:06', 1),
(325, 13, 'Bedrooms', 'Swing Wardrobe', 'sw8.jpg', '2024-02-15 09:47:43', 1),
(326, 13, 'Bedrooms', 'study', 'std9.jpg', '2024-02-15 09:49:03', 1),
(327, 13, 'Bedrooms', 'Swing Wardrobe', 'sw9.jpg', '2024-02-15 09:49:45', 1),
(328, 13, 'Bedrooms', 'Sliding Wardrobe', 'sld10.jpg', '2024-02-15 09:50:31', 1),
(329, 13, 'Bedrooms', 'study', 'std10.jpg', '2024-02-15 09:52:52', 0),
(330, 13, 'Bedrooms', 'study', 'std11.jpg', '2024-02-15 09:53:32', 1),
(331, 13, 'Bedrooms', 'Wardrobe with Study', 'std10.jpg', '2024-02-15 09:54:20', 1),
(332, 13, 'Bedrooms', 'Sliding Wardrobe', 'sl11.jpg', '2024-02-15 09:54:59', 1),
(333, 13, 'Bedrooms', 'TV Unit', 'bedtv1.jpg', '2024-02-15 09:55:51', 1),
(334, 13, 'Bedrooms', 'Dresser', 'dress2.jpg', '2024-02-15 09:56:44', 1),
(335, 13, 'Bedrooms', 'Dresser', 'dress3.jpg', '2024-02-15 09:57:22', 1),
(336, 13, 'Bedrooms', 'Swing Wardrobe', 'sw11.jpg', '2024-02-15 09:57:58', 1),
(337, 13, 'Bedrooms', 'Swing Wardrobe', 'sww14.jpg', '2024-02-15 09:59:45', 1),
(338, 13, 'Bedrooms', 'Swing Wardrobe', 'sww13.jpg', '2024-02-15 10:00:26', 1),
(339, 13, 'Bedrooms', 'Wardrobe with Seater', 'wws3.jpg', '2024-02-15 10:01:10', 1),
(340, 13, 'Bedrooms', 'study', 'std13.jpg', '2024-02-15 10:01:59', 1),
(341, 13, 'Bedrooms', 'Dresser', 'dress7.jpg', '2024-02-15 10:02:49', 1),
(342, 13, 'Bedrooms', 'Swing Wardrobe', 'sw14.jpg', '2024-02-15 10:04:11', 1),
(343, 13, 'Bedrooms', 'Swing Wardrobe', 'sw15.jpg', '2024-02-15 10:04:53', 1),
(344, 13, 'Bedrooms', 'Swing Wardrobe', 'swi16.jpg', '2024-02-15 10:05:32', 1),
(345, 13, 'Bedrooms', 'Swing Wardrobe', 'swi17.jpg', '2024-02-15 10:07:07', 1),
(346, 13, 'Bedrooms', 'Sliding Wardrobe', 'dresser5.jpg', '2024-02-15 10:07:59', 1),
(347, 13, 'Bedrooms', 'Sliding Wardrobe', 'li17.jpg', '2024-02-15 10:12:03', 1),
(348, 13, 'Bedrooms', 'Sliding Wardrobe', 'sld18.jpg', '2024-02-15 10:32:53', 1),
(349, 13, 'Bedrooms', 'Sliding Wardrobe', 'std18.jpg', '2024-02-15 10:33:40', 1),
(350, 13, 'Bedrooms', 'Sliding Wardrobe', 'sl16.jpg', '2024-02-15 10:34:19', 1),
(351, 13, 'Bedrooms', 'study', 'std17.jpg', '2024-02-15 10:35:10', 1),
(352, 13, 'Bedrooms', 'Sliding Wardrobe', 'dressss.jpg', '2024-02-15 10:35:48', 1),
(353, 13, 'Bedrooms', 'Sliding Wardrobe', 'liding1.jpg', '2024-02-15 10:38:00', 1),
(354, 13, 'Bedrooms', 'Sliding Wardrobe', 'sliding.jpg', '2024-02-15 10:39:50', 1),
(355, 13, 'Bedrooms', 'Sliding Wardrobe', 'sliding2.jpg', '2024-02-15 10:40:59', 1),
(356, 13, 'Bedrooms', 'Sliding Wardrobe', 'sliding3.jpg', '2024-02-15 10:41:32', 1),
(357, 13, 'Bedrooms', 'study', '11(26)-11(30)_ED.jpg', '2024-02-15 10:45:15', 0),
(358, 13, 'Bedrooms', 'Swing Wardrobe', 'swis.jpg', '2024-02-15 10:47:16', 1),
(359, 13, 'Bedrooms', 'Swing Wardrobe', 'swis1.jpg', '2024-02-15 10:47:52', 1),
(360, 13, 'Bedrooms', 'Swing Wardrobe', 'swis2.jpg', '2024-02-15 10:48:32', 1),
(361, 13, 'Bedrooms', 'Swing Wardrobe', 'swis3.jpg', '2024-02-15 10:49:02', 1),
(362, 13, 'Bedrooms', 'Swing Wardrobe', 'swrrd3.jpg', '2024-02-15 10:50:18', 1),
(363, 13, 'Bedrooms', 'Swing Wardrobe', 'swis5.jpg', '2024-02-15 10:50:55', 1),
(364, 13, 'Bedrooms', 'Swing Wardrobe', 'Wardrobes 1.jpg', '2024-02-15 10:52:04', 0),
(365, 13, 'Bedrooms', 'Swing Wardrobe', 'Wardrobes 2.jpg', '2024-02-15 10:54:14', 0),
(366, 13, 'Bedrooms', 'Swing Wardrobe', 'Wardrobes 3.jpg', '2024-02-15 10:55:11', 0),
(367, 13, 'Bedrooms', 'Sliding Wardrobe', 'Wardrobes 4.jpg', '2024-02-15 10:55:52', 0),
(368, 13, 'Bedrooms', 'Swing Wardrobe', 'Wardrobes 1.jpg', '2024-02-15 10:56:38', 0),
(369, 13, 'Bedrooms', 'Swing Wardrobe', 'Wardrobes 2.jpg', '2024-02-15 10:57:14', 0),
(370, 13, 'Bedrooms', 'Swing Wardrobe', 'Wardrobes 3.jpg', '2024-02-15 10:57:35', 0),
(371, 13, 'Bedrooms', 'Swing Wardrobe', 'Wardrobes 11.jpg', '2024-02-15 10:59:25', 0),
(372, 13, 'Bedrooms', 'Swing Wardrobe', 'Wardrobes 22.jpg', '2024-02-15 10:59:56', 0),
(373, 13, 'Bedrooms', 'Swing Wardrobe', 'Wardrobes 32.jpg', '2024-02-15 11:00:30', 0),
(374, 13, 'Bedrooms', 'Sliding Wardrobe', 'war1.jpg', '2024-02-15 11:01:35', 1),
(375, 13, 'Bedrooms', 'Sliding Wardrobe', 'r2.jpg', '2024-02-15 11:02:11', 1),
(376, 13, 'Bedrooms', 'Wardrobe with Study', 'wr3.jpg', '2024-02-15 11:02:58', 1),
(377, 13, 'Bedrooms', 'Wardrobe with Study', 'wr4.jpg', '2024-02-15 11:03:35', 1),
(378, 13, 'Bedrooms', 'Swing Wardrobe', 'swdw1.jpg', '2024-02-15 11:05:07', 1),
(379, 13, 'Bedrooms', 'Swing Wardrobe', 'sw1111.jpg', '2024-02-15 11:05:45', 1),
(380, 13, 'Bedrooms', 'Dresser', 'drsss.jpg', '2024-02-15 11:06:19', 1),
(381, 13, 'Bedrooms', 'Swing Wardrobe', 'sw11113.jpg', '2024-02-15 11:07:03', 1),
(382, 13, 'Bedrooms', 'Wardrobe with Study', 'wwwws3.jpg', '2024-02-15 11:08:51', 1),
(383, 13, 'Bedrooms', 'Wardrobe with Study', 'wwws1.jpg', '2024-02-15 11:09:37', 1),
(384, 13, 'Bedrooms', 'Dresser', 'dddd.jpg', '2024-02-15 11:11:37', 1),
(385, 13, 'Bedrooms', 'Swing Wardrobe', 'wwwww.jpg', '2024-02-15 11:12:26', 1),
(386, 13, 'Bedrooms', 'Swing Wardrobe', 'ddd1.jpg', '2024-02-15 11:14:20', 1),
(387, 13, 'Bedrooms', 'Swing Wardrobe', 'swwwww1.jpg', '2024-02-15 11:17:58', 1),
(388, 13, 'Bedrooms', 'Swing Wardrobe', 'swwww2.jpg', '2024-02-15 11:18:45', 1),
(389, 13, 'Bedrooms', 'Sliding Wardrobe', 'swwww3.jpg', '2024-02-15 11:19:31', 1),
(390, 13, 'Bedrooms', 'Dresser', 'ddddd5.jpg', '2024-02-15 11:20:11', 1),
(391, 13, 'Bedrooms', 'Swing Wardrobe', '7 bedroom wardrobe.jpg', '2024-02-15 11:22:05', 0),
(392, 13, 'Bedrooms', 'Swing Wardrobe', '8 bedroom ward.jpg', '2024-02-15 11:22:58', 0),
(393, 13, 'Bedrooms', 'Sliding Wardrobe', '11 bedroom ward.jpg', '2024-02-15 11:23:51', 0),
(394, 13, 'Bedrooms', 'Dresser', '9 dress.jpg', '2024-02-15 11:24:47', 0),
(395, 13, 'Bedrooms', 'Sliding Wardrobe', '4 sliding.jpg', '2024-02-15 11:26:46', 0),
(396, 13, 'Bedrooms', 'Sliding Wardrobe', '5 sliding.jpg', '2024-02-15 11:27:27', 0),
(397, 13, 'Bedrooms', 'Swing Wardrobe', '9 swing.jpg', '2024-02-15 11:28:16', 0),
(398, 13, 'Bedrooms', 'study', '11 study.jpg', '2024-02-15 11:29:09', 0),
(399, 8, 'Modular Kitchen', 'Swing Wardrobe', '15swing.jpg', '2024-02-15 11:32:13', 0),
(400, 13, 'Bedrooms', 'Swing Wardrobe', '16swing.jpg', '2024-02-15 11:33:48', 1),
(401, 13, 'Bedrooms', 'Sliding Wardrobe', '13slid.jpg', '2024-02-15 11:35:53', 1),
(402, 13, 'Bedrooms', 'study', '14study.jpg', '2024-02-15 11:37:08', 1),
(403, 13, 'Bedrooms', 'Swing Wardrobe', '18swing.jpg', '2024-02-15 11:39:15', 1),
(404, 13, 'Bedrooms', 'Swing Wardrobe', '19swing.jpg', '2024-02-15 11:40:18', 1),
(405, 13, 'Bedrooms', 'Swing Wardrobe', '20swing.jpg', '2024-02-15 11:40:51', 1),
(406, 13, 'Bedrooms', 'Swing Wardrobe', '21swing.jpg', '2024-02-15 11:41:23', 1),
(407, 13, 'Bedrooms', 'Swing Wardrobe', '60sw.jpg', '2024-02-15 11:42:27', 1),
(408, 13, 'Bedrooms', 'Sliding Wardrobe', '7sl.jpg', '2024-02-15 11:43:24', 1),
(409, 13, 'Bedrooms', 'Swing Wardrobe', '3yoyoyo.jpg', '2024-02-15 11:45:34', 1),
(410, 13, 'Bedrooms', 'Wardrobe with Seater', '1yo.jpg', '2024-02-15 11:46:09', 1),
(411, 13, 'Bedrooms', 'Wardrobe with Seater', '2yoyo.jpg', '2024-02-15 11:47:04', 1),
(412, 13, 'Bedrooms', 'Swing Wardrobe', 'yo.jpg', '2024-02-15 11:47:46', 1),
(413, 13, 'Bedrooms', 'Swing Wardrobe', 'yoyo.jpg', '2024-02-15 11:48:11', 1),
(414, 13, 'Bedrooms', 'Dresser', 'yoyd.jpg', '2024-02-15 11:48:46', 1),
(415, 13, 'Bedrooms', 'Sliding Wardrobe', '5a7a6448aligned-5a7a6452aligned_ED.jpg', '2024-02-15 11:50:50', 0),
(416, 13, 'Bedrooms', 'Sliding Wardrobe', '5a7a6448aligned-5a7a6452aligned_ED.jpg', '2024-02-15 11:52:16', 1),
(417, 13, 'Bedrooms', 'study', '5a7a6453aligned-5a7a6458aligned_ED.jpg', '2024-02-15 11:53:06', 1),
(418, 13, 'Bedrooms', 'Swing Wardrobe', '5a7a6421aligned-5a7a6425aligned_ED.jpg', '2024-02-15 11:54:11', 1),
(419, 13, 'Bedrooms', 'study', '5a7a6453aligned-5a7a6458aligned_ED.jpg', '2024-02-15 11:54:48', 1),
(420, 13, 'Bedrooms', 'Dresser', '5a7a6443aligned-5a7a6447aligned_ED.jpg', '2024-02-15 11:55:19', 1),
(421, 8, 'Modular Kitchen', 'U Shape Kitchen', '6.jpg', '2024-02-15 11:56:17', 1),
(422, 8, 'Modular Kitchen', 'U Shape Kitchen', '7.jpg', '2024-02-15 11:56:48', 1),
(423, 8, 'Modular Kitchen', 'U Shape Kitchen', '8.jpg', '2024-02-15 11:57:23', 1),
(424, 13, 'Bedrooms', 'study', '65dacc8903e04.jpg', '2024-02-25 05:13:45', 1),
(425, 13, 'Bedrooms', 'study', '65dacd0183e3d.jpg', '2024-02-25 05:15:45', 1),
(426, 13, 'Bedrooms', 'cot ', '65dacdbdc2faa.jpg', '2024-02-25 05:18:53', 1),
(427, 13, 'Bedrooms', 'Sliding Wardrobe', '65dace9ddf2c1.jpg', '2024-02-25 05:22:37', 1),
(428, 13, 'Bedrooms', 'Swing Wardrobe', '65dacf3a6e9b5.jpg', '2024-02-25 05:25:14', 1),
(429, 13, 'Bedrooms', 'Swing Wardrobe', '65dacf8be9566.jpg', '2024-02-25 05:26:35', 1),
(430, 13, 'Bedrooms', 'Swing Wardrobe', '65dacff1de66c.jpg', '2024-02-25 05:28:17', 1),
(431, 13, 'Bedrooms', 'Sliding Wardrobe', '65dad063a42a7.jpg', '2024-02-25 05:30:11', 1),
(432, 13, 'Bedrooms', 'Swing Wardrobe', '65dad0acd27dd.jpg', '2024-02-25 05:31:24', 1),
(433, 13, 'Bedrooms', 'Sliding Wardrobe', '65dad0fe4f530.jpg', '2024-02-25 05:32:46', 1),
(434, 13, 'Bedrooms', 'Dresser', '65dad1650547d.jpg', '2024-02-25 05:34:29', 1),
(435, 13, 'Bedrooms', 'Sliding Wardrobe', '65dad218556e6.jpg', '2024-02-25 05:37:28', 0),
(436, 13, 'Bedrooms', 'Sliding Wardrobe', '65dad2cebedde.jpg', '2024-02-25 05:40:30', 1),
(437, 13, 'Bedrooms', 'Sliding Wardrobe', '65dad330a90ff.jpg', '2024-02-25 05:42:08', 1),
(438, 13, 'Bedrooms', 'Swing Wardrobe', '65dad3a123f80.jpg', '2024-02-25 05:44:01', 1),
(439, 13, 'Bedrooms', 'study', '65dad3ec2550e.jpg', '2024-02-25 05:45:16', 1),
(440, 12, 'Dining Room', 'Crockery Unit', '65dad5b15e03c.jpg', '2024-02-25 05:52:49', 1),
(441, 12, 'Dining Room', 'Crockery Unit', '65dad5ed396bc.jpg', '2024-02-25 05:53:49', 1),
(442, 12, 'Dining Room', 'Crockery Unit', '65dad64922698.jpg', '2024-02-25 05:55:21', 1),
(443, 12, 'Dining Room', 'Crockery Unit', '65dad6e8e8d82.jpg', '2024-02-25 05:58:00', 1),
(444, 11, 'Foyer', 'Shoe Rack', '65dad897e0969.jpg', '2024-02-25 06:05:11', 1),
(445, 11, 'Foyer', 'Shoe Rack', '65dad9ad080cc.jpg', '2024-02-25 06:09:49', 1),
(446, 9, 'Living Room', 'TV Unit', '65dadadb3a6b9.jpg', '2024-02-25 06:14:51', 1),
(447, 9, 'Living Room', 'TV Unit', '65dadb315ee13.jpg', '2024-02-25 06:16:17', 1),
(448, 9, 'Living Room', 'TV Unit', '65dadb9b90fda.jpg', '2024-02-25 06:18:03', 1),
(449, 9, 'Living Room', 'TV Unit', '65dadbfb17be5.jpg', '2024-02-25 06:19:39', 1),
(450, 9, 'Living Room', 'TV Unit', '65dadc9a94852.jpg', '2024-02-25 06:22:18', 1),
(451, 9, 'Living Room', 'TV Unit', '65dadd14cd8d5.jpg', '2024-02-25 06:24:20', 1),
(452, 9, 'Living Room', 'TV Unit', '65dadd8f54bbf.jpg', '2024-02-25 06:26:23', 1),
(453, 8, 'Modular Kitchen', 'Parallel kitchen', '65dade7110264.jpg', '2024-02-25 06:30:09', 1),
(454, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '65dae71f75197.jpg', '2024-02-25 07:07:11', 0),
(455, 8, 'Modular Kitchen', 'Parallel kitchen', '65dae78118cb8.jpg', '2024-02-25 07:08:49', 1),
(456, 8, 'Modular Kitchen', 'Parallel kitchen', '65dae7f9d7615.jpg', '2024-02-25 07:10:49', 0),
(457, 8, 'Modular Kitchen', 'Parallel kitchen', '65dae84f3c8bf.jpg', '2024-02-25 07:12:15', 1),
(458, 8, 'Modular Kitchen', 'Parallel kitchen', '65dae8e5b74f4.jpg', '2024-02-25 07:14:45', 1),
(459, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '65daea9fe93f2.jpg', '2024-02-25 07:22:07', 1),
(460, 8, 'Modular Kitchen', 'L Shape Modular kitchen', '65daeb55e7a08.jpg', '2024-02-25 07:25:09', 1),
(461, 10, 'Pooja', 'Pooja with cnc shutter', '65daec8e72617.jpg', '2024-02-25 07:30:22', 1),
(462, 10, 'Pooja', 'Pooja with cnc shutter', '65daecd87df23.jpg', '2024-02-25 07:31:36', 1),
(463, 10, 'Pooja', 'Pooja with cnc shutter', '65daed460921b.jpg', '2024-02-25 07:33:26', 1),
(464, 9, 'Living Room', 'Partition', '65f91cbe585ef.jpeg', '2024-03-19 05:03:58', 1),
(465, 10, 'Pooja', 'Pooja', '65f91d030387a.jpeg', '2024-03-19 05:05:07', 1),
(466, 9, 'Living Room', 'TV Unit', '65f91d4df0a39.jpeg', '2024-03-19 05:06:21', 1),
(467, 8, 'Modular Kitchen', 'L Shape With Loft Modular kitchen', '65f91d8eade8c.jpeg', '2024-03-19 05:07:26', 1),
(468, 8, 'Modular Kitchen', 'U Shape Kitchen', '65f91e1241263.jpeg', '2024-03-19 05:09:38', 1),
(469, 11, 'Foyer', 'French wall Moulding', '65f91ef6393ad.jpeg', '2024-03-19 05:13:26', 1),
(470, 12, 'Dining Room', 'Break Fast Counter', '65f91f5c6730d.jpeg', '2024-03-19 05:15:08', 1),
(471, 12, 'Dining Room', 'Vanity', '65f91fa0db8b3.jpeg', '2024-03-19 05:16:16', 1),
(472, 11, 'Foyer', 'Shoe Rack', '65f91fd92f02a.jpeg', '2024-03-19 05:17:13', 1),
(473, 13, 'Bedrooms', 'Swing Wardrobe', '65f9236d4ad34.jpeg', '2024-03-19 05:32:29', 1),
(474, 13, 'Bedrooms', 'Cot and Swing wardrobe', '65f923a8f29c1.jpeg', '2024-03-19 05:33:28', 1),
(475, 13, 'Bedrooms', 'Profitto Wardrobe', '65f923f848d2e.jpeg', '2024-03-19 05:34:48', 1),
(476, 13, 'Bedrooms', 'Swing Wardrobe', '65f9241bc5716.jpeg', '2024-03-19 05:35:23', 1),
(477, 13, 'Bedrooms', 'Murphy bed', '65f924411bbaf.jpeg', '2024-03-19 05:36:01', 1),
(478, 13, 'Bedrooms', 'Bed back', '65f924796165d.jpeg', '2024-03-19 05:36:57', 1),
(479, 8, 'Modular Kitchen', 'Swing Wardrobe', '65f924d2e859c.jpeg', '2024-03-19 05:38:26', 0),
(480, 13, 'Bedrooms', 'Swing Wardrobe', '65f924f53a2bb.jpeg', '2024-03-19 05:39:01', 1),
(481, 13, 'Bedrooms', 'vanity', '65f92537ad1bb.jpeg', '2024-03-19 05:40:07', 1),
(482, 13, 'Bedrooms', 'tv unit with dresser', '65f925727523f.jpeg', '2024-03-19 05:41:06', 1),
(483, 13, 'Bedrooms', 'Sliding Wardrobe', '65f925b922dc9.jpeg', '2024-03-19 05:42:17', 1),
(484, 13, 'Bedrooms', 'Bed back', '65f925e40d352.jpeg', '2024-03-19 05:43:00', 1),
(485, 8, 'Modular Kitchen', 'U Shape Kitchen', '65f926e957c96.jpeg', '2024-03-19 05:47:21', 1),
(486, 13, 'Bedrooms', 'Bed back', '65f92744b9bb3.jpeg', '2024-03-19 05:48:52', 1),
(487, 12, 'Dining Room', 'Dining Table', '65f927726910b.jpeg', '2024-03-19 05:49:38', 1),
(488, 12, 'Dining Room', 'French wall Moulding', '65f9279b30f02.jpeg', '2024-03-19 05:50:19', 1),
(489, 11, 'Foyer', 'Bevelled mirror', '65f92c0f7d732.jpeg', '2024-03-19 06:09:19', 1),
(490, 9, 'Living Room', 'TV Unit', '65f9381c1302e.jpeg', '2024-03-19 07:00:44', 1),
(491, 9, 'Living Room', 'TV Unit', '65f9389b7f3ea.jpeg', '2024-03-19 07:02:51', 1),
(492, 12, 'Dining Room', 'French wall Moulding', '65f938e22a03e.jpeg', '2024-03-19 07:04:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `password`) VALUES
(1, 'livin', 'livin@gmail.com', 'livin@987');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customize`
--
ALTER TABLE `tbl_customize`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customize_category`
--
ALTER TABLE `tbl_customize_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customize_subcategory`
--
ALTER TABLE `tbl_customize_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery_category`
--
ALTER TABLE `tbl_gallery_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery_subcategory`
--
ALTER TABLE `tbl_gallery_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_site_category`
--
ALTER TABLE `tbl_site_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_site_subcategory`
--
ALTER TABLE `tbl_site_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_customize`
--
ALTER TABLE `tbl_customize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `tbl_customize_category`
--
ALTER TABLE `tbl_customize_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_customize_subcategory`
--
ALTER TABLE `tbl_customize_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_gallery_category`
--
ALTER TABLE `tbl_gallery_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_gallery_subcategory`
--
ALTER TABLE `tbl_gallery_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_site_category`
--
ALTER TABLE `tbl_site_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_site_subcategory`
--
ALTER TABLE `tbl_site_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
