BEGIN;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE SEQUENCE ar_seq;

CREATE TABLE ar (
  id int NOT NULL primary key DEFAULT NEXTVAL ('ar_seq'),
  sutiid int NOT NULL,
  ertek int NOT NULL,
  egyseg varchar(25) NOT NULL
) ;

--
-- SQLINES DEMO *** k kiíratása `ar`
--

-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ar (id, sutiid, ertek, egyseg) VALUES
(1, 32, 500, 'db'),
(2, 76, 10900, '16 szeletes'),
(3, 106, 4300, '8 szeletes'),
(4, 88, 300, 'db'),
(5, 116, 16200, '24 szeletes'),
(6, 135, 250, 'db'),
(7, 127, 4400, 'kg'),
(8, 50, 13400, '24 szeletes'),
(9, 70, 700, 'db'),
(10, 31, 5200, 'kg'),
(11, 96, 3300, 'kg ​​'),
(12, 116, 5700, '8 szeletes'),
(13, 22, 9000, '16 szeletes'),
(14, 138, 4400, 'kg'),
(15, 112, 2900, 'kg'),
(16, 58, 3200, 'kg'),
(17, 98, 10400, '16 szeletes'),
(18, 75, 2100, 'rúd'),
(19, 24, 11400, '24 szeletes'),
(20, 62, 600, 'db'),
(21, 61, 8400, '16 szeletes'),
(22, 105, 10900, '16 szeletes'),
(23, 20, 4700, '8 szeletes'),
(24, 123, 1800, 'rúd'),
(25, 60, 8200, '16 szeletes'),
(26, 24, 3900, '8 szeletes'),
(27, 38, 4300, '8 szeletes'),
(28, 126, 2100, 'rúd'),
(29, 64, 750, 'db'),
(30, 109, 300, 'db'),
(31, 66, 350, 'db'),
(32, 89, 13200, '24 szeletes'),
(33, 98, 15400, '24 szeletes'),
(34, 24, 7400, '16 szeletes'),
(35, 76, 5700, '8 szeletes'),
(36, 131, 250, 'db'),
(37, 50, 9200, '16 szeletes'),
(38, 55, 600, 'db'),
(39, 87, 3400, 'kg'),
(40, 4, 3500, 'koszorú'),
(41, 8, 400, 'db'),
(42, 100, 450, 'db'),
(43, 129, 5300, '8 szeletes'),
(44, 35, 4700, '8 szeletes'),
(45, 47, 490, 'db'),
(46, 89, 9000, '16 szeletes'),
(47, 111, 3300, 'kg'),
(48, 94, 400, 'db'),
(49, 42, 16200, '24 szeletes'),
(50, 80, 350, 'db'),
(51, 134, 4700, '8 szeletes'),
(52, 128, 4000, 'kg'),
(53, 90, 5200, 'kg'),
(54, 39, 13200, '24 szeletes'),
(55, 71, 7400, '16 szeletes'),
(56, 17, 3400, 'kg'),
(57, 68, 18400, '24 szeletes'),
(58, 81, 8200, '16 szeletes'),
(59, 134, 9000, '16 szeletes'),
(60, 108, 11400, '24 szeletes'),
(61, 97, 5200, 'kg'),
(62, 81, 4300, '8 szeletes'),
(63, 44, 3800, 'kg'),
(64, 72, 5700, '8 szeletes'),
(65, 49, 250, 'db'),
(66, 48, 350, 'db'),
(67, 14, 350, 'db'),
(68, 107, 12200, '24 szeletes'),
(69, 27, 15400, '24 szeletes'),
(70, 106, 12100, '24 szeletes'),
(71, 74, 7400, '16 szeletes'),
(72, 40, 5700, '8 szeletes'),
(73, 133, 450, 'db'),
(74, 77, 490, 'db'),
(75, 22, 13200, '24 szeletes'),
(76, 119, 9000, '16 szeletes'),
(77, 120, 3400, 'kg'),
(78, 105, 5700, '8 szeletes'),
(79, 119, 13200, '24 szeletes'),
(80, 99, 4600, 'kg'),
(81, 61, 12200, '24 szeletes'),
(82, 93, 4200, 'kg'),
(83, 59, 13200, '24 szeletes'),
(84, 82, 5700, '8 szeletes'),
(85, 56, 600, 'db'),
(86, 23, 550, 'db'),
(87, 81, 12100, '24 szeletes'),
(88, 67, 500, 'db'),
(89, 68, 6400, '8 szeletes'),
(90, 38, 8200, '16 szeletes'),
(91, 139, 4700, '8 szeletes'),
(92, 30, 530, 'db'),
(93, 95, 16200, '24 szeletes'),
(94, 101, 400, 'db'),
(95, 65, 400, 'db'),
(96, 10, 12100, '24 szeletes'),
(97, 59, 9000, '16 szeletes'),
(98, 119, 4700, '8 szeletes'),
(99, 82, 16200, '24 szeletes'),
(100, 3, 3300, 'kg'),
(101, 104, 4200, 'kg'),
(102, 110, 530, 'db'),
(103, 1, 300, 'db'),
(104, 25, 8200, '16 szeletes'),
(105, 40, 16200, '24 szeletes'),
(106, 36, 490, 'db'),
(107, 124, 3900, '8 szeletes'),
(108, 16, 530, 'db'),
(109, 29, 3500, 'koszorú'),
(110, 116, 10900, '16 szeletes'),
(111, 71, 3900, '8 szeletes'),
(112, 2, 500, 'db'),
(113, 71, 11400, '24 szeletes'),
(114, 10, 4300, '8 szeletes'),
(115, 108, 3900, '8 szeletes'),
(116, 69, 450, 'db'),
(117, 39, 9000, '16 szeletes'),
(118, 25, 4300, '8 szeletes'),
(119, 107, 8400, '16 szeletes'),
(120, 5, 9000, '12 szeletes'),
(121, 106, 8200, '16 szeletes'),
(122, 114, 450, 'db'),
(123, 26, 400, 'db'),
(124, 82, 10900, '16 szeletes'),
(125, 28, 8200, '16 szeletes'),
(126, 42, 10900, '16 szeletes'),
(127, 35, 13200, '24 szeletes'),
(128, 74, 3900, '8 szeletes'),
(129, 19, 450, 'db'),
(130, 25, 12100, '24 szeletes'),
(131, 125, 5700, '8 szeletes'),
(132, 95, 5700, '8 szeletes'),
(133, 34, 1700, 'rúd'),
(134, 121, 530, 'db'),
(135, 76, 16200, '24 szeletes'),
(136, 13, 400, 'db'),
(137, 60, 12100, '24 szeletes'),
(138, 33, 350, 'db'),
(139, 132, 530, 'db'),
(140, 117, 9900, '16 szeletes'),
(141, 27, 10400, '16 szeletes'),
(142, 18, 490, 'db'),
(143, 124, 7400, '16 szeletes'),
(144, 122, 5200, 'kg'),
(145, 59, 4700, '8 szeletes'),
(146, 124, 11400, '24 szeletes'),
(147, 134, 13200, '24 szeletes'),
(148, 45, 450, 'db'),
(149, 63, 350, 'db'),
(150, 6, 3900, '8 szeletes'),
(151, 28, 4300, '8 szeletes'),
(152, 37, 3900, '8 szeletes'),
(153, 52, 5000, 'kg'),
(154, 61, 4500, '8 szeletes'),
(155, 86, 600, 'db'),
(156, 6, 7400, '16 szeletes'),
(157, 37, 7400, '16 szeletes'),
(158, 11, 490, 'db'),
(159, 108, 7400, '16 szeletes'),
(160, 35, 9000, '16 szeletes'),
(161, 107, 4500, '8 szeletes'),
(162, 6, 11400, '24 szeletes'),
(163, 79, 4000, 'kg'),
(164, 60, 4300, '8 szeletes'),
(165, 21, 5700, '8 szeletes'),
(166, 28, 12100, '24 szeletes'),
(167, 15, 5000, 'kg'),
(168, 21, 5700, '8 szeletes'),
(169, 37, 11400, '24 szeletes'),
(170, 74, 11400, '24 szeletes'),
(171, 103, 650, 'db'),
(172, 43, 4200, 'kg '),
(173, 12, 3400, 'kg'),
(174, 27, 5400, '8 szeletes'),
(175, 7, 490, 'db'),
(176, 84, 5200, 'kg'),
(177, 115, 3600, 'kg'),
(178, 51, 4000, 'kg'),
(179, 118, 450, 'db'),
(180, 41, 530, 'db'),
(181, 135, 400, 'db'),
(182, 73, 5400, '8 szeletes'),
(183, 10, 8200, '16 szeletes'),
(184, 98, 5400, '8 szeletes'),
(185, 113, 850, 'db'),
(186, 130, 350, 'db'),
(187, 39, 4700, '8 szeletes'),
(188, 136, 3400, 'kg'),
(189, 83, 650, 'db'),
(190, 91, 800, '20 dkg'),
(191, 46, 5200, 'kg'),
(192, 102, 330, 'db'),
(193, 95, 10900, '16 szeletes'),
(194, 54, 580, 'db'),
(195, 57, 530, 'db'),
(196, 22, 4700, '8 szeletes'),
(197, 92, 450, 'db'),
(198, 68, 12400, '16 szeletes'),
(199, 42, 5700, '8 szeletes'),
(200, 40, 10900, '16 szeletes'),
(201, 9, 450, 'db'),
(202, 78, 4200, 'kg'),
(203, 85, 500, 'db'),
(204, 137, 600, 'db'),
(205, 50, 4900, '8 szeletes'),
(206, 38, 12100, '24 szeletes'),
(207, 53, 4200, 'kg'),
(208, 89, 4700, '8 szeletes');

