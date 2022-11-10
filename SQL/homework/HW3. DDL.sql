--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами:
select salary2.monthly_salary1, roles1.role_name
from salary2 join roles1 
on salary2.employee_id = roles1.employee_id;

--2. Вывести всех работников у которых ЗП меньше 2000:
select employee_name, monthly_salary1
from employees join employee_salary on
employee_salary.employee_id = employees.id 
join salary2 on salary2.id = employee_salary.salary_id 
where monthly_salary1 < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен (ЗП есть, но не понятно кто её получает):
select employee_name, monthly_salary1 
from employees full join employee_salary on employee_salary.employee_id = employees.id 
join salary2 on salary2.id = employee_salary.salary_id;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает):
select employee_name, monthly_salary1
from employees 
full join employee_salary on employee_salary.employee_id = employees.id 
join salary2 on salary2.id = employee_salary.salary_id 
where employees.id is null and monthly_salary1 < 2000;

--5. Найти всех работников кому не начислена ЗП:
select employee_name, employees.id 
from employees 
full join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary.id = employee_salary.salary_id
where employees.id is null;

--6. Вывести всех работников с названиями их должности:
select employee_name, role_name
from employees 
join roles1 on roles1.id = employees.id;

--7. Вывести имена и должность только Java разработчиков:
select employee_name, role_name
from employees 
join roles1 on roles1.id = employees.id 
where role_name = '%Java d%';

--8. Вывести имена и должность только Python разработчиков:
select employee_name, role_name
from employees 
join roles1 on roles1.id = employees.id 
where role_name = '%Python d%';

--9. Вывести имена и должность всех QA инженеров:
select employee_name, role_name
from employees 
join roles1 on roles1.id = employees.id 
where role_name = '%QA engineer';

--13. Вывести имена и зарплаты Middle специалистов:
select employee_name, monthly_salary1, role_name
from employees 
join employee_salary on employee_salary.employee_id = employees.id 
join salary2 on salary2.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%Middle%';

--14. Вывести имена и зарплаты Senior специалистов:
select employee_name, monthly_salary1
from employees 
join employee_salary on employee_salary.employee_id = employees.id 
join salary2 on salary2.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles1 on roles1.id = salary2.id
where role_name like '%Senior%';

--15. Вывести зарплаты Java разработчиков:
select monthly_salary1
from employees 
join employee_salary on employee_salary.employee_id = employees.id 
join salary2 on salary2.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%Java%';

--16. Вывести зарплаты Python разработчиков:
select monthly_salary1
from employees 
join employee_salary on employee_salary.employee_id = employees.id 
join salary2 on salary2.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%Python%';

--17. Вывести имена и зарплаты Junior Python разработчиков:
select employee_name, monthly_salary1
from employees 
join employee_salary on employee_salary.employee_id = employees.id 
join salary2 on salary2.id = employee_salary.salary_id 
join roles1 on roles1.id = salary2.id 
where role_name like '%Junior Python%';

--18. Вывести имена и зарплаты Middle JS разработчиков:
select employee_name, monthly_salary1
from employees 
join employee_salary on employee_salary.employee_id = employees.id 
join salary2 on salary2.id = employee_salary.salary_id 
join roles1 on roles1.id = salary2.id 
where role_name like '%Middle Java%';

--19. Вывести имена и зарплаты Senior Java разработчиков:
select employee_name, monthly_salary1
from employees 
join employee_salary on employee_salary.employee_id = employees.id 
join salary2 on salary2.id = employee_salary.salary_id 
join roles1 on roles1.id = salary2.id 
where role_name like '%Senior Java%';

--20. Вывести зарплаты Junior QA инженеров:
select employee_name, monthly_salary1, role_name
from employees 
join employee_salary on employee_salary.employee_id = employees.id 
join salary2 on salary2.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%Junior%%QA%';

--21. Вывести среднюю зарплату всех Junior специалистов:
select avg(monthly_salary1)
from employees 
join employee_salary on employee_salary.employee_id = employees.id 
join salary2 on salary2.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles1 on roles1.id = roles_employee.role_id 
where role_name like '%Junior%';

--25. Вывести количество QA инженеров:
select count(role_name)
from roles1 
join roles_employee on roles1.id = roles_employee.role_id 
where role_name like '%QA%';

--26. Вывести количество Middle специалистов:
select count(role_name)
from roles1 
join roles_employee on roles1.id = roles_employee.role_id 
where role_name like '%Middle%';


