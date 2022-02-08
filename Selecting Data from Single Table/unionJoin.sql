use employees;

SELECT 
    dept_name, emp.emp_no, first_name, last_name,'Manager' AS amp_type
FROM
    employees AS emp
        JOIN
    dept_manager AS dm ON dm.emp_no = emp.emp_no
        JOIN
    departments AS dept ON dept.dept_no = dm.dept_no
WHERE
    dm.to_date = '9999-01-01' 
UNION SELECT 
    dept_name, emp.emp_no, first_name, last_name, 'Staff' AS amp_type
FROM
    employees AS emp
        JOIN
    dept_emp AS de ON de.emp_no = emp.emp_no
        JOIN
    departments AS dept ON dept.dept_no = de.dept_no
WHERE
    de.to_date = '9999-01-01'
ORDER BY amp_type , dept_name , last_name;

