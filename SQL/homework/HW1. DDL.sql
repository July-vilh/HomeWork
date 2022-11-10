--1. Создание БД с сотрудниками (табл.1 = табл. зарплат, табл. 2 - табл. ролей, табл.3 = id роли + id зарплаты). 
--Таблица1 (таблица зарплат под названием salary1):

create table salary1 (
	id serial primary key,
	monthly_salary int not null
);

-- Проверяем наличие таблицы salary1:
select * from salary1;

--1.1. Вносим данные в таблицу salary1:
insert into salary1 (monthly_salary)
values (500),
	   (700),
	   (1000),
	   (1200),
	   (1400),
	   (1500),
	   (1700),
	   (1900),
	   (2000);

-- Проверяем наличие данных в таблице salary1:
select * from salary1;

--2. Создание Таблицы 2 (таблица ролей под названием roles)
create table roles(
	id serial primary key,
	role_title varchar (50) unique not null
);

-- Проверяем наличие данных в таблице roles:
select * from roles;

--2.1. Наполняем таблицу roles данными:
insert into roles (role_title)
values ('Junior_QA'),
	   ('Middle_QA'),
	   ('Senior_QA'),
	   ('Junior_JS_developer'),
	   ('Middle_JS_developer'),
	   ('Senior_JS_developer');
	   
-- Проверяем наличие данных в таблице roles:
select * from roles;

--3. Создание Таблицы 3, в которой будет происходить связывание данных роль + зарплата (таблица под названием roles_salary)

create table roles_salary (
	id serial primary key,
	id_role int not null,
	id_salary int not null,
	foreign key (id_role)
	  references roles (id),
	foreign key (id_salary)
	  references salary1 (id) 
);
-- Проверяем наличие реляции в таблице roles_salary:
select * from roles_salary;

--3.1. Вносим данные в таблицу3 roles_salary 
insert into roles_salary (id_role, id_salary)
values (1, 1),
	   (2, 3),
	   (3, 7);
	   
-- Проверяем наличие связей в таблице roles_salary:
select * from roles_salary;