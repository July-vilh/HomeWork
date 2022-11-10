--GROUP BY--
--1. Количество телефонов с определенным размером оперативной памяти (ram):
select ram, count(*) from phones_apple 
group by (ram);

--2. Определить среднюю цену телефона (сколько в среднем стоют телефоны) с 4 Гб оперативной памяти:
select ram, avg(price) from phones_apple 
group by(ram);

--3. Средняя цена в зависимости от камеры телефона (Мп):
select front_camera, avg(price) from phones_apple 
group by(front_camera);

--То, по чем происходит группировка обязательно должно быть в select. Group by рфботает с агрегирующими функциями.