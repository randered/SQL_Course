use employees;

INSERT INTO departments VALUES ('ddd9', 'Does it work ?');

INSERT INTO employees SELECT max(emp_no)+1, '1996-03-15', 'Vasil', 'Vasilev', 'M', '2022-04-05' FROM employees;
INSERT INTO titles VALUES (500001, 'Junior Developer', '2022-04-05', '9999-01-01');
INSERT INTO dept_emp VALUES (500001, 'd005', '2022-04-05', '9999-01-01');
INSERT INTO salaries VALUES (500001, 1200, '2022-04-05', '9999-01-01');

SELECT * FROM employees where first_name = 'Vasil';

SELECT * FROM dept_emp where emp_no = 500001;

SELECT * FROM salaries where emp_no = 500001;

SELECT * FROM titles where emp_no = 500001;


