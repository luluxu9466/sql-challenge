DROP TABLE employees;

CREATE TABLE employees (
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	department_id INTEGER NOT NULL
);

INSERT INTO employees (employee_id, first_name, last_name, department_id)
VALUES (3, 'Chris', 'Christian', 25),
(14, 'Jan', 'Jansson', 45),
(17, 'Sam', 'Samuels', 45)
;

ALTER TABLE employees
RENAME COLUMN "department_id" TO "depart_id";

ALTER TABLE employees
ADD annual_salary INT;

SELECT * FROM employees