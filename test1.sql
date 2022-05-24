-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u8
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 06 2022 г., 11:30
-- Версия сервера: 5.5.62-0+deb8u1
-- Версия PHP: 5.6.40-0+deb8u9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `test1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'admin', '-FwRj-tHEcgupHj5hxhYsLJ99vlvdByw', '$2y$13$on295cEie6YPUtTmrG6t7eNPPOMHptTWIeLE21R/zY5EsnMcoiLlO', '-9aC2cs5p4GXZCkfLLALOSLhvQOIrHFz_1577437255', 'admin@mari-turek.ru', 10, 1557856745, 1605204746, 'Ao-Ty9DzYp-DwbU3s7vPLtZBkeWL2W2V_1604341169'),
(210, 'Регистрация', 'tflp6x9-5EbX1w-IR485QOACUMGMPDu_', '$2y$13$W4hjmth1kjSSftdEpmgWy.9pxKgpccfLBmoISrouUvz9GghGDjM5a', NULL, 'sa@mail.ru', 9, 1651818803, 1651818803, 'DmtDJYDXzQDXd1LUC-O_BS6oWGye2sTF_1651818803'),
(211, 'test', 'y-oeQfgXVObLKJ_IbpbUe7nDrt2juTQG', '$2y$13$3bUukDkhEc1clT1IoxXAiOaUHUnlEbiDWm7QL4SdWMqyz2YIMrJoS', NULL, 'test@mail.ru', 9, 1651818830, 1651818830, 'yA-Qw14cIvvJC8zz8Pu4kNmGTm0UfEM6_1651818830'),
(212, 'test2', 'ECGdclR8_HcMSuRHZn2VfTgbRIJTtNWk', '$2y$13$zJsCq8qvQbmV/7rE/osuhOy2//BQgxi8hK9WogbmqRnW2PYunGuhG', NULL, 'test2@mail.ru', 10, 1651818878, 1651818878, 'o2vW4mTDjUsJAfEKmgw6LZXPhP4abfo8_1651818878'),
(213, 'Тест3', 'Li9snfP8_1Sa4dH3mXSuiJPKuBF2sctF', '$2y$13$451swPLdDrnUGa/Ajtm.Zum3CocYZaxchHFNP.wpBlEzBpe3lNNb6', NULL, 'a@maiil.ru', 10, 1651825513, 1651825513, 'RfRzq9enVXgiN_Jed52YYQunUJs_RhPA_1651825513');

-- --------------------------------------------------------

--
-- Структура таблицы `vopros`
--

CREATE TABLE IF NOT EXISTS `vopros` (
`id` int(11) NOT NULL,
  `text` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vopros`
--

INSERT INTO `vopros` (`id`, `text`, `user_id`) VALUES
(50, 0, 1),
(51, 0, 1),
(52, 0, 1),
(53, 2, 1),
(54, 1, 1),
(55, 1, 1),
(56, 0, 1),
(57, 0, 1),
(58, 111, 12),
(59, 111, 1),
(60, 222, 1),
(61, 0, 1),
(62, 0, 1),
(63, 2, 1),
(64, 111, 1),
(65, 111, 1),
(66, 111, 1),
(67, 111, 1),
(68, 0, 1),
(69, 0, 213),
(70, 0, 213),
(71, 0, 213),
(72, 189, 213),
(73, 0, 213),
(74, 0, 213),
(75, 111, 213),
(76, 111, 213);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`), ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Индексы таблицы `vopros`
--
ALTER TABLE `vopros`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=214;
--
-- AUTO_INCREMENT для таблицы `vopros`
--
ALTER TABLE `vopros`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
