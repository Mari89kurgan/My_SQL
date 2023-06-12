DROP DATABASE IF EXISTS homework06;
CREATE DATABASE homework06;
USE homework06;

-- 1. Создайте процедуру, которая принимает кол-во сек и формат их в кол-во дней часов. Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '

DROP PROCEDURE IF EXISTS proced;
DELIMITER //
CREATE PROCEDURE proced(val int)
	BEGIN
		DECLARE D, H, MIN, SEC VARCHAR(2);
		DECLARE result VARCHAR(50);
		set D = floor(val / 86400); -- sfsdfsdfsdsdfsd
		set H = floor(val % 86400 / 3600);
		set MIN = floor(val % 86400 % 3600 / 60);
		set SEC =  val % 86400 % 3600 % 60;
		set result = concat(D,' day(s) ',H ,' hour(s) ',MIN,' minute(s) ',SEC,' second(s) ');
        select result;
	END //
DELIMITER ;
    
CALL proced(123456);
    
-- 2.Создайте функцию, которая выводит только четные числа от 1 до 10. Пример: 2,4,6,8,10
    
CREATE TABLE numbers
	(id_values INT PRIMARY KEY AUTO_INCREMENT,
	all_numbers VARCHAR(45));
	
INSERT INTO numbers(all_numbers)
VALUES ('1'), ('2'),
	   ('3'), ('4'),
	   ('5'), ('6'),
	   ('7'), ('8'),
	   ('9'), ('10');
	   
SELECT *
FROM numbers;

SELECT id_values 
FROM numbers WHERE id_values % 2 = 0; 