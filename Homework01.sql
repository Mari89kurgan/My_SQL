SELECT ProductName, Manufacturer, Price FROM homework01.mobile_phones
WHERE ProductCount > 2;

SELECT * FROM homework01.mobile_phones
WHERE Manufacturer = 'Samsung';

SELECT * FROM homework01.mobile_phones
WHERE ProductName LIKE '%iPhone%';

SELECT * FROM homework01.mobile_phones
WHERE Manufacturer LIKE '%Samsung%';

SELECT * FROM homework01.mobile_phones
WHERE ProductName LIKE '%8%';