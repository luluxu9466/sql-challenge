DROP TABLE first_table, second_table;

-- Create first table
CREATE TABLE first_table (
	x VARCHAR,
	y INT,
	z INT
);

INSERT INTO first_table (x,y,z) 
VALUES ('a',1,2),
('a',1,2),
('a',1,2),
('a',1,2);

-- 4 rows
SELECT COUNT(*) 
FROM first_table;

-- Create second table
CREATE TABLE second_table(
	y INT, 
	x VARCHAR
);

INSERT INTO second_table (y,x) 
VALUES (1,'a'),
(1,'a'),
(1,'a'),
(1,'a'),
(1,'a');

-- 5 rows
SELECT COUNT(*) 
FROM second_table;

-- 20 rows
SELECT *
FROM first_table, second_table;

DROP TABLE table_one;

CREATE TABLE table_one (
	id INT
);

INSERT INTO table_one (id) 
VALUES (1),
(2),
(3),
(4);

SELECT * FROM table_one;

DROP TABLE table_two;

CREATE TABLE table_two (
	id INT
);

INSERT INTO table_two (id) 
VALUES (10),
(11),
(12);

SELECT * FROM table_two

SELECT * FROM table_one, table_two