-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** ehhez a táblához `felhasznalo`
--

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE SEQUENCE felhasznalo_seq;

CREATE TABLE felhasznalo (
  id int NOT NULL primary key DEFAULT NEXTVAL ('felhasznalo_seq'),
  felhasznalonev varchar(25) NOT NULL,
  jelszo varchar(100) NOT NULL
) ;

--
-- SQLINES DEMO *** k kiíratása `felhasznalo`
--

-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO felhasznalo (id, felhasznalonev, jelszo) VALUES
(1, 'admin', '$2a$10$VMNCX7vyZjvW/6.CNsDnQuM.rAZ2JstRFoRVyEDI6Ekg1kOAhsw3y'),
(2, 'pyx', '$2a$10$PE83QqmkcWMY4qejmgeB7.EQHPvMuNaYnBRAv34Op9DvEBABMCleu'),
(9, 'pix', '$2a$10$Bqii1AhnA3BeFDAaynv53u4qnHJg583qlaQuGlxl1Pw99wSpOZOCu'),
(10, 'pix a', '$2a$10$lEKwDiK5vbMsgpLkao81Ae8psfKseWYKTc0GmGtn2R2c1OgUKdF0y');

-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** ehhez a táblához `hibernate_sequence`
--

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE hibernate_sequence (
  next_val bigint DEFAULT NULL
) ;

