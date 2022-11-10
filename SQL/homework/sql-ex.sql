--Условие. Краткая информация о базе данных "Компьютерная фирма". Схема БД состоит из четырех таблиц:
--- Product (maker, model, type)
--- PC (code, model, speed, ram, hd, cd, price)
--- Laptop (code, model, speed, ram, hd, price, screen)
--- Printer (code, model, color, type, price)
--Таблица Product представляет производителя (maker), номер модели (model) и тип ('PC' - ПК, 'Laptop' - ПК-блокнот или 'Printer' - принтер). 
--Предполагается, что номера моделей в таблице Product уникальны для всех производителей и типов продуктов.
--В таблице PC для каждого ПК, однозначно определяемого уникальным кодом – code, указаны модель – model (внешний ключ к таблице Product), скорость - speed (процессора в мегагерцах),
--объем памяти - ram (в мегабайтах), размер диска - hd (в гигабайтах), скорость считывающего устройства - cd (например, '4x') и цена - price (в долларах). 
--Таблица Laptop аналогична таблице РС за исключением того, что вместо скорости CD содержит размер экрана -screen (в дюймах). 
--В таблице Printer для каждой модели принтера указывается, является ли он цветным - color ('y', если цветной), тип принтера - type (лазерный – 'Laser', струйный – 'Jet' или матричный – 'Matrix') и цена - price.


--1. Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd
SELECT model, speed, hd FROM PC 
WHERE price < 500; 

--2. Найдите производителей принтеров. Вывести: maker
SELECT maker FROM Product  
WHERE product.type = 'printer' GROUP BY maker;

--3. Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.
SELECT model, ram, screen FROM Laptop
WHERE Price > 1000;

--4. Найдите все записи таблицы Printer для цветных принтеров.
SELECT * FROM Printer
WHERE color = 'y';

--5. Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.
SELECT model ,speed , hd  FROM PC
WHERE (cd = '12x' or cd = '24x') and price < 600; 

--6. Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
SELECT laptop.model, laptop.price  FROM laptop INNER JOIN Product ON laptop.model = product.model  
WHERE product.maker= 'B' 
UNION 
SELECT PC.model, PC.price FROM PC INNER JOIN Product ON PC.model = Product.model  
WHERE Product.maker= 'B' 
UNION
SELECT Printer.model, Printer.price FROM Printer INNER JOIN Product on Printer.model = Product.model  
WHERE Product.maker= 'B'

--7. Найдите производителя, выпускающего ПК, но не ПК-блокноты.
SELECT maker FROM Product 
WHERE type='PC' and maker NOT IN   
(SELECT maker from Product 
WHERE type = 'Laptop') GROUP BY maker;

--8. Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker
SELECT maker FROM PC INNER JOIN Product ON PC.model = Product.model
WHERE speed >= 450
GROUP BY maker;

--9. Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price
SELECT model, price  FROM Printer 
WHERE price = (SELECT MAX(price) FROM Printer);   

--10. Найдите среднюю скорость ПК.
SELECT AVG (speed) FROM PC;

--11. Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.
SELECT AVG (speed) FROM Laptop
WHERE price > 1000;

--12. Найдите среднюю скорость ПК, выпущенных производителем A.
SELECT AVG (speed) FROM PC INNER JOIN Product ON PC.model = Product.model
WHERE maker = 'A'
GROUP BY maker;

--13. Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD
SELECT hd FROM PC
GROUP BY hd HAVING COUNT(model)>1;  

--14. Для каждого производителя найдите средний размер экрана выпускаемых им ПК-блокнотов. Вывести: maker, средний размер экрана.
SELECT maker, AVG (screen) AS Avg_screen 
FROM Laptop INNER JOIN Product ON Laptop.model =  Product.model 
GROUP BY maker;  

--15. Найдите производителей, выпускающих по меньшей мере три различных модели ПК. Вывести: Maker, число моделей ПК.
SELECT maker, COUNT (model) AS Count_Model 
FROM Product 
WHERE type = 'PC' 
GROUP BY maker HAVING COUNT (model) >= 3;  

--16. Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC. Вывести: maker, максимальная цена.
SELECT maker, MAX (price) AS Maxprice 
FROM PC INNER JOIN Product ON PC.model= Product.model  
GROUP BY maker;

--17. Для каждого значения скорости ПК, превышающего 600 МГц, определите среднюю цену ПК с такой же скоростью. Вывести: speed, средняя цена.
SELECT speed, AVG (price) AS Avgprice FROM PC  
WHERE speed > 600 
GROUP BY speed;  

--18. Найдите средний размер диска ПК каждого из тех производителей, которые выпускают и принтеры. Вывести: maker, средний размер HD.
SELECT maker, AVG (hd) FROM Product INNER JOIN PC ON Product.model=PC.model   
WHERE maker IN (SELECT maker FROM Product WHERE type='Printer')  
GROUP BY maker;