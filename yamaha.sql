-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Мар 10 2021 г., 19:11
-- Версия сервера: 10.4.8-MariaDB
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yamaha`
--

-- --------------------------------------------------------

--
-- Структура таблицы `stores`
--

CREATE TABLE `stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `adress` varchar(560) NOT NULL,
  `subway` varchar(125) DEFAULT NULL,
  `phones` varchar(256) DEFAULT NULL,
  `worktime` varchar(256) NOT NULL,
  `information` text DEFAULT NULL,
  `latitude` varchar(90) NOT NULL,
  `longitude` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `stores`
--

INSERT INTO `stores` (`id`, `name`, `adress`, `subway`, `phones`, `worktime`, `information`, `latitude`, `longitude`) VALUES
(1, 'Yamaha-Store.ru', 'Малый просп. Петроградской стороны, 47, Санкт-Петербург', 'Чкаловская', '8 (800) 777-83-20', '10:00 – 19:00', NULL, '59.960841', '30.298423'),
(2, 'ВВС-Моторс', 'Ново-Рыбинская ул., 19-21, Санкт-Петербург', 'Фрунзенская, Обводный канал, Московские ворота', '+7 (812) 337-10-41', '09:00 – 20:00', NULL, '59.902686', '30.337275'),
(3, 'Мотосалон Yamaha', 'Школьная ул., 75, корп. 3, Санкт-Петербург', NULL, '+7 (812) 633-07-77', '10:00 – 20:00', NULL, '59.993568', '30.210496'),
(4, 'Ямаха-Центр След', 'Выборгское ш., 503, корп. 1, посёлок Парголово', NULL, '+7 (812) 643-13-14, +7 (921) 955-13-14', '10:00 – 21:00', NULL, '60.099086', '30.260352');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
