DROP TABLE employees;
DROP TABLE departments;

CREATE TABLE departments(
	id SERIAL PRIMARY KEY,
	dept_name VARCHAR
);

INSERT INTO departments (id, dept_name)
VALUES (45, 'webdev');

CREATE TABLE employees (
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	department_id INTEGER NOT NULL,
	FOREIGN KEY (department_id) REFERENCES departments(id)
);

INSERT INTO employees (employee_id, first_name, last_name, department_id)
VALUES (14, 'Jan', 'Jansson', 45),
(17, 'Sam', 'Samuels', 45)
;

SELECT * FROM employees e
JOIN departments d
ON (e.department_id = d.id)
WHERE e.department_id = 45;
