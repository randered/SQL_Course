use employees;

SELECT 
    dept_name, first_name, last_name, title
FROM
    employees AS emp
        JOIN
    dept_emp AS de ON de.emp_no = emp.emp_no
    JOIN 
    departments AS dept ON dept.dept_no = de.dept_no
    JOIN
    titles as ttl ON ttl.emp_no = emp.emp_no
    WHERE
    de.to_date = '9999-01-01'
    AND
    ttl.to_date = '9999-01-01'
    ORDER BY dept_name, last_name;
    
    SELECT 
    dept_name, first_name, last_name, title
FROM
    employees AS emp
        NATURAL JOIN
    dept_emp AS de
        NATURAL JOIN
    departments AS dept
        NATURAL JOIN
    titles AS ttl
WHERE
    de.to_date = '9999-01-01'
        AND ttl.to_date = '9999-01-01'
ORDER BY dept_name , last_name;

 SELECT 
    dept_name, first_name, last_name, title
FROM
    employees AS emp,
    dept_emp AS de,
    departments AS dept,
    titles AS ttl
WHERE
de.emp_no = emp.emp_no 
AND dept.dept_no = de.dept_no
AND ttl.emp_no = emp.emp_no
   AND de.to_date = '9999-01-01'
        AND ttl.to_date = '9999-01-01'
ORDER BY dept_name , last_name;