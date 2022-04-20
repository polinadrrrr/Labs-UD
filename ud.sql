-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 01 2022 г., 16:19
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
(2, 'Северск', 'Seversk'),
(3, 'Красноярск', 'Krasnoyarsk'),
(4, 'Канск', 'Kansk'),
(5, 'Иркутск', 'Irkutsk');

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
  `age` int(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` int(10) DEFAULT NULL,
  `company` int(10) DEFAULT NULL,
  `post` varchar(100) DEFAULT NULL,
  `city` tinyint(1) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `patronymic`, `birth_day`, `age`, `email`, `gender`, `company`, `post`, `city`, `address`, `telephone`) VALUES
(1, 'Greg', 'Saxon', 'B', '1977-04-19', 44, 'GregBSaxon@rhyta.com', 1, 5, NULL, 3, NULL, NULL),
(2, 'Dennis', 'Guerin', 'J', '1972-06-22', 49, 'DennisJGuerin@rhyta.com', 1, 4, NULL, 5, NULL, NULL),
(3, 'Laura', 'Wilder', 'W', '1938-10-24', 83, 'LauraWWilder@rhyta.com', 2, 3, NULL, 1, NULL, NULL),
(4, 'Daphine', 'McQuaid', 'C', '1997-04-25', 24, 'DaphineCMcQuaid@jourrapide.com', 2, 2, NULL, 4, NULL, NULL),
(5, 'Angela', 'Maines', 'C', '1982-10-11', 39, 'AngelaCMaines@jourrapide.com', 2, 1, NULL, 2, NULL, NULL),
(6, 'John', 'Bernhardt', 'R', '1987-08-24', 34, 'JohnRBernhardt@dayrep.com', 1, 5, NULL, 3, NULL, NULL),
(7, 'Alberta', 'Ward', 'H', '1974-03-23', 48, 'AlbertaHWard@armyspy.com', 2, 4, NULL, 5, NULL, NULL),
(8, 'Pamela', 'Huggins', 'L', '1968-04-18', 53, 'PamelaLHuggins@armyspy.com', 2, 3, NULL, 1, NULL, NULL),
(9, 'Alan', 'Gonzales', 'M', '1983-05-21', 38, 'AlanMGonzales@dayrep.com', 1, 2, NULL, 4, NULL, NULL),
(10, 'Jerald', 'Hale', 'L', '1970-01-07', 52, 'JeraldLHale@jourrapide.com', 1, 1, NULL, 2, NULL, NULL),
(11, 'Robert', 'Hunter', 'G', '1967-02-18', 55, 'RobertGHunter@armyspy.com', 1, 5, NULL, 3, NULL, NULL),
(12, 'John', 'Schaeffer', 'K', '1978-06-10', 43, 'JohnKSchaeffer@teleworm.us', 1, 4, NULL, 5, NULL, NULL),
(13, 'David', 'Bolin', 'D', '1938-06-05', 83, 'DavidDBolin@teleworm.us', 1, 3, NULL, 1, NULL, NULL),
(14, 'Linda', 'Parker', 'G', '1949-12-30', 72, 'LindaGParker@jourrapide.com', 2, 2, NULL, 4, NULL, NULL),
(15, 'Tiffany', 'Hughes', 'G', '1960-03-27', 62, 'TiffanyGHughes@dayrep.com', 2, 1, NULL, 2, NULL, NULL),
(16, 'Tammy', 'Ashby', 'S', '1988-08-16', 33, 'TammySAshby@teleworm.us', 2, 1, NULL, 1, NULL, NULL),
(17, 'Matthew', 'Edens', 'V', '1967-12-25', 54, 'MatthewVEdens@teleworm.us', 1, 2, NULL, 2, NULL, NULL),
(18, 'James', 'Jenkins', 'R', '1945-11-14', 76, 'JamesRJenkins@rhyta.com', 1, 3, NULL, 3, NULL, NULL),
(19, 'Justin', 'Saylor', 'J', '2001-03-08', 21, 'JustinJSaylor@jourrapide.com', 1, 2, NULL, 4, NULL, NULL),
(20, 'Kenneth', 'Setser', 'M', '1959-06-08', 62, 'KennethMSetser@rhyta.com', 1, 4, NULL, 3, NULL, NULL),
(21, 'Marie', 'Wiest', 'L', '1992-08-05', 29, 'MarieLWiest@armyspy.com', 2, 3, NULL, 1, NULL, NULL),
(22, 'Wesley', 'Thomas', 'M', '1997-11-20', 24, 'WesleyMThomas@dayrep.com', 1, 2, NULL, 5, NULL, NULL),
(23, 'Edwardo', 'Charest', 'M', '1995-02-02', 27, 'EdwardoMCharest@dayrep.com', 1, 3, NULL, 4, NULL, NULL),
(24, 'Carlos', 'White', 'S', '1939-06-25', 82, 'CarlosSWhite@teleworm.us', 1, 5, NULL, 2, NULL, NULL),
(25, 'Alana', 'Kirschner', 'R', '1984-11-05', 37, 'AlanaRKirschner@jourrapide.com', 2, 4, NULL, 1, NULL, NULL),
(26, 'William', 'Sellers', 'T', '1946-03-12', 76, 'WilliamTSellers@armyspy.com', 1, 1, NULL, 2, NULL, NULL),
(27, 'Steven', 'Johnson', 'L', '1943-08-12', 78, 'StevenLJohnson@rhyta.com', 1, 2, NULL, 4, NULL, NULL),
(28, 'Debra', 'Linn', 'L', '1938-01-10', 84, 'DebraLLinn@armyspy.com', 2, 2, NULL, 3, NULL, NULL),
(29, 'Shanda', 'Mueller', 'O', '1990-06-18', 31, 'ShandaOMueller@armyspy.com', 2, 3, NULL, 1, NULL, NULL),
(30, 'Janie', 'Dion', 'R', '2003-03-08', 19, 'JanieRDion@dayrep.com', 2, 4, NULL, 5, NULL, NULL),
(31, 'Virginia', 'Gandy', 'F', '1961-02-05', 61, 'VirginiaFGandy@dayrep.com', 2, 1, NULL, 3, NULL, NULL),
(32, 'Dave', 'Fisher', 'Z', '1979-10-02', 42, 'DaveZFisher@rhyta.com', 1, 5, NULL, 3, NULL, NULL),
(33, 'Kenneth', 'Bracey', 'P', '1998-01-18', 24, 'KennethPBracey@jourrapide.com', 1, 3, NULL, 2, NULL, NULL),
(34, 'Tony', 'Martin', 'S', '1991-10-01', 30, 'TonySMartin@teleworm.us', 1, 4, NULL, 1, NULL, NULL),
(35, 'Viola', 'Tyler', 'L', '1944-12-18', 77, 'ViolaLTyler@jourrapide.com', 2, 2, NULL, 4, NULL, NULL),
(36, 'Maria', 'Howland', 'P', '1957-01-19', 65, 'MariaPHowland@jourrapide.com', 2, 3, NULL, 1, NULL, NULL),
(37, 'Richard', 'Everett', 'J', '1967-11-24', 54, 'RichardJEverett@rhyta.com', 1, 1, NULL, 2, NULL, NULL),
(38, 'Emil', 'Lee', 'R', '1976-08-23', 45, 'EmilRLee@teleworm.us', 1, 4, NULL, 3, NULL, NULL),
(39, 'Martin', 'Passarelli', 'A', '1996-07-25', 25, 'MartinAPassarelli@rhyta.com', 1, 5, NULL, 4, NULL, NULL),
(40, 'Josephine', 'Roberts', 'J', '1981-01-09', 41, 'JosephineJRoberts@teleworm.us', 2, 2, NULL, 5, NULL, NULL),
(41, 'Anita', 'Owens', 'J', '1978-04-10', 44, 'AnitaJOwens@jourrapide.com', 2, 4, NULL, 1, NULL, NULL),
(42, 'Melissa', 'Hopkins', 'J', '1945-12-02', 76, 'MelissaJHopkins@jourrapide.com', 2, 3, NULL, 2, NULL, NULL),
(43, 'Carolyn', 'Knox', 'D', '1937-02-18', 85, 'CarolynDKnox@dayrep.com', 2, 2, NULL, 3, NULL, NULL),
(44, 'Jesse', 'Higgins', 'E', '1962-06-25', 59, 'JesseEHiggins@rhyta.com', 1, 4, NULL, 4, NULL, NULL),
(45, 'David', 'Munoz', 'R', '1989-09-17', 32, 'DavidRMunoz@armyspy.com', 1, 4, NULL, 4, NULL, NULL),
(46, 'Forest', 'Lane', 'C', '1961-11-14', 60, 'ForestCLane@armyspy.com', 1, 1, NULL, 5, NULL, NULL),
(47, 'Patricia', 'Lopez', 'B', '1991-06-07', 30, 'PatriciaBLopez@teleworm.us', 2, 1, NULL, 5, NULL, NULL),
(48, 'Chrystal', 'Sims', 'R', '1981-05-24', 40, 'ChrystalRSims@jourrapide.com', 2, 1, NULL, 4, NULL, NULL),
(49, 'Stuart', 'Sullivan', 'I', '1974-04-24', 47, 'StuartISullivan@jourrapide.com', 1, 2, NULL, 1, NULL, NULL),
(50, 'Randall', 'Kleist', 'J', '1949-11-12', 72, 'RandallJKleist@teleworm.us', 1, 5, NULL, 4, NULL, NULL),
(51, 'Jennifer', 'McFadden', 'S', '1976-08-29', 45, 'JenniferSMcFadden@armyspy.com', 2, 3, NULL, 4, NULL, NULL),
(52, 'James', 'Shelton', 'K', '1988-12-11', 33, 'JamesKShelton@teleworm.us', 1, 4, NULL, 1, NULL, NULL),
(53, 'Daniel', 'Hewlett', 'R', '1950-12-24', 71, 'DanielRHewlett@teleworm.us', 1, 5, NULL, 4, NULL, NULL),
(54, 'Xavier', 'Correll', 'W', '1994-10-11', 27, 'XavierWCorrell@rhyta.com', 1, 1, NULL, 5, NULL, NULL),
(55, 'Ralph', 'Nelson', 'A', '1950-03-03', 72, 'RalphANelson@teleworm.us', 1, 1, NULL, 3, NULL, NULL),
(56, 'Julio', 'Soto', 'A', '2000-08-29', 21, 'JulioASoto@armyspy.com', 1, 5, NULL, 3, NULL, NULL),
(57, 'Elizabeth', 'Thompson', 'C', '1942-09-17', 79, 'ElizabethCThompson@teleworm.us', 2, 1, NULL, 5, NULL, NULL),
(58, 'Nancy', 'Kelly', 'R', '1975-08-24', 46, 'NancyRKelly@jourrapide.com', 2, 4, NULL, 5, NULL, NULL),
(59, 'Allan', 'Bernard', 'D', '1996-02-14', 26, 'AllanDBernard@jourrapide.com', 1, 4, NULL, 5, NULL, NULL),
(60, 'Larry', 'Stevenson', 'S', '1939-09-30', 82, 'LarrySStevenson@dayrep.com', 1, 4, NULL, 5, NULL, NULL),
(61, 'Louise', 'Cates', 'E', '1980-11-27', 41, 'LouiseECates@rhyta.com', 2, 3, NULL, 5, NULL, NULL),
(62, 'Kenneth', 'Myres', 'H', '1942-06-03', 79, 'KennethHMyres@teleworm.us', 1, 2, NULL, 4, NULL, NULL),
(63, 'Marlene', 'Summers', 'A', '1973-03-26', 49, 'MarleneASummers@armyspy.com', 2, 5, NULL, 5, NULL, NULL),
(64, 'Chasity', 'Alford', 'G', '1985-12-21', 36, 'ChasityGAlford@jourrapide.com', 2, 4, NULL, 2, NULL, NULL),
(65, 'Evelyn', 'Parker', 'S', '1959-05-10', 62, 'EvelynSParker@teleworm.us', 2, 4, NULL, 5, NULL, NULL),
(66, 'Glory', 'Parrish', 'R', '1994-09-25', 27, 'GloryRParrish@rhyta.com', 2, 3, NULL, 2, NULL, NULL),
(67, 'Shirley', 'Demaree', 'R', '1973-06-06', 48, 'ShirleyRDemaree@jourrapide.com', 2, 4, NULL, 1, NULL, NULL),
(68, 'Mellissa', 'Pratt', 'R', '1957-07-15', 64, 'MellissaRPratt@armyspy.com', 2, 5, NULL, 2, NULL, NULL),
(69, 'Carol', 'Feldmann', 'C', '1997-10-04', 24, 'CarolCFeldmann@armyspy.com', 2, 3, NULL, 5, NULL, NULL),
(70, 'Juan', 'McMurray', 'C', '1968-10-26', 53, 'JuanCMcMurray@jourrapide.com', 1, 3, NULL, 4, NULL, NULL),
(71, 'Dotty', 'Pillow', 'M', '1955-03-21', 67, 'DottyMPillow@dayrep.com', 2, 2, NULL, 5, NULL, NULL),
(72, 'Jodi', 'Bishop', 'W', '1975-05-24', 46, 'JodiWBishop@armyspy.com', 2, 3, NULL, 4, NULL, NULL),
(73, 'Jose', 'Vezina', 'M', '1960-06-29', 61, 'JoseMVezina@dayrep.com', 1, 1, NULL, 2, NULL, NULL),
(74, 'Jeff', 'Thompson', 'V', '1966-12-07', 55, 'JeffVThompson@jourrapide.com', 1, 1, NULL, 1, NULL, NULL),
(75, 'Marya', 'Branch', 'J', '1993-12-25', 28, 'MaryaJBranch@dayrep.com', 2, 1, NULL, 2, NULL, NULL),
(76, 'Patricia', 'Jones', 'R', '1936-12-30', 85, 'PatriciaRJones@dayrep.com', 2, 5, NULL, 5, NULL, NULL),
(77, 'Christopher', 'Werner', 'K', '1942-06-16', 79, 'ChristopherKWerner@rhyta.com', 1, 2, NULL, 2, NULL, NULL),
(78, 'John', 'Velazquez', 'J', '1996-06-10', 25, 'JohnJVelazquez@armyspy.com', 1, 5, NULL, 1, NULL, NULL),
(79, 'Elmer', 'Davidson', 'J', '1989-06-16', 32, 'ElmerJDavidson@dayrep.com', 1, 1, NULL, 5, NULL, NULL),
(80, 'Lakesha', 'Greene', 'R', '1980-02-14', 42, 'LakeshaRGreene@teleworm.us', 2, 2, NULL, 4, NULL, NULL),
(81, 'James', 'Bess', 'A', '1977-05-08', 44, 'JamesABess@teleworm.us', 1, 2, NULL, 1, NULL, NULL),
(82, 'Jeramy', 'Richardson', 'H', '1951-12-19', 70, 'JeramyHRichardson@dayrep.com', 1, 3, NULL, 3, NULL, NULL),
(83, 'Jerome', 'Jimenez', 'C', '1998-12-28', 23, 'JeromeCJimenez@rhyta.com', 1, 1, NULL, 4, NULL, NULL),
(84, 'Barbara', 'Martinez', 'S', '1953-12-06', 68, 'BarbaraSMartinez@dayrep.com', 2, 4, NULL, 1, NULL, NULL),
(85, 'Myra', 'Rommel', 'J', '1993-07-04', 28, 'MyraJRommel@rhyta.com', 2, 4, NULL, 3, NULL, NULL),
(86, 'Michael', 'Brewton', 'M', '1954-07-26', 67, 'MichaelMBrewton@armyspy.com', 1, 4, NULL, 4, NULL, NULL),
(87, 'Jerald', 'Smith', 'J', '1950-01-25', 72, 'JeraldJSmith@jourrapide.com', 1, 1, NULL, 1, NULL, NULL),
(88, 'Rose', 'Bertram', 'E', '1962-03-06', 60, 'RoseEBertram@dayrep.com', 2, 1, NULL, 4, NULL, NULL),
(89, 'Scott', 'Vachon', 'S', '1954-06-14', 67, 'ScottSVachon@dayrep.com', 1, 2, NULL, 1, NULL, NULL),
(90, 'Princess', 'Rathbone', 'R', '1965-06-02', 56, 'PrincessRRathbone@jourrapide.com', 2, 5, NULL, 1, NULL, NULL),
(91, 'Melanie', '2oung', 'D', '1991-06-10', 30, 'MelanieD2oung@dayrep.com', 2, 1, NULL, 2, NULL, NULL),
(92, 'Paul', 'Dipaolo', 'J', '1984-03-15', 38, 'PaulJDipaolo@armyspy.com', 1, 1, NULL, 2, NULL, NULL),
(93, 'John', 'Galbraith', 'A', '1982-12-12', 39, 'JohnAGalbraith@dayrep.com', 1, 1, NULL, 3, NULL, NULL),
(94, 'Jewel', 'Mumford', 'D', '1968-09-09', 53, 'JewelDMumford@rhyta.com', 2, 1, NULL, 4, NULL, NULL),
(95, 'Marlin', 'Reynolds', 'K', '1971-12-29', 50, 'MarlinKReynolds@dayrep.com', 1, 2, NULL, 1, NULL, NULL),
(96, 'Dennis', 'Tran', 'A', '1999-07-30', 22, 'DennisATran@teleworm.us', 1, 5, NULL, 4, NULL, NULL),
(97, 'Dennis', 'Jones', 'L', '1950-08-19', 71, 'DennisLJones@rhyta.com', 1, 3, NULL, 5, NULL, NULL),
(98, 'David', 'Guess', 'S', '1964-06-17', 57, 'DavidSGuess@teleworm.us', 1, 2, NULL, 1, NULL, NULL),
(99, 'Maria', 'Williams', 'D', '1988-11-28', 33, 'MariaDWilliams@jourrapide.com', 2, 2, NULL, 1, NULL, NULL),
(100, 'Renee', 'Guthrie', 'J', '1987-09-03', 34, 'ReneeJGuthrie@armyspy.com', 2, 1, NULL, 5, NULL, NULL);


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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
