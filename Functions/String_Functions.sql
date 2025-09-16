-- FUNCTIONS THAT ARE USED TO MANIPULATE STRINGS ARE CALLED STRING FUNCTIONS... --
-- HERE ARE THE MOST IMP STRING FUNCTIONS --

USE InternAreaDB;

-- LEN() :- USED TO FIND LENGTH OF A STRING --
SELECT
  first_name,
  LEN(first_name) AS LEN_NAME
FROM students


-- SUBSTRING() :- USED TO EXTRACT A PART FROM A STRING --
SELECT
  first_name,
  SUBSTRING(first_name,2,LEN(first_name)) AS sub_NAME
FROM students

-- CHARINDEX() :- USED TO FIND POSITION OF A SUBSTRING --
SELECT
  first_name,
  CHARINDEX('e',first_name) AS IND
FROM students
WHERE CHARINDEX('e',first_name) != 0;

-- REPLACE() :- USED TO REPLACE A STRING --
SELECT
 'DATABASE' AS STRING,
 REPLACE('DATABASE','BASE','HOUSE') AS R_STRING

-- UPPER() :- USED TO CONVERT TO UPPERCASE --
SELECT
  first_name,
  UPPER(first_name) AS UPPER_NAME
FROM students


-- LOWER() :- USED TO CONVERT TO LOWER CASE --
SELECT
  first_name,
  LOWER(first_name) AS LOWER_NAME
FROM students

-- LTRIM(), RTRIM(), TRIM() :- USED TO TRIM SPACES FROM LEFT, RIGHT, FROM BOTH --
SELECT
   TRIM('   HI     ')


-- CONCAT() :- USED TO COMBINE STRINGS --
SELECT
   first_name,
   last_name,
   CONCAT(first_name,' ',last_name) AS CONCAT
FROM students

