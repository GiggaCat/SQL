-- JOINING DATA MEANS COMBINING 2 TABLE BY COLUMN WITH THE HELP OF A COMMON COLUMN... --

USE InternAreaDB;

-- 1) NO JOIN : --
SELECT 
* 
FROM enrollments;

SELECT
* FROM PERFORMANCE;

SELECT 
*
FROM students;

SELECT
*
FROM courses;

-- 2) INNER JOIN : RECORDS THAT HAVE MATCHING VALUE OF BOTH TABLES --
SELECT 
S.student_id,
S.first_name,
S.last_name,
E.enrollment_id,
E.enrollment_status
FROM students AS S
INNER JOIN enrollments AS E
ON S.student_id = E.student_id;

-- LEFT JOIN : RECORDS ALL DATA OF LEFT TABLE AND COMMON DATA OF RIGHT TABLE --
SELECT 
E.enrollment_id,
E.enrollment_status,
P.grade,
P.score_percentage,
P.feedback
FROM enrollments AS E
LEFT JOIN performance AS P
ON E.enrollment_id = P.enrollment_id;

-- RIGHT JOIN : RECORDS ALL DATA OF RIGHT TABLE AND COMMON DATA OF LEFT TABLE --
SELECT 
E.enrollment_id,
E.enrollment_status,
P.grade,
P.score_percentage,
P.feedback
FROM enrollments AS E
RIGHT JOIN performance AS P
ON E.enrollment_id = P.enrollment_id;

-- SAME QUERY SOLVING USING LEFT JOIN --
SELECT 
E.enrollment_id,
E.enrollment_status,
P.grade,
P.score_percentage,
P.feedback
FROM performance AS P
LEFT JOIN  enrollments AS E
ON E.enrollment_id = P.enrollment_id;

-- FULL JOIN : RECORD OF DATA OF BOTH THE TABLES --
SELECT
*
FROM enrollments AS E
FULL JOIN performance AS P
ON P.enrollment_id = E.enrollment_id;


-- LEFT ANTI JOIN : RETURN DATA OF LEFT TABLE REMOVING MATCHING DATA --
SELECT
*
FROM enrollments AS E
LEFT JOIN performance AS P
ON E.enrollment_id = P.enrollment_id
WHERE P.enrollment_id IS NULL;

-- RIGHT ANTI JOIN : RETURN DATA FROM RIGHT TABLE REMOVING MATCHING DATA --
SELECT
*
FROM enrollments AS E
RIGHT JOIN students AS S
ON E.student_id = S.student_id
WHERE E.student_id IS NULL;


-- FULL ANTI JOIN : RETURN DATA FROM BOTH TABLE REMOVING MATVHING DATA --
SELECT
*
FROM enrollments AS E
FULL JOIN performance AS P
ON E.enrollment_id = P.enrollment_id
WHERE E.enrollment_id IS NULL OR P.enrollment_id IS NULL;


-- JOINING MULTIPLE TABLE --

SELECT
 E.enrollment_id,
 E.enrollment_status,
 S.student_id,
 S.first_name,
 S.last_name,
 S.email,
 S.enrollment_date,
 P.grade,
 P.score_percentage,
 P.feedback
FROM enrollments AS E
LEFT JOIN students AS S
ON E.student_id = S.student_id
LEFT JOIN performance AS P
ON E.enrollment_id = P.enrollment_id
LEFT JOIN courses AS C
ON E.course_id = C.course_id;
