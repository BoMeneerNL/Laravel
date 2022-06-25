SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE TABLE `animes` (
  `AnimeID` int(11) NOT NULL,
  `AnimeNaam` varchar(255) DEFAULT NULL,
  `AnimeNameEnglish` varchar(255) DEFAULT NULL,
  `AnimeNameJPSymbols` varchar(255) DEFAULT NULL,
  `studios` varchar(100) NOT NULL DEFAULT '-1',
  `Uitgavejaar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `animes` (`AnimeID`, `AnimeNaam`, `AnimeNameEnglish`, `AnimeNameJPSymbols`, `studios`, `Uitgavejaar`) VALUES
(1, 'Animegataris', 'Anime-Gataris', 'アニメガタリズ', '-1', 20172017),
(2, 'Black Clover', 'Black Clover', 'ブラッククローバー', '-1', 20172021),
(3, 'Bubuki Buranki', 'BBK/BRNK', 'ブブキ・ブランキ', '-1', 20162016),
(4, 'Bubuki Buranki: Hoshi no Kyojin', 'BBK/BRNK: The Gentle Giants of the Galaxy', 'ブブキ・ブランキ 星の巨人', '-1', NULL),
(5, 'Cheat Kusushi no Slow Life: Isekai ni Tsukurou Drugstore', 'Drug Store in Another World: The Slow Life of a Cheat Pharmacist', 'チート薬師のスローライフ～異世界に作ろうドラッグストア～', '-1', NULL),
(6, 'Gabriel DropOut', 'Gabriel DropOut', 'ガヴリールドロップアウト', '-1', NULL),
(7, 'Jujutsu Kaisen (TV)', 'Jujutsu Kaisen', '呪術廻戦', '-1', 20202021),
(8, 'Kimetsu no Yaiba', 'Demon Slayer: Kimetsu no Yaiba', '鬼滅の刃', '-1', 20192019),
(9, 'Kimetsu no Yaiba: Mugen Ressha-hen', 'Demon Slayer: Kimetsu no Yaiba Mugen Train Arc', '鬼滅の刃 無限列車編', '-1', 20212021),
(10, 'Kobayashi-san Chi no Maid Dragon', 'Miss Kobayashi\'s Dragon Maid', '小林さんちのメイドラゴン', '-1', 20172017),
(11, 'Kono Subarashii Sekai ni Shukufuku wo!', 'KonoSuba: God\'s Blessing on This Wonderful World!', 'この素晴らしい世界に祝福を！', '-1', NULL),
(12, 'Kumo Desu ga, Nani ka?', 'So I\'m a Spider, So What?', '蜘蛛ですが、なにか？', '-1', 20212021),
(13, 'Overlord', 'Overlord', 'オーバーロード', '-1', 20152015),
(14, 'Overlord II', 'Overlord II', 'オーバーロードⅡ', '-1', NULL),
(15, 'Overlord III', 'Overlord III', 'オーバーロードⅢ', '-1', 20182018),
(16, 'Persona 5 the Animation', 'Persona 5 the Animation', 'TVアニメ「ペルソナ５」', '-1', 20182018),
(17, 'Persona 5 the Animation TV Specials', 'Persona 5 the Animation TV Specials', NULL, '-1', 20182019),
(18, 'Pokemon Movie 01: Mewtwo no Gyakushuu', 'Pokemon: The First Movie', 'ポケットモンスター ミュウツーの逆襲', '-1', 19981998),
(19, 'Pokemon Movie 18: Ring no Choumajin Hoopa', 'Pokemon the Movie: Hoopa and the Clash of Ages', 'ポケモン・ザ・ムービーXY『光輪（リング）の超魔神 フーパ』', '-1', 20152015),
(20, 'Pokemon Movie 19: Volcanion to Karakuri no Magearna', 'Pokemon the Movie: Volcanion and the Mechanical Marvel', 'ポケモン・ザ・ムービーXY＆Z「ボルケニオンと機巧（からくり）のマギアナ」', '-1', 20162016),
(21, 'Pokemon Movie 20: Kimi ni Kimeta!', 'Pokémon the Movie: I Choose You!', '劇場版ポケットモンスター キミにきめた！', '-1', 20172017),
(22, 'Re:Zero kara Hajimeru Isekai Seikatsu', 'Re:ZERO -Starting Life in Another World-', 'Re：ゼロから始める異世界生活', '-1', 20162016),
(23, 'Re:Zero kara Hajimeru Isekai Seikatsu 2nd Season', 'Re:ZERO -Starting Life in Another World- Season 2', 'Re：ゼロから始める異世界生活', '-1', 20202020),
(24, 'Re:Zero kara Hajimeru Isekai Seikatsu 2nd Season Part 2', 'Re:ZERO -Starting Life in Another World- Season 2 Part 2', 'Re：ゼロから始める異世界生活', '-1', 20212021),
(25, 'Sekai Saikou no Ansatsusha', 'The World\'s Finest Assassin Gets Reincarnated in Another World as an Aristocrat', '世界最高の暗殺者、異世界貴族に転生する', '-1', 20212021),
(26, 'Shadows House', 'Shadows House', 'シャドーハウス', '-1', 20212021),
(27, 'Shingeki no Kyojin', 'Attack on Titan', '進撃の巨人', '-1', 20132013),
(28, 'Shingeki no Kyojin Season 2', 'Attack on Titan Season 2', '進撃の巨人 Season2', '-1', 20172017),
(29, 'Shingeki no Kyojin Season 3', 'Attack on Titan Season 3', '進撃の巨人 Season3', '-1', 20182018),
(30, 'Shingeki no Kyojin Season 3 Part 2', 'Attack on Titan Season 3 Part 2', '進撃の巨人 Season3 Part.2', '-1', 20192019),
(31, 'Slime Taoshite 300-nen, Shiranai Uchi ni Level Max ni Nattemashita', 'I\'ve Been Killing Slimes for 300 Years and Maxed Out My Level', 'スライム倒して300年、知らないうちにレベルMAXになってました', '-1', 20212021),
(32, 'Sono Bisque Doll wa Koi wo Suru', 'My Dress-Up Darling', 'その着せ替え人形は恋をする', '-1', 20222022),
(33, 'Sword Art Online', 'Sword Art Online', 'ソードアート・オンライン', '-1', 20122012),
(34, 'Tate no Yuusha no Nariagari', 'The Rising of the Shield Hero', '盾の勇者の成り上がり', '-1', 20192019),
(35, 'Tensei shitara Slime Datta Ken', 'That Time I Got Reincarnated as a Slime', '転生したらスライムだった件', '-1', 20182019),
(36, 'Tensei shitara Slime Datta Ken 2nd Season', 'That Time I Got Reincarnated as a Slime Season 2', '転生したらスライムだった件', '-1', 20212021),
(37, 'Tensei shitara Slime Datta Ken 2nd Season Part 2', 'That Time I Got Reincarnated as a Slime Season 2 Part 2', '転生したらスライムだった件', '-1', 20212021),
(38, 'Tensura Nikki: Tensei shitara Slime Datta Ken', 'The Slime Diaries: That Time I Got Reincarnated as a Slime', '転スラ日記 転生したらスライムだった件', '-1', 20212021),
(39, 'Toaru Kagaku no Railgun', 'A Certain Scientific Railgun', 'とある科学の超電磁砲', '-1', 20102010),
(40, 'Toaru Kagaku no Railgun S', 'A Certain Scientific Railgun S', 'とある科学の超電磁砲S', '-1', 20132013),
(41, 'Toaru Kagaku no Railgun T', 'A Certain Scientific Railgun T', 'とある科学の超電磁砲[レールガン]T', '-1', 20202020),
(42, 'Toaru Majutsu no Index', 'A Certain Magical Index', 'とある魔術の禁書目録', '-1', 20092009),
(43, 'Toaru Majutsu no Index II', 'A Certain Magical Index II', 'とある魔術の禁書目録Ⅱ', '-1', 20102011),
(44, 'Toaru Majutsu no Index III', 'A Certain Magical Index III', 'とある魔術の禁書目録Ⅲ', '-1', 20182019),
(45, 'Toaru Majutsu no Index Movie: Endymion no Kiseki', 'A Certain Magical Index the Movie: The Miracle of Endymion', '劇場版 とある魔術の禁書目録 エンデュミオンの奇蹟', '-1', 20132013),
(46, 'Toradora!', 'Toradora!', 'とらドラ！', '-1', 20082009),
(47, 'Kanojo mo Kanojo', 'Girlfriend, Girlfriend', 'カノジョも彼女', '-1', 20212021),
(48, 'Kawaii dake ja Nai Shikimori-san', 'Shikimori\'s No Just a Cutie', '可愛いだけじゃない式守さん', '-1', 20222022),
(49, 'Kimetsu no Yaiba: Yuukaku-hen', 'Demon Slayer: Kimetsu no Yaiba Entertainment District Arc', '鬼滅の刃 遊郭編', '-1', 20212022),
(50, 'Kobayashi-san Chi no Maid Dragon S', 'Miss Kobayashi\'s Dragon Maid S', '小林さんちのメイドラゴンS', '-1', 20212021),
(51, 'Princess Connect! Re:Dive', 'Princess Connect! Re:Dive', 'プリンセスコネクト！Re:Dive', '-1', 20202020),
(52, 'Spy x Family', 'Spy x Family', '<null>', '-1', 20222022);

CREATE TABLE `genres` (
  `GenreID` int(11) NOT NULL,
  `Genre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `studios` (
  `StudioID` int(11) NOT NULL,
  `StudioNaam` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `studios` (`StudioID`, `StudioNaam`) VALUES
(1, 'WAO World'),
(2, 'Pierrot'),
(3, 'SANZIGEN'),
(4, 'EMT Squared'),
(5, 'Doga Kobo'),
(6, 'MAPPA'),
(7, 'ufotable'),
(8, 'Kyoto Animation'),
(9, 'Studio Deen'),
(10, 'Millepensee'),
(11, 'Madhouse'),
(12, 'CloverWorks'),
(13, 'OLM'),
(14, 'White Fox'),
(15, 'SILVER LINK.'),
(16, 'Studio Palette'),
(17, 'Wit Studio'),
(18, 'Revoroot'),
(19, 'A-1 Pictures'),
(20, 'Kinema Citrus'),
(21, '8bit'),
(22, 'J.C.Staff'),
(23, 'Tezuka Productions'),
(24, 'CygamesPictures'),
(25, 'Lerche');

ALTER TABLE `animes`
  ADD PRIMARY KEY (`AnimeID`);

ALTER TABLE `genres`
  ADD PRIMARY KEY (`GenreID`);

ALTER TABLE `studios`
  ADD PRIMARY KEY (`StudioID`);

ALTER TABLE `animes`
  MODIFY `AnimeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

ALTER TABLE `genres`
  MODIFY `GenreID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `studios`
  MODIFY `StudioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
