--1. Создать таблицу employees со следующими данными: id serial primary key; employee_name varchar(50) not null:
create table employees(
	id serial primary key,
	employee_name varchar (50) not null
);

--Проверка наличия таблицы employees:
select * from employees;

--1.1. Наполнить таблицу employees 70-ю строками:
insert into employees(employee_name)
values ('july1'),
	   ('july2'),
	   ('july3'),
	   ('july4'),
	   ('july5'),
	   ('july6'),
	   ('july7'),
	   ('july8'),
	   ('july9'),
	   ('july10'),
	   ('july11'),
	   ('july12'),
	   ('july13'),
	   ('july14'),
	   ('july15'),
	   ('july16'),
	   ('july17'),
	   ('july18'),
	   ('july19'),
	   ('july20'),
	   ('july21'),
	   ('july22'),
	   ('july23'),
	   ('july24'),
	   ('july25'),
	   ('july26'),
	   ('july27'),
	   ('july28'),
	   ('july29'),
	   ('july30'),
	   ('july31'),
	   ('july32'),
	   ('july33'),
	   ('july34'),
	   ('july35'),
	   ('july36'),
	   ('july37'),
	   ('july38'),
	   ('july39'),
	   ('july40'),
	   ('july41'),
	   ('july42'),
	   ('july43'),
	   ('july44'),
	   ('july45'),
	   ('july46'),
	   ('july47'),
	   ('july48'),
	   ('july49'),
	   ('july50'),
	   ('july51'),
	   ('july52'),
	   ('july53'),
	   ('july54'),
	   ('july55'),
	   ('july56'),
	   ('july57'),
	   ('july58'),
	   ('july59'),
	   ('july60'),
	   ('july61'),
	   ('july62'),
	   ('july63'),
	   ('july64'),
	   ('july65'),
	   ('july66'),
	   ('july67'),
	   ('july68'),
	   ('july69'),
	   ('july70');
	  
-- Проверка наличия данных в таблице employees:
select * from employees;

--2. Создать таблицу salary2 со следующими значениями: id serial  primary key; monthly_salary1 int not null:
create table salary2 (
	id serial primary key,
	monthly_salary1 int not null
);

--Проверка наличия таблицы salary2:
select * from salary2;

--2.1. Наполнить таблицу salary2 16 строками:
insert into salary2 (monthly_salary1)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
	  
--Проверка наличия данных в таблице salary2:
select * from salary2;

 --3. Создать таблицу employee_salary со следующими данными: id serial primary key; employee_id int not null unique; salary_id int not null:
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

--Проверка наличия таблицы employee_salary:
select * from employee_salary;	   

--4. Наполнить таблицу employee_salary 40 строками:
--в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id, salary_id)
values (1,5),
	   (2,6),
	   (3,7),
	   (4,8),
	   (5,9),
	   (6,10),
	   (7,11),
	   (8,12),
	   (9,13),
	   (10,14),
	   (11,1),
	   (12,2),
	   (13,3),
	   (14,4),
	   (15,5),
	   (16,6),
	   (17,15),
	   (18,1),
	   (19,3),
	   (20,5),
	   (21,7),
	   (22,9),
	   (23,10);
	  
select * from employee_salary;

--Добавление оставшихся данных:
insert into employee_salary(employee_id, salary_id)
values (24,16),
	   (25,17),
	   (26,18),
	   (27,19),
	   (28,20),
	   (29,21),
	   (30,22),
	   (31,23),
	   (32,24),
	   (33,25),
	   (34,26),
	   (35,27),
	   (36,28),
	   (37,29),
	   (38,30),
	   (39,31),
	   (40,32);
	  
select * from employee_salary;

--4. Создать таблицу roles1 со следующими данными: id serial  primary key; role_name int not null unique:
create table roles1(
	id serial  primary key,
	role_name int not null unique
);

--Проверка наличия таблицы roles1:
select * from roles1;

--4.1. Поменять тип столба role_name с int на varchar(30)
alter table roles1
alter column role_name type varchar(30);

--4.2. Наполнить таблицу roles1 20 строками:
insert into roles1 (role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');

-- Проверка наличия данных в таблице roles1:
select * from roles1;

--5. Создать таблицу roles_employee со следующими данными:id serial  primary key; employee_id int not null unique(внешний ключ для таблицы employees, поле id)
-- role_id int not null (внешний ключ для таблицы roles1, поле id):
create table roles_employee(
	id serial  primary key,
	employee_id int not null unique,
	role_id int not null,
foreign key (employee_id)
	   references employees (id),
foreign key(role_id)
	   references roles1 (id)
);

--Проверка наличия таблицы roles_employee:
select * from roles_employee;

--6. Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id)
values (7,2),
	   (20,4),
	   (3,9),
	   (5,13),
	   (23,4),
	   (11,2),
	   (10,9),
	   (22,13),
	   (21,3),
	   (34,4),
	   (2,7),
	   (1,20),
	   (6,1),
	   (4,2),
	   (8,3),
	   (9,4),
	   (14,5),
	   (15,6),
	   (12,7),
	   (13,8),
	   (44,9),
	   (35,10),
	   (36,11),
	   (37,12),
	   (48,13),
	   (49,14),
	   (30,15),
	   (31,16),
	   (42,17),
	   (53,18),
	   (64,19),
	   (65,20),
	   (66,19),
	   (67,18),
	   (68,17),
	   (69,16),
	   (70,15),
	   (58,14),
	   (59,13),
	   (29,12);
	  
select * from roles_employee;

