--Joins
--1. Создание таблицы 1 городов (под названием City):
create table  City(
	id serial primary key,
	city_name varchar(40) unique not null
);

--2. Создание таблицы 1 жителей (под названием Person):
create table Person(
	id serial primary key,
	person_name varchar(40),
	city_id int not null
);

--Просмотр наличия таблиц City и Person
select * from City;
select * from Person;

--3. Наполнение данными таблицы City:
insert into City(city_name)
values	('Kiyv'),
	    ('Lviv'),
	    ('Antalia'),
	    ('Moscow'),
	    ('Ivanovo'),
	    ('Berlin');
	   
--3. Наполнение данными таблицы Person:
insert into Person(person_name, city_id)
values	('Vadim', 2),
	    ('Grigory', 3),
	    ('Masha', 5),
	    ('Anna', 6);

--Проверка наличия данных в таблицах City и Person:
select * from City;
select * from Person;

--4. Вывести персону и название города, в котором этот житель живет(join):
select Person.person_name, City.city_name
from Person join city 
on Person.city_id = City.id; --на основании чего произошло соединение 2 таблиц (имени и города)

--6. left join:
--6.1 В таблицу Person добавляем жителей, которые живут в несуществующих городах:
insert into Person(person_name, city_id)
values	('Natalia', 8),
	    ('Anatoly', 10);
--6.2. Собственно left join:
select Person.person_name, City.city_name
from Person left join city 
on Person.city_id = City.id;

--7. right join:
select Person.person_name, City.city_name
from Person right join city 
on Person.city_id = City.id;

--8. full join:
select Person.person_name, City.city_name
from Person full join city 
on Person.city_id = City.id
order by Person.city_id;


