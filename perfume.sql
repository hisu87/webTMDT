-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2020 at 02:32 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET AUTOCOMMIT = 0;

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perfume`
--

-- --------------------------------------------------------

--
-- Table structure for table `cat_perfume`
--

CREATE TABLE `CAT_PERFUME` (
  `ID` INT(11) NOT NULL,
  `CATPERFUME` VARCHAR(255) COLLATE UTF8_UNICODE_CI NOT NULL,
  `PARRENT_ID` INT(11) NOT NULL DEFAULT 0
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

--
-- Dumping data for table `cat_perfume`
--

INSERT INTO `CAT_PERFUME` (
  `ID`,
  `CATPERFUME`,
  `PARRENT_ID`
) VALUES (
  1,
  'Trong nước',
  0
),
(
  2,
  'Ngoài nước',
  0
),
(
  10,
  'COCO NOIR CHANEL',
  2
);

-- --------------------------------------------------------

--
-- Table structure for table `cat_user`
--

CREATE TABLE `CAT_USER` (
  `ID` INT(11) NOT NULL,
  `CATUSER` VARCHAR(255) COLLATE UTF8_UNICODE_CI NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

--
-- Dumping data for table `cat_user`
--

INSERT INTO `CAT_USER` (
  `ID`,
  `CATUSER`
) VALUES (
  1,
  'Administrator'
),
(
  4,
  'Admin'
),
(
  5,
  'Quản Trị Viên'
);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `COMMENT` (
  `ID` INT(11) NOT NULL,
  `NAME_COMMENT` VARCHAR(50) COLLATE UTF8_UNICODE_CI NOT NULL,
  `MESSAGE` TEXT COLLATE UTF8_UNICODE_CI NOT NULL,
  `CREATE_COMMENT` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `ID_PER` INT(11) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

--
-- Dumping data for table `comment`
--

INSERT INTO `COMMENT` (
  `ID`,
  `NAME_COMMENT`,
  `MESSAGE`,
  `CREATE_COMMENT`,
  `ID_PER`
) VALUES (
  1,
  'Nguyễn Văn A',
  'Sản phẩm OK',
  '2020-12-11 11:01:54',
  25
),
(
  2,
  'Lê Đức Nam',
  'Sản phẩm OK',
  '2020-12-11 11:28:52',
  33
);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `CONTACT` (
  `ID` INT(11) NOT NULL,
  `NAME` VARCHAR(50) COLLATE UTF8_UNICODE_CI NOT NULL,
  `EMAIL` VARCHAR(50) COLLATE UTF8_UNICODE_CI NOT NULL,
  `PHONE` VARCHAR(20) COLLATE UTF8_UNICODE_CI NOT NULL,
  `MESSAGE` TEXT COLLATE UTF8_UNICODE_CI NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

--
-- Dumping data for table `contact`
--

INSERT INTO `CONTACT` (
  `ID`,
  `NAME`,
  `EMAIL`,
  `PHONE`,
  `MESSAGE`
) VALUES (
  1,
  'Nguyễn Văn Tèo',
  'teo@vinaenter.edu.vn',
  '0795486347',
  'Sản phẩm tốt'
),
(
  2,
  'Nam Lê',
  'leducnam1805@gmail.com',
  '0797207493',
  'Giá rẻ quá.!'
);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `ITEM` (
  `ID` INT(11) NOT NULL,
  `QUANTITY` INT(11) NOT NULL,
  `PRICE` LONGTEXT COLLATE UTF8_UNICODE_CI NOT NULL,
  `PER_ID` INT(11) NOT NULL,
  `ORDER_ID` INT(11) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

--
-- Dumping data for table `item`
--

INSERT INTO `ITEM` (
  `ID`,
  `QUANTITY`,
  `PRICE`,
  `PER_ID`,
  `ORDER_ID`
) VALUES (
  3,
  2,
  '200000',
  25,
  1
),
(
  5,
  2,
  '200000',
  26,
  2
),
(
  6,
  1,
  '200000',
  26,
  10
),
(
  7,
  1,
  '200000',
  26,
  11
),
(
  8,
  1,
  '200000',
  26,
  12
),
(
  9,
  1,
  '8500000',
  33,
  14
),
(
  10,
  1,
  '3470000',
  34,
  15
);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `ORDER` (
  `ID` INT(11) NOT NULL,
  `USER_ID` INT(11) NOT NULL,
  `STATUS` TINYINT(1) NOT NULL DEFAULT 0,
  `PHONE` VARCHAR(20) COLLATE UTF8_UNICODE_CI NOT NULL,
  `EMAIL` VARCHAR(50) COLLATE UTF8_UNICODE_CI NOT NULL,
  `ADRESS` TEXT COLLATE UTF8_UNICODE_CI NOT NULL,
  `NOTE` TEXT COLLATE UTF8_UNICODE_CI NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

--
-- Dumping data for table `order`
--

INSERT INTO `ORDER` (
  `ID`,
  `USER_ID`,
  `STATUS`,
  `PHONE`,
  `EMAIL`,
  `ADRESS`,
  `NOTE`
) VALUES (
  1,
  2,
  1,
  '0797207493',
  'leducnam1805@gmail.com',
  '23 tnh',
  'fgvbhjm'
),
(
  2,
  2,
  1,
  '',
  'leducnam1805@gmail.com',
  'INSERT INTO order(user_id,phone,email,adress,note) VALUES(?,?,?,?,?)',
  'INSERT INTO order(user_id,phone,email,adress,note) VALUES(?,?,?,?,?)'
),
(
  10,
  2,
  1,
  '0797207493',
  'leducnam1805@gmail.com',
  '15 Thái Phiên - Đà Nẵng',
  '15 Thái Phiên - Đà Nẵng'
),
(
  11,
  2,
  0,
  '0389276829',
  'nstamky24h@gmail.com',
  '154 Phạm Hùng - Đà Nẵng',
  'Giao hàng nhanh'
),
(
  12,
  2,
  0,
  '0389276829',
  'leducnam1805@gmail.com',
  '154 Phạm Như Xương',
  'Giao hàng'
),
(
  14,
  10,
  1,
  '05103486987',
  'huy@gmail.com',
  '154 lý thường kiệt - Đà nẵng',
  ''
),
(
  15,
  13,
  0,
  '05678942',
  'hung@gmail.com',
  '186 Nguyễn Lương Bằng - Đà Nẵng',
  ''
);

-- --------------------------------------------------------

--
-- Table structure for table `perfumes`
--

CREATE TABLE `PERFUMES` (
  `ID` INT(11) NOT NULL,
  `NAME_PER` VARCHAR(255) COLLATE UTF8_UNICODE_CI NOT NULL,
  `DESCRIPTION` VARCHAR(255) COLLATE UTF8_UNICODE_CI NOT NULL,
  `DETAIL` TEXT COLLATE UTF8_UNICODE_CI NOT NULL,
  `BRAND` VARCHAR(255) COLLATE UTF8_UNICODE_CI NOT NULL,
  `MADE` VARCHAR(50) COLLATE UTF8_UNICODE_CI NOT NULL,
  `CAPACITY` VARCHAR(20) COLLATE UTF8_UNICODE_CI NOT NULL,
  `CODE_PER` VARCHAR(255) COLLATE UTF8_UNICODE_CI NOT NULL,
  `AMOUNT` INT(11) NOT NULL DEFAULT 0,
  `MONEY` VARCHAR(20) COLLATE UTF8_UNICODE_CI NOT NULL DEFAULT '0',
  `EVALUATE` INT(5) NOT NULL DEFAULT 0,
  `CREATE_DATE` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `VIEW` INT(11) NOT NULL DEFAULT 0,
  `CAT_PERFUME` INT(11) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

--
-- Dumping data for table `perfumes`
--

INSERT INTO `PERFUMES` (
  `ID`,
  `NAME_PER`,
  `DESCRIPTION`,
  `DETAIL`,
  `BRAND`,
  `MADE`,
  `CAPACITY`,
  `CODE_PER`,
  `AMOUNT`,
  `MONEY`,
  `EVALUATE`,
  `CREATE_DATE`,
  `VIEW`,
  `CAT_PERFUME`
) VALUES (
  25,
  'X-MEN',
  'Hương bạc hà',
  'Hương bạc hà',
  'Diolona',
  'Việt Nam',
  '200ml',
  '123456766543',
  100,
  '200000',
  0,
  '2020-12-06 03:12:36',
  1,
  2
),
(
  26,
  'ROMANO',
  'Chuẩn đàn ông',
  'Chuẩn đàn ông',
  'ROMANO',
  'Hàn quốc',
  '200ml',
  '123456766543',
  100,
  '200000',
  0,
  '2020-12-06 03:20:14',
  29,
  2
),
(
  29,
  'Chanel',
  'quyến rũ',
  'quyến rũ',
  'Diolona',
  'Việt Nam',
  '200ml',
  '123456766543',
  2000,
  '200000',
  0,
  '2020-12-09 08:32:30',
  2,
  1
),
(
  30,
  'RANACOVA',
  'Hương vị mới',
  'Hương vị mới',
  'adsfvb',
  'Việt Nam',
  '200ml',
  '123456766543',
  100,
  '200000',
  0,
  '2020-12-09 13:14:20',
  2,
  1
),
(
  31,
  'tân heo',
  'Chuẩn đàn ông',
  'Chuẩn đàn ông',
  'Diolona',
  'Việt Nam',
  '200ml',
  '123456766543',
  100,
  '200000',
  0,
  '2020-12-10 12:25:35',
  2,
  1
),
(
  32,
  'DAWANA',
  'Hương bạc hà',
  'Hương bạc hà',
  'Diolona',
  'Việt Nam',
  '200ml',
  '123456766543',
  100,
  '300000',
  0,
  '2020-12-10 14:55:02',
  1,
  1
),
(
  33,
  'Chanel',
  'Chuẩn đàn ông',
  'Chuẩn đàn ông',
  'Diolona',
  'Việt Nam',
  '200ml',
  '123456766543',
  2000,
  '8500000',
  0,
  '2020-12-10 14:57:42',
  64,
  2
),
(
  34,
  'Jean Paul Gaultier Scandal EDP',
  'ự ngon lành từ mật ong mới nguyên, làm tăng cường độ các nốt hương hoa Dành Dành trắng muốt ngào ngạt và Bưởi Hồng thanh mát.',
  'Hương hoa Gardenia bằng sự tinh tế nhưng hoang dã của đủ chinh phục bạn ngay ở những xúc chạm đầu tiên. Sau đó, vị ngọt trong thành phần chính của mùi hương đầy ấn tượng – mật ong – bắt đầu hé lộ những nốt hương đầu tiên của mình. Khứu giác được kích thích gợi nhớ về kinh nghiệm đầy ngon lành của vị giác, để rồi bất ngờ nhận ra Hoắc Hương cũng dần lộ diện mang lại chiều sâu và thậm chí nguyên khí mới đầy bất ngờ cho toàn bộ làn hương.',
  'MY',
  'Mỹ',
  '80ml',
  '123456766543',
  150,
  '3470000',
  0,
  '2020-12-12 03:31:22',
  0,
  2
),
(
  35,
  'Genie Maibu Secret Love',
  'Genie Maibu Secret Love',
  'Nước Hoa Vùng Kín Genie Maibu Secret Love Hàn Quốc được thiết kế tiện dụng, có thể bỏ trong túi, áo và ví cầm tay, dùng được cho mọi loại da. Trong những ngày nắng nóng đến quay cuồng, ngày “đèn đỏ”, vùng “tam giác” đổ mồ hôi, bết rít và có khi còn nặng mùi nước hoa vùng kín Maibu sẽ giúp bạn không cảm thấy lo lắng, tự ti, nước hoa vùng kín Maibu không chỉ tạo mùi thơm, mà còn có chức năng làm sạch, cân bằng độ pH, giúp cho nàng luôn cảm thấy thoải mái, khô thoáng, thơm dìu dịu hoà quyện cùng làn nước âm ấm, mọi mệt nhọc trong ngày đều sẽ tan biến ngay. Với thiết kế tinh xảo, nhỏ gọn, Maibu Secret không thể thiếu trong túi xách của bạn, dễ dàng mang theo.',
  'GENIE',
  'Hàn quốc',
  '200ml',
  'ABDf763',
  100,
  '380000',
  0,
  '2020-12-12 08:39:18',
  0,
  2
);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `PERMISSION` (
  `ID` INT(11) NOT NULL,
  `USER_ID` INT(11) NOT NULL,
  `CATUSER_ID` INT(11) NOT NULL,
  `PERFUME_ID` INT(11) NOT NULL,
  `ADD_PER` TINYINT(1) NOT NULL DEFAULT 0,
  `EDIT_PER` TINYINT(1) NOT NULL DEFAULT 0,
  `DEL_PER` TINYINT(1) NOT NULL DEFAULT 0
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

--
-- Dumping data for table `permission`
--

INSERT INTO `PERMISSION` (
  `ID`,
  `USER_ID`,
  `CATUSER_ID`,
  `PERFUME_ID`,
  `ADD_PER`,
  `EDIT_PER`,
  `DEL_PER`
) VALUES (
  1,
  1,
  1,
  1,
  1,
  1,
  1
);

-- --------------------------------------------------------

--
-- Table structure for table `pic_per`
--

CREATE TABLE `PIC_PER` (
  `ID` INT(11) NOT NULL,
  `PICTURE` TEXT COLLATE UTF8_UNICODE_CI NOT NULL,
  `PER_ID` INT(11) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

--
-- Dumping data for table `pic_per`
--

INSERT INTO `PIC_PER` (
  `ID`,
  `PICTURE`,
  `PER_ID`
) VALUES (
  28,
  'Aventus Creed-293448677275000.jpg',
  30
),
(
  29,
  'p1-293448748757500.jpg',
  30
),
(
  30,
  'p2-293448781888600.jpg',
  30
),
(
  31,
  'Aventus Creed-376937414958000.jpg',
  31
),
(
  32,
  'p1-376937464691200.jpg',
  31
),
(
  33,
  'p2-376937511450300.jpg',
  31
),
(
  34,
  'MARC JACOBS DAISY LOVE-385904567803700.jpg',
  32
),
(
  35,
  'p1-385904613406100.jpg',
  32
),
(
  36,
  'p2-385904672383900.jpg',
  32
),
(
  37,
  'p3-385904790401000.jpg',
  32
),
(
  38,
  'p4-385904860392300.jpg',
  32
),
(
  39,
  'p3-386064623929400.jpg',
  33
),
(
  40,
  'p4-386064679225700.jpg',
  33
),
(
  41,
  'p5-386064732052800.jpg',
  33
),
(
  42,
  'p6-386064799193000.jpg',
  33
),
(
  43,
  'p7-386064890159800.jpg',
  33
),
(
  44,
  'MARC JACOBS DAISY LOVE-517699386664100.jpg',
  34
),
(
  45,
  'p1-517699439073900.jpg',
  34
),
(
  46,
  'p2-517699496538400.jpg',
  34
),
(
  47,
  'p3-517699577778700.jpg',
  34
),
(
  48,
  'MARC JACOBS DAISY LOVE-536190824249399.jpg',
  35
),
(
  49,
  'p1-536190911048800.jpg',
  35
),
(
  50,
  'p2-536190968820099.jpg',
  35
),
(
  51,
  'p3-536191019321500.jpg',
  35
),
(
  52,
  'p4-536191093913299.jpg',
  35
);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `USER` (
  `ID` INT(11) NOT NULL,
  `USERNAME` VARCHAR(50) COLLATE UTF8_UNICODE_CI NOT NULL,
  `FULLNAME` VARCHAR(50) COLLATE UTF8_UNICODE_CI DEFAULT NULL,
  `PASSWORD` VARCHAR(255) COLLATE UTF8_UNICODE_CI NOT NULL,
  `MONEY` VARCHAR(20) COLLATE UTF8_UNICODE_CI NOT NULL DEFAULT '0',
  `CAT_USER` INT(11) NOT NULL DEFAULT 5
) ENGINE=INNODB DEFAULT CHARSET=UTF8 COLLATE=UTF8_UNICODE_CI;

--
-- Dumping data for table `user`
--

INSERT INTO `USER` (
  `ID`,
  `USERNAME`,
  `FULLNAME`,
  `PASSWORD`,
  `MONEY`,
  `CAT_USER`
) VALUES (
  1,
  'administrator',
  'Lê Đức Nam',
  '202cb962ac59075b964b07152d234b70',
  '1000000000',
  1
),
(
  2,
  'admin',
  'Lê Đức Nam',
  '202cb962ac59075b964b07152d234b70',
  '',
  4
),
(
  5,
  'tan',
  'Tân Đoàn',
  'e10adc3949ba59abbe56e057f20f883e',
  '',
  5
),
(
  6,
  'binh',
  'Bình Lê',
  '827ccb0eea8a706c4c34a16891f84e7b',
  '',
  5
),
(
  9,
  'Lê Đức Nam',
  'leducnam1805@gmail.com',
  '202cb962ac59075b964b07152d234b70',
  '0',
  5
),
(
  10,
  'huypato',
  'Nguyễn Quốc Huy',
  '202cb962ac59075b964b07152d234b70',
  '0',
  5
),
(
  11,
  'Trần Văn Hưng',
  'hung',
  'd6bb922ba20fd9f14949fbb4b9efc92b',
  '0',
  5
),
(
  12,
  'Trần Văn Hưng',
  'hung',
  'd0a483256bbd970137d8e1157293474f',
  '0',
  5
),
(
  13,
  'hung',
  'Trần văn Hưng',
  'd0a483256bbd970137d8e1157293474f',
  '0',
  5
);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cat_perfume`
--
ALTER TABLE `CAT_PERFUME` ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cat_user`
--
ALTER TABLE `CAT_USER` ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `comment`
--
ALTER TABLE `COMMENT` ADD PRIMARY KEY (`ID`), ADD KEY `ID_PER` (`ID_PER`);

--
-- Indexes for table `contact`
--
ALTER TABLE `CONTACT` ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `item`
--
ALTER TABLE `ITEM` ADD PRIMARY KEY (`ID`), ADD KEY `PER_ID` (`PER_ID`), ADD KEY `ORDER_ID` (`ORDER_ID`);

--
-- Indexes for table `order`
--
ALTER TABLE `ORDER` ADD PRIMARY KEY (`ID`), ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `perfumes`
--
ALTER TABLE `PERFUMES` ADD PRIMARY KEY (`ID`), ADD KEY `CAT_PERFUME` (`CAT_PERFUME`);

--
-- Indexes for table `permission`
--
ALTER TABLE `PERMISSION` ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pic_per`
--
ALTER TABLE `PIC_PER` ADD PRIMARY KEY (`ID`), ADD KEY `PIC_PER_IBFK_1` (`PER_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `USER` ADD PRIMARY KEY (`ID`), ADD KEY `CAT_USER` (`CAT_USER`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cat_perfume`
--
ALTER TABLE `CAT_PERFUME` MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cat_user`
--
ALTER TABLE `CAT_USER` MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `COMMENT` MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `CONTACT` MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `ITEM` MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `ORDER` MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `perfumes`
--
ALTER TABLE `PERFUMES` MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `PERMISSION` MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pic_per`
--
ALTER TABLE `PIC_PER` MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `USER` MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `COMMENT` ADD CONSTRAINT `COMMENT_IBFK_1` FOREIGN KEY (`ID_PER`) REFERENCES `PERFUMES` (`ID`);

--
-- Constraints for table `item`
--
ALTER TABLE `ITEM` ADD CONSTRAINT `ITEM_IBFK_1` FOREIGN KEY (`PER_ID`) REFERENCES `PERFUMES` (`ID`), ADD CONSTRAINT `ITEM_IBFK_2` FOREIGN KEY (`ORDER_ID`) REFERENCES `ORDER` (`ID`);

--
-- Constraints for table `order`
--
ALTER TABLE `ORDER` ADD CONSTRAINT `ORDER_IBFK_1` FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`ID`);

--
-- Constraints for table `perfumes`
--
ALTER TABLE `PERFUMES` ADD CONSTRAINT `PERFUMES_IBFK_1` FOREIGN KEY (`CAT_PERFUME`) REFERENCES `CAT_PERFUME` (`ID`);

--
-- Constraints for table `pic_per`
--
ALTER TABLE `PIC_PER` ADD CONSTRAINT `PIC_PER_IBFK_1` FOREIGN KEY (`PER_ID`) REFERENCES `PERFUMES` (`ID`);

--
-- Constraints for table `user`
--
ALTER TABLE `USER` ADD CONSTRAINT `USER_IBFK_1` FOREIGN KEY (`CAT_USER`) REFERENCES `CAT_USER` (`ID`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;