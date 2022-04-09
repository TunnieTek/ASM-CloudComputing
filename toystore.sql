-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 09, 2022 lúc 03:16 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `toystore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`categoryId`, `cname`) VALUES
(1, 'action'),
(2, 'animals'),
(3, 'cars'),
(4, 'dolls'),
(5, 'puzzles'),
(6, 'sports');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gadgets`
--

CREATE TABLE `gadgets` (
  `itemid` int(11) NOT NULL,
  `itemname` varchar(50) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `itemdesc` text NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `Gender` varchar(25) NOT NULL,
  `quantity` int(5) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `gadgets`
--

INSERT INTO `gadgets` (`itemid`, `itemname`, `categoryId`, `itemdesc`, `price`, `image`, `Gender`, `quantity`, `flag`) VALUES
(1, '12 pack action figures', 1, '12 avengers heroes ', 38, 'images\\Actionfigures\\action_figure_1.jpg', 'Girl', 1, 1),
(2, 'darth vader', 1, 'Darth Vader, one of the most iconic villains in popular culture, is expertly crafted in black ', 50, 'images\\Actionfigures\\action_figure_2.jpg', 'Girl', 9, 1),
(3, 'deadpool', 1, 'Deadpool is one of Marvel\'s breakout comic characters', 40, 'images\\Actionfigures\\action_figure_3.jpg', 'Girl', 9, 1),
(4, 'black panther', 1, 'rightfull king of wakanda', 400, 'images\\Actionfigures\\action_figure_4.jpg', 'Boy', 10, 1),
(5, 'venom and carnage', 1, 'eddy brock and Cletus Kasady', 60, 'images\\Actionfigures\\action_figure_5.jpg', 'Boy', 10, 1),
(6, 'wonder woman', 1, 'diana princess of amazons', 260, 'images\\Actionfigures\\action_figure_6.jpg', 'Girl', 8, 1),
(7, 'animals1', 2, 'pink evee fur toy', 260, 'images\\Animals\\Animal1.jpg', 'Girl', 9, 1),
(8, 'animals2', 2, '12 pack animal kingdom toy set', 450, 'images\\Animals\\Animal2.jpg', 'Girl', 10, 1),
(9, 'animals3', 2, '8 inch jungle feature toy set', 100, 'images\\Animals\\Animal3.jpg', 'Girl', 10, 1),
(10, 'animals4', 2, '4 pc puppy set', 20, 'images\\Animals\\Animal4.jpg', 'Boy', 10, 1),
(11, 'animals5', 2, 'animal chart', 150, 'images\\Animals\\Animal5.jpg', 'Boy', 10, 1),
(12, 'animals6', 2, 'black and white tiger cub fur toy', 150, 'images\\Animals\\Animal6.jpg', 'Boy', 10, 1),
(13, 'cars1', 3, '12 pc car stickers', 150, 'images\\Cars\\Car1.jpg', 'Boy', 10, 1),
(14, 'cars2', 3, 'green camo remote controlled race car', 150, 'images\\Cars\\Car2.jpg', 'Girl', 10, 1),
(15, 'cars3', 3, 'white batmobile with remote controller', 150, 'images\\Cars\\Car3.jpg', 'Boy', 10, 1),
(16, 'cars4', 3, 'huge carrier truck with load storage', 50, 'images\\Cars\\Car4.jpg', 'Boy', 10, 1),
(17, 'cars5', 3, 'spider mobile', 150, 'images\\Cars\\Car5.jpg', 'Girl', 10, 1),
(18, 'cars6', 3, 'NYC style taxi cab', 150, 'images\\Cars\\Car6.jpg', 'Boy', 10, 1),
(19, 'dolls1', 4, 'red barbie doll', 150, 'images\\Dolls\\Doll1.jpg', 'Boy', 7, 1),
(20, 'dolls2', 4, 'pink barbie doll', 150, 'images\\Dolls\\Doll2.jpg', 'Boy', 10, 1),
(21, 'dolls3', 4, 'barbie limited', 150, 'images\\Dolls\\Doll3.jpg', 'Girl', 10, 1),
(22, 'dolls4', 4, 'white barbie', 68, 'images\\Dolls\\Doll4.jpg', 'Girl', 10, 1),
(23, 'dolls5', 4, 'yoga barbie toy', 68, 'images\\Dolls\\Doll5.jpg', 'Boy', 10, 1),
(24, 'dolls6', 4, 'barbie with car', 68, 'images\\Dolls\\Doll6.jpg', 'Girl', 10, 1),
(25, 'puzzle1', 5, 'bus puzzle build your bus', 150, 'images\\Puzzle\\puzzle_1.jpg', 'Boy', 10, 1),
(26, 'puzzle2', 5, 'wooden cube puzzle', 150, 'images\\Puzzle\\puzzle_2.jpg', 'Boy', 10, 1),
(27, 'puzzle3', 5, 'sphere puzzle lvl hard', 150, 'images\\Puzzle\\puzzle_3.jpg', 'Girl', 10, 1),
(28, 'puzzle4', 5, 'interlocked puzzle', 68, 'images\\Puzzle\\puzzle_4.jpg', 'Girl', 10, 1),
(29, 'puzzle5', 5, 'scrabble', 68, 'images\\Puzzle\\puzzle_5.jpg', 'Boy', 10, 1),
(30, 'puzzle6', 5, 'USA map puzzle', 68, 'images\\Puzzle\\puzzle_6.jpg', 'Girl', 10, 1),
(31, 'sports1', 6, 'baseball bat with stand', 150, 'images\\Sports\\Sports1.jpg', 'Boy', 10, 1),
(32, 'sports2', 6, 'blue football size small', 150, 'images\\Sports\\Sports2.jpg', 'Boy', 10, 1),
(33, 'sports3', 6, 'retro football size regular', 150, 'images\\Sports\\Sports3.jpg', 'Girl', 10, 1),
(34, 'sports4', 6, 'green softball', 68, 'images\\Sports\\Sports4.jpg', 'Girl', 10, 1),
(35, 'sports5', 6, 'squishy water ball for kids', 68, 'images\\Sports\\Sports5.jpg', 'Boy', 10, 1),
(36, 'sports6', 6, 'full bowling set plastic', 68, 'images\\Sports\\Sports6.jpg', 'Girl', 10, 1),
(37, 'Sport7', 6, 'Cricket kit', 24, 'images\\Sports\\Sports7.jpg', '', 15, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `itemid` int(11) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `username`, `itemid`, `itemname`, `price`) VALUES
(21, 'devuda@gmail.com', 1, '12 pack action figures', 38),
(22, 'devuda@gmail.com', 6, 'wonder woman', 260),
(23, 'devuda@gmail.com', 6, 'wonder woman', 260),
(24, 'devuda@gmail.com', 19, 'dolls1', 150),
(25, 'wpl@gmail.com', 1, '12 pack action figures', 38),
(26, 'tim27@gmail.com', 1, '12 pack action figures', 38),
(27, 'admin@fpt.edu.vn', 1, '12 pack action figures', 38);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(6) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `usertype` varchar(100) NOT NULL DEFAULT 'Customer',
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `phone` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `usertype`, `address`, `city`, `state`, `phone`) VALUES
(1, 'swetha88@gmail.com', 'HelloKitty', 'admin', 'McCallum Blvd', 'Dallas', 'Texas', 2142268097),
(2, 'preethi@yahoo.com', 'preethi', 'Customer', 'Richardson', 'Dallas', 'Texas', 4563217589),
(3, 'admin@admin.com', 'adminuser', 'admin', 'McCallum Blvd', 'Dallas', 'Texas', 5641235785),
(11, 'priya@gmail.com', 'priya12', 'Customer', 'Coit Road', 'Dallas', 'Texas', 5687412545),
(13, 'sundar@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'admin', '7815 McCallum Blvd, Apt# 2202', 'Dallas', 'TX', 4699294582),
(14, 'cust@email.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Customer', 'asdsf', 'dfsdfgfd', 'CA', 4564564567),
(15, 'abc@gmail.com', '0ff1a3283768d367a9ea41ae483b2495', 'Customer', 'kjsdhkjsa', 'jkadhs', 'akjdsfh', 2342342343),
(16, 'abdsd@gmail.com', 'e80b5017098950fc58aad83c8c14978e', 'Customer', 'kajfkjak', 'jaskjd', 'ksjkd', 2342342343),
(17, 'wpl@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Customer', 'UTD', 'Dallas', 'TX', 4567432345),
(18, 'tim27@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Customer', '800 W Campbell Rd ', 'Dallas', 'TX', 9728832111),
(19, 'admin@fpt.edu.vn', 'a8ee4e022344282a8d9baf5b2090469c', 'Customer', 'Lac Long Quan', 'Hanoi', 'VietNam', 9818989981);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Chỉ mục cho bảng `gadgets`
--
ALTER TABLE `gadgets`
  ADD PRIMARY KEY (`itemid`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`phone`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `gadgets`
--
ALTER TABLE `gadgets`
  MODIFY `itemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