--
-- SQLINES DEMO *** k kiíratása `hibernate_sequence`
--

-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO hibernate_sequence (next_val) VALUES
(1);

-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** ehhez a táblához `roles`
--

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE SEQUENCE roles_seq;

CREATE TABLE roles (
  id int NOT NULL primary key DEFAULT NEXTVAL ('roles_seq'),
  name varchar(8) NOT NULL
) ;

--
-- SQLINES DEMO *** k kiíratása `roles`
--

-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO roles (id, name) VALUES
(1, 'ADMIN'),
(2, 'USER'),
(3, 'LATOGATO');

-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** ehhez a táblához `suti`
--

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE SEQUENCE suti_seq;

CREATE TABLE suti (
  id int NOT NULL primary key DEFAULT NEXTVAL ('suti_seq'),
  nev varchar(50) NOT NULL,
  tipus varchar(20) NOT NULL,
  dijazott smallint NOT NULL,
  sutiid int DEFAULT NULL
) ;

--
-- SQLINES DEMO *** k kiíratása `suti`
--

-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO suti (id, nev, tipus, dijazott, sutiid) VALUES
(1, 'Süni', 'vegyes', 0, NULL),
(2, 'Gesztenyealagút', 'vegyes', 0, NULL),
(3, 'Sajtos pogácsa', 'sós teasütemény', 0, NULL),
(4, 'Dios-makosos', 'bejgli', 0, NULL),
(5, 'Sajttorta (málnás)', 'torta', 0, NULL),
(6, 'Citrom', 'torta', 0, NULL),
(7, 'Eszterházy', 'tortaszelet', 0, NULL),
(8, 'Rákóczi-túrós', 'pite', 0, NULL),
(9, 'Meggyes kocka', 'tejszínes sütemény', 0, NULL),
(10, 'Legényfogó', 'torta', -1, NULL),
(11, 'Alpesi karamell', 'tortaszelet', 0, NULL),
(12, 'Kókuszcsók', 'édes teasütemény', 0, NULL),
(13, 'Habos mákos', 'pite', 0, NULL),
(14, 'Szilvás', 'pite', 0, NULL),
(15, 'Juhtúrós párna', 'sós teasütemény', 0, NULL),
(16, 'Mákos guba', 'tortaszelet', 0, NULL),
(17, 'Néró', 'édes teasütemény', 0, NULL),
(18, 'Sacher', 'tortaszelet', 0, NULL),
(19, 'Citrom', 'tortaszelet', 0, NULL),
(20, 'Ribizlihabos-almás réteges', 'különleges torta', -1, NULL),
(21, 'Három kívánság', 'torta', -1, NULL),
(22, 'Dobos', 'torta', 0, NULL),
(23, 'Epres mascarpone', 'tortaszelet', 0, NULL),
(24, 'Csokoládémousse', 'torta', 0, NULL),
(25, 'Oroszkrém', 'torta', 0, NULL),
(26, 'Medvetalp', 'vegyes', 0, NULL),
(27, 'Trüffel', 'torta', 0, NULL),
(28, 'Tejszínes gyümölcsös (meggy)', 'torta', 0, NULL),
(29, 'Mákos-szilvalekváros', 'bejgli', 0, NULL),
(30, 'Ribizlihabos-﻿almá﻿s réteges tortaszelet', 'tortaszelet', 0, NULL),
(31, 'Marcipános vágott', 'édes teasütemény', 0, NULL),
(32, 'Indiáner', 'vegyes', 0, NULL),
(33, 'Meggyes', 'pite', 0, NULL),
(34, 'Mákos', 'bejgli', 0, NULL),
(35, 'Sós karamella', 'torta', 0, NULL),
(36, 'Legényfogó', 'tortaszelet', 0, NULL),
(37, 'Rigó Jancsi', 'torta', 0, NULL),
(38, 'Tejszínes gyümölcsös (erdei gyümölcs)', 'torta', 0, NULL),
(39, 'Ez+Az (csokoládé és gesztenye)', 'torta', 0, NULL),
(40, 'Málnás mascarpone', 'torta', 0, NULL),
(41, 'Dobos', 'tortaszelet', 0, NULL),
(42, 'Ferrero', 'torta', 0, NULL),
(43, 'Vegyes házi pite falatok', 'pite', 0, NULL),
(44, 'Ökörszem', 'édes teasütemény', 0, NULL),
(45, 'Danubius kocka', 'tejszínes sütemény', 0, NULL),
(46, 'Sajtkrémmel töltött fánkocska', 'sós teasütemény', 0, NULL),
(47, 'Túrókrém gyümölccsel díszítve', 'tortaszelet', 0, NULL),
(48, 'Almás', 'pite', 0, NULL),
(49, 'Mignon', 'vegyes', 0, NULL),
(50, 'Csokoládémousse fényes csokoládéval', 'torta', 0, NULL),
(51, 'Vágott sós (sós omlós)', 'sós teasütemény', 0, NULL),
(52, 'Nagyi sós', 'sós teasütemény', 0, NULL),
(53, 'Vegyes sós', 'sós teasütemény', 0, NULL),
(54, 'Somlói', 'tortaszelet', 0, NULL),
(55, 'Tiramisu', 'tortaszelet', 0, NULL),
(56, 'Hegyvidék', 'tortaszelet', 0, NULL),
(57, 'Szedres csokoládé', 'tortaszelet', 0, NULL),
(58, 'Pogácsák vegyesen', 'sós teasütemény', 0, NULL),
(59, 'Lúdláb', 'torta', 0, NULL),
(60, 'Sacher', 'torta', 0, NULL),
(61, 'Eszterházy', 'torta', 0, NULL),
(62, 'Zalavári gesztenye', 'tortaszelet', 0, NULL),
(63, 'Gesztenyegolyó', 'vegyes', 0, NULL),
(64, 'Pisztáciás-málnás mascarpone', 'tortaszelet', 0, NULL),
(65, 'Habos mákos', 'vegyes', 0, NULL),
(66, 'Franciakrémes', 'krémes', 0, NULL),
(67, 'Gesztenye kocka', 'tejszínes sütemény', 0, NULL),
(68, 'Pisztáciás-málnás mascarpone', 'torta', 0, NULL),
(69, 'Málnás kocka', 'tejszínes sütemény', 0, NULL),
(70, 'Sajttorta (málnás)', 'tortaszelet', 0, NULL),
(71, 'Túrókrém gyümölccsel', 'torta', 0, NULL),
(72, 'Csokis kaland', 'különleges torta', -1, NULL),
(73, 'Somlói', 'torta', 0, NULL),
(74, 'Palermo', 'torta', 0, NULL),
(75, 'Szilvalekváros', 'bejgli', 0, NULL),
(76, 'Ünnepi diótorta grillázzsal', 'torta', 0, NULL),
(77, 'Oroszkrém', 'tortaszelet', 0, NULL),
(78, 'Mini zserbó', 'édes teasütemény', 0, NULL),
(79, 'Sajtos masni', 'sós teasütemény', 0, NULL),
(80, 'Zserbó', 'pite', 0, NULL),
(81, 'Tejszínes gyümölcsös (málna)', 'torta', 0, NULL),
(82, 'Marcipános csokoládé', 'torta', 0, NULL),
(83, 'Csokis kaland', 'tortaszelet', 0, NULL),
(84, 'Marcipán tekercs', 'édes teasütemény', 0, NULL),
(85, 'Képviselőfánk', 'vegyes', 0, NULL),
(86, 'Epres omlett', 'vegyes', 0, NULL),
(87, 'Mini linzer', 'édes teasütemény', 0, NULL),
(88, 'Linzerkarika', 'vegyes', 0, NULL),
(89, 'Szedres csokoládé', 'torta', 0, NULL),
(90, 'Narancsív', 'édes teasütemény', 0, NULL),
(91, 'Gesztenyepüré', 'vegyes', 0, NULL),
(92, 'Palermo', 'tejszínes sütemény', 0, NULL),
(93, 'Csokis néró', 'édes teasütemény', 0, NULL),
(94, 'Flódni', 'pite', 0, NULL),
(95, 'Mézeskalács', 'torta', 0, NULL),
(96, 'Olívás pogácsa', 'sós teasütemény', 0, NULL),
(97, 'Florentin', 'édes teasütemény', 0, NULL),
(98, 'Tiramisu', 'torta', 0, NULL),
(99, 'Zoli kedvence (vágott édes tea)', 'édes teasütemény', 0, NULL),
(100, 'Erdei gyümölcs kocka', 'tejszínes sütemény', 0, NULL),
(101, 'Rákóczi-túrós', 'tortaszelet', 0, NULL),
(102, 'Mézeskrémes', 'pite', 0, NULL),
(103, 'Trüffel', 'tortaszelet', 0, NULL),
(104, 'Szilvás papucs', 'édes teasütemény', 0, NULL),
(105, 'Zalavári gesztenye', 'torta', -1, NULL),
(106, 'Danubius', 'torta', 0, NULL),
(107, 'Alpesi karamell', 'torta', 0, NULL),
(108, 'Puncs', 'torta', 0, NULL),
(109, 'Gesztenye szív', 'vegyes', 0, NULL),
(110, 'Ez+Az (csokoládé és gesztenye)', 'tortaszelet', 0, NULL),
(111, 'Tökmagos félhold', 'sós teasütemény', 0, NULL),
(112, 'Burgonyás pogácsa', 'sós teasütemény', 0, NULL),
(113, 'Somlói galuska', 'vegyes', 0, NULL),
(114, 'Puncs', 'tortaszelet', 0, NULL),
(115, 'Lekváros vágott', 'édes teasütemény', 0, NULL),
(116, 'Oreo', 'torta', 0, NULL),
(117, 'Vintage', 'torta', 0, NULL),
(118, 'Rigó Jancsi', 'tejszínes sütemény', 0, NULL),
(119, 'Feketeerdő', 'torta', 0, NULL),
(120, 'Kókuszos vágott', 'édes teasütemény', 0, NULL),
(121, 'Feketeerdő', 'tortaszelet', 0, NULL),
(122, 'Moscauer', 'édes teasütemény', 0, NULL),
(123, 'Diós', 'bejgli', 0, NULL),
(124, 'Rákóczi-túrós', 'torta', 0, NULL),
(125, 'Három kívánság', 'különleges torta', 0, NULL),
(126, 'Gesztenyés-karamellás', 'bejgli', 0, NULL),
(127, 'Gesztenyés szív', 'édes teasütemény', 0, NULL),
(128, 'Ropi', 'sós teasütemény', 0, NULL),
(129, 'Paleolit étcsokoládé', 'különleges torta', 0, NULL),
(130, 'Túrós', 'pite', 0, NULL),
(131, 'Ischler', 'vegyes', 0, NULL),
(132, 'Lúdláb', 'tortaszelet', 0, NULL),
(133, 'Csokoládémousse', 'tortaszelet', 0, NULL),
(134, 'Dió', 'torta', 0, NULL),
(135, 'Krémes', 'krémes', 0, NULL),
(136, 'Mini ischler', 'édes teasütemény', 0, NULL),
(137, 'Paleolit étcsokoládé', 'tortaszelet', 0, NULL),
(138, 'Tejfölös túrós hajtogatott', 'sós teasütemény', 0, NULL),
(139, 'Mákos guba', 'torta', 0, NULL);

