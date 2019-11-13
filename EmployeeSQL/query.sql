-- List the employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM 
	employees e
	INNER JOIN salaries s
	ON e.emp_no = s.emp_no

-- List employees who were hired in 1986.
SELECT emp_no, last_name, first_name, gender, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31' 

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no, d.dept_name as "Deparment Name", e.emp_no, e.last_name AS "Last Name", e.first_name AS "First Name",  m.from_date, m.to_date
FROM
	dept_manager m
	INNER JOIN employees e
	ON e.emp_no = m.emp_no
	INNER JOIN departments d
	ON d.dept_no = m.dept_no

-- List the department of each employee with employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name AS "Last Name", e.first_name AS "First Name", d.dept_name AS "Department Name"
FROM 
	dept_emp de
	INNER JOIN employees e
	ON e.emp_no = de.emp_no
	INNER JOIN departments d
	ON d.dept_no = de.dept_no

-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT last_name AS "Last Name", first_name AS "First Name"
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- List all employees in the Sales department
-- include their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name AS "Last Name", e.first_name AS "First Name", d.dept_name AS "Department Name"
FROM
	dept_emp de
	INNER JOIN employees e
	ON e.emp_no = de.emp_no
	INNER JOIN departments d
	ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'

-- List all employees in the Sales and Development departments
SELECT e.emp_no, e.last_name AS "Last Name", e.first_name AS "First Name", d.dept_name AS "Department Name"
FROM
	dept_emp de
	INNER JOIN employees e
	ON e.emp_no = de.emp_no
	INNER JOIN departments d
	ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name
ORDER BY count(last_name) DESC