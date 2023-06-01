use soft_uni;
-- 1
select * from departments
order by department_id;
-- 2
select name from departments
order by department_id;
-- 3
select first_name, last_name, salary from employees
order by employee_id;
-- 4
select first_name, middle_name, last_name from employees
order by employee_id;
-- 5
SELECT 
    CONCAT(first_name,
            '.',
            last_name,
            '@softuni.bg') AS 'full_email_address'
FROM
    employees;
-- 6
select distinct salary from employees;
-- 7
select * from employees
where job_title = 'Sales Representative'
order by employee_id;
-- 8
select first_name, last_name, job_title
from employees
where salary between 20000 and 30000
order by employee_id;
-- 9
SELECT 
    CONCAT_WS(' ', first_name, middle_name, last_name) AS 'Full Name'
FROM
    employees
WHERE
    salary IN (25000 , 14000, 12500, 23600);
-- 10
select first_name, last_name
from employees
where manager_id is null;
-- 11
select first_name, last_name, salary
from employees
where salary > 50000
order by salary desc;
-- 12
select first_name, last_name
from employees
order by salary desc limit 5;
-- 13
select first_name, last_name
from employees
where department_id != 4;
-- 14
select * from employees
order by salary desc, first_name, last_name desc, middle_name;
-- 15
create view v_employees_salaries
as select first_name, last_name, salary
from employees;
select * from v_employees_salaries;
-- 16
create view  v_employees_job_titles
as select concat_ws(' ',first_name, middle_name, last_name) as 'full_name',
job_title
from employees;
select* from v_employees_job_titles;
-- 17
select distinct job_title
from employees
order by job_title;
-- 18
select * from projects
order by start_date, name, project_id limit 10;
-- 19
select first_name, last_name, hire_date
from employees
order by hire_date desc limit 7;
-- 20
update employees
set salary = salary * 1.12
where department_id in (1, 2, 4, 11);
select salary from employees;


use geography;
-- 21
select peak_name from peaks
order by peak_name;
-- 22
select country_name, population from countries
where continent_code = 'EU'
order by population desc, country_name
limit 30;
-- 23
select country_name, country_code, if(currency_code = 'EUR', 'Euro', 'Not Euro')countries
from countries
order by country_name;

use diablo;
-- 24
select name
from characters
order by name;