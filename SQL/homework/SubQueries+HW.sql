--SubQueries (Подзапросы)---
--1. Создание таблицы (с названием phones_apple):
create table phones_apple(
 id serial primary key,
 model varchar(40),
 ram int not null,
 front_camera int,
 price int
);
--Проверка наличия таблицы:
select * from phones_apple;

--2. Заполнение таблицы phones_apple данными:
insert into phones_apple(model, ram, front_camera, price)
values ('X', 4, 8, 400),
    ('11', 6, 10, 700),
    ('12', 8, 12, 1000),
    ('7', 4, 12, 400),
    ('XR', 6, 12, 800),
    ('XS', 6, 12, 1000),
    ('13', 6, 12, 1500),
    ('8', 4, 10, 700),
    ('SE2020', 6, 8, 700),
    ('X65', 6, 10, 350),
    ('X75', 8, 10, 450),
    ('X85', 4, 16, 550),
    ('X95', 12, 10, 650),
    ('X105', 8, 12, 760),
    ('X115', 6, 10, 820);
--Проверка наличия данных в таблице phones_apple:
select * from phones_apple;

--3. Создание таблицы phones_samsung:
create table phones_samsung(
 id serial primary key,
 model varchar(40),
 ram int not null,
 front_camera int,
 price int
);
--Проверка наличия таблицы phones_samsung:
select * from phones_samsung;

--4. Заполнение данными таблицы phones_samsung:
insert into phones_samsung(model, ram, front_camera, price)
values ('A50', 6, 10, 300),
    ('A50', 8, 10, 400),
    ('A52', 8, 16, 500),
    ('S20', 8, 24, 1500),
    ('S21', 8, 12, 1000),
    ('S22', 6, 12, 1200),
    ('A71', 6, 12, 1200),
    ('A91', 4, 12, 1900),
    ('A57', 8, 8, 900),
    ('A32', 8, 4, 800),
    ('A33', 8, 5, 750),
    ('A43', 8, 5, 850);
--Проверка наличия данных в таблице phones_samsung:
select * from phones_samsung;

--5. Дополнение данными таблицы phones_samsung:
insert into phones_samsung(model, ram, front_camera, price)
values ('A65', 6, 10, 350),
    ('A75', 8, 10, 450),
    ('A85', 4, 16, 550),
    ('A95', 12, 10, 650),
    ('A105', 8, 12, 760),
    ('A115', 6, 10, 820);
--Проверка наличия данных в таблице phones_samsung:
select * from phones_samsung;

--6. Создание таблицы с заказами по телефонам samsung (таблица с названием samsung_orders):
create table samsung_orders(
 id serial primary key,
 phone_id int
);

--7. Создание таблицы с заказами по телефонам apple(таблица с названием apple_orders):
create table apple_orders(
 id serial primary key,
 phone_id int
);

--8. Заполнение данными таблицы с заказами по apple (apple_orders):
insert into apple_orders(phone_id)
values (3),
    (9),
    (5),
    (1),
    (4);

--9. Заполнение данными таблицы с заказами по samsung (samsung_orders):
insert into samsung_orders(phone_id)
values (2),
    (1),
    (5);
-- Проверка налияия всех таблиц с введенными данными по каждой таблице:   
select * from samsung_orders;
select * from apple_orders;
select * from phones_apple;
select * from phones_samsung;

--10. Вся информация по телефонам apple,где цена будет больше(цены телефонов apple, которые больше средней цены по ВСЕМ телефонам - запрос ниже), 
--чем средняя цена ВСЕХ телефонов apple:
select * from phones_apple
where price > (select avg(price) from phones_apple);
--Проведение отдельного запроса составной части запроса выше (выводится средняя цена всех телефонов apple - 718):
select avg(price) from phones_apple;

--11. Все телефоны apple, которые дороже средней цены ВСЕХ телефонов фирмы samsung:
select * from phones_apple 
where price > (select avg(price) from phones_samsung);
--Подзапрос отдельно (средняя цена по ВСЕМ ценам телефонов samsung - 827):
select avg(price) from phones_samsung;

--12. Список цен на телефоны apple, которые равны ценам на телефоны samsung (in):
select * from phones_apple 
where price in (select price from phones_samsung);

--13. Все модели телефонов apple, цены которых никак не равны ценам телефонов amsung (not in)
select * from phones_apple 
where price not in (select price from phones_samsung);

--14. Вывод цен на телефоны apple, которые МЕНЬШЕ МИНИМАЛЬНОГО (меньше самой минимальной цены тел. apple, которая меньше 1000 - т.е. меньше 350)
-- < all = меньше чем все, т.е. МЕНЬШЕ МИНИМАЛЬНОГО (получится 300):
select * from phones_samsung 
where price < all (select price from phones_apple where price < 1000);
--Проведение отдельного подзапроса (выводятся ВСЕ цены телефонов aplle меньше 1000):
select price from phones_apple where price < 1000;

--15. Вывод цен на телефоны apple, которые БОЛЬШЕ МАКСИМАЛЬНОГО (больше самой максимальной цены тел. apple, которая в диапазоне меньше 1000 - т.е. больше 820)
-- > all = больше чем все, т.е. БОЛЬШЕ МАКСИМАЛЬНОГО (получится 850, 900, 1000, 1200, 1900):
select * from phones_samsung 
where price > all (select price from phones_apple where price < 1000);
--Проведение отдельного подзапроса (выводятся ВСЕ цены телефонов aplle меньше 1000):
select price from phones_apple where price < 1000;

--16. Не произойдет вывода данных (=all):
select * from phones_samsung 
where price = all (select price from phones_apple where price < 1000);

--17. Вывод цен телефонов samsung, которые никак не равны ценам apple, дешевле (меньше) 1000 (т.е. которые никак не равны отдельно подзапросу с ценой на apple еньше 1000): 
select * from phones_samsung 
where price <> all (select price from phones_apple where price < 1000);

--18. Вывод цен на телефоны apple, которые МЕНЬШЕ МАКСИМАЛЬНОГО (меньше самой максимальной цены тел. apple, которая меньше 1000 - т.е. меньше 820)
-- < any = меньше чего-то, т.е. МЕНЬШЕ МАКСИМАЛЬНОГО (получится 760, 650, 550, 450, 350, 750, 800, 500, 400, 300)
-- any = что-то:
select * from phones_samsung 
where price < any (select price from phones_apple where price < 1000);
--Проведение отдельного подзапроса (выводятся ВСЕ цены телефонов aplle меньше 1000):
select price from phones_apple where price < 1000;

--19. Вывод цен на телефоны apple, которые БОЛЬШЕ МИНИМАЛЬНОГО (больше самой минимальной цены тел. apple, которая меньше 1000 - т.е. больше 350)
-- > any = больше чего-то, т.е. БОЛЬШЕ МИНИМАЛЬНОГО (получится 820, 760, 650, 850, 550, 450, 350, 750, 800, 500, 400, 300, 900, 1900, 1200, 1000, 1500)
-- any = что-то:
select * from phones_samsung 
where price > any (select price from phones_apple where price < 1000);
--Проведение отдельного подзапроса (выводятся ВСЕ цены телефонов aplle меньше 1000):
select price from phones_apple where price < 1000;

--20. Цены на телефоны samsung. которые равны диапозону цен на телефоны apple (налог оператора in):
select * from phones_samsung 
where price = any (select price from phones_apple where price < 1000);

select * from phones_samsung 
where price <> any (select price from phones_apple where price < 1000);