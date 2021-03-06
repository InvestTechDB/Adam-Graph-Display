DROP DATABASE IF EXISTS company_data;
CREATE DATABASE company_data;

USE company_data;

CREATE TABLE companies (
  id int(9) NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  last_closing_price decimal(10,2) NOT NULL,
  analyst_rec int(2) NOT NULL,
  num_users int(5) NOT NULL,
  PRIMARY KEY (id)
); 

CREATE TABLE `price_records_monthly` (
  id int(11) NOT NULL AUTO_INCREMENT,
  companyID int(9) NOT NULL,
  price decimal(10,2) NOT NULL,
  price_date datetime(6) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (companyID) REFERENCES companies(id)
);

INSERT INTO `companies` VALUES ('1','animi','104.00','84','455'),
('2','commodi','92.89','72','445'),
('3','atque','98.32','62','360'),
('4','a','88.60','81','337'),
('5','rerum','100.80','73','456'),
('6','dolore','93.98','64','317'),
('7','totam','95.46','47','454'),
('8','iusto','102.10','66','131'),
('9','voluptatem','87.08','41','401'),
('10','explicabo','79.00','76','399'),
('11','eum','98.64','87','449'),
('12','sed','84.99','42','366'),
('13','qui','107.18','71','312'),
('14','at','91.17','82','381'),
('15','suscipit','99.00','89','541'),
('16','vel','82.31','52','373'),
('17','quae','90.52','52','166'),
('18','voluptatibus','72.35','60','226'),
('19','molestiae','87.94','78','423'),
('20','vel','79.73','73','158'),
('21','qui','95.78','41','486'),
('22','nihil','73.37','63','443'),
('23','sequi','89.80','45','306'),
('24','excepturi','76.00','76','364'),
('25','numquam','92.93','56','418'),
('26','est','72.37','88','585'),
('27','sit','105.00','81','336'),
('28','dolorum','99.36','45','361'),
('29','magnam','83.79','43','491'),
('30','numquam','85.00','48','451'),
('31','unde','98.19','71','301'),
('32','et','92.63','71','214'),
('33','odio','81.12','80','184'),
('34','aspernatur','98.68','60','449'),
('35','praesentium','77.64','75','195'),
('36','eligendi','90.73','54','321'),
('37','quam','103.44','88','375'),
('38','sequi','99.89','64','226'),
('39','minus','106.00','68','268'),
('40','maxime','108.31','60','103'),
('41','sint','91.96','72','254'),
('42','eum','81.70','63','452'),
('43','rerum','76.00','62','474'),
('44','nemo','86.28','46','388'),
('45','ad','81.89','66','101'),
('46','ea','108.33','75','419'),
('47','sed','109.38','41','444'),
('48','suscipit','106.85','84','593'),
('49','aut','82.78','80','241'),
('50','quae','73.57','50','193'),
('51','ea','108.50','71','308'),
('52','veniam','84.08','46','328'),
('53','ipsam','82.00','45','545'),
('54','aut','75.00','82','384'),
('55','aut','83.24','70','303'),
('56','animi','102.90','68','439'),
('57','et','109.29','53','286'),
('58','aut','78.70','64','258'),
('59','facere','74.23','68','348'),
('60','est','76.10','42','374'),
('61','ad','95.99','77','186'),
('62','consequatur','82.60','68','354'),
('63','sunt','83.57','82','110'),
('64','deleniti','81.31','66','521'),
('65','et','71.00','58','383'),
('66','ipsum','93.27','64','450'),
('67','et','73.39','40','364'),
('68','illo','75.24','52','194'),
('69','et','91.43','58','252'),
('70','molestiae','89.96','52','475'),
('71','provident','87.25','56','200'),
('72','qui','81.31','67','522'),
('73','quo','91.10','83','513'),
('74','dicta','90.39','86','259'),
('75','dicta','80.42','61','492'),
('76','soluta','83.90','58','348'),
('77','aut','72.48','71','337'),
('78','rerum','76.34','47','175'),
('79','quia','97.60','47','384'),
('80','repellat','108.66','63','177'),
('81','laboriosam','85.44','57','564'),
('82','et','97.00','56','474'),
('83','et','71.56','57','439'),
('84','accusantium','99.09','75','159'),
('85','eveniet','95.11','66','283'),
('86','quae','81.70','84','415'),
('87','earum','100.92','60','364'),
('88','perspiciatis','79.79','69','203'),
('89','vitae','95.24','81','447'),
('90','a','76.62','88','426'),
('91','tempore','109.12','55','587'),
('92','est','109.19','78','452'),
('93','ut','93.44','82','477'),
('94','architecto','101.37','60','478'),
('95','sequi','98.22','56','480'),
('96','at','73.00','61','277'),
('97','repudiandae','93.00','59','541'),
('98','odio','100.38','72','573'),
('99','rem','93.25','42','521'),
('100','laborum','90.77','67','230'); 

INSERT INTO `price_records_monthly` VALUES ('1','1','147.80','2018-06-27 00:38:37.000000'),
('2','1','152.22','2018-07-11 22:28:09.000000'),
('3','1','155.14','2018-07-08 00:29:56.000000'),
('4','1','124.16','2018-07-17 03:37:00.000000'),
('5','1','138.71','2018-07-24 00:43:09.000000'),
('6','1','154.48','2018-07-22 17:16:52.000000'),
('7','1','165.92','2018-07-08 09:24:08.000000'),
('8','1','163.69','2018-07-09 22:13:23.000000'),
('9','1','154.00','2018-07-07 01:18:42.000000'),
('10','1','162.39','2018-07-17 03:28:42.000000'),
('11','1','163.64','2018-07-02 21:54:04.000000'),
('12','1','156.55','2018-06-29 13:25:27.000000'),
('13','1','142.50','2018-07-07 13:18:13.000000'),
('14','1','137.00','2018-07-03 12:59:56.000000'),
('15','1','132.00','2018-07-11 03:22:28.000000'),
('16','1','145.92','2018-07-25 16:08:59.000000'),
('17','1','164.86','2018-07-07 21:28:39.000000'),
('18','1','178.20','2018-07-09 04:57:29.000000'),
('19','1','147.60','2018-06-29 23:26:38.000000'),
('20','1','123.09','2018-06-30 14:33:16.000000'),
('21','1','142.26','2018-07-19 23:43:24.000000'),
('22','1','154.57','2018-07-10 14:54:35.000000'),
('23','1','140.85','2018-07-24 23:42:24.000000'),
('24','1','160.20','2018-06-29 02:54:54.000000'),
('25','1','128.45','2018-07-09 00:10:30.000000'),
('26','1','147.31','2018-07-16 23:47:40.000000'),
('27','1','129.00','2018-07-05 04:03:32.000000'),
('28','1','172.29','2018-07-17 15:09:27.000000'),
('29','1','127.51','2018-07-06 18:19:58.000000'),
('30','1','177.50','2018-07-05 16:32:52.000000'); 