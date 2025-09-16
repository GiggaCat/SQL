-- FUNCTIONS USED TO MANIPULATE DATE AND TIME DATA... --
-- HERE ARE THE MOST IMP DATE AND TIME FUNCTIONS --
USE InternAreaDB;

-- GETDATE() :- RETURN CURRENT DATE AND TIME --
SELECT 
   *,
   GETDATE() AS TODAY
FROM students;

-- SYSDATETIME() :- RETURN CURRENT DATE AND TIME WITH MORE PRECISION --
SELECT 
   *,
   SYSDATETIME() AS TODAY
FROM students;

-- DATEPART() :- RETURN INTEGER PART OF DATE --
SELECT
   student_id,
   enrollment_date,
   DATEPART(YEAR,ENROLLMENT_DATE) AS YEAR,
   DATEPART(MONTH,ENROLLMENT_DATE) AS MONTH,
   DATEPART(DAY,ENROLLMENT_DATE) AS DAY,
   DATEPART(WEEK,ENROLLMENT_DATE) AS WEEK
FROM students;


-- DATENAME :- RETURNS PART OF DATE AS STRING --
SELECT
    student_id,
    enrollment_date,
    DATENAME(MONTH,enrollment_date) AS MONTH_NAME
FROM students;

-- DAY() :- RETURN DAY OF MONTH --
SELECT
   enrollment_date,
   DAY(enrollment_date)
FROM students;


-- MONTH() :- RETURN MONTH NUMBER --
SELECT
   enrollment_date,
   MONTH(enrollment_date)
FROM students;


-- YEAR() :- RETURN YEAR NUMBER --
SELECT
   enrollment_date,
   YEAR(enrollment_date)
FROM students;

-- DATEADD() :- ADD OR SUBTRACT INTERVAL TO A DATE --
SELECT
    student_id,
    enrollment_date,
    DATEADD(DAY,10,enrollment_date) AS NEW_DATE,
    DATEADD(DAY,-15,enrollment_date) AS NEG_DATE
FROM students;


-- DATEDIFF() :- DIFFERENCE BETWEEN TWO DATES --
SELECT
    enrollment_date,
    GETDATE() AS TODAY_DATE,
    DATEDIFF(MONTH,enrollment_date,GETDATE())
FROM students;

-- EOMONTH() :- RETURN LAST DATE OF THE MONTH --
SELECT
    EOMONTH(enrollment_date)
FROM students;


-- FORMAT() :- FORMAT DATE/TIME IN CUSTOM STYLE --
SELECT
   FORMAT(GETDATE(),'dd-MMM-yyyy')


-- ISDATE() :- CHECK IF VALUE IS VALID DATE --
SELECT
  ISDATE('9')YES
