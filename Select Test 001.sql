CREATE Database `Record_Company`;
USE `Record_Company`;
CREATE TABLE `Bands` (
  `id` INT NOT NULL, `Name` VARCHAR(200) NOT NULL,
  PRIMARY KEY (ID)
);
ALTER TABLE `Bands`
ADD `Phone Number` INT; 

ALTER TABLE `Bands`
CHANGE COLUMN  `id` `id` INT NOT NULL AUTO_INCREMENT;

CREATE TABLE `Albums` (
 `id` INT NOT NULL AUTO_INCREMENT, `Name` VARCHAR(200) NOT NULL, `Band_id` INT NOT NULL,
 PRIMARY KEY (`id`),
 FOREIGN KEY (`Band_id`) REFERENCES `Bands` (`id`)
 );

INSERT INTO `bands` (`Name`)
VALUES ('Kemi Ke'), ('Lorry Loka'), ('Sade John'), ('Lenkan Lokaka'); 

SELECT * FROM `Bands`;
SELECT * FROM `Albums`;

ALTER TABLE `Albums` 
ADD `Release_Year` int;  


INSERT INTO `Albums` (`Name`, `Release_Year`, `Band_id`)
VALUES ('The John Songs', '1998', 1),
	   ('The Act of Men', '1992', 2), 
	   ('Moving Good', '2010', 3),
	   ('GOD Is Good', '1996', 1),
	   ('Invoicing Department', 2000, 4);
       
SELECT * FROM `Albums` 
ORDER BY `Name` DESC;

SELECT * FROM `Albums`
WHERE `Band_id` = 2 OR
	  `Band_id` = 3 OR
      `Band_id` = 4;
     
SELECT * FROM `Albums`
WHERE `Band_id` BETWEEN 2 AND 4;    

SELECT * FROM `Albums`
WHERE `Release_Year` > '2000';

SELECT * FROM `Albums`
WHERE `Release_Year` < '2000';

UPDATE `Albums`
SET `Release_Year` = 1994
WHERE `id` = 2;

ALTER TABLE `Albums`
ADD `Test` INT;
  
 UPDATE  `Albums`
 SET `Test` = 2023
 WHERE `id` = 1 OR `id` = 5;
 
 UPDATE  `Albums`
 SET `Test` = 2023
 WHERE `id` > 1 AND 5;
 
ALTER TABLE `Albums`
DROP `Test`;
 
 ALTER TABLE `Albums`
 ADD `Test` INT;



