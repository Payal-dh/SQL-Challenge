--Question-1 
SELECT employee.emp_no, last_name, first_name, sex,salary
FROM employee
JOIN salaries ON employee.emp_no = salaries.emp_no;

--Question-2

SELECT first_name, last_name, hire_date 
FROM employee
WHERE hire_date
BETWEEN '1986-01-01' AND '1986-12-31' ;

--Question-3
SELECT departments.dept_no, dept_name, dept_manager.emp_no, last_name, first_name
FROM dept_manager
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN employee ON employee.emp_no = dept_manager.emp_no;

select * from dept_manager

--Question-4
SELECT dept_emp.emp_no, last_name, first_name, departments.dept_name
FROM employee
JOIN dept_emp ON employee.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;
--JOIN employee ON dept_emp.emp_no = employee.emp_no

--Question-5
SELECT first_name, last_name, sex
FROM employee 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Question-6
SELECT employee.emp_no, last_name, first_name, dept_name
FROM employee
JOIN dept_emp ON employee.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no LIKE 'd007';

--Question-7 
SELECT employee.emp_no, last_name, first_name, dept_name
FROM employee
JOIN dept_emp ON employee.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
-- The department numbers of Sales and Development departments are d007 and d005
WHERE departments.dept_no = 'd007' or departments.dept_no = 'd005';
SELECT * FROM departments;

---Question-8

SELECT last_name, COUNT(last_name) AS "Frequency count"
FROM employee
GROUP BY last_name
ORDER BY "Frequency count" DESC;
