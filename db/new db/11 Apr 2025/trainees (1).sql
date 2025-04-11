-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2025 at 04:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trainees`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `office` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `office`, `email`, `password`, `date`, `is_admin`) VALUES
(1, 'C, CGETDC', 'c,cgetdc@cg.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '0000-00-00 00:00:00', 1),
(2, 'OIC PCG', 'oicpcg@cg.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '0000-00-00 00:00:00', 2),
(3, 'DC, CGETDC', 'dc,cgetdc@cg.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '2024-04-16 03:28:28', 2),
(4, 'CGETDC-Admin', 'admin@cg.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '2025-03-21 00:56:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cg_district`
--

CREATE TABLE `cg_district` (
  `id` int(11) NOT NULL,
  `district` varchar(99) NOT NULL,
  `acro` varchar(99) NOT NULL,
  `commander` varchar(99) NOT NULL,
  `address` varchar(99) NOT NULL,
  `email` varchar(99) NOT NULL,
  `contact` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cg_district`
--

INSERT INTO `cg_district` (`id`, `district`, `acro`, `commander`, `address`, `email`, `contact`) VALUES
(1, 'COAST GUARD DISTRICT PALAWAN', 'CGDPAL', 'CG CAPT DENNIS REM C LABAY', 'Port Area, Brgy. Liwanag Port Area, Puerto Prinsesa City, Palawan', 'cgdpal@coastguard.gov.ph', '0975-116-0875'),
(2, 'COAST GUARD DISTRICT NATIONAL CAPITAL REGION - CENTRAL LUZON', 'CGDNCR-CL', 'CG COMMO ARNALDO M LIM', 'Muelle Dela Industria Farola Compound, Binondo, Manila, Metro Manila', 'ncrcldac@gmail.com', '0956-162-4587'),
(3, 'COAST GUARD DISTRICT BICOL', 'CGDBCL', 'CG COMMO PHILIPPS Y SORIA', 'Regional Government Center, Rawis, Legaspi City, Albay', 'cgd.bicol@yahoo.com ', '0977-612-1237 / 0929-524-2099'),
(4, 'COAST GUARD DISTRICT BANGSAMORO AUTONOMOUS REGION IN MUSLIM MINDANAO', 'CGDBARMM', 'CG CAPT CHRISTOPHER DP AURO (DSc)', 'Polloc Freeport & Ecozone, Polloc, Parang, Maguindanao', 'cgs_cotabato@yahoo.com.ph', '0917-153-6739 / 0930-188-9389'),
(5, 'COAST GUARD DISTRICT NORTHERN MINDANAO', 'CGDNM', 'CG COMMO VINCENT  BINGBONG D FIESTA ', '1280 Corrales Extension, Macabalan, Cagayan De Oro City', 'cgdnm.comcen@gmail.com ', '0916-689-3261'),
(6, 'Coast Guard District Southeastern Mindanao', 'CGDSEM', 'CG COMMO REJARD V MARFE', 'Sasa Wharf KM 10, Davao City', 'cgdsem@coastguard.gov.ph', '0955-508-3665 / 0920-538-7037'),
(7, 'COAST GUARD DISTRICT NORTHEASTERN LUZON', 'CGDNELZN', 'CG CAPT LUDOVICO D LIBRILLA JR', 'No. 3 Turingan Bldg., Campos St., Caritan Centro, Tuguegarao City, Cagayan', 'cgdnelzn.operations@gmail.com', '0997-163-2854'),
(8, 'COAST GUARD DISTRICT NORTHWESTERN LUZON', 'CGDNWLZN', 'CG CAPT IVAN E ROLDAN', 'Poro Point, San Fernando City, La Union', 'cgdnwlzn3@gmail.com', '0945-746-3430'),
(9, 'COAST GUARD DISTRICT WESTERN VISAYAS', 'CGDWV', 'CG CAPT WENIEL A AZCUNA', 'Zone 2, Bo. Obrero, Iloilo City', 'cgdwv@coastguard.gov.ph', '0931-713-7123 / 0945-687-5254'),
(10, 'COAST GUARD DISTRICT EASTERN VISAYAS', 'CGDEV', 'CG COMMO ROMEO P PULIDO JR', 'Ebony Street, Port Area, Ormoc City, Leyte', 'cgdev0518@gmail.com', '0916-232-7414'),
(11, 'COAST GUARD DISTRICT CENTRAL VISAYAS', 'CGDCV', '𝗖𝗚 𝗖𝗢𝗠𝗠𝗢𝗗𝗢𝗥𝗘 𝗖𝗛𝗥𝗜𝗦𝗧𝗢𝗣𝗛𝗘𝗥 𝗠 𝗠𝗘𝗡𝗜𝗔𝗗𝗢', 'Pier 3, Arellano Boulevard, Cebu City 6000', 'Coastguarddistrict.cv@coastguard.gov.ph', '0966-780-5606 / (032) 402-0489'),
(12, 'COAST GUARD DISTRICT SOUTHERN TAGALOG', 'CGDSTL', 'CG COMMO GERONIMO B TUVILLA (MPSA)', 'Brgy. Sta Clara, Batangas', 'hcgdstl_opn@yahoo.com', '0997-785-4915'),
(13, 'COAST GUARD DISTRICT NORTHEASTERN MINDANAO', 'CGDNEM', 'CG COMMO CHRISTOPHER M MENIADO', '2nd Flr. DOP Bldg. Brgy. Tiniwisan, Butuan City, Agusan del Norte', 'cgdnem@coastguard.gov.ph ', '0951-091-4219 / 0953-397-6127 / 827-0959'),
(14, 'COAST GUARD DISTRICT SOUTHERN MINDANAO', 'CGDSM', 'CG CAPT DENNIS A PANDEAGUA (MSc)', 'Makar Wharf, Brgy. Labangal, General Santos City', 'cgdsmd3@coastguard.gov.ph ', '0965-516-3025'),
(15, 'COAST GUARD DISTRICT SOUTHWESTERN MINDANAO', 'CGDSWM', 'CG COMMO MARCO ANTONIO P GINES (LLM)', 'Naval Station, Romulo Espaldon, Bagong Calarian, Zamboanga City', 'hcgdswm@yahoo.com / cgdswm2018@gmail.com', '993-1004 / 0967-276-1478');

-- --------------------------------------------------------

--
-- Table structure for table `cg_station`
--

CREATE TABLE `cg_station` (
  `id` int(11) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `station` varchar(999) DEFAULT NULL,
  `address` varchar(999) DEFAULT NULL,
  `email` varchar(999) DEFAULT NULL,
  `contact` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cg_station`
--

INSERT INTO `cg_station` (`id`, `district_id`, `station`, `address`, `email`, `contact`) VALUES
(1, 1, 'CGS CENTRAL PALAWAN', 'Port Area, Brgy. Liwanag, Puerto Princesa City, Palawan', 'cgspuertoprincesa1968@gmail.com ', '0912-108-4438'),
(2, 1, 'CGS SOUTHERN PALAWAN', 'Old Camp, Brgy. District 1, Brooke’s Point, Palawan', 'cgsbrookespoint@gmail.com ', '0951-672-7095'),
(3, 1, 'CGS NORTHEASTERN PALAWAN', 'Brgy. Tagumpay Coron, Palawan', 'cgs_coron@yahoo.com.ph ', '0975-116-8782'),
(4, 1, 'CGS KALAYAAN ISLAND GROUP', 'Brgy. Pag-asa, Pag-asa Island', 'kalayaan_0720@yahoo.com', '0946-480-1320'),
(5, 1, 'CGS NORTHERN PALAWAN', 'Brgy. Buena Suerte, El Nido, Palawan', 'cgsen.elnido@gmail.com ', '0906-449-4802'),
(6, 1, 'CGS NORTH CENTRAL PALAWAN ', 'Brgy. IV, Roxas, Palawan', 'operationcgsroxas@gmail.com ', '0966-963-6196'),
(7, 1, 'CGS EASTERN PALAWAN', 'Brgy. Tenga-tenga, Cuyo, Palawan', 'cgscuyo@yahoo.com ', '0930-095-7283'),
(8, 1, 'CGS SOUTH WESTERN PALAWAN', 'Brgy. Poblacion 4, Balabac, Palawan', 'cgstationbalabac@gmail.com ', '0961-468-7535 '),
(9, 2, 'CGS MANILA', 'Pier 8, North Harbor, Tondo, Manila', 'cgsmanila@coastguard.gov.ph ', '0906-266-0568 / 0998-585-8194'),
(10, 2, 'CGS CAVITE', 'Brgy. Capipiza, Tanza, Cavite', 'cgscavite@gmail.com ', '0917-165-3113'),
(11, 2, 'CGS BATAAN', 'Port of Lamao, Limay, Bataan', 'coastguardstationbataan@gmail.com / cgsbataan@yahoo.com', '0956-957-1376'),
(12, 2, 'CGS ZAMBALES', 'Brgy. Wawandue, Subic, Zambales', 'cgszambales@gmail.com ', '0926-814-9956 / 0917-319-6365'),
(13, 2, 'CGS LAGUNA', NULL, 'cgslaguna02072021@gmail.com ', '0915-019-0354'),
(14, 2, 'CGS  RIZAL', 'Brgy. Libis., Binangonan, Rizal', 'cgsrizal@gmail.com ', '0915-158-2567'),
(15, 2, 'CGS MALACANANG', 'Presidential Security Malacañang  Park, Manila', 'cgs.pasig2021@gmail.com ', '0945-186-4787 / 0938-574-5797'),
(16, 3, 'CGS ALBAY', 'Pier Site, Legazpi City', 'albaycgs@yahoo.com ', '0977-421-8996'),
(17, 3, 'CGS SORSOGON', 'Pier Site, Brgy. Talisay, Sorsogon', 'cgs.sorsogon@yahoo.com.phcgstnsorsogon@gmail.com', '0909-114-1877'),
(18, 3, 'CGS CAMARINES NORTE', 'Delos Reyes Blvd, Brgy. Mercedes, Camarines Norte', 'cgscamnorte@yahoo.com ', '0916-467-7962 / 0968-280-5965'),
(19, 3, 'CGS CATANDUANES', 'Brgy. Sta Cruz, Virac, Catanduanes', 'cgs_catanduanes@yahoo.com ', '0947-831-0880'),
(20, 3, 'CGS MASBATE', 'Pier Site, Masbate City', 'cgs_masbate3@yahoo.com.ph', '0963-777-7190'),
(21, 3, 'CGS CAMARINES SUR', 'Brgy. Sto. Domingo, Camaligan, Camarines Sur', 'cgscamrinessur@yahoo.comcgscamarinessur08@gmail.com', '0997-755-4015'),
(22, 4, 'CGS MAGUINDANAO', 'No. 10 Rajah Tabunaway Blvd., Cotabato City', 'cgs_cotabato@yahoo.com', '0956-400-0591 / 0930-188-9389'),
(23, 4, 'CGS WESTERN SULU', 'Brgy. Walled City, Port Area, Jolo, Sulu', 'cgsjolo@coastguard.gov.ph', '0963-585-3600'),
(24, 4, 'CGS NORTHERN TAWI-TAWI', 'Brgy. Libubod, Mapun, Tawi-Tawi', 'cgsmapun@coastguard.gov.ph ', '0916-611-8665'),
(25, 4, 'CGS WESTERN TAWI-TAWI', 'Brgy. Dambila, Taganak, Turtle Island, Tawi-tawi', 'coastguardstationwtt@yahoo.com ', NULL),
(26, 4, 'CGS CENTRAL TAWI-TAWI', 'Bongao, Tawi-Tawi', 'cgs.tawi2@gmail.comcgd.tawi2@yahoo.com', '0938-370-8811'),
(27, 4, 'CGS BASIH-BALAN', NULL, NULL, '0977-073-0949'),
(28, 4, 'CGS EASTERN SULU', NULL, NULL, '0936-032-5033'),
(29, 5, 'CGS MISAMIS ORIENTAL', 'Purok 3, Brgy. Cabug, Medina, Misamis Oriental', 'cgsnemisor@gmail.com', '0967-339-2790'),
(30, 5, 'CGS CAGAYAN DE ORO', 'Accretion Area, Macabalan, Cagayan De Oro City', 'cgswmo@gmail.com', '0936-546-8019'),
(31, 5, 'CGS LANAO DEL NORTE', 'Port Area, Brgy. Poblacion, Iligan City', 'cgsldn.files@gmail.com ', '0956-481-6716'),
(32, 5, 'CGS MISAMIS OCCIDENTAL', 'Cotta Beach, Purok 5,  Brgy. Baybay Triunfo, Ozamiz City ', 'cgsmisocc22@gmail.com  ', '0927-852-7495 / 0963-558-9765'),
(33, 5, 'CGS CAMIGUIN', 'Brgy. San Roque, Mahinog, Camiguin Province', 'cgscamiguin@gmail.com  ', '0967-529-6682'),
(34, 6, 'CGS DAVAO', 'Sta. Ana Wharf, Brgy 27-C, Poblacion, Davao City', 'cgsdavao@coastguard.gov.ph ', '0927-153-2648'),
(35, 6, 'CGS DAVAO ORIENTAL', 'Mati Wharf, Burgos St., Mati City, Davao Oriental', 'cgsmati@gmail.comcgsmati@coastguard.gov.ph', '0966-837-0536'),
(36, 6, 'CGS DAVAO OCCIDENTAL', 'Brgy. Batuganding, Sarangani, Davao Occidental', 'cgs.davaooccidental@coastguard.gov.ph', '0975-518-9735'),
(37, 6, 'CGS IGACOS', 'Babak Gym, Villarica, Babak District, Island Garden City of Samal (IGACOS), Davao Del Norte', 'cgs.igacos@coastguard.gov.ph / cgsigacos2019@gmail.com ', '0927-112-1444'),
(38, 7, 'CGS CAGAYAN', 'Centro 9, Aparri, Cagayan', 'cgs.aparri@coastguard.gov.ph ', '0956-830-1802'),
(39, 7, 'CGS CALAYAN', 'Poblacion, Calayan, Cagayan', NULL, NULL),
(40, 7, 'CGS AURORA', 'ATC, Compound, Sitio Setan, Brgy. Calabuanan, Baler, Aurora', 'cgss.baler@coastguard.gov.ph ', '0956-417-0107'),
(41, 7, 'CGS BATANES', 'Brgy. Kaychanarianan, Basco, Batanes', 'cgs.basco@coastguard.gov.ph', '0961-877-2083'),
(42, 8, 'CGS ILOCOS NORTE', 'Brgy. Victoria, Currimao, Ilocos Norte', 'cgscurrimao@coastguard.gov.ph ', '0906-314-9823 / 0910-609-7420'),
(43, 8, 'CGS ILOCOS SUR', 'Brgy. Dardarat, San Juan, Ilocos Sur', 'cgssalomague@coastguard.gov.phcgsilocossur@gmail.com', '0966-859-0756'),
(44, 8, 'CGS LA UNION', 'Poro Point, San Fernando City, La Union', 'cgssanfernando@coastguard.gov.ph ', '0936-265-9447 '),
(45, 8, 'CGS PANGASINAN', 'Brgy. Poblacion East, Sual, Pangasinan', 'cgssual@coastguard.gov.ph  ', '0927-077-8026'),
(46, 9, 'CGS ANTIQUE', 'Princesa St., Brgy. 4 San Jose De Buenavista, Antique', 'cgssanjosedebuenavista@coastguard.gov.ph', '0995-978-1439 / 0931-949-3783'),
(47, 9, 'CGS AKLAN', 'Brgy. Caticlan, Malay, Aklan', 'cgscaticlan@coastguard.gov.ph ', '0961-420-2756 / 0995-582-8781'),
(48, 9, 'CGS ILOILO', 'Fort San Pedro, Brgy. Conception, Iloilo City', 'cgsiloilo@coastguard.gov.ph', '0949-673-3197 / 0966-981-6557'),
(49, 9, 'CGS CAPIZ', 'Brgy. Culasi, Roxas City, Capiz', 'cgsroxas@coastguard.gov.ph', '0963-800-8443 '),
(50, 9, 'CGS GUIMARAS', 'San Miguel, Jordan, Guimaras', 'cgs.guimaras@gmail.com ', '0931-716-0156/ 0975-563-0181'),
(51, 9, 'CGS NORTHERN NEGROS OCCIDENTAL', 'San Patricio Blvd, Punong Banago, Bacolod City', 'cgsbacolod@coastguard.gov.ph ', '0956-426-2191'),
(52, 9, 'CGS SOUTHERN NEGROS ', NULL, NULL, NULL),
(53, 10, 'CGS WESTERN LEYTE', 'Ebony St., Port Area, Ormoc City, Leyte', 'cgs.ormoc@coastguard.gov.ph  ', '0930-313-5188'),
(54, 10, 'CGS EASTERN LEYTE', 'Market Site, Quezon Blvd., Tacloban City', 'cgs.tacloban@coastguard.gov.ph ', '0977-405-5166'),
(55, 10, 'CGS SOUTHERN LEYTE', 'Brgy. Abgao, Port Area, Maasin City, Southern Leyte', 'cgs.maasin@coastguard.gov.ph ', '0915-585-8807'),
(56, 10, 'CGS BILIRAN', 'Lot 12 Poblacion, Caneja St., Brgy. Santissimo,  Naval, Biliran', 'cgdetnaval@yahoo.com', '0975-189-3951'),
(57, 10, 'CGS NORTHERN SAMAR', 'Brgy. Kinabranan Zone 1, Allen, Northern Samar', 'cgsnorsam@gmail.com ', '0916-446-1849'),
(58, 10, 'CGS WESTERN SAMAR ', 'Pier 2, Allen Ave., Catbalogan City, Western Samar', 'cgscatbaloganopn@gmail.com  ', '0916-661-8308 / 0945-440-5882'),
(59, 10, 'CGS EASTERN SAMAR', 'Baybay 5, Brgy. Songco, Borongan City, Eastern Samar', 'Cgseasternsamar2017@gmail.com ', '0917-823-6710 / 0906-081-0738 / 0917-148-8406'),
(60, 11, 'CGS CENTRAL CEBU', 'MCIA Staff House, Brgy. Buaya, Lapu-Lapu City, Cebu', 'cgs.cebunew@gmail.com', '0956-038-0898'),
(61, 11, 'CGS WESTERN BOHOL', 'K of C Drive, Poblacion II, Tagbilaran City', 'cgstagbilaranbohol@yahoo.com', '0948-356-1085/ 0970-192-6905'),
(62, 11, 'CGS EASTERN BOHOL', 'Brgy. Pagina, Jagna, Bohol', 'cgseasternbohol19@gmail.com ', '0938-471-1256 / 0995-344-3657'),
(63, 11, 'CGS SOUTHERN CEBU', 'Brgy. Poblacion, Oslob, Cebu', 'cgssoutherncebu@gmail.com', '0905-402-4431'),
(64, 11, 'CGS CAMOTES', 'Brgy. Eastern Poblacion, Poro, Cebu', 'cgscamotes@gmail.com ', '0906-536-2855'),
(65, 11, 'CGS NORTHERN CEBU', 'San Remigio, Brgy. Hagnaya, Cebu', 'cgsnortherncebu@gmail.comcoastguardnortherncebu@gmail.com', '0956-788-1295'),
(66, 11, 'CGS SIQUIJOR', 'Candanay Sur, Siquijor, Siquijor', 'cgs.siquijor@coastguard.gov.ph ', '0970-467-3521 / 0965-937-7588'),
(67, 11, 'CGS NEGROS ORIENTAL', 'Brgy. Looc Port Area, Dumaguete City, Negros Oriental', 'cgsnegrosoriental32@gmail.com ', '0936-764-7279 / 0968-771-2455'),
(68, 12, 'CGS ORIENTAL MINDORO', 'Brgy. San Antonio, Calapan City, Oriental Mindoro', 'cgsorientalmindoro2@yahoo.com ', '0956-933-3244'),
(69, 12, 'CGS OCCIDENTAL MINDORO', 'Brgy. Caminawit, San Jose, Occidental Mindoro', 'cgdetcam@yahoo.com', '0945-266-2085 / 0908-675-8361'),
(70, 12, 'CGS SOUTHERN QUEZON', 'Brgy. Dalahican, Lucena City', 'cgmpmamburao@yahoo.com ', '0905-429-8563'),
(71, 12, 'CGS MARINDUQUE', 'Brgy. Cawit, Boac, Marinduque', 'cgsmarinduque@yahoo.com ', '0930-430-3182'),
(72, 12, 'CGS ROMBLON', 'Brgy. Bagacay, Romblon, Romblon', 'cgsromblon@yahoo.com', '0915-045-4121'),
(73, 12, 'CGS NORTHERN QUEZON', 'Brgy. Ungos, Real, Quezon', 'cgsnorthernquezon@yahoo.com', '0931-764-0856'),
(74, 13, 'CGS SIARGAO', 'Brgy. 13 Poblacion, Dapa, Surigao del Norte', 'cgssdapa@gmail.com', '0906-381-4596'),
(75, 13, 'CGS SURIGAO DEL NORTE', '3052-A Recabos Residence, Purok 10 Punta Bilang Bilang, P Reyes Extebsion, Brgy. Taft, Surigao City', 'cgssurigao@coastguard.gov.ph', '0951-807-0127'),
(76, 13, 'CGS SURIGAO DEL SUR', 'Espiritu St., Mangagoy, Bislig City, Surigao del Sur', 'cgsbislig@coastguard.gov.ph', '0906-381-1224 / 0919-519-4510'),
(77, 13, 'CGS DINAGAT ISLAND', 'Poblacion 1, San Jose, Dinagat Islands', 'cgssdinagatislands@gmail.com', '0906-380-0747'),
(78, 13, 'CGS AGUSAN DEL NORTE', 'G. Flores Ave., Brgy. Sikatuna, Butuan City', 'cgsbutuan@coastguard.gov.ph', '0945-244-6348'),
(79, 14, 'CGS GENSAN', 'Dole Wharf, Brgy. Labangal, General Santos City', 'cgsscalumpang@coastguard.gov.ph ', '0916-292-4980'),
(80, 14, 'CGS WESTERN SARANGANI', 'San Felipe Elem. School, Brgy. Colon, Maasim, Sarangani Province', 'cgss.maasim@coastguard.gov.ph ', '0927-556-2117'),
(81, 14, 'CGS EASTERN SARANGANI', 'Purok 8-A, Brgy. Polacion, Malapatan, Sarangani Province', 'cgss.malapatan@coastguard.gov.ph ', '0939-367-7616'),
(82, 14, 'CGS SULTAN KUDARAT', 'Brgy. Pag-asa, Kalamansig, Sultan Kudarat', 'cgsskalamansig18@gmail.com ', '0967-911-8226'),
(83, 15, 'CGS ZAMBOANGA', 'Corcuera St., Port Area, Zamboanga City', 'cgszamboanga_7000@yahoo.comcoastguardszamboanga@gmail.com', '0975-035-2666'),
(84, 15, 'CGS ZAMBOANGA DEL SUR', 'Port Area, Pagadian City', 'cgspagadian@gmail.com ', '0966-173-2324'),
(85, 15, 'CGS BASILAN', 'Brgy. Seaside, Port Area, Isabela City, Basilan', 'cgsspitogo@yahoo.com', '0905-242-2958'),
(86, 15, 'CGS ZAMBOANGA DEL NORTE', 'Pulauan Port, Brgy. San Vicente, Dapitan City, Zamboanga del Norte', 'Cgsdapitan@coastguard.gov.ph ', '0905-386-0539'),
(87, 15, 'CGS ZAMBOANGA SIBUGAY', 'Brgy. Magdaup Ipil, Zamboanga Sibugay', 'cgszamboangasibugay@gmail.com', '0998-174-8691');

-- --------------------------------------------------------

--
-- Table structure for table `db_maintenance`
--

CREATE TABLE `db_maintenance` (
  `id` int(11) NOT NULL,
  `is_maintenance` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db_maintenance`
--

INSERT INTO `db_maintenance` (`id`, `is_maintenance`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hatol`
--

CREATE TABLE `hatol` (
  `id` int(11) NOT NULL,
  `stat` text NOT NULL,
  `degree` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hatol`
--

INSERT INTO `hatol` (`id`, `stat`, `degree`) VALUES
(0, 'Present', 0),
(1, 'PENDING CASE OUTSIDE PCG', 1),
(2, 'FOR TERMINATION DUE TO AWOL', 1),
(3, 'For Termination Due to Existing Legal Case', 1),
(4, 'For Termination Due to Existing Legal Case / Alleagation', 1),
(5, 'For Termination from Training and PCG Service Due to Medical Condition', 1),
(6, 'Physical Profile - 4', 0),
(7, 'Medically Deferred', 1),
(8, 'Dismissal from PCG Service', 0),
(9, 'Resignee', 0),
(15, 'Hospitalized', 0),
(16, 'Casualty', 0),
(79, 'Liquor Intoxicating', 0);

-- --------------------------------------------------------

--
-- Table structure for table `july26list`
--

CREATE TABLE `july26list` (
  `id` int(11) NOT NULL,
  `rank` text DEFAULT NULL,
  `fullname` text DEFAULT NULL,
  `class` text DEFAULT NULL,
  `age` text DEFAULT NULL,
  `rtc` int(1) DEFAULT NULL,
  `acadsess` text DEFAULT NULL,
  `nature_termi` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `date_endorsed` text DEFAULT NULL,
  `reso` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `year` text DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `so` text DEFAULT NULL,
  `mr` text DEFAULT NULL,
  `is_terminated` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `july26list`
--

INSERT INTO `july26list` (`id`, `rank`, `fullname`, `class`, `age`, `rtc`, `acadsess`, `nature_termi`, `remarks`, `date_endorsed`, `reso`, `status`, `year`, `date`, `so`, `mr`, `is_terminated`) VALUES
(1, 'CCGO', 'BALTAZAR ERNEST C CAMARILLO', 'CGOC Class 30-2023 \"BRAVO\"', NULL, 2, '15th Academic Board dated 09 November 2023', 9, NULL, 'Uppon approval', 'CGETDC Academic Board Resolution No. 1123-006 dated 09 November 2023', 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', '2023', '2024-07-22 07:48:05', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(2, 'CCGO', 'CHARLES PHILLIPPE O GARCIA', 'CGOC Class 30-2023 \"BRAVO\"', NULL, 2, '15th Academic Board dated 09 November 2023', 9, NULL, 'Uppon approval', 'CGETDC Academic Board Resolution No. 1123-006 dated 09 November 2023', 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', '2023', '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(3, 'CCGO', 'KHEMBERT M CAPINIG', 'CGOC Class 30-2023 \"BRAVO\"', NULL, 2, '15th Academic Board dated 09 November 2023', 9, NULL, 'Uppon approval', 'CGETDC Academic Board Resolution No. 1123-006 dated 09 November 2023', 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', '2023', '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(4, 'CCGO', 'CHASTIN MARKKO A CALAPIS', 'CGOC Class 30-2023 \"BRAVO\"', NULL, 2, '15th Academic Board dated 09 November 2023', 9, NULL, 'Uppon approval', 'CGETDC Academic Board Resolution No. 1123-006 dated 09 November 2023', 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', '2023', '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(5, 'CCGO', 'REX MITCHELL B GESTOPA', 'CGOC Class 30-2023 \"BRAVO\"', NULL, 2, '15th Academic Board dated 09 November 2023', 9, NULL, 'Uppon approval', 'CGETDC Academic Board Resolution No. 1123-006 dated 09 November 2023', 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', '2023', '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(6, 'CCGO', 'GLESTER DEAN GITO', 'CGOC Class 30-2023 \"BRAVO\"', NULL, 2, '15th Academic Board dated 09 November 2023', 9, NULL, 'Uppon approval', 'CGETDC Academic Board Resolution No. 1123-006 dated 09 November 2023', 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', '2023', '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(7, 'CCGO', 'JOHN ERL S JAMARILLA', 'CGOC Class 30-2023 \"BRAVO\"', NULL, 2, '15th Academic Board dated 09 November 2023', 9, NULL, 'Uppon approval', 'CGETDC Academic Board Resolution No. 1123-006 dated 09 November 2023', 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', '2023', '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(8, 'CCGO', 'DARELLA FRITZ DC PUNDAVELA', 'CGOC Class 30-2023 \"BRAVO\"', NULL, 2, '15th Academic Board dated 09 November 2023', 9, NULL, 'Uppon approval', 'CGETDC Academic Board Resolution No. 1123-006 dated 09 November 2023', 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', '2023', '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(9, 'CCGO', 'JOSHUA J ABUEVA', 'CGOC Class 30-2023 \"BRAVO\"', NULL, 2, '15th Academic Board dated 09 November 2023', 9, NULL, 'Uppon approval', 'CGETDC Academic Board Resolution No. 1123-006 dated 09 November 2023', 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', '2023', '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(10, 'CCGO', 'RAYMART AARON FLORES', 'CGOC Class 30-2023 \"BRAVO\"', NULL, 2, '15th Academic Board dated 09 November 2023', 9, NULL, 'Uppon approval', 'CGETDC Academic Board Resolution No. 1123-006 dated 09 November 2023', 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', '2023', '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(11, 'CCGO', 'ROVIC T VILLANUEVA', 'CGOC Class 30-2023 \"BRAVO\"', NULL, 2, '15th Academic Board dated 09 November 2023', 9, NULL, 'Uppon approval', 'CGETDC Academic Board Resolution No. 1123-006 dated 09 November 2023', 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', '2023', '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(12, 'CGSO', 'MARY DIANNE C VILLANUEVA', 'CGOC Class 30-2023 \"CHARLIE\"', NULL, 2, '15th Academic Board dated 09 November 2023', 9, NULL, 'Uppon approval', 'CGETDC Academic Board Resolution No. 1123-006 dated 09 November 2023', 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', '2023', '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(13, 'CGSO', 'LESLIE R LUCAS', 'CGOC Class 30-2023 \"CHARLIE\"', NULL, 2, '15th Academic Board dated 09 November 2023', 9, NULL, 'Uppon approval', 'CGETDC Academic Board Resolution No. 1123-006 dated 09 November 2023', 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', '2023', '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(14, 'CGSO', 'JETHRO J VILLARUEL JR', 'CGOC Class 30-2023 \"CHARLIE\"', NULL, 2, '15th Academic Board dated 09 November 2023', 9, NULL, 'Uppon approval', 'CGETDC Academic Board Resolution No. 1123-006 dated 09 November 2023', 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', '2023', '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(15, 'CGSO', 'ARWIN PETER T DUMAG III', 'CGOC Class 30-2023 \"CHARLIE\"', NULL, 2, '15th Academic Board dated 09 November 2023', 9, NULL, 'Uppon approval', 'CGETDC Academic Board Resolution No. 1123-006 dated 09 November 2023', 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', '2023', '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(16, 'CGSO', 'MARY DIANNE C VILLANUEVA', 'CGOC Class 30-2023 \"CHARLIE\"', NULL, 2, '15th Academic Board dated 09 November 2024', 9, NULL, 'Uppon approval', 'CGETDC Academic Board Resolution No. 1123-006 dated 09 November 2023', 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(17, 'CGSO', 'LESLIE R LUCAS', 'CGOC Class 30-2023 \"CHARLIE\"', NULL, 2, '15th Academic Board dated 09 November 2024', 9, NULL, 'Uppon approval', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(18, 'CGSO', 'JETHRO J VILLARUEL JR', 'CGOC Class 30-2023 \"CHARLIE\"', NULL, 2, '15th Academic Board dated 09 November 2024', 9, NULL, 'Uppon approval', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(19, 'CGSO', 'ARWIN PETER T DUMAG III', 'CGOC Class 30-2023 \"CHARLIE\"', NULL, 2, '15th Academic Board dated 09 November 2024', 9, NULL, 'Uppon approval', 'CGETDC Academic Board Resolution No. 1123-010 dated 23 November 2023', 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', '2023', '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(20, 'CCGO', 'ARLON JOHN B HIPONA', 'CGOC Class 30-2023 \"BRAVO\"', NULL, 2, '16th Academic Board dated 23 November 2023', 9, NULL, '10 November 2023', 'Forwarded to CG1, CG12 and CG Finance on 28 Novemebr 2023', 'Forwarded to CG1, CG12 and CG Finance on 28 Novemebr 2023', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(21, 'CGSO', 'MIKHAEL ANTONIE V MANUEL', 'CGOC Class 30-2023 \"CHARLIE\"', NULL, 2, '16th Academic Board dated 23 November 2023', 9, NULL, '5 November 2023', NULL, 'Forwarded to CG1, CG12 and CG Finance on 28 Novemebr 2023', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(22, 'CCGO', 'JUSTIN C FLORES', 'CGOC Class 30-2023 \"BRAVO\"', NULL, 2, '1st Academic Board dated 19 January 2024', 9, NULL, 'Uppon approval', 'CGETDC ACADEMIC BOARD RESOLUTION NR 0124-001', 'Forwarded to CG-1, CG-12 and CG Finance on 03 February 2024', '2024', '2024-07-22 06:55:52', 'SO 47 P 13-21 NHQ-PCG DTD 04 MAR 24', NULL, NULL),
(23, 'CCGO', 'MAE ROHANNI T SAMSUYA', 'CGOC Class 30-2023 \"BRAVO\"', NULL, 2, '1st Academic Board dated 19 January 2024', 9, NULL, '20 October 2023', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO 47 P 13-21 NHQ-PCG DTD 04 MAR 24', NULL, NULL),
(24, 'CCGO', 'Edzmar H Sangkula', 'CGNOC CLass 100-2023', NULL, 8, '15th Academic Board 2023\n(09 November 2023)', 9, NULL, '20 October 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(25, 'CCGNO', 'Clydy A Figueraoa', 'CGNOC CLass 102-2023', NULL, 1, '15th Academic Board 2023 (09 November 2023)', 9, NULL, '28 October 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(26, 'CCGNO', 'Dominador G Paneda Jr', 'CGNOC Class 104-2023', NULL, 4, '15th Academic Board 2023 (09 November 2023)', 9, NULL, '03 November 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(27, 'CCGNO', 'Francis Marl L Panelo', 'CGNOC Class 104-2023', NULL, 4, '15th Academic Board 2023 (09 November 2023)', 9, NULL, '03 November 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(28, 'CCGNO', 'Ronnie R Pulido', 'CGNOC Class 104-2023', NULL, 4, '15th Academic Board 2023 (09 November 2023)', 9, NULL, '03 November 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(29, 'CCGNO', 'Lee Brian R Rue', 'CGNOC Class 105-2023', NULL, 5, '15th Academic Board 2023 (09 November 2023)', 9, NULL, '23 October 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 24', NULL, NULL),
(30, 'CCGNO', 'Kien Anthony G Baguiran', 'CGNOC CLass 106-2023', NULL, 9, '15th Academic Board 2023 (09 November 2023)', 9, NULL, '17 October 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(31, 'CCGNO', 'Judy R Ubanan Jr', 'CGNOC CLass 106-2023', NULL, 9, '15th Academic Board 2023 (09 November 2023)', 9, NULL, '17 October 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(32, 'CCGNO', 'John Carlo A Hernando', 'CGNOC CLass 106-2023', NULL, 9, '15th Academic Board 2023 (09 November 2023)', 9, NULL, '17 October 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(33, 'CCGNO', 'Marvin Divino Manalo', 'CGNOC Class 107-2023', NULL, 2, '15th Academic Board 2023 (09 November 2023)', 9, NULL, '18 October 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(34, 'CCGNO', 'Dave Wilson M Latayan', 'CGNOC Class 107-2023', NULL, 2, '15th Academic Board 2023 (09 November 2023)', 9, NULL, '20 October 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(35, 'CCGNO', 'Rodello N Laraya Jr', 'CGNOC Class 107-2023', NULL, 2, '15th Academic Board 2023 (09 November 2023)', 9, NULL, '20 October 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(36, 'CCGNO', 'John Michael P Maligaya', 'CGNOC Class 107-2023', NULL, 2, '15th Academic Board 2023 (09 November 2023)', 9, NULL, '20 October 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(37, 'CCGNO', 'Raven M Guma', 'CGNOC Class 107-2023', NULL, 2, '15th Academic Board 2023 (09 November 2023)', 9, NULL, '22 October 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(38, 'CCGNO', 'Neil Angeo B Sombillo', 'CGNOC Class 107-2023', NULL, 2, '15th Academic Board 2023 (09 November 2023)', 9, NULL, '24 October 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(39, 'CCGNO', 'Maenard V Vero', 'CGNOC Class 107-2023', NULL, 2, '15th Academic Board 2023 (09 November 2023)', 9, NULL, '25 October 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(40, 'CCGNO', 'Maynard B Dimaano', 'CGNOC Class 107-2023', NULL, 2, '15th Academic Board 2023 (09 November 2023)', 9, NULL, '27 October 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(41, 'CCGNO', 'Jimmy R Prado', 'CGNOC Class 107-2023', NULL, 2, '15th Academic Board 2023 (09 November 2023)', 9, NULL, '31 October 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(42, 'CCGNO', 'Che-an M Alinsonorin', 'CGNOC Class 101-2023', NULL, 6, '15th Academic Board 2023 (09 November 2023)', 7, 'Sunburn: Multiple Tattoos', '19 October 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 231 P 23-34 NHQ-PCG DTD 22 NOV 23', NULL, NULL),
(43, 'CCGNO', 'Judilyn C Malimban', 'CGNOC Class 101-2023', NULL, 6, '15th Academic Board 2023 (09 November 2023)', 7, 'Essential Hypertension Stage 1; Obesity', '19 October 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 231 P 23-34 NHQ-PCG DTD 22 NOV 23', NULL, NULL),
(44, 'CCGNO', 'Art Bryan N Mojica', 'CGNOC Class 103-2023', NULL, 6, '15th Academic Board 2023 (09 November 2023)', 7, 'Psychosis not otherwise identified', '20 October 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'TERMINATION ORDER DATED 22 NOVEMBER 2023SO 231 P 23-34 NHQ-PCG DTD 22 NOV 23', NULL, NULL),
(45, 'CCGNO', 'Ashurkhan J Arap', 'CGNOC Class 99-2022', NULL, 9, '15th Academic Board 2023 (09 November 2023)', 8, 'Excessive and unexcused absences resulting from his detainment.', '09 April 2023', NULL, 'Forwarded to CG1 on 20 Nov 2023 (Received by: CG SN2 Bencito)', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(46, 'CCGNO', 'Gerald A Obillo', 'CGNOC Class 104-2023', NULL, 4, '16th Academic Board 2023\n( 23 November 2023)', 9, NULL, '17 November 2023', NULL, 'Forwarded to CG1, CG12 and CG Finance on 28 Novemebr 2023', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(47, 'CCGNO', 'Jhonas Carl M Blanco', 'CGNOC Class 105-2023', NULL, 5, '16th Academic Board 2023\n( 23 November 2023)', 9, NULL, '13 November 2023', NULL, 'Forwarded to CG1, CG12 and CG Finance on 28 Novemebr 2023', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(48, 'CCGNO', 'Julkaram L Ibrahim', 'CGNOC Class 105-2023', NULL, 5, '16th Academic Board 2023\n( 23 November 2023)', 9, NULL, '13 November 2023', NULL, 'Forwarded to CG1, CG12 and CG Finance on 28 Novemebr 2023', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(49, 'CCGNO', 'Ryan E Campomanes', 'CGNOC Class 106-2023', NULL, 9, '16th Academic Board 2023\n( 23 November 2023)', 9, NULL, '13 November 2023', NULL, 'Forwarded to CG1, CG12 and CG Finance on 28 Novemebr 2023', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(50, 'CCGNO', 'Jerald R Lasala', 'CGNOC Class 106-2023', NULL, 9, '16th Academic Board 2023\n( 23 November 2023)', 9, NULL, '13 November 2023', NULL, 'Forwarded to CG1, CG12 and CG Finance on 28 Novemebr 2023', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(51, 'CCGNO', 'Anjo C Madrigal', 'CGNOC Class 107-2023', NULL, 2, '16th Academic Board 2023\n( 23 November 2023)', 9, NULL, '14 November 2023', NULL, 'Forwarded to CG1, CG12 and CG Finance on 28 Novemebr 2023', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(52, 'CCGNO', 'Amiel A Maala', 'CGNOC Class 107-2023', NULL, 2, '16th Academic Board 2023\n( 23 November 2023)', 9, NULL, '18 November 2023', NULL, 'Forwarded to CG1, CG12 and CG Finance on 28 Novemebr 2023', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(53, 'CCGNO', 'Mary Jane C Tayko', 'CGNOC Class 101-2023', NULL, 6, '17th Academic Board 2023\n(13 December 2023)\n', 9, NULL, '28 November 2023', NULL, 'Forwarded to CG12 on 13 Jan 2024Forwarded to CG1 and CG Finance on 26 Jan 2024', NULL, '2024-07-22 06:55:52', 'SO 28 P 23-35 NHQ-PCG DTD 07 FEB 24', NULL, NULL),
(54, 'CCGNO', 'Raven B Calde', 'CGNOC Class 104-2023', NULL, 4, '17th Academic Board 2023\n(13 December 2023)\n', 9, NULL, '30 November 2023', NULL, 'Forwarded to CG12 on 13 Jan 2024Forwarded to CG1 and CG Finance on 26 Jan 2024', NULL, '2024-07-22 06:55:52', 'SO 28 P 23-35 NHQ-PCG DTD 07 FEB 24', NULL, NULL),
(55, 'CCGNO', 'Mark Debb D Balatero', 'CGNOC Class 107-2023', NULL, 2, '17th Academic Board 2023\n(13 December 2023)\n', 9, NULL, '24 November 2023', NULL, 'Forwarded to CG12 on 13 Jan 2024Forwarded to CG1 and CG Finance on 26 Jan 2024', NULL, '2024-07-22 06:55:52', 'SO 28 P 23-35 NHQ-PCG DTD 07 FEB 24', NULL, NULL),
(56, 'CCGNO', 'Joseph L Valencia', 'CGNOC Class 100-2023', NULL, 8, '17th Academic Board 2023\n(13 December 2023)\n', 8, 'Alleged violation of Anti-Photo and video voyeurism Act. of 2009 ubder Sec. 4 (a) of R.A 9995 filed by his former girlfriend.', 'Uppon Approval', NULL, 'Forwarded to CG12 on 13 January 2024Forwarded to CG1 and CG Finance on 26 Jan 2024', NULL, '2024-07-22 06:55:52', 'SO-45-P-23-38-NHQ-PCG-DTD-29-FEB-24', NULL, NULL),
(57, 'CCGNO', 'Ronalyn A Acuin', 'CGNOC Class 101-2023', NULL, 6, 'Consultative Meeting NHQ-PCG on 04 January 2024', 7, 'Perforated tympanic membrane, AD; Acute Suppurative Otitis Media, AD; tympanosclerosis, AS', NULL, NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(58, 'CCGNO', 'Jesalyn C Cuerdo', 'CGNOC Class 101-2023', NULL, 6, 'Consultative Meeting NHQ-PCG on 04 January 2024', 7, 'Functional constipation; Mild hypokalemia; Anemia; Post abdominal surgery (14 April 20230 s/p Exploratory Laparotomy', NULL, NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(59, 'CCGNO', 'Mariel A Liwag', 'CGNOC Class 101-2023', NULL, 6, 'Consultative Meeting NHQ-PCG on 04 January 2024', 7, 'Lateral patellar dislocation, right', NULL, NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(60, 'CCGNO', 'Ma Cristine B Corminal', 'CGNOC Class 101-2023', NULL, 6, 'Consultative Meeting NHQ-PCG on 04 January 2024', 5, 'Endometrial pathology vs secretory endometrium', NULL, NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', 'SO 244 P 19-22 NHQ-PCG DTD 12 DEC 23', NULL, NULL),
(61, 'CCGNO', 'Aira Khrystine Villorente', 'CGNOC Class 101-2023', NULL, 6, 'Consultative Meeting NHQ-PCG on 04 January 2024', 5, 'Thalassemia with iron deficiency component', NULL, NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', 'SO 237 P 7-10 NHQ-PCG DTD 30 NOV 23', NULL, NULL),
(62, 'CCGNO', 'Gretchen L Varron', 'CGNOC Class 101-2023', NULL, 6, 'Consultative Meeting NHQ-PCG on 04 January 2024', 5, 'Anterior Mitral Valve Prolapse with Mild Mitral Valve Regurgitation', NULL, NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(63, 'CCGNO', 'Czarina A Delas Alas', 'CGNOC Class 101-2023', NULL, 6, 'Consultative Meeting NHQ-PCG on 04 January 2024', 5, 'Hypertension Stage II-uncontrolled; Hyperuricemia; t/c Acute Gouty attack vs sprain. BMI: 27.1 (overweight)', NULL, NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(64, 'CCGNO', 'Marjorie B Marinay', 'CGNOC Class 101-2023', NULL, 6, 'Consultative Meeting NHQ-PCG on 04 January 2024', 5, 'Dextrocardia', NULL, NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(65, 'CCGNO', 'Joy Dumasig', 'CGNOC Class 101-2023', NULL, 6, 'Consultative Meeting NHQ-PCG on 04 January 2024', 6, 'Thoracic Levoscoliosis, with predisposition to lumbosocral instability', NULL, NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(66, 'CCGNO', 'Angelica T Eder', 'CGNOC Class 101-2023', NULL, 6, 'Consultative Meeting NHQ-PCG on 04 January 2024', 5, 'Thoracic Dextroscoliosis', NULL, NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(67, 'CCGNO', 'Geraldine G Villacarlos', 'CGNOC Class 101-2023', NULL, 6, 'Consultative Meeting NHQ-PCG on 04 January 2024', 5, 'Anterior mitral valve prolapse; Pulmonary Tuberculosis', NULL, NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(68, 'CCGNO', 'Maria Luz B Dabalos', 'CGNOC Class 101-2023', NULL, 6, 'Consultative Meeting NHQ-PCG on 04 January 2024', 5, 'Hepatitis B Reactive; Chronic Hepatitis B, Inactive carrier state', NULL, NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(69, 'CCGNO', 'Mary Joy P Enselada', 'CGNOC Class 101-2023', NULL, 6, 'Consultative Meeting NHQ-PCG on 04 January 2024', 5, 'Hepatitis B Reactive', NULL, NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(70, 'CCGNO', 'Rey Ann M Mosecan', 'CGNOC Class 101-2023', NULL, 6, 'Consultative Meeting NHQ-PCG on 04 January 2024', 5, 'Surgically absent ovary; right', NULL, NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', NULL, NULL, NULL),
(71, 'CCGNO', 'Camille Myca B Masigla', 'CGNOC Class 101-2023', NULL, 6, 'Consultative Meeting NHQ-PCG on 04 January 2024', 5, 'Thoracolumbar Dextroscoliosis', NULL, NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(72, 'CCGNO', 'Joeizza M Paraiso', 'CGNOC Class 101-2023', NULL, 6, 'Consultative Meeting NHQ-PCG on 04 January 2024', 5, 'Thoracic Dextroscoliosis', NULL, NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(73, 'CCGNO', 'Honey Ann A Cadayong', 'CGNOC Class 101-2023', NULL, 6, 'Consultative Meeting NHQ-PCG on 04 January 2024', 5, 'Pelvic inflammatory disease (Hydrosalpinx, left) - on-going treatment; Genital Warts- S/P 2nd TCA treatment (21 November 2023)', NULL, NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(74, 'CCGNO', 'Marecris B Obo', 'CGNOC Class 101-2023', NULL, 6, 'Consultative Meeting NHQ-PCG on 04 January 2024', 5, 'Chronic Hepatitis B infection (HbeAg non-reactive) inactive HBsAG carrier state', '09 May 2024', NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(75, 'CCGNO', 'Joshua E Ortiguesa', 'CGNOC Class 107-2023', NULL, 2, 'Consultative Meeting NHQ-PCG on 04 January 2024', 5, 'Color Vision Deficiency (color blind)', '09 May 2024', NULL, 'Forwarded to CG12 and CG1 on 16 January 2024Forwarded to CG Finance on 26 January 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(76, 'CCGNO', 'Joel N Gabriel', 'CGNOC CLass 102-2023', NULL, 1, '1st Academic Board 2024\n(19 January 2024)', 9, NULL, '20 December 2023', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO 47 P 13-21 NHQ-PCG DTD 04 MAR 24', NULL, NULL),
(77, 'CCGNO', 'Mark Andrew F Famero', 'CGNOC CLass 102-2023', NULL, 1, '1st Academic Board 2024\n(19 January 2024)', 9, NULL, '03 December 2023', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO 47 P 13-21 NHQ-PCG DTD 04 MAR 24', NULL, NULL),
(78, 'CCGNO', 'Rich Godwin V Verceles', 'CGNOC CLass 102-2023', NULL, 1, '1st Academic Board 2024\n(19 January 2024)', 9, NULL, '27 December 2023', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 03 February 2025', NULL, '2024-07-22 06:55:52', 'SO 47 P 13-21 NHQ-PCG DTD 04 MAR 24', NULL, NULL),
(79, 'CCGNO', 'Neru Keith G Resurrection', 'CGNOC Class 104-2023', NULL, 4, '1st Academic Board 2024\n(19 January 2024)', 9, NULL, '14 December 2023', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO 47 P 13-21 NHQ-PCG DTD 04 MAR 24', NULL, NULL),
(80, 'CCGNO', 'Jyvoy Carlo G De Armas', 'CGNOC Class 104-2023', NULL, 4, '1st Academic Board 2024\n(19 January 2024)', 9, NULL, '14 December 2023', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO 47 P 13-21 NHQ-PCG DTD 04 MAR 24', NULL, NULL),
(81, 'CCGNO', 'Jay-ar B Campana', 'CGNOC Class 104-2023', NULL, 4, '1st Academic Board 2024\n(19 January 2024)', 9, NULL, '11 December 2023', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO 47 P 13-21 NHQ-PCG DTD 04 MAR 24', NULL, NULL),
(82, 'CCGNO', 'Joshua C Bayos', 'CGNOC Class 105-2023', NULL, 5, '1st Academic Board 2024\n(19 January 2024)', 9, NULL, '18 December 2023', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO 47 P 13-21 NHQ-PCG DTD 04 MAR 24', NULL, NULL),
(83, 'CCGNO', 'Jhamille M Gonzales', 'CGNOC Class 107-2023', NULL, 2, '1st Academic Board 2024\n(19 January 2024)', 9, NULL, '20 December 2023', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO 47 P 13-21 NHQ-PCG DTD 04 MAR 24', NULL, NULL),
(84, 'CCGNO', 'Arnie A Marquez', 'CGNOC Class 107-2023', NULL, 2, '1st Academic Board 2024\n(19 January 2024)', 9, NULL, '03 Decemeber 2023', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO 47 P 13-21 NHQ-PCG DTD 04 MAR 24', NULL, NULL),
(85, 'CCGNO', 'Shem R Gabieta', 'CGNOC Class 108-2023', NULL, 7, '1st Academic Board 2024\n(19 January 2024)', 9, NULL, '16 December 2023', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO 47 P 13-21 NHQ-PCG DTD 04 MAR 24', NULL, NULL),
(86, 'CCGNO', 'Shaqyille Igie A Loyola', 'CGNOC Class 108-2023', NULL, 7, '1st Academic Board 2024\n(19 January 2024)', 9, NULL, '08 December 2023', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO 47 P 13-21 NHQ-PCG DTD 04 MAR 24', NULL, NULL),
(87, 'CCGNO', 'Ian Lester M De Jesus', 'CGNOC Class 108-2023', NULL, 7, '1st Academic Board 2024\n(19 January 2024)', 9, NULL, '16 January 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO 47 P 13-21 NHQ-PCG DTD 04 MAR 24', NULL, NULL),
(88, 'CCGNO', 'Dam Edrian M Eli', 'CGNOC Class 108-2023', NULL, 7, '1st Academic Board 2024\n(19 January 2024)', 9, NULL, '16 January 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO 47 P 13-21 NHQ-PCG DTD 04 MAR 24', NULL, NULL),
(89, 'CCGNO', 'Anthony Delfin A Gabriola', 'CGNOC Class 108-2023', NULL, 7, '1st Academic Board 2024\n(19 January 2024)', 9, NULL, '16 January 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO 47 P 13-21 NHQ-PCG DTD 04 MAR 24', NULL, NULL),
(90, 'CCGNO', 'Regged M Angco', 'CGNOC Class 108-2023', NULL, 7, '1st Academic Board 2024\n(19 January 2024)', 9, NULL, '16 January 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO 47 P 13-21 NHQ-PCG DTD 04 MAR 24', NULL, NULL),
(91, 'CCGNO', 'Manilyn E Murial', 'CGNOC Class 101-2023', NULL, 6, '1st Academic Board 2024\n(19 January 2024)', 5, 'Lipomatous Mass, Anterior Mediastinum; Anterior Mitral Valve Prolapse with Mild mitral Regurgitation', '21 November 2023', NULL, 'Forwarded to CG-1, CG-12, CG Finance and The Command Surgeon (TCS) on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO 47 P 13-21 NHQ-PCG DTD 04 MAR 24', NULL, NULL),
(92, 'CCGNO', 'Sarah Mae B Ortilano', 'CGNOC Class 101-2023', NULL, 6, '1st Academic Board 2024\n(19 January 2024)', 5, 'Archilles Tendon Tear, Left', '07 December 2023', NULL, 'Forwarded to CG-1, CG-12, CG Finance and The Command Surgeon (TCS) on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(93, 'CCGNO', 'Lizamae J Flores', 'CGNOC Class 101-2023', NULL, 6, '1st Academic Board 2024\n(19 January 2024)', 7, 'Hypokalemic Periodic Paralysis; Hypokalemia Server- to be determined; Hyperthyroidism ruled out', 'Upon approval', NULL, 'Forwarded to CG-1, CG-12, CG Finance and The Command Surgeon (TCS) on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(94, 'CCGNO', 'Stella Maria Diosa A Siason', 'CGNOC Class 101-2023', NULL, 6, '1st Academic Board 2024\n(19 January 2024)', 7, 'Multinodular Non-Toxic Goiter', 'Upon approval', NULL, 'Forwarded to CG-1, CG-12, CG Finance and The Command Surgeon (TCS) on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(95, 'CCGNO', 'Eloisa Dela Cruz', 'CGNOC Class 101-2023', NULL, 6, '1st Academic Board 2024\n(19 January 2024)', 7, 'S-shaped Scoliosis: Cobb\'s angle 17.7° and 16.01°', 'Upon approval', NULL, 'Forwarded to CG-1, CG-12, CG Finance and The Command Surgeon (TCS) on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(96, 'CCGNO', 'Mary Britney Spears L Mengote', 'CGNOC Class 101-2023', NULL, 6, '1st Academic Board 2024\n(19 January 2024)', 7, 'Fecal Impaction s/p Hemorrhoidectomy', 'Upon approval', NULL, 'Forwarded to CG-1, CG-12, CG Finance and The Command Surgeon (TCS) on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(97, 'CCGNO', 'Khrizia Lane T Bello', 'CGNOC Class 101-2023', NULL, 6, '1st Academic Board 2024\n(19 January 2024)', 7, 'S-shaped Scoliosis', 'Upon approval', NULL, 'Forwarded to CG-1, CG-12, CG Finance and The Command Surgeon (TCS) on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(98, 'CCGNO', 'Aizen Ann A Lucy', 'CGNOC Class 101-2023', NULL, 6, '1st Academic Board 2024\n(19 January 2024)', 7, 'S-shaped Scoliosis', 'Upon approval', NULL, 'Forwarded to CG-1, CG-12, CG Finance and The Command Surgeon (TCS) on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(99, 'CCGNO', 'Welvin M Manzo', 'CGNOC Class 107-2023', NULL, 2, '1st Academic Board 2024\n(19 January 2024)', 5, 'Falsification of documents during application', '16 February 2024', NULL, 'Forwarded to CG12 on 03 February 2024', NULL, '2024-07-22 06:55:52', 'SO 46 P 1-12 NHQ-PCG DTD 01 MAR 24', NULL, NULL),
(100, 'CCGNO', 'Francis L Mon', 'CGNOC Class 108-2023', NULL, 7, '2nd Academic Board 2024\n( 07 February 2024 )', 9, NULL, '02 February 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 23 February 2024', NULL, '2024-07-22 06:55:52', 'SO NR 55 NHQ-PCG dtd 14 MARCH 2024', NULL, NULL),
(101, 'CCGNO', 'Kim-ji A Quiñones', 'CGNOC Class 101-2023', NULL, 6, '3rd Academic Board\n(20 February 2024)', 9, NULL, '16 February 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 27 March 2024', NULL, '2024-07-22 06:55:52', 'SO 83 P 17-26 NHQ-PCG 26 APRIL 24', NULL, NULL),
(102, 'CCGNO', 'Alliah Mikhaela A Garcia', 'CGNOC Class 101-2023', NULL, 6, '3rd Academic Board\n(20 February 2024)', 9, NULL, '16 February 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 27 March 2024', NULL, '2024-07-22 06:55:52', 'SO 83 P 17-26 NHQ-PCG 26 APRIL 24', NULL, NULL),
(103, 'CCGNO', 'Michelle M Tapac', 'CGNOC Class 101-2023', NULL, 6, '3rd Academic Board\n(20 February 2024)', 9, NULL, '18 February 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 27 March 2024', NULL, '2024-07-22 06:55:52', 'SO 83 P 17-26 NHQ-PCG 26 APRIL 24', NULL, NULL),
(104, 'CCGNO', 'Anagrace R Botilla', 'CGNOC Class 101-2023', NULL, 6, '3rd Academic Board\n(20 February 2024)', 9, NULL, '18 February 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 27 March 2024', NULL, '2024-07-22 06:55:52', 'SO 83 P 17-26 NHQ-PCG 26 APRIL 24', NULL, NULL),
(105, 'CCGNO', 'Claire Joi Anne K Ladao', 'CGNOC Class 101-2023', NULL, 6, '3rd Academic Board\n(20 February 2024)', 9, NULL, '16 February 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 27 March 2024', NULL, '2024-07-22 06:55:52', 'SO 83 P 17-26 NHQ-PCG 26 APRIL 24', NULL, NULL),
(106, 'CCGNO', 'Mariekris B Legasto', 'CGNOC Class 101-2023', NULL, 6, '3rd Academic Board\n(20 February 2024)', 9, NULL, '16 February 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 27 March 2024', NULL, '2024-07-22 06:55:52', 'SO 83 P 17-26 NHQ-PCG 26 APRIL 24', NULL, NULL),
(107, 'CCGNO', 'Christine K Castillo', 'CGNOC Class 101-2023', NULL, 6, '3rd Academic Board\n(20 February 2024)', 9, NULL, '16 February 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 27 March 2024', NULL, '2024-07-22 06:55:52', 'SO 83 P 17-26 NHQ-PCG 26 APRIL 24', NULL, NULL),
(108, 'CCGNO', 'Christle M Pareja', 'CGNOC Class 101-2023', NULL, 6, '3rd Academic Board\n(20 February 2024)', 9, NULL, '16 February 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 27 March 2024', NULL, '2024-07-22 06:55:52', 'SO 83 P 17-26 NHQ-PCG 26 APRIL 24', NULL, NULL),
(109, 'CCGNO', 'Hyacinth B Abanilla', 'CGNOC Class 101-2023', NULL, 6, '3rd Academic Board\n(20 February 2024)', 7, 'Meniscal Contusion, Right knee', 'Upon approval', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 27 March 2024', NULL, '2024-07-22 06:55:52', 'SO 83 P 17-26 NHQ-PCG 26 APRIL 24', NULL, NULL),
(110, 'CCGNO', 'Tricia S Baldemor', 'CGNOC Class 101-2023', NULL, 6, '3rd Academic Board\n(20 February 2024)', 7, 'Chronic Venous Insufficiency, Bilateral', 'Upon approval', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 27 March 2024', NULL, '2024-07-22 06:55:52', 'SO 83 P 17-26 NHQ-PCG 26 APRIL 24', NULL, NULL),
(111, 'CCGNO', 'Camille Nicole M Naboa', 'CGNOC Class 101-2023', NULL, 6, '4th Academic Board (06 March 2024)', 5, 'AWOL', '25 October 2023', NULL, 'Forwarded to CG-1, CG-12, and Finance on 15 April 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(112, 'CCGNO', 'Karen Elizabeth M Nillo', 'CGNOC Class 101-2023', NULL, 6, '4th Academic Board (06 March 2024)', 5, 'AWOL', '25 October 2023', NULL, 'Forwarded to CG-1, CG-12, and Finance on 15 April 2024', NULL, '2024-07-22 06:55:52', 'SO-93 NHQ-PCG DTD 13 MAY 2024', NULL, NULL),
(113, 'CCGNO', 'Rubie-Ann T Mangaring', 'CGNOC Class 101-2023', NULL, 6, '4th Academic Board (06 March 2024)', 5, '9', '20 February 2024', NULL, 'Forwarded to CG-1, CG-12, and Finance on 15 April 2024', NULL, '2024-07-22 06:55:52', 'SO 102 P 18-22 NHQ-PCG DTD 24 MAY 24', NULL, NULL),
(114, 'CCGNO', 'Danjeck Christian P De Luna', 'CGNOC Class 104-2023', NULL, 4, '4th Academic Board (06 March 2024)', 5, 'Vehicular Accident resulting to one (1) death Violation of the Memorandum 001-0224 para 5 sub para d (5), Violation of CRM s.2014 Chapter IV Sec II, Violation of CRM s.2014 Chapter VI Sec 2(a) that falls under Chapter IV Sec 9(a)', '06 March 2024', NULL, 'Forwarded to CG-1, CG-12, and Finance on 15 April 2024', NULL, '2024-07-22 06:55:52', 'SO 97 NHQ-PCG DTD 18 MAY 2024', NULL, NULL),
(115, 'CCGNO', 'Wilfredo S Alcala Jr', 'CGNOC Class 108-2023', NULL, 7, NULL, 5, NULL, '29 March 2024', NULL, NULL, NULL, '2024-07-22 06:55:52', 'SO 97 NHQ-PCG DTD 18 MAY 2025', NULL, NULL),
(116, 'CCGNO', 'Mhel John Brian L Mazo', 'CGNOC Class 106-2023', NULL, 9, NULL, 5, NULL, '29 March 2024', NULL, NULL, NULL, '2024-07-22 06:55:52', 'SO 97 NHQ-PCG DTD 18 MAY 2026', NULL, NULL),
(117, 'CCGNO', 'John Michael D Biol', 'CGNOC Class 106-2023', NULL, 9, '4th Academic Board (06 March 2024)', 7, 'Severe Ulcerative Colitis, S/P Colectomy Anastomosis, Colostomy; Gram Negative Bacteremia (Klebsiella); Acute Kidney Injury secondary to Acute Tubular Necrosis, S/P four (4) sessions of Hemiodialysis; Pleural Effusion, Bilateral, S/P Thoracentesis', 'Upon Approval', NULL, 'Forwarded to CG-1, CG-12, and Finance on 15 April 2024', NULL, '2024-07-22 06:55:52', 'SO 102 P 18-22 NHQ-PCG DTD 24 MAY 24', NULL, NULL),
(118, 'CCGNO', 'Junelyn N Cañete', 'CGNOC Class 101-2023', NULL, 6, '4th Academic Board (06 March 2024)', 5, '9', '21 February 2024', NULL, 'Forwarded to CG-1, CG-12, and Finance on 15 April 2024', NULL, '2024-07-22 06:55:52', 'SO 102 P 18-22 NHQ-PCG DTD 24 MAY 24', NULL, NULL),
(119, 'CCGNO', 'Clifford C Eslao', 'CGNOC Class 104-2023', NULL, 4, '5th Academic Board (26 April 2026)', 5, 'violation of Chapter VI, Section 2.a (I) (xi) under the CRM s. 2014 for drinking intoxicating liquor inside the Drill Instrucots\' barracks without permission', '26 April 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 08 May 2024', NULL, '2024-07-22 06:55:52', 'SO 103 P 2-3 DTD 27 MAY 2024', NULL, NULL),
(120, 'CCGNO', 'Rexzil Alonzo', 'CGNOC Class 104-2023', NULL, 4, '5th Academic Board (26 April 2026)', 5, 'violation of Chapter VI, Section 2.a (iI) (xvi) for leaving their quarters after TAPS without authority and Chapter VI, Section 2.a (I) (xv) for leaving the RTC facility without authority; Chapter VI, Section 2.a (I) (xl) since their demanor of blatantly disobeying a policy of exhibiting undersirable habits and traits', '26 April 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 08 May 2025', NULL, '2024-07-22 06:55:52', 'SO 103 P 2-3 DTD 27 MAY 2024', NULL, NULL),
(121, 'CCGNO', 'Jericho S Camacho', 'CGNOC Class 104-2023', NULL, 4, '5th Academic Board (26 April 2026)', 5, 'violation of Chapter VI, Section 2.a (iI) (xvi) for leaving their quarters after TAPS without authority and Chapter VI, Section 2.a (I) (xv) for leaving the RTC facility without authority; Chapter VI, Section 2.a (I) (xl) since their demanor of blatantly disobeying a policy of exhibiting undersirable habits and traits', '26 April 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 08 May 2026', NULL, '2024-07-22 06:55:52', 'SO 103 P 2-3 DTD 27 MAY 2024', NULL, NULL),
(122, 'CCGNO', 'Fredelino A Dian Jr', 'CGNOC Class 104-2023', NULL, 4, '5th Academic Board (26 April 2026)', 5, 'violation of Chapter VI, Section 2.a (iI) (xvi) for leaving their quarters after TAPS without authority and Chapter VI, Section 2.a (I) (xv) for leaving the RTC facility without authority; Chapter VI, Section 2.a (I) (xl) since their demanor of blatantly disobeying a policy of exhibiting undersirable habits and traits', '26 April 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 08 May 2027', NULL, '2024-07-22 06:55:52', 'SO 103 P 2-3 DTD 27 MAY 2024', NULL, NULL),
(123, 'CCGNO', 'Joey Alvin A Dian', 'CGNOC Class 104-2023', NULL, 4, '5th Academic Board (26 April 2026)', 5, 'violation of Chapter VI, Section 2.a (iI) (xvi) for leaving their quarters after TAPS without authority and Chapter VI, Section 2.a (I) (xv) for leaving the RTC facility without authority; Chapter VI, Section 2.a (I) (xl) since their demanor of blatantly disobeying a policy of exhibiting undersirable habits and traits', '26 April 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 08 May 2028', NULL, '2024-07-22 06:55:52', 'SO 103 P 2-3 DTD 27 MAY 2024', NULL, NULL),
(124, 'CCGNO', 'Jofen C Joseph', 'CGNOC Class 104-2023', NULL, 4, '5th Academic Board (26 April 2026)', 5, 'violation of Chapter VI, Section 2.a (iI) (xvi) for leaving their quarters after TAPS without authority and Chapter VI, Section 2.a (I) (xv) for leaving the RTC facility without authority; Chapter VI, Section 2.a (I) (xl) since their demanor of blatantly disobeying a policy of exhibiting undersirable habits and traits', '26 April 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 08 May 2029', NULL, '2024-07-22 06:55:52', 'SO 103 P 2-3 DTD 27 MAY 2024', NULL, NULL),
(125, 'CCGNO', 'Jonvic G Longos', 'CGNOC Class 106-2023', NULL, 9, '5th Academic Board (26 April 2026)', 5, 'violation of Chapter VI, Section 2.a (l) (xl) disobeyed the training center\'s policy of not having any alcoholic drink whtout authority', '26 April 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 08 May 2030', NULL, '2024-07-22 06:55:52', 'SO 103 P 2-3 DTD 27 MAY 2024', NULL, NULL),
(126, 'CCGNO', 'Manny O Mahusay', 'CGNOC Class 106-2023', NULL, 9, '5th Academic Board (26 April 2026)', 5, 'violation of Chapter VI, Section 2.a (l) (xl) disobeyed the training center\'s policy of not having any alcoholic drink whtout authority', '26 April 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 08 May 2031', NULL, '2024-07-22 06:55:52', 'SO 103 P 2-3 DTD 27 MAY 2024', NULL, NULL),
(127, 'CCGNO', 'Franklen C Suarez', 'CGNOC Class 106-2023', NULL, 9, '5th Academic Board (26 April 2026)', 5, 'violation of Chapter VI, Section 2.a (l) (xl) disobeyed the training center\'s policy of not having any alcoholic drink whtout authority', '26 April 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 08 May 2032', NULL, '2024-07-22 06:55:52', 'SO 103 P 2-3 DTD 27 MAY 2024', NULL, NULL),
(128, 'CCGNO', 'Antonio B Vargas', 'CGNOC Class 107-2023', NULL, 2, '5th Academic Board (26 April 2026)', 5, 'violation of Chapter VI, Section 2.a (l) (xv) for leaving the RTC Facility without authority to comesume numberous liquor and Chapter VI, Section 2.a (l) (xl) for consuming alcoholic drinks which displays undersirable traits.', '26 April 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 08 May 2033', NULL, '2024-07-22 06:55:52', 'SO 103 P 2-3 DTD 27 MAY 2024', NULL, NULL),
(129, 'CCGNO', 'Jojo B Nacional', 'CGNOC Class 107-2023', NULL, 2, '5th Academic Board (26 April 2026)', 5, 'violation of Chapter VI, Section 2.a (l) (xv) for leaving the RTC Facility without authority to comesume numberous liquor and Chapter VI, Section 2.a (l) (xl) for consuming alcoholic drinks which displays undersirable traits.', '26 April 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 08 May 2034', NULL, '2024-07-22 06:55:52', 'SO 103 P 2-3 DTD 27 MAY 2024', NULL, NULL),
(130, 'CCGNO', 'Kayle Briane B Natanauan', 'CGNOC Class 107-2023', NULL, 2, '5th Academic Board (26 April 2026)', 5, 'violation of Chapter VI, Section 2.a (l) (xv) for leaving the RTC Facility without authority to comesume numberous liquor and Chapter VI, Section 2.a (l) (xl) for consuming alcoholic drinks which displays undersirable traits.', '26 April 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 08 May 2035', NULL, '2024-07-22 06:55:52', 'SO 103 P 2-3 DTD 27 MAY 2024', NULL, NULL),
(131, 'CCGNO', 'Wilmar D Pelina', 'CGNOC Class 107-2023', NULL, 2, '5th Academic Board (26 April 2026)', 5, 'violation of Chapter VI, Section 2.a (l) (xv) for leaving the RTC Facility without authority to comesume numberous liquor and Chapter VI, Section 2.a (l) (xl) for consuming alcoholic drinks which displays undersirable traits.', '26 April 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 08 May 2036', NULL, '2024-07-22 06:55:52', 'SO 103 P 2-3 DTD 27 MAY 2024', NULL, NULL),
(132, 'CCGNO', 'Adzman Maharail Marhaban', 'CGNOC Class 107-2023', NULL, 2, '5th Academic Board (26 April 2026)', 5, 'violation of Chapter VI, Section 2.a (l) (xl) disobeyed the training center\'s policy of not having any alcoholic drink whtout authority', '26 April 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 08 May 2037', NULL, '2024-07-22 06:55:52', 'SO 103 P 2-3 DTD 27 MAY 2024', NULL, NULL),
(133, 'CCGNO', 'Christine Mae E Teyab', 'CGNOC Class 101-2023', NULL, 6, '6th Academic Board (10 June 2024)', 5, 'violation of Chapter VI, Section 2.I.iv by committing the act of taking pictures and videos of another trainee while fully naked in the shower area and posting it to the Facebook chat group which clearly discredits/ dishonor the name of the CGETDC; Chapter VI, Section 2.I.xix since the act committed is prejudicial to the good order and discipline of trainees within the RTCs; Chapter VI, Section 2.I.xxii as the acts are considered immoral and improper conduct on any occasion; and Chapter VI, Section 2.I.xxviii for the voyeuristic act of taking nude photo and video by the respondent trainees as a form of sexual misconduct under the Basic CRM s.2014', '23 May 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 01 July 2024', NULL, '2024-07-22 06:55:52', NULL, NULL, NULL),
(134, 'CCGNO', 'Herolyn B Salvado', 'CGNOC Class 101-2023', NULL, 6, '6th Academic Board (10 June 2024)', 5, 'violation of Chapter VI, Section 2.I.iv by committing the act of taking pictures and videos of another trainee while fully naked in the shower area and posting it to the Facebook chat group which clearly discredits/ dishonor the name of the CGETDC; Chapter VI, Section 2.I.xix since the act committed is prejudicial to the good order and discipline of trainees within the RTCs; Chapter VI, Section 2.I.xxii as the acts are considered immoral and improper conduct on any occasion; and Chapter VI, Section 2.I.xxviii for the voyeuristic act of taking nude photo and video by the respondent trainees as a form of sexual misconduct under the Basic CRM s.2014', '23 May 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 01 July 2024', NULL, '2024-07-22 06:55:52', NULL, NULL, NULL),
(135, 'CCGNO', 'Queenie Joy B Blanquera', 'CGNOC Class 101-2023', NULL, 6, '6th Academic Board (10 June 2024)', 5, 'Chapter VI Section 2.a.i \"Disobedience, willful disregard or defiance to lawful orders\" of her Liberty Pass; Chapter VI Section 2.I.xv \"Unathorized Absence from CGETDC/Schools\" and Chapter VI Section 2.I.xvi \"Unauthorized Absence from Quarters\" on being absent from the training facility more than 9 hours and 30 minutes by deliberately leaving the Province of Misamis Oriental by taking a flight to Manila without proper authority; and Chapter VI Section 2.a.xix \"Disorders or Neglect\" as her act of leaving the limits of Misamis Oriental and flying without authority to Manila prejudicial to good order and discipline under the Coast Guard Basic CRM s.2014', '24 May 2024', NULL, 'Forwarded to CG-1, CG-12 and CG Finance on 01 July 2024', NULL, '2024-07-22 06:55:52', NULL, NULL, NULL),
(137, 'CCGNO', 'John Louis Uru', '4', '28', 3, '', 9, NULL, NULL, '0', NULL, '2024', '2024-07-22 09:20:08', '0', NULL, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `rank` varchar(5) DEFAULT NULL,
  `fullname` varchar(29) DEFAULT NULL,
  `class` int(2) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `rtc` int(1) DEFAULT NULL,
  `acadsess` varchar(47) DEFAULT NULL,
  `nature_termi` varchar(27) DEFAULT NULL,
  `remarks` varchar(658) DEFAULT NULL,
  `date_endorsed` varchar(17) DEFAULT NULL,
  `reso` varchar(68) DEFAULT NULL,
  `status` varchar(86) DEFAULT NULL,
  `year` varchar(35) DEFAULT NULL,
  `so` varchar(76) DEFAULT NULL,
  `mr` varchar(10) DEFAULT NULL,
  `is_terminated` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`id`, `date`, `rank`, `fullname`, `class`, `age`, `rtc`, `acadsess`, `nature_termi`, `remarks`, `date_endorsed`, `reso`, `status`, `year`, `so`, `mr`, `is_terminated`) VALUES
(1, '2025-03-24 09:05:09', 'CCGNO', 'ACASIO RYAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2025-03-24 09:05:09', 'CCGNO', 'ACBANG JOMAR ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2025-03-24 09:05:09', 'CCGNO', 'ADUAN  ALVIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2025-03-24 09:05:09', 'CCGNO', 'AGUSTIN ALLAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2025-03-24 09:05:09', 'CCGNO', 'AMA EMMANUEL JOSHUA', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2025-03-24 09:05:09', 'CCGNO', 'AMIL VASHREE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2025-03-24 09:05:09', 'CCGNO', 'AMMATAN SUWAIB', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2025-03-24 09:05:09', 'CCGNO', 'ANCHETA LARRY DEO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2025-03-24 09:05:09', 'CCGNO', 'ANDES JUSTIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2025-03-24 09:05:09', 'CCGNO', 'ANGELINO CARLO ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2025-03-24 09:05:09', 'CCGNO', 'ANSAW ADZMIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2025-03-24 09:05:09', 'CCGNO', 'AQUINO MELVIN DHAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2025-03-24 09:05:09', 'CCGNO', 'ATCHUELA ROMAR', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2025-03-24 09:05:09', 'CCGNO', 'AVILA CARL GAVIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2025-03-24 09:05:09', 'CCGNO', 'BAJADOR RODAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2025-03-24 09:05:09', 'CCGNO', 'BARRIOGA NICHOLE', 3, NULL, 1, NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2025-03-24 09:05:09', 'CCGNO', 'BARRO  JOHN LOYD', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2025-03-24 09:05:09', 'CCGNO', 'BARTE CHESTER MARK', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2025-03-24 09:05:09', 'CCGNO', 'BARTOLATA ARJAY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2025-03-24 09:05:09', 'CCGNO', 'BASCO KEEPLER JAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2025-03-24 09:05:09', 'CCGNO', 'BAUYON  JHUN CARLO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2025-03-24 09:05:09', 'CCGNO', 'BELMES VENCE RAY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2025-03-24 09:05:09', 'CCGNO', 'BERENGUEL KARL LOWELL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2025-03-24 09:05:09', 'CCGNO', 'BERIñA ROMAR ALBERT', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2025-03-24 09:05:09', 'CCGNO', 'BERNARDINO JAMES ROBERT', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2025-03-24 09:05:09', 'CCGNO', 'BERSABE JULIUS ARVIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2025-03-24 09:05:09', 'CCGNO', 'BERSABE VINCENT', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2025-03-24 09:05:09', 'CCGNO', 'BOBEJES JOVINEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2025-03-24 09:05:09', 'CCGNO', 'BOLINA JULIUS ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '2025-03-24 09:05:09', 'CCGNO', 'BOLO ALWIN ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '2025-03-24 09:05:09', 'CCGNO', 'BONA JOHN REY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '2025-03-24 09:05:09', 'CCGNO', 'BONAOBRA KIM JOSEPH', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '2025-03-24 09:05:09', 'CCGNO', 'BORBE NICKSON', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '2025-03-24 09:05:09', 'CCGNO', 'BROñOLA FRANCES', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '2025-03-24 09:05:09', 'CCGNO', 'BUENDIA JUSTINE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '2025-03-24 09:05:09', 'CCGNO', 'BURCE MARK EDWARD', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '2025-03-24 09:05:09', 'CCGNO', 'CACAYURAN LEOMAR', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '2025-03-24 09:05:09', 'CCGNO', 'CALUZA MARC LOUIE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '2025-03-24 09:05:09', 'CCGNO', 'CASIRAYAN JAY-R', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '2025-03-24 09:05:09', 'CCGNO', 'CEREZO MARLON', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '2025-03-24 09:05:09', 'CCGNO', 'CESTINA ANDREW', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '2025-03-24 09:05:09', 'CCGNO', 'CITAL JOVEMAR', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '2025-03-24 09:05:09', 'CCGNO', 'COME ERMAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '2025-03-24 09:05:09', 'CCGNO', 'DE LEON DAEVID ADRIAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '2025-03-24 09:05:09', 'CCGNO', 'DE LUNA  JOHN HENRY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '2025-03-24 09:05:09', 'CCGNO', 'DE PAZ DARWIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '2025-03-24 09:05:09', 'CCGNO', 'DE TAZA IVAN LOUIE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '2025-03-24 09:05:09', 'CCGNO', 'DE VILLA  JULIUS ANDREI', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '2025-03-24 09:05:09', 'CCGNO', 'DELMONTE JOMARIE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '2025-03-24 09:05:09', 'CCGNO', 'DOCTOLERO KHAYL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '2025-03-24 09:05:09', 'CCGNO', 'DURAN CHRISTEL IVAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '2025-03-24 09:05:09', 'CCGNO', 'ELPA ADAREL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '2025-03-24 09:05:09', 'CCGNO', 'EMMID ALMUYADZPHY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '2025-03-24 09:05:09', 'CCGNO', 'EPRES JOHN PAUL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '2025-03-24 09:05:09', 'CCGNO', 'ESTOESTA REY MARK', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '2025-03-24 09:05:09', 'CCGNO', 'FAMISARAN SV', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '2025-03-24 09:05:09', 'CCGNO', 'FLOR MARK BERNARD', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '2025-03-24 09:05:09', 'CCGNO', 'FLORA NEIL CHRISTIAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '2025-03-24 09:05:09', 'CCGNO', 'FRONDA JOHN PAUL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '2025-03-24 09:05:09', 'CCGNO', 'GADING MARK ANTHONY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '2025-03-24 09:05:09', 'CCGNO', 'GAGUCAS PATRICK JOHN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '2025-03-24 09:05:09', 'CCGNO', 'GAIN MARK ANTHONY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '2025-03-24 09:05:09', 'CCGNO', 'GALASAO  STEPHEN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '2025-03-24 09:05:09', 'CCGNO', 'GALIAS CHRIS JOHN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '2025-03-24 09:05:09', 'CCGNO', 'GAMUEDA JUNMARK DANIEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '2025-03-24 09:05:09', 'CCGNO', 'GARCIA WINZY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '2025-03-24 09:05:09', 'CCGNO', 'GOMEZ CHRISTIAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '2025-03-24 09:05:09', 'CCGNO', 'HORTADO JEROME', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '2025-03-24 09:05:09', 'CCGNO', 'IBABAO JHON LERY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '2025-03-24 09:05:09', 'CCGNO', 'IDDOBA GENESIS', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '2025-03-24 09:05:09', 'CCGNO', 'ISNAJI NURKADAR', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '2025-03-24 09:05:09', 'CCGNO', 'JAIN AMAR', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '2025-03-24 09:05:09', 'CCGNO', 'JAMORA ALVIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, '2025-03-24 09:05:09', 'CCGNO', 'JAVIER ALVIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '2025-03-24 09:05:09', 'CCGNO', 'JAYME JONAS', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '2025-03-24 09:05:09', 'CCGNO', 'KIDSOLAN JAY MARK', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, '2025-03-24 09:05:09', 'CCGNO', 'LAZO JOVEN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '2025-03-24 09:05:09', 'CCGNO', 'LITAN JOHN RHOYD', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '2025-03-24 09:05:09', 'CCGNO', 'LOPEZ JOHN MICHAEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '2025-03-24 09:05:09', 'CCGNO', 'LUBBUI MARK CHRISTIAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '2025-03-24 09:05:09', 'CCGNO', 'LUNTUK RONDEMAR', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '2025-03-24 09:05:09', 'CCGNO', 'LUSANDE RYAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '2025-03-24 09:05:09', 'CCGNO', 'MAGUMCIA JAN ANDRE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '2025-03-24 09:05:09', 'CCGNO', 'MALICDEM JIM ALFRED', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '2025-03-24 09:05:09', 'CCGNO', 'MANZANILLA RENZ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '2025-03-24 09:05:09', 'CCGNO', 'MARANTAN JOEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '2025-03-24 09:05:09', 'CCGNO', 'MARCOS ZYRUS', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '2025-03-24 09:05:09', 'CCGNO', 'MARIGZA JOVANIE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '2025-03-24 09:05:09', 'CCGNO', 'MARIN MICHAEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '2025-03-24 09:05:09', 'CCGNO', 'MARQUEZ BIEN MICHAEL VINCENT', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '2025-03-24 09:05:09', 'CCGNO', 'MARZO GLEN PAUL ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '2025-03-24 09:05:09', 'CCGNO', 'MATNAO JHON PAUL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, '2025-03-24 09:05:09', 'CCGNO', 'MENDIOLA ERNEST RYAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, '2025-03-24 09:05:09', 'CCGNO', 'MERANO JILL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, '2025-03-24 09:05:09', 'CCGNO', 'MISOLAS MARK KENNETHSON', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, '2025-03-24 09:05:09', 'CCGNO', 'MOLINA MICHAEL JAY ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, '2025-03-24 09:05:09', 'CCGNO', 'MORALES JOHN VINCENT', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, '2025-03-24 09:05:09', 'CCGNO', 'MORTOS MARK JUDE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, '2025-03-24 09:05:09', 'CCGNO', 'MUNIO JOHN LEO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, '2025-03-24 09:05:09', 'CCGNO', 'NAMBIO KHRIAN CARLO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, '2025-03-24 09:05:09', 'CCGNO', 'NATANAUAN RODEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, '2025-03-24 09:05:09', 'CCGNO', 'NAVALTA KIM ARJAY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, '2025-03-24 09:05:09', 'CCGNO', 'NAWAL DIVSON', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '2025-03-24 09:05:09', 'CCGNO', 'NOGALO JOHN DIRECK', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, '2025-03-24 09:05:09', 'CCGNO', 'OBEDENCIO TOHP', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, '2025-03-24 09:05:09', 'CCGNO', 'OCAY RUSSEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, '2025-03-24 09:05:09', 'CCGNO', 'OCSON JERICO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, '2025-03-24 09:05:09', 'CCGNO', 'OLARTE JR FELIPE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, '2025-03-24 09:05:09', 'CCGNO', 'OLEGO DANN KEVIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, '2025-03-24 09:05:09', 'CCGNO', 'ORTUA JR EMMANUEL  ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, '2025-03-24 09:05:09', 'CCGNO', 'PALAROAN ROMMEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, '2025-03-24 09:05:09', 'CCGNO', 'PALOPALO JOHN MICHAEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, '2025-03-24 09:05:09', 'CCGNO', 'PANEDA JR DOMINADOR', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '2025-03-24 09:05:09', 'CCGNO', 'PARIAN REYNARD', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, '2025-03-24 09:05:09', 'CCGNO', 'PASCUAL GLEN JASPER', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, '2025-03-24 09:05:09', 'CCGNO', 'PATRICIO JR ROMEO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, '2025-03-24 09:05:09', 'CCGNO', 'PINCA AARON', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, '2025-03-24 09:05:09', 'CCGNO', 'PLACER RONALD', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, '2025-03-24 09:05:09', 'CCGNO', 'POCDIHON ARNEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, '2025-03-24 09:05:09', 'CCGNO', 'POLON SEAN MICHAEL ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, '2025-03-24 09:05:09', 'CCGNO', 'PUNZALAN MICHAEL  ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, '2025-03-24 09:05:09', 'CCGNO', 'QUILATES JR RAYMUNDO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, '2025-03-24 09:05:09', 'CCGNO', 'RAMIL TRISTAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, '2025-03-24 09:05:09', 'CCGNO', 'RANGES MARLOU KENNETH', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, '2025-03-24 09:05:09', 'CCGNO', 'REGALA MARK JERWIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, '2025-03-24 09:05:09', 'CCGNO', 'REGALA BRIAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, '2025-03-24 09:05:09', 'CCGNO', 'REPONES ANGELO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, '2025-03-24 09:05:09', 'CCGNO', 'REPONES JOHN CRIS', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, '2025-03-24 09:05:09', 'CCGNO', 'ROMERO GERBEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, '2025-03-24 09:05:09', 'CCGNO', 'ROQUE JOHN REY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, '2025-03-24 09:05:09', 'CCGNO', 'ROXAS ANDRIAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '2025-03-24 09:05:09', 'CCGNO', 'RUBINO DHEMIE JOSEPH', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '2025-03-24 09:05:09', 'CCGNO', 'RUIZ JR LEONIDES', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, '2025-03-24 09:05:09', 'CCGNO', 'SADIASA MARK BETH', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, '2025-03-24 09:05:09', 'CCGNO', 'SAPNAY DENMARK', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, '2025-03-24 09:05:09', 'CCGNO', 'SECRETARIO JERALD', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, '2025-03-24 09:05:09', 'CCGNO', 'SERAFICA JOHN KENNETH PAUL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, '2025-03-24 09:05:09', 'CCGNO', 'SHA SHAJID', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, '2025-03-24 09:05:09', 'CCGNO', 'SILVANO JR RAMON', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, '2025-03-24 09:05:09', 'CCGNO', 'SILVANO   KIM-KIM', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, '2025-03-24 09:05:09', 'CCGNO', 'SINFOROSO JAY-AR', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, '2025-03-24 09:05:09', 'CCGNO', 'SORIANO JR ALVIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, '2025-03-24 09:05:09', 'CCGNO', 'SUAIB ABBAS', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, '2025-03-24 09:05:09', 'CCGNO', 'SUMARDE JEREMIAH', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, '2025-03-24 09:05:09', 'CCGNO', 'TALAMISAN ANGELO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, '2025-03-24 09:05:09', 'CCGNO', 'TALANIA EISENLOISE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, '2025-03-24 09:05:09', 'CCGNO', 'TAMAYO DARYL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, '2025-03-24 09:05:09', 'CCGNO', 'TAMPES JHON PATRICK', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, '2025-03-24 09:05:09', 'CCGNO', 'TANDOC BENJIE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, '2025-03-24 09:05:09', 'CCGNO', 'TERRIBLE JR VINCE JOSHUA', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, '2025-03-24 09:05:09', 'CCGNO', 'TOLEDO MARK VINCENT', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, '2025-03-24 09:05:09', 'CCGNO', 'TOLIBAS RAYMOND', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, '2025-03-24 09:05:09', 'CCGNO', 'TUASTOMBAN MAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, '2025-03-24 09:05:09', 'CCGNO', 'TULANG JR MAGNO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, '2025-03-24 09:05:09', 'CCGNO', 'TUZON JACK', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, '2025-03-24 09:05:09', 'CCGNO', 'VALDEHUEZA ERIC', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, '2025-03-24 09:05:09', 'CCGNO', 'VENTURA ALVIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, '2025-03-24 09:05:09', 'CCGNO', 'VIADOR ANGELO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, '2025-03-24 09:05:09', 'CCGNO', 'VILLA KENT ALDER', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, '2025-03-24 09:05:09', 'CCGNO', 'VILLAMOR GIL JERIC', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, '2025-03-24 09:05:09', 'CCGNO', 'VILLOSO JASON AVE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, '2025-03-24 09:05:09', 'CCGNO', 'ABUNDA ERNEST JOHN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, '2025-03-24 09:05:09', 'CCGNO', 'ALEGRE JHONKEN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, '2025-03-24 09:05:09', 'CCGNO', 'AñONUEVO CHRISTIAN MEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, '2025-03-24 09:05:09', 'CCGNO', 'ANTIPOLO RODRIGO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, '2025-03-24 09:05:09', 'CCGNO', 'AQUILINO ALBERT', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, '2025-03-24 09:05:09', 'CCGNO', 'ARINGO STEPHEN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, '2025-03-24 09:05:09', 'CCGNO', 'BALANGITAN MICHAEL ANGELO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, '2025-03-24 09:05:09', 'CCGNO', 'BALITAON JHONNIE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, '2025-03-24 09:05:09', 'CCGNO', 'BAñAS  FLETCHER', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, '2025-03-24 09:05:09', 'CCGNO', 'BASILLA RONALD', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, '2025-03-24 09:05:09', 'CCGNO', 'BELISTA JR JOSE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, '2025-03-24 09:05:09', 'CCGNO', 'BERBA  ALJON', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, '2025-03-24 09:05:09', 'CCGNO', 'BIEN MARK ANTHONY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, '2025-03-24 09:05:09', 'CCGNO', 'BONAFE KIM GABRIEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, '2025-03-24 09:05:09', 'CCGNO', 'BORETA RONNEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, '2025-03-24 09:05:09', 'CCGNO', 'BORIGAS JOVEN FRANTZ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, '2025-03-24 09:05:09', 'CCGNO', 'BORLAZA DAREN ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, '2025-03-24 09:05:09', 'CCGNO', 'BOSTON JEREMY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, '2025-03-24 09:05:09', 'CCGNO', 'BRANZUELA JOHN PAUL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, '2025-03-24 09:05:09', 'CCGNO', 'CAMATA DHARWIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, '2025-03-24 09:05:09', 'CCGNO', 'CAñEBA JOHN HAROLD', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, '2025-03-24 09:05:09', 'CCGNO', 'CAPARIñO LARRY  ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, '2025-03-24 09:05:09', 'CCGNO', 'CELESTIAL CARL DOMINIC', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, '2025-03-24 09:05:09', 'CCGNO', 'CLAPIS JEREMY PAUL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, '2025-03-24 09:05:09', 'CCGNO', 'CUATOR TOM PATRICK', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, '2025-03-24 09:05:09', 'CCGNO', 'DADIOS JHON MICHAEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, '2025-03-24 09:05:09', 'CCGNO', 'DALANON NAZARENO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, '2025-03-24 09:05:09', 'CCGNO', 'DE GUZMAN ERRON ZYMON', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, '2025-03-24 09:05:09', 'CCGNO', 'DILAO PETER JUDE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, '2025-03-24 09:05:09', 'CCGNO', 'DOMALAYAS JOHN ALEX', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, '2025-03-24 09:05:09', 'CCGNO', 'DOMINGUIANO REYMAR', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, '2025-03-24 09:05:09', 'CCGNO', 'ESPLANA RALPH GEOFFREY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, '2025-03-24 09:05:09', 'CCGNO', 'ESQUILLO JR RITCHIE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, '2025-03-24 09:05:09', 'CCGNO', 'ESTADILLA ROMOE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, '2025-03-24 09:05:09', 'CCGNO', 'ESTOCADO ELY JAY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, '2025-03-24 09:05:09', 'CCGNO', 'FAJARDO  CHARBOURN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, '2025-03-24 09:05:09', 'CCGNO', 'FERNANDEZ CELSO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, '2025-03-24 09:05:09', 'CCGNO', 'FLOTILDES III GREGORIO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, '2025-03-24 09:05:09', 'CCGNO', 'FONTANILLA IAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, '2025-03-24 09:05:09', 'CCGNO', 'FONTANILLA JOPET', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, '2025-03-24 09:05:09', 'CCGNO', 'GABRIEL JERWIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, '2025-03-24 09:05:09', 'CCGNO', 'GAMBA JASSON', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, '2025-03-24 09:05:09', 'CCGNO', 'GARCIA REYCE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, '2025-03-24 09:05:09', 'CCGNO', 'GASTILO RYAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, '2025-03-24 09:05:09', 'CCGNO', 'GOLETA MICHAEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, '2025-03-24 09:05:09', 'CCGNO', 'IBARRONDO JOHN KENNETH  ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, '2025-03-24 09:05:09', 'CCGNO', 'LAZADO EMMANUEL  ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, '2025-03-24 09:05:09', 'CCGNO', 'LLAVE ARVY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, '2025-03-24 09:05:09', 'CCGNO', 'LLOVIT BEMARD JONES', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, '2025-03-24 09:05:09', 'CCGNO', 'LOVINO NAEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, '2025-03-24 09:05:09', 'CCGNO', 'LUMBAO MANLOURD', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, '2025-03-24 09:05:09', 'CCGNO', 'MACINAS MARC JOEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, '2025-03-24 09:05:09', 'CCGNO', 'MANZANILLO ROBERT', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, '2025-03-24 09:05:09', 'CCGNO', 'MANZANO ROLLY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, '2025-03-24 09:05:09', 'CCGNO', 'MARBIDA MELLAN CHRISTIAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, '2025-03-24 09:05:09', 'CCGNO', 'MENDIOLA MAVERICK', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, '2025-03-24 09:05:09', 'CCGNO', 'MESA JOASH', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, '2025-03-24 09:05:09', 'CCGNO', 'MIRABUENO JR PERCIVAL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, '2025-03-24 09:05:09', 'CCGNO', 'MIRANDA YMERNEL CHRISTIAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, '2025-03-24 09:05:09', 'CCGNO', 'MISON JOHN EDWIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, '2025-03-24 09:05:09', 'CCGNO', 'MORENO JOHN ROBERT', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, '2025-03-24 09:05:09', 'CCGNO', 'MOSATALLA MICHAEL JOSEPH', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, '2025-03-24 09:05:09', 'CCGNO', 'MUNDA RYANN LEE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, '2025-03-24 09:05:09', 'CCGNO', 'NERI RANDALL JHAMES', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, '2025-03-24 09:05:09', 'CCGNO', 'NIPA ZENMAR', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, '2025-03-24 09:05:09', 'CCGNO', 'OLIQUINO BERNARD', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, '2025-03-24 09:05:09', 'CCGNO', 'OLLETE JERICK', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, '2025-03-24 09:05:09', 'CCGNO', 'OMBAO MARK LESTER', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, '2025-03-24 09:05:09', 'CCGNO', 'ORTEGA LEOMAR', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, '2025-03-24 09:05:09', 'CCGNO', 'OYARDO JOHN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, '2025-03-24 09:05:09', 'CCGNO', 'PALENCIA ROY ALFRED', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, '2025-03-24 09:05:09', 'CCGNO', 'PANIS  EMERSON', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, '2025-03-24 09:05:09', 'CCGNO', 'PLETADO VAN KISSEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, '2025-03-24 09:05:09', 'CCGNO', 'PRADAS JR  JUAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, '2025-03-24 09:05:09', 'CCGNO', 'REYTANA MC ALJESS', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, '2025-03-24 09:05:09', 'CCGNO', 'RICAMARA JERRIC', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, '2025-03-24 09:05:09', 'CCGNO', 'RODRIGUEZ JOHN KARL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, '2025-03-24 09:05:09', 'CCGNO', 'SABAREZA ALIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, '2025-03-24 09:05:09', 'CCGNO', 'SABATER HARVEY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, '2025-03-24 09:05:09', 'CCGNO', 'SABATER MELBOY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, '2025-03-24 09:05:09', 'CCGNO', 'SALDO JOSHUA', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, '2025-03-24 09:05:09', 'CCGNO', 'SALVADOR LORBEN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, '2025-03-24 09:05:09', 'CCGNO', 'SAULON JOSEPH ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, '2025-03-24 09:05:09', 'CCGNO', 'SE RAYMAR ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, '2025-03-24 09:05:09', 'CCGNO', 'STA ANA CHARLES', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, '2025-03-24 09:05:09', 'CCGNO', 'TAPAR MARK', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, '2025-03-24 09:05:09', 'CCGNO', 'VALENZUELA JAMES LOUIS', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, '2025-03-24 09:05:09', 'CCGNO', 'VALENZUELA MARK RIO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, '2025-03-24 09:05:09', 'CCGNO', 'VIBAR JAMES  ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, '2025-03-24 09:05:09', 'CCGNO', 'ACABADO NIñO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, '2025-03-24 09:05:09', 'CCGNO', 'ADAO JOHNDEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, '2025-03-24 09:05:09', 'CCGNO', 'AMOLAR EARL JOHN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, '2025-03-24 09:05:09', 'CCGNO', 'ANTICAMARA RICHARD', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, '2025-03-24 09:05:09', 'CCGNO', 'ARIASO MARK DONDE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, '2025-03-24 09:05:09', 'CCGNO', 'ARNOCO MICHAEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, '2025-03-24 09:05:09', 'CCGNO', 'ASGARI ALJAMIR', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, '2025-03-24 09:05:09', 'CCGNO', 'BUENAFE RYAN JOHN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, '2025-03-24 09:05:09', 'CCGNO', 'CALDA CAYETANO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, '2025-03-24 09:05:09', 'CCGNO', 'CAMPO CLEO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, '2025-03-24 09:05:09', 'CCGNO', 'CAPILLO GEOHEL ROSVEN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, '2025-03-24 09:05:09', 'CCGNO', 'CATOR ANGELO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, '2025-03-24 09:05:09', 'CCGNO', 'COMILAN RYNDEL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, '2025-03-24 09:05:09', 'CCGNO', 'COSTUNA FEDERICO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, '2025-03-24 09:05:09', 'CCGNO', 'DAVIN LEONDRO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, '2025-03-24 09:05:09', 'CCGNO', 'DE VENECIA LOEL JADE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, '2025-03-24 09:05:09', 'CCGNO', 'DELMO BRENTON', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, '2025-03-24 09:05:09', 'CCGNO', 'DELOS AMA ELMER', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, '2025-03-24 09:05:09', 'CCGNO', 'DUAVIS JERAL JAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, '2025-03-24 09:05:09', 'CCGNO', 'DY GRENFELL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, '2025-03-24 09:05:09', 'CCGNO', 'ENCILAN RON EDUARD ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, '2025-03-24 09:05:09', 'CCGNO', 'ESPINOSA BRYAN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, '2025-03-24 09:05:09', 'CCGNO', 'FLORENDO JR BENITO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, '2025-03-24 09:05:09', 'CCGNO', 'GALES LEAN RAY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, '2025-03-24 09:05:09', 'CCGNO', 'GASENDO ALFREDO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, '2025-03-24 09:05:09', 'CCGNO', 'LABRA JR ZAREX', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, '2025-03-24 09:05:09', 'CCGNO', 'LERIO PAOLO', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, '2025-03-24 09:05:09', 'CCGNO', 'LIM KHELVIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, '2025-03-24 09:05:09', 'CCGNO', 'LOMENTIGAR EDWIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, '2025-03-24 09:05:09', 'CCGNO', 'MADEJA JUDE KEVIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, '2025-03-24 09:05:09', 'CCGNO', 'MARQUESES JR ARVIN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, '2025-03-24 09:05:09', 'CCGNO', 'MONTEMAR DAN PAUL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, '2025-03-24 09:05:09', 'CCGNO', 'MORALES RAYMOND', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, '2025-03-24 09:05:09', 'CCGNO', 'NAPOTO RYAN JOHN', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, '2025-03-24 09:05:09', 'CCGNO', 'ODIONG PREDIE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, '2025-03-24 09:05:09', 'CCGNO', 'PASA  CHRYSSAR RAY', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, '2025-03-24 09:05:09', 'CCGNO', 'PIDO GERALD', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, '2025-03-24 09:05:09', 'CCGNO', 'PONTICA JASON  ', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, '2025-03-24 09:05:09', 'CCGNO', 'PORTE JEZREL', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, '2025-03-24 09:05:09', 'CCGNO', 'PRINCIPE NADJER', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, '2025-03-24 09:05:09', 'CCGNO', 'VILLAFUERTE RONNIE KEITH', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, '2025-03-24 09:05:09', 'CCGNO', 'YBOA DAN DAVE', 3, NULL, 1, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `activity` text NOT NULL,
  `tid` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `old_status` text NOT NULL,
  `new_status` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `activity`, `tid`, `remarks`, `old_status`, `new_status`, `date`) VALUES
(1, 'New Class Name Added CGNOC CLASS 109 - 2025', 0, '', '', '', '2025-03-21 02:37:15'),
(2, 'Changed from <i> Resignee </i> to <i> Medically Deferred </i>', 1, 'Trainee`s Case Status Update.', '9', '7', '2025-03-21 02:40:50'),
(3, 'New Case Name Added [ Liquor Intoxicating ]', 0, '', '', '', '2025-03-21 02:53:54'),
(4, 'Changed from <i> Medically Deferred </i> to <i> Liquor Intoxicating </i>', 1, 'Trainee`s Case Status Update.', '7', '79', '2025-03-21 02:54:54'),
(5, 'Changed from <i> Medically Deferred </i> to <i> Dismissal from PCG Service </i>', 2, 'Trainee`s Case Status Update.', '7', '8', '2025-03-21 03:05:45'),
(6, 'New Class Name Added CGNOC CLASS 110-2025', 0, '', '', '', '2025-03-21 03:11:36'),
(7, 'New Class Name Added CGOC CLASS 31-2025 CHARLIE', 0, '', '', '', '2025-03-21 03:12:12'),
(8, 'New Class Name Added CGOC CLASS 32-2025 ALPHA', 0, '', '', '', '2025-03-21 03:12:34'),
(9, 'New Class Name Added CGNOC CLASS 111-2025', 0, '', '', '', '2025-03-21 03:12:50'),
(10, 'New Class Name Added 12345', 0, '', '', '', '2025-03-21 03:44:47'),
(11, 'New Class Name Added 12345', 0, '', '', '', '2025-03-21 06:18:02'),
(12, 'New Case Name Added [ 12345 ]', 0, '', '', '', '2025-03-21 06:18:26'),
(13, 'Changed from <i> Liquor Intoxicating </i> to <i> Resignee </i>', 1, 'Trainee`s Case Status Update.', '79', '9', '2025-03-21 06:22:39'),
(14, 'New Class Name Added abcedfg', 0, '', '', '', '2025-03-21 06:39:48'),
(15, 'Changed from <i> Resignee </i> to <i> Medically Deferred </i>', 1, 'Trainee`s Case Status Update.', '9', '7', '2025-03-21 06:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orig_name` text NOT NULL,
  `tmp_name` text NOT NULL,
  `remarks` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_nhq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rankss`
--

CREATE TABLE `rankss` (
  `id` int(11) NOT NULL,
  `ranks` text NOT NULL,
  `rank_full` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rankss`
--

INSERT INTO `rankss` (`id`, `ranks`, `rank_full`) VALUES
(1, 'CG ENS', 'CG ENSIGN'),
(2, 'CG LTJG', 'CG LIEUTENANT JUNIOR GRADE'),
(3, 'CG LT', 'CG LIEUTENANT'),
(4, 'CG LCDR', 'CG LIEUTENANT COMMANDER'),
(5, 'CG CDR', 'CG COMMANDER'),
(6, 'CG CAPT', 'CG CAPTAIN'),
(7, 'CG COMMO', 'CG COMMODORE'),
(8, 'CG RADM', 'CG REAR ADMIRAL'),
(9, 'CG VADM', 'CG VICE ADMIRAL'),
(10, 'CG ADM', 'CG ADMIRAL'),
(11, 'CDT', 'CADET'),
(12, 'PCG-PMMA CADET', 'PCG-PMMA CADET'),
(13, 'CG PENS', 'CG PROBATIONARY ENSIGN');

-- --------------------------------------------------------

--
-- Table structure for table `resolution`
--

CREATE TABLE `resolution` (
  `id` int(11) NOT NULL,
  `orig_name` text NOT NULL,
  `tmp_name` text NOT NULL,
  `remarks` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rtc`
--

CREATE TABLE `rtc` (
  `id` int(11) NOT NULL,
  `rtc_name` text NOT NULL,
  `logo` text NOT NULL,
  `rtc_short` text NOT NULL,
  `rtc_dir` text NOT NULL,
  `rtc_acd` text NOT NULL,
  `uname` text NOT NULL,
  `pword` text NOT NULL,
  `is_active` text NOT NULL,
  `is_female` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rtc`
--

INSERT INTO `rtc` (`id`, `rtc_name`, `logo`, `rtc_short`, `rtc_dir`, `rtc_acd`, `uname`, `pword`, `is_active`, `is_female`) VALUES
(1, 'REGIONAL TRAINING CENTER - AURORA', 'RTC AURORA', 'RTC-AURORA', 'CG LCDR PAUL YVES DL CACANINDIN', '', 'rtcaurora', '12345', 'Y', 0),
(2, 'REGIONAL TRAINING CENTER - BATAAN', 'RTC BATAAN', 'RTC-BATAAN', 'CG CDR ROCKLIFF C BULING', '', 'rtcbataan', '12345', 'Y', 0),
(3, 'REGIONAL TRAINING CENTER - CAPIZ', 'RTC LOGO CAPIZ', 'RTC-CAPIZ', 'CG CDR RICHARD G GURA', '', 'capiz', '12345', 'Y', 0),
(4, 'REGIONAL TRAINING CENTER - LA UNION', 'RTC LA UNION', 'RTC-LA UNION', 'CG LCDR MARK S ADRIAS', '', 'rtclaunion', '12345', 'Y', 0),
(5, 'REGIONAL TRAINING CENTER - MASBATE', 'RTC MASBATE', 'RTC-MASBATE', 'CG LTJG EDWARD Y CUA JR', '', 'rtcmasbate', '12345', 'Y', 0),
(6, 'REGIONAL TRAINING CENTER - MISAMIS ORIENTAL', 'RTC LOGO MISAMIS ORIENTAL', 'RTC-MISAMIS ORIENTAL', 'CG CDR JOHN ALFWELL B SAARENAS', '', 'rtcmisor', '12345', 'Y', 1),
(7, 'REGIONAL TRAINING CENTER - SAMAR', 'RTC SAMAR', 'RTC-SAMAR', 'CG CDR ELAINE R PANGILINAN', '', '', '', '', 0),
(8, 'REGIONAL TRAINING CENTER - TAGUIG', 'RTC TAGUIG', 'RTC-TAGUIG', 'CG CDR FERDINAND ALLAN JOSEPH Z ABINOJA', '', 'taguig', '12345', 'Y', 0),
(9, 'REGIONAL TRAINING CENTER - ZAMBOANGA', 'RTC ZAMBOANGA', 'RTC-ZAMBOANGA', 'CG LCDR BRYAN A EVANGELISTA', '', 'rtczamboanga', '12345', 'Y', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rtc_class`
--

CREATE TABLE `rtc_class` (
  `id` int(11) NOT NULL,
  `rtc_id` int(11) NOT NULL,
  `class_name` text NOT NULL,
  `total` int(11) NOT NULL,
  `cd` text NOT NULL,
  `acd` text NOT NULL,
  `is_active` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rtc_class`
--

INSERT INTO `rtc_class` (`id`, `rtc_id`, `class_name`, `total`, `cd`, `acd`, `is_active`) VALUES
(1, 5, 'CGNOC CLASS 109 - 2025', 292, '', '', 'Y'),
(2, 3, 'CGNOC CLASS 110-2025', 0, '', '', 'Y'),
(3, 2, 'CGOC CLASS 31-2025 CHARLIE', 0, '', '', 'Y'),
(4, 2, 'CGOC CLASS 32-2025 ALPHA', 0, '', '', 'Y'),
(5, 6, 'CGNOC CLASS 111-2025', 0, '', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `search_logs`
--

CREATE TABLE `search_logs` (
  `id` int(11) NOT NULL,
  `keyword` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `search_logs`
--

INSERT INTO `search_logs` (`id`, `keyword`, `date`) VALUES
(1, 'uru', '2024-05-15 08:37:43'),
(2, 'uru', '2024-05-15 08:38:07'),
(3, 'uru', '2024-05-16 01:56:17'),
(4, 'uru', '2024-05-16 01:56:25'),
(5, 'uru', '2024-05-16 01:56:56'),
(6, 'uru', '2024-05-16 01:58:16'),
(7, 'uru', '2024-05-16 01:59:59'),
(8, 'uru', '2024-05-16 02:03:17'),
(9, 'uru', '2024-05-16 02:03:34'),
(10, 'habdulla', '2024-05-16 02:38:57'),
(11, 'Habdulla', '2024-05-16 02:39:12'),
(12, 'Habdulla', '2024-05-16 02:39:46'),
(13, 'Gavan', '2024-05-16 02:39:52'),
(14, 'HABDULLA', '2024-05-16 02:52:16'),
(15, 'It Searched rank with value CG ENS', '2024-05-16 03:37:52'),
(16, 'It Searched rank with value CG ADM', '2024-05-16 03:38:19'),
(17, 'It Searched rank with value CG ENS', '2024-05-16 03:43:54'),
(18, 'It Searched rank with value CG ENS', '2024-05-16 03:48:22'),
(19, 'It Searched bday with value May', '2024-05-16 03:48:28'),
(20, 'It Searched bday with value May', '2024-05-16 03:52:27'),
(21, 'It Searched bday with value May', '2024-05-16 04:09:50'),
(22, 'It Searched bday with value May', '2024-05-16 04:09:54'),
(23, 'It Searched rank with value CG ENS', '2024-05-16 05:01:02'),
(24, 'It Searched bday with value May', '2024-05-16 05:01:30'),
(25, 'It Searched rank with value CG LTJG', '2024-05-16 05:02:07'),
(26, 'It Searched rank with value CG ENS', '2024-05-16 05:02:34'),
(27, 'It Searched rank with value CG ENS', '2024-05-16 05:02:50'),
(28, 'It Searched rank with value CG ENS', '2024-05-16 05:02:55'),
(29, 'It Searched bday with value May', '2024-05-16 05:09:57'),
(30, 'It Searched bday with value May', '2024-05-16 05:11:47'),
(31, 'It Searched bday with value May', '2024-05-16 05:15:05'),
(32, 'It Searched rank with value CG ENS', '2024-05-16 05:21:51'),
(33, 'It Searched rank with value CG ADM', '2024-05-16 05:22:07'),
(34, 'It Searched bday with value May', '2024-05-16 05:27:07'),
(35, 'It Searched ranks with value CG LT', '2024-05-16 05:27:51'),
(36, 'It Searched ranks with value CG LT', '2024-05-16 05:28:01'),
(37, 'It Searched ranks with value CG CDR', '2024-05-16 05:28:07'),
(38, 'It Searched ranks with value CG CDR', '2024-05-16 05:28:14'),
(39, 'It Searched ranks with value CG CDR', '2024-05-16 05:28:22'),
(40, 'It Searched ranks with value CG CDR', '2024-05-16 05:28:46'),
(41, 'It Searched ranks with value CG CDR', '2024-05-16 05:28:59'),
(42, 'It Searched ranks with value CG CDR', '2024-05-16 05:29:06'),
(43, 'It Searched ranks with value CG LTJG', '2024-05-16 07:26:05'),
(44, 'It Searched ranks with value CG LTJG', '2024-05-16 07:27:12'),
(45, 'It Searched ranks with value CG LT', '2024-05-16 07:27:17'),
(46, 'uru', '2024-05-16 07:32:49'),
(47, 'uru', '2024-05-16 07:33:03'),
(48, 'rances', '2024-07-11 02:17:47'),
(49, 'It Searched ranks with value CG ENS', '2024-07-11 02:22:28'),
(50, 'O-0503', '2024-07-11 02:36:02'),
(51, 'It Searched ranks with value CG ENS', '2024-07-11 06:16:53'),
(52, 'It Searched ranks with value CG ENS', '2024-07-11 06:16:57'),
(53, 'ausan', '2024-07-11 06:17:00'),
(54, 'ausan', '2024-07-11 06:17:31'),
(55, 'ausan', '2024-07-11 06:17:36'),
(56, 'ausan', '2024-07-11 06:18:12'),
(57, 'ausan', '2024-07-11 06:18:18'),
(58, 'ausan', '2024-07-11 06:18:45'),
(59, 'ausan', '2024-07-11 06:19:35'),
(60, 'ausan', '2024-07-11 06:20:36'),
(61, 'ausan', '2024-07-11 06:21:03'),
(62, 'ausan', '2024-07-11 06:21:22'),
(63, 'ausan', '2024-07-11 06:21:29'),
(64, 'ausan', '2024-07-11 06:21:42'),
(65, 'ausan', '2024-07-11 06:21:48'),
(66, 'ausan', '2024-07-11 06:22:05'),
(67, 'It Searched ranks with value CG ENS', '2024-07-11 06:22:12'),
(68, 'ausan', '2024-07-11 06:28:32'),
(69, 'rances', '2024-07-11 06:28:53'),
(70, 'It Searched ranks with value CG ENS', '2024-07-11 06:33:25'),
(71, 'ausan', '2024-07-11 06:34:18'),
(72, 'rances', '2024-07-12 01:55:19'),
(73, 'soliva', '2024-07-16 13:41:12'),
(74, 'soliva', '2024-07-16 13:42:38'),
(75, 'soliva', '2024-07-16 13:42:41'),
(76, 'soliva', '2024-07-16 13:43:00'),
(77, 'soliva', '2024-07-16 13:43:17'),
(78, 'soliva', '2024-07-16 13:44:04'),
(79, 'soliva', '2024-07-16 13:44:28'),
(80, 'soliva', '2024-07-16 13:44:39'),
(81, 'salby', '2024-07-16 13:44:47'),
(82, 'salby', '2024-07-16 13:45:03'),
(83, 'soliva', '2024-07-16 13:45:37'),
(84, 'uru', '2024-07-16 13:45:51'),
(85, 'rances', '2024-07-16 13:46:27'),
(86, 'Andal', '2024-07-17 02:11:50'),
(87, 'Andal', '2024-07-17 02:12:29'),
(88, 'asi', '2024-07-17 02:50:06'),
(89, 'Somido', '2024-07-17 02:50:11'),
(90, 'soliva', '2024-07-17 03:10:45'),
(91, 'gervo', '2024-07-25 02:37:41'),
(92, 'soliva', '2024-07-25 02:37:49'),
(93, 'gervo', '2024-07-25 02:38:05'),
(94, 'canto', '2024-07-29 12:16:24'),
(95, 'cantores', '2024-07-29 12:16:42'),
(96, 'canto', '2024-07-29 12:16:56'),
(97, 'IT', '2024-07-29 12:17:07'),
(98, 'ardamoy', '2024-07-29 12:17:20'),
(99, 'bung', '2024-07-29 13:40:37'),
(100, 'bong', '2024-07-29 13:40:46'),
(101, 'fabul', '2024-07-29 14:03:37'),
(102, 'rances', '2024-07-29 14:03:51'),
(103, 'rances', '2024-07-29 14:06:08'),
(104, 'John Manuel', '2024-07-29 14:45:38'),
(105, 'Cariño', '2024-07-30 15:02:28'),
(106, 'TANTONG', '2024-07-30 15:04:57'),
(107, 'cacanindin', '2024-07-30 15:19:14'),
(108, 'teraz', '2024-07-30 15:20:08'),
(109, 'endozo', '2024-07-30 15:28:56'),
(110, 'soria', '2024-07-30 15:35:32'),
(111, 'soria', '2024-07-30 15:36:11'),
(112, 'asis', '2024-07-30 16:47:02'),
(113, 'ASIS', '2024-07-30 16:47:17'),
(114, 'espiritu', '2024-08-12 23:37:05'),
(115, 'gervo', '2024-08-28 01:03:24'),
(116, 'ventura', '2024-08-28 01:03:36'),
(117, 'ventura', '2024-08-28 01:04:37'),
(118, 'habdu', '2024-08-28 02:34:05'),
(119, 'dalnay', '2024-08-30 02:13:45'),
(120, 'ventura', '2024-08-30 02:45:11'),
(121, 'ventura', '2024-08-30 04:40:35'),
(122, '', '2024-08-30 04:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `stat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `stat`) VALUES
(1, 'For Termination Due to Existing Legal Case / Alleagation'),
(2, 'For Termination from Training and PCG Service Due to Medical Condition'),
(3, 'Late Graduates'),
(4, 'Medically Defferred'),
(5, 'Pending Agenda'),
(6, 'Resignee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cg_district`
--
ALTER TABLE `cg_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cg_station`
--
ALTER TABLE `cg_station`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_maintenance`
--
ALTER TABLE `db_maintenance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hatol`
--
ALTER TABLE `hatol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `july26list`
--
ALTER TABLE `july26list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rankss`
--
ALTER TABLE `rankss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resolution`
--
ALTER TABLE `resolution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rtc`
--
ALTER TABLE `rtc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rtc_class`
--
ALTER TABLE `rtc_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_logs`
--
ALTER TABLE `search_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cg_district`
--
ALTER TABLE `cg_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cg_station`
--
ALTER TABLE `cg_station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `db_maintenance`
--
ALTER TABLE `db_maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hatol`
--
ALTER TABLE `hatol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `july26list`
--
ALTER TABLE `july26list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rankss`
--
ALTER TABLE `rankss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `resolution`
--
ALTER TABLE `resolution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rtc`
--
ALTER TABLE `rtc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rtc_class`
--
ALTER TABLE `rtc_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `search_logs`
--
ALTER TABLE `search_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
