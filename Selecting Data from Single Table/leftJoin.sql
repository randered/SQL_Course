use employees;

SELECT * FROM employees
WHERE emp_no not in ( SELECT emp_no FROM titles WHERE to_date = '9999-01-01' );

SELECT 
    *
FROM
    employees AS emp
        LEFT JOIN
    titles AS ttl ON emp.emp_no = ttl.emp_no
        AND ttl.to_date = '9999-01-01'
WHERE ttl.emp_no IS NULL;