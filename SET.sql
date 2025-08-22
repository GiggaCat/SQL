CREATE DATABASE Tempo_Database;

USE Tempo_Database;

CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email TEXT
);


CREATE TABLE class (
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    class VARCHAR(50),
    section VARCHAR(50)
);


INSERT INTO students (student_id, first_name, last_name, email) VALUES
(1, 'John', 'Doe', 'john.doe@email.com'),
(2, 'Jane', 'Smith', 'jane.smith@email.com'),
(3, 'Michael', 'Johnson', 'michael.johnson@email.com'),
(4, 'Emily', 'Davis', 'emily.davis@email.com'),
(5, 'Chris', 'Brown', 'chris.brown@email.com'),
(6, 'Jessica', 'Wilson', 'jessica.wilson@email.com'),
(7, 'David', 'Taylor', 'david.taylor@email.com'),
(8, 'Sarah', 'Miller', 'sarah.miller@email.com'),
(9, 'John', 'Doe', 'john.doe2@email.com'), 
(10, 'Jane', 'Smith', 'jane.smith2@email.com'); 

INSERT INTO class (first_name, last_name, class, section) VALUES
('Peter', 'Parker', 'History', 'A'),
('Mary', 'Jane', 'Science', 'B'),
('Bruce', 'Wayne', 'Math', 'A'),
('Diana', 'Prince', 'English', 'C'),
('Jessica', 'Wilson', 'History', 'B'),
('Wanda', 'Maximoff', 'Science', 'A'),
('Tony', 'Stark', 'English', 'B'),
('Natasha', 'Romanoff', 'Math', 'C'),
('Sarah', 'Miller', 'English', 'B'),
('Mary', 'Jane', 'Math', 'C'); 

SELECT * FROM class;

SELECT * FROM students;

-- SET IS USED TO JOIN TWO TABLES VIA ROWS --

-- UNION : RETURNS ALL ROWS FROM BOTH QUERIES EXCEPT DUPLICATES --

SELECT 
   first_name,
   last_name
FROM students
UNION 
SELECT
   first_name,
   last_name
FROM class;

-- UNION ALL: RETURNS ALL ROWS FROM BOTH QUERIES INCLUDING DUPLICATES --

SELECT 
   first_name,
   last_name
FROM students
UNION ALL
SELECT
   first_name,
   last_name
FROM class;


-- EXCEPT : RETURN ALL THE DATA FROM FIRST QUERY REMOVE MATCHING DATA AND DUPLICATES --
SELECT
first_name,
last_name
FROM students
EXCEPT
SELECT
first_name,
last_name
FROM class;

-- INTERSECT : RETURN MATCHING VALUES OF BOTH TABLES AS WELL AS REMOVE DUPLICATES --\

SELECT
   first_name,
   last_name
FROM students
INTERSECT
SELECT
   first_name,
   last_name
FROM class;