-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** ehhez a táblához `tartalom`
--

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE SEQUENCE tartalom_seq;

CREATE TABLE tartalom (
  id int NOT null primary key DEFAULT NEXTVAL ('tartalom_seq'),
  sutiid int NOT NULL,
  mentes varchar(2) NOT NULL
) ;

--
-- SQLINES DEMO *** k kiíratása `tartalom`
--

-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO tartalom (id, sutiid, mentes) VALUES
(1, 26, 'G'),
(2, 37, 'L'),
(3, 83, 'HC'),
(4, 91, 'G'),
(5, 137, 'G'),
(6, 60, 'Te'),
(7, 129, 'HC'),
(8, 122, 'To'),
(9, 90, 'G'),
(10, 26, 'To'),
(11, 94, 'L'),
(12, 46, 'É'),
(13, 72, 'HC'),
(14, 114, 'Te'),
(15, 63, 'To'),
(16, 12, 'Te'),
(17, 128, 'É'),
(18, 51, 'É'),
(19, 109, 'To'),
(20, 109, 'G'),
(21, 97, 'G'),
(22, 97, 'To'),
(23, 24, 'L'),
(24, 91, 'To'),
(25, 137, 'L'),
(26, 84, 'G'),
(27, 30, 'HC'),
(28, 108, 'Te'),
(29, 84, 'To'),
(30, 6, 'L'),
(31, 108, 'L'),
(32, 12, 'L'),
(33, 79, 'É'),
(34, 72, 'G'),
(35, 118, 'L'),
(36, 60, 'L'),
(37, 52, 'É'),
(38, 137, 'HC'),
(39, 114, 'L'),
(40, 90, 'To'),
(41, 20, 'HC'),
(42, 63, 'G'),
(43, 129, 'G'),
(44, 129, 'L'),
(45, 15, 'É');

-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** ehhez a táblához `user_role`
--

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE SEQUENCE user_role_seq;

CREATE TABLE user_role (
  user_id int NOT NULL,
  role_id int NOT NULL
) ;

--
-- SQLINES DEMO *** k kiíratása `user_role`
--

-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO user_role (user_id, role_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(9, 3),
(10, 3);

-- SQLINES DEMO *** ---------------------------------------

--
-- SQLINES DEMO *** ehhez a táblához `uzenetek`
--

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE SEQUENCE uzenetek_seq;

CREATE TABLE uzenetek (
  id int NOT NULL primary key DEFAULT NEXTVAL ('uzenetek_seq'),
  sender varchar(40) NOT NULL,
  content varchar(255) NOT NULL,
  kuldes_ideje varchar(19) NOT NULL
) ;

--
-- SQLINES DEMO *** k kiíratása `uzenetek`
--

-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO uzenetek (id, sender, content, kuldes_ideje) VALUES
(31, 'Vendég', 't', '2022-11-27 02:04:24'),
(32, 'pyx', 'sui', '2022-11-27 02:04:35');

COMMIT;