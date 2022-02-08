use employees;
select count(*) from employees;
select count(*) from salaries;
select first_name, last_name, concat(first_name, ' ', last_name) as 'Name' from employees;
select * from employees where first_name = 'Elvis' or 'Rossi';
SELECT * FROM salaries where salary between 42000 and 55000;

SELECT first_name, count(*) from employees group by first_name;
SELECT birth_date, count(*) as birth_Count from employees group by birth_date order by birth_Count;

select salary, count(*) as sal_count from salaries group by salary having sal_count > 100;

