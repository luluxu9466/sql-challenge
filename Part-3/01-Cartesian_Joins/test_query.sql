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
	id SERIAL PRIMARY KEY
);

INSERT INTO table_one DEFAULT VALUES;
INSERT INTO table_one DEFAULT VALUES;
INSERT INTO table_one DEFAULT VALUES;
INSERT INTO table_one DEFAULT VALUES;

SELECT * FROM table_one;

DROP TABLE table_two;

CREATE TABLE table_two (
	id SERIAL PRIMARY KEY
);

ALTER SEQUENCE table_two_id_seq RESTART WITH 10 INCREMENT BY 1;
INSERT INTO table_two DEFAULT VALUES;
INSERT INTO table_two DEFAULT VALUES;
INSERT INTO table_two DEFAULT VALUES;

SELECT * FROM table_two;

SELECT * FROM table_one, table_two