use employees;

select * from salaries;

select date_format(from_date, '%Y') from salaries;

select date_format(from_date, '%Y') as salary_year, min(salary) from salaries group by salary_year;

select date_format(from_date, '%Y') as salary_year, max(salary) from salaries group by salary_year;

SELECT salary_year, total_salary, max_salary, min_salary, avarage_salary 
FROM 
	(SELECT 
		date_format(from_date, '%Y') as salary_year,
        sum(salary) as total_salary,
        max(salary) as max_salary,
        min(salary) as min_salary,
        avg(salary) as avarage_salary
	FROM
		salaries 
	Where emp_no not in ( Select distinct emp_no 
    from 
    dept_manager)
	GROUP BY salary_year) as alfa_delta;
    
    