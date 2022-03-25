-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 25 2022 г., 10:10
-- Версия сервера: 10.4.22-MariaDB
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ud`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `parent` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` int(10) NOT NULL,
  `name_RUS` varchar(50) DEFAULT NULL,
  `name_ENG` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `name_RUS`, `name_ENG`) VALUES
(1, 'Томск', 'Tomsk'),
(2, 'Северск', 'Seversk');

-- --------------------------------------------------------

--
-- Структура таблицы `companies`
--

CREATE TABLE `companies` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `TIN` varchar(12) DEFAULT NULL,
  `MSRN` varchar(13) DEFAULT NULL,
  `director` varchar(150) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `companies`
--

INSERT INTO `companies` (`id`, `name`, `TIN`, `MSRN`, `director`, `address`) VALUES
(1, 'Kleinhans', '2147483647', '2147483647', 'Paula R. Anderson', '331 Wintheiser Dale Steuberborough, IN 61115'),
(2, 'World of Fun', '2147483647', '2147483647', 'Larry C. Jones', '4508 Tad Hills Apt. 829 Cummingsburgh, IN 47476'),
(3, 'Electric Avenue', '148253235888', '3788134688335', 'Alfred R. Conrad', '56467 Arjun Port Suite 965 North Gloriaside, MA 29403-4539'),
(4, 'Profitpros', '292033684927', '3370295332400', 'Gregory J. Ellis', '9959 Oberbrunner Course Port Remington, TN 64262-7734'),
(5, 'Gemco', '720929705956', '8587201416343', 'Natacha M. McIntyre', '146 Theodora Station Abbottfort, KY 69637-7744');

-- --------------------------------------------------------

--
-- Структура таблицы `genders`
--

CREATE TABLE `genders` (
  `id` int(10) NOT NULL,
  `name_RUS` varchar(50) DEFAULT NULL,
  `name_ENG` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `genders`
--

INSERT INTO `genders` (`id`, `name_RUS`, `name_ENG`) VALUES
(1, 'мужской', 'male'),
(2, 'женский', 'female');

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE `projects` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `patronymic` varchar(100) DEFAULT NULL,
  `birth_day` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` int(10) DEFAULT NULL,
  `company` int(10) DEFAULT NULL,
  `post` varchar(100) DEFAULT NULL,
  `region` varchar(300) NOT NULL DEFAULT 'Tomsk region',
  `city` tinyint(1) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `patronymic`, `birth_day`, `email`, `gender`, `company`, `post`, `region`, `city`, `address`, `telephone`) VALUES
(1, 'Greg', 'Saxon', 'B', '1977-04-19', 'GregBSaxon@rhyta.com', 1, 5, NULL, 'Tomsk', NULL, NULL, NULL),
(2, 'Dennis', 'Guerin', 'J', '1972-06-22', 'DennisJGuerin@rhyta.com', 1, 4, NULL, 'Tomsk', NULL, NULL, NULL),
(3, 'Laura', 'Wilder', 'W', '1938-10-24', 'LauraWWilder@rhyta.com', 2, 3, NULL, 'Tomsk', NULL, NULL, NULL),
(4, 'Daphine', 'McQuaid', 'C', '1997-04-25', 'DaphineCMcQuaid@jourrapide.com', 2, 2, NULL, 'Tomsk', NULL, NULL, NULL),
(5, 'Angela', 'Maines', 'C', '1982-10-11', 'AngelaCMaines@jourrapide.com', 2, 1, NULL, 'Tomsk', NULL, NULL, NULL),
(6, 'John', 'Bernhardt', 'R', '1987-08-24', 'JohnRBernhardt@dayrep.com', 1, 5, NULL, 'Tomsk', NULL, NULL, NULL),
(7, 'Alberta', 'Ward', 'H', '1974-03-23', 'AlbertaHWard@armyspy.com', 2, 4, NULL, 'Tomsk', NULL, NULL, NULL),
(8, 'Pamela', 'Huggins', 'L', '1968-04-18', 'PamelaLHuggins@armyspy.com', 2, 3, NULL, 'Tomsk', NULL, NULL, NULL),
(9, 'Alan', 'Gonzales', 'M', '1983-05-21', 'AlanMGonzales@dayrep.com', 1, 2, NULL, 'Tomsk', NULL, NULL, NULL),
(10, 'Jerald', 'Hale', 'L', '1970-01-07', 'JeraldLHale@jourrapide.com', 1, 1, NULL, 'Tomsk', NULL, NULL, NULL),
(11, 'Robert', 'Hunter', 'G', '1967-02-18', 'RobertGHunter@armyspy.com', 1, 5, NULL, 'Tomsk', NULL, NULL, NULL),
(12, 'John', 'Schaeffer', 'K', '1978-06-10', 'JohnKSchaeffer@teleworm.us', 1, 4, NULL, 'Tomsk', NULL, NULL, NULL),
(13, 'David', 'Bolin', 'D', '1938-06-05', 'DavidDBolin@teleworm.us', 1, 3, NULL, 'Tomsk', NULL, NULL, NULL),
(14, 'Linda', 'Parker', 'G', '1949-12-30', 'LindaGParker@jourrapide.com', 2, 2, NULL, 'Tomsk', NULL, NULL, NULL),
(15, 'Tiffany', 'Hughes', 'G', '1960-03-27', 'TiffanyGHughes@dayrep.com', 2, 1, NULL, 'Tomsk', NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `name` (`name`,`surname`,`patronymic`,`birth_day`),
  ADD UNIQUE KEY `address` (`address`),
  ADD UNIQUE KEY `telephone` (`telephone`),
  ADD KEY `genders` (`gender`),
  ADD KEY `companies` (`company`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `companies` FOREIGN KEY (`company`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `genders` FOREIGN KEY (`gender`) REFERENCES `genders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
