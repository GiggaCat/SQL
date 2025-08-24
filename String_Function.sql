-- 1) STRING MANIPULATION : --

USE InternAreaDB;

-- A) CONCAT : COMBINE MULTIPLE STRING INTO ONE --

SELECT
   CONCAT(first_name,' ',last_name) AS full_name
FROM students;


-- UPPER AND LOWER : COVERT INTO UPPER AND LOWER CASE --

SELECT
  UPPER(first_name) AS FIRST_NAME,
  LOWER(last_name) AS LAST_NAME
FROM students;

-- TRIM : USED TO REMOVE LEADING AND TRAILING SPACES --
SELECT
TRIM(first_name) AS trim_name
FROM students;

-- REPLACE : USED TO REPLACE AN OLD VALUE TO NEW VALUE --
SELECT
'132-34455-12334' AS NUMBER,
REPLACE('132-34455-12334','-','/') AS NUMBER_CLEAR

-- 2) CALCULATION FUNCTIONS --
-- LEN : USED TO COUNT HOW MANY CHARACTER --

SELECT
   first_name,
   LEN(first_name) AS LENGTH_NAME
FROM students;

-- 3) STRING EXTRACTION : --

-- LEFT : EXTRACT SPECIFIC NUMBER OF CHARACTERS FROM THE START --

SELECT
  first_name,
  LEFT(first_name,2) AS left_name
FROM students;

-- RIGHT : EXTRACT SPECIFIC NUMBER OF CHARACTERS FROM THE END --
SELECT
  first_name,
  RIGHT(first_name,2) AS right_name
FROM students;

-- SUBSTRING : EXTRACE A PART OF THE STRING --

SELECT 
   first_name,
   SUBSTRING(first_name,2,4) AS sub_name

FROM students;
