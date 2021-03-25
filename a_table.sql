-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 
-- サーバのバージョン： 5.7.24
-- PHP のバージョン: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `a_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `a_table`
--

CREATE TABLE `a_table` (
  `id` int(12) NOT NULL,
  `season` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `datetime` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `weather` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `temperature` int(100) NOT NULL,
  `pref_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `a_table`
--

INSERT INTO `a_table` (`id`, `season`, `datetime`, `weather`, `temperature`, `pref_name`, `field`, `size`, `color`, `name`, `comment`, `indate`) VALUES
(23, '夏', '2021-03-25T18:36', '雨', 24, '神奈川県', '都市', 'ムクドリ大', '茶色', 'aaaaaaaaaa', 'ssssssssssssssss', '2021-03-25 23:04:15'),
(24, '冬', '2021-01-12T12:30', '曇り', -12, '秋田県', '山', 'ハト大', '緑色', 'eeeeee', 'ffffffffff', '2021-03-25 23:26:01');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `a_table`
--
ALTER TABLE `a_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `a_table`
--
ALTER TABLE `a_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
