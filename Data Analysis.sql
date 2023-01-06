--List the employee number, last name, first name, sex, and salary of each employee.

SELECT employee.emp_no, last_name, first_name, sex,salary
FROM employee
JOIN salaries ON employee.emp_no = salaries.emp_no;


--List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date 
FROM employee
WHERE hire_date 
between '1986-01-01' AND '1986-12-31';  


--List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT departments.dept_no, dept_name, dept_manager.emp_no, last_name, first_name
FROM dept_manager
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN employee ON employee.emp_no = dept_manager.emp_no;


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT dept_emp.emp_no, last_name, first_name, departments.dept_name
FROM employee
JOIN dept_emp ON employee.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;


--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employee 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


--List each employee in the Sales department, including their employee number, last name, and first name.

SELECT employee.emp_no, last_name, first_name, dept_name
FROM employee
JOIN dept_emp ON employee.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no LIKE 'd007';


--7List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT employee.emp_no, last_name, first_name, dept_name
FROM employee
JOIN dept_emp ON employee.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd007' or departments.dept_no = 'd005';


--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT(last_name) AS "Frequency count"
FROM employee
GROUP BY last_name
ORDER BY "Frequency count" DESC;
