CREATE TABLE edzo (
    id int NOT NULL AUTO_INCREMENT,
    nev VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
	password VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE edzes_tipusok (        
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(50)NOT NULL,
    leiras TEXT(500)NOT NULL
);

CREATE TABLE edzesek (
    id INT AUTO_INCREMENT PRIMARY KEY,
    edzes_id INT NOT NULL,
    nev VARCHAR(50)NOT NULL, 
	nap VARCHAR(10)NOT NULL,
    ido VARCHAR(15) NOT NULL,
    ar INT NOT NULL,
	szabad_hely INT NOT NULL,
	FOREIGN KEY (edzes_id) REFERENCES edzes_tipusok(id)
);

CREATE TABLE vendeg(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(50)NOT NULL,
    email VARCHAR(50)NOT NULL,
	password VARCHAR(50)NOT NULL
);



INSERT INTO edzes_tipusok (id, nev, leiras) VALUES
('1', 'TRX', 'A TRX, vagy Total Resistance Exercise, egy rendkívül hatékony és sokoldalú edzésforma, amely különböző izomcsoportokat céloz meg, miközben fejleszti az egyensúlyt és a stabilizációt. Ez a módszer egy speciális, felfüggesztett kötélrendszert használ, mely lehetővé teszi a tested saját súlyával végzett gyakorlatokat. A TRX edzés során a kötél segítségével a gravitáció ellen dolgozol, ami fokozza az izomaktivitást és erősíti az egész testet. A gyakorlatok könnyen variálhatók a nehézség fokozása érdekében, így alkalmazkodhat minden szintű edzőhöz. Ezenkívül a TRX rendszer lehetőséget ad dinamikus, funkcionális mozgások végzésére, amelyek átültethetők a mindennapi élet mozzanataiba is. Egy TRX edzés rendkívül intenzív, ugyanakkor izgalmas és kihívást jelentő élményt nyújt, amely a test szinte minden részét megmozgatja. '),
('2', 'Köredzés', 'A köredzés egy intenzív és változatos edzésmódszer, amely során különböző gyakorlatokat hajtasz végre egy adott időtartam vagy ismétlés szám alapján, majd ezeket ismétled egy vagy több körben. Ez a módszer nem csak hatékony erősítő edzést biztosít, hanem fokozza az állóképességet és kalóriafelhasználást is. A köredzés lehetőséget ad a test különböző részeinek megdolgoztatására és a változatosságra. A köröket a kiválasztott gyakorlatok sokszínűségével és intenzitásával lehet változatosabbá tenni. Ez az edzésforma ideális választás lehet, ha időtakarékos, mégis hatékony edzést keresel, és a kihívásokat kedveled a különböző gyakorlatok és intenzitások kombinálásával. '),
('3', 'Kettlebell', 'A kettlebell edzés rendkívül dinamikus és hatékony edzésforma, mely a kettlebell nevű súlyzót alkalmazza. Ezek a golyószerű fémes eszközök fogantyúval rendelkeznek, és változatos gyakorlatokhoz használhatók. A mozgások nagy része teljes testet mozgat, erősítve izomcsoportokat, javítva az állóképességet és az egyensúlyt. A lendítő mozdulatok, például a kettlebell swing, kiválóan fejlesztik az erőt és robbanékonyságot. A kettlebell edzés alkalmazkodhat minden szintű sportolóhoz, könnyen szabályozható a súly és az intenzitás. Kombinált mozgásai hatékony időtakarékos edzést tesznek lehetővé, mivel egyszerre dolgoztatják meg a felső- és alsótestet. Fontos azonban helyes technika elsajátítása a biztonságos és hatékony edzés érdekében. A kettlebell edzés alkalmas minden szintű sportolónak, mivel könnyen szabályozható a súly és az intenzitás. ');


INSERT INTO edzesek (id, edzes_id, nev, nap, ido, ar, szabad_hely) VALUES
('2', '2', 'Köredzés', 'hétfő', '9:00-10:00', '2500', '10'),
('3', '1', 'TRX', 'hétfő', '10:00-11:00', '2500', '10'),
('4', '3', 'Kettlebell', 'hétfő', '16:00-17:00', '2000', '10'),
('5', '3', 'Kettlebell', 'hétfő', '17:00-18:00', '2000', '10'),
('6', '1', 'TRX', 'hétfő', '18:00-19:00', '2500', '10'),
('7', '2', 'Köredzés', 'kedd', '8:00-9:00', '2500', '10'),
('8', '1', 'TRX', 'kedd', '9:00-10:00', '2500', '10'),
('9', '1', 'TRX', 'kedd', '16:00-17:00', '2500', '10'),
('10', '2', 'Köredzés', 'kedd', '17:00-18:00', '2500', '10'),
('11', '1', 'TRX', 'kedd', '18:00-19:00', '2500', '10'),
('12', '2', 'Köredzés', 'szerda', '8:00-9:00', '2500', '10'),
('13', '3', 'Kettlebell', 'szerda', '9:00-10:00', '2000', '10'),
('14', '2', 'Köredzés', 'szerda', '16:00-17:00', '2500', '10'),
('15', '1', 'TRX', 'szerda', '17:00-18:00', '2500', '10'),
('16', '2', 'Köredzés', 'szerda', '18:00-19:00', '2500', '10'),
('17', '2', 'Köredzés', 'csütörtök', '8:00-9:00', '2500', '10'),
('18', '2', 'Köredzés', 'csütörtök', '9:00-10:00', '2500', '10'),
('19', '1', 'TRX', 'csütörtök', '10:00-11:00', '2500', '10'),
('20', '3', 'Kettlebell', 'csütörtök', '16:00-17:00', '2000', '10'),
('21', '2', 'Köredzés', 'csütörtök', '17:00-18:00', '2500', '10'),
('22', '1', 'TRX', 'csütörtök', '18:00-19:00', '2500', '10'),
('23', '2', 'Köredzés', 'péntek', '8:00-9:00', '2500', '10'),
('24', '1', 'TRX', 'péntek', '9:00-10:00', '2500', '10'),
('25', '1', 'TRX', 'péntek', '16:00-17:00', '2500', '10'),
('26', '2', 'Köredzés', 'péntek', '17:00-18:00', '2500', '10'),
('27', '1', 'TRX', 'péntek', '18:00-19:00', '2500', '10');