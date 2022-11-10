--UNION (вертикальное объединение)--
--1. Вывод модели, оперативной памяти и цены телефонов apple с моделью, оперативной памятью телефонов samsung (с дубликатами):
select model, ram, price from phones_apple where price < 1000
union all 
select model, ram, price from phones_samsung where price < 1000;
-- Критерии схождения:
--1. Должно совпадать количество столбиков сверху с количеством столбиков снизу
--2. Должны совпадать типы данных

--2. Вывод модели, оперативной памяти и цены телефонов apple с моделью, оперативной памятью телефонов samsung (без дубликатов):
select model, ram, price from phones_apple where price < 1000
union 
select model, ram, price from phones_samsung where price < 1000;
