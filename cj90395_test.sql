-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 12 2023 г., 14:13
-- Версия сервера: 8.0.33-25
-- Версия PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cj90395_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `excursion`
--

CREATE TABLE IF NOT EXISTS `excursion` (
  `id_exc` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `img_exc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title_exc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description_exc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone_exc` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price_exc` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id_exc`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `excursion`
--

INSERT INTO `excursion` (`id_exc`, `img_exc`, `title_exc`, `description_exc`, `phone_exc`, `price_exc`) VALUES
(5, 'uploads/0190fbf7bbf9223a401ea9e622f6ccc3.jpg', 'Экскурсия по Мувыру', 'На экскурсии будут редставлены все сферы жизни деревни - быт, культура, работа. В рамках\r\nэкскурсии будут представлены тематические площадки, секции. Наши гости смогут поближе познакомиться с Мувыром, узнать о его истории в музее, испробовать его блюда, выслушать истории жителей.', '+7(922)853-79-08', 150),
(6, 'uploads/fd020b4f2ccb613809d8f29bc64d9b24.jpg', 'Экскурсия по возрожденной деревне с питанием', 'На экскурсии будут редставлены все сферы жизни деревни - быт, культура, работа. В рамках экскурсии будут представлены тематические площадки, секции. Наши гости смогут поближе познакомиться с Мувыром, узнать о его истории в музее, испробовать его блюда, выслушать истории жителей.', '+7(922)853-79-08', 750),
(7, 'uploads/86abce2215e22b91f8f78b248249b06e.jpg', 'экскурсия по молочному заводу', 'Замечательная 	экскурсия по молочному заводу, вы узнаете как мы делаем , молоко, творог , сыр, йогурт  и многое другое', '89228537908', 250);

-- --------------------------------------------------------

--
-- Структура таблицы `exc_request`
--

CREATE TABLE IF NOT EXISTS `exc_request` (
  `id_request` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_exc_request` bigint UNSIGNED NOT NULL,
  `phone_exc_request` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name_exc_request` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_exc_request` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_request`),
  KEY `id_exc_request` (`id_exc_request`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fun`
--

CREATE TABLE IF NOT EXISTS `fun` (
  `id_fun` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `img_fun` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title_fun` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description_fun` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone_fun` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price_fun` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id_fun`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `fun`
--

INSERT INTO `fun` (`id_fun`, `img_fun`, `title_fun`, `description_fun`, `phone_fun`, `price_fun`) VALUES
(5, 'uploads/576a26002da5ebe79553e3f78e238241.jpg', 'Аренда велосипеда', '150 руб - 30 мин., 250 руб -1 час., 1000 руб - сутки', '+7(922)853-79-08', 50),
(6, 'uploads/036962d7d8c6ee51a6f10b5c643c3608.jpg', 'Прогулка с конями', 'Конь богатырь, прямиком из болгарии', '+7(922)853-79-08', 50);

-- --------------------------------------------------------

--
-- Структура таблицы `house`
--

CREATE TABLE IF NOT EXISTS `house` (
  `id_house` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `img_house` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title_house` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description_house` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `short_description_house` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price_house` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id_house`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `house`
--

INSERT INTO `house` (`id_house`, `img_house`, `title_house`, `description_house`, `short_description_house`, `price_house`) VALUES
(6, 'uploads/d8cec1a79e76ed63b31b1ec62113c1e2.jpg', 'Эко-дом с видом на поле', 'Очень милый и довольно просторный домик с хорошим освещением за небольшую цену! Максимум до 4 проживающих. В домике есть одна двуспальная кровать и одна двуспальная. Лучший вариант для тех кто хочет посетить Мувыр большой семьей! В комнате есть стол.', 'Заезд: после 14:00. Выезд: до 12:00,Туалет, умывальник на улице', 1200),
(7, 'uploads/9f8afcb23df4b71c47274a8fd1042e79.jpg', 'Эко-дом с видом на поле', 'Очень милый и довольно просторный домик с хорошим освещением за небольшую цену! Максимум до 4 проживающих. В домике есть одна двуспальная кровать и одна двуспальная. Лучший вариант для тех кто хочет посетить Мувыр большой семьей! В комнате есть стол.', 'Заезд: после 14:00. Выезд: до 12:00<br>Туалет, умывальник на улице', 1500),
(8, 'uploads/24e2241e2c1ea8cccab77046f0b6a1f5.jpg', 'Эко-дом с видом на поле', 'Очень милый и довольно просторный домик с хорошим освещением за небольшую цену! Максимум до 4 проживающих. В домике есть одна двуспальная кровать и одна двуспальная. Лучший вариант для тех кто хочет посетить Мувыр большой семьей! В комнате есть стол.', 'Заезд: после 14:00. Выезд: до 12:00<br>Туалет, умывальник на улице', 2000);

-- --------------------------------------------------------

--
-- Структура таблицы `house_request`
--

CREATE TABLE IF NOT EXISTS `house_request` (
  `id_request` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_house_request` bigint UNSIGNED NOT NULL,
  `name_house_request` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone_house_request` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `number_house_request` int UNSIGNED NOT NULL,
  `checkin_request` datetime NOT NULL,
  `checkout_request` datetime NOT NULL,
  PRIMARY KEY (`id_request`),
  KEY `id_house_request` (`id_house_request`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `house_request`
--

INSERT INTO `house_request` (`id_request`, `id_house_request`, `name_house_request`, `phone_house_request`, `number_house_request`, `checkin_request`, `checkout_request`) VALUES
(3, 7, 'Afanasyev Denis Sergeevich', '+7(922)853-79-08', 1, '2023-10-21 12:03:00', '2023-10-22 04:12:00');

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id_post` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `img_post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title_post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description_post` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_post` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_post`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id_post`, `img_post`, `title_post`, `description_post`, `date_post`) VALUES
(4, 'uploads/bd8c9dd75077bc4e918069ba9148cca2.jpg', 'Фестиваль возрожденных деревень', 'Фестиваль возрожденных деревень - это площадка, где представлены все сферы жизни деревни - быт, культура, работа. В рамках фестиваля будут представлены тематические площадки, секции, экскурсии:\r\n«Быт»\r\n- жилой дом, усадьба - устройство дома, архитектура, интерьер, печь, наличники,\r\nмебель;\r\n- животное и хозяйственное подворье.\r\n«Культура»\r\n- народный костюм;\r\n- декоративно-прикладное искусство, ремесла;\r\n- исполнительское мастерство (танец, пение, сказительство, музыкальные инструменты, театр/сказки);\r\n- обряды;\r\n- народные игры;\r\n- физическая культура (спортивные игры).\r\n«Работа»\r\n- земледелие, обработка земли;\r\n- растениеводство;\r\n- пчеловодство;\r\n- молочная ферма;\r\n- ремесленные мастерские (деревообработка, кузнечное дело, ткачество, гончарное дело);\r\n- механизация, ИТ (трактора, дроны и тд);\r\n- конный транспорт;\r\n- рыбалка.', '2023-10-12 07:15:48'),
(5, 'uploads/94d1121c2fce916b76c21f43a1ddd7a3.jpg', 'Экскурсия по возрожденной деревне с питанием', 'На экскурсии будут редставлены все сферы жизни деревни - быт, культура, работа. В рамках\r\nэкскурсии будут представлены тематические площадки, секции. Наши гости смогут поближе познакомиться с Мувыром, узнать о его истории в музее, испробовать его блюда, выслушать истории жителей.', '2023-10-12 07:16:12'),
(6, 'uploads/86c5fa034534207ea77c2f85a883c3ef.jpg', 'экскурсия по молочному заводу', 'замечательная экскурсия по молочному заводу, на которой вы узнаете как мы делаем молоко , сыр, йогрут и многое другое', '2023-10-12 10:48:08');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `surname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `patronymic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id_user`, `surname`, `name`, `patronymic`, `phone`, `login`, `password`) VALUES
(3, 'test1', 'test2', 'test3', '+7(234)232-34-34', 'test', '$2y$10$VDI96aOgTQGSrP/c.u5rte/lSfJuzHgD3eWgtVnC2UliY/s2OAqPm');

-- --------------------------------------------------------

--
-- Структура таблицы `wedding_request`
--

CREATE TABLE IF NOT EXISTS `wedding_request` (
  `id_wedding_request` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone_wedding_request` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name_wedding_request` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_wedding_request` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_wedding_request`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `wedding_request`
--

INSERT INTO `wedding_request` (`id_wedding_request`, `phone_wedding_request`, `name_wedding_request`, `date_wedding_request`) VALUES
(11, '+7(345)433-53-54', 'Igor', '2023-10-12 11:05:46');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `exc_request`
--
ALTER TABLE `exc_request`
  ADD CONSTRAINT `exc_request_ibfk_1` FOREIGN KEY (`id_exc_request`) REFERENCES `excursion` (`id_exc`);

--
-- Ограничения внешнего ключа таблицы `house_request`
--
ALTER TABLE `house_request`
  ADD CONSTRAINT `house_request_ibfk_1` FOREIGN KEY (`id_house_request`) REFERENCES `house` (`id_house`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
