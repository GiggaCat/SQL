-- FUNCTIONS USED TO HANDEL NULL VALUES --
-- HERE ARE THE MOST IMP NULL FUNCTIONS --

USE InternAreaDB;

-- ISNULL :- REPLACE NULL WITH GIVEN VALUE --
SELECT 
   grade,
   score_percentage,
   ISNULL(GRADE,'n/a')
FROM performance;


-- COALESCE() :- RETURN FIRST NON-NULL VALUE FROM THE LIST --
SELECT 
   grade,
   score_percentage,
   COALESCE(GRADE,'n/a')
FROM performance;


-- NULLIF():- RETURN NULL IF BOTH EXPRESSIONS ARE EQUAL --
SELECT 
    grade,
    NULLIF(GRADE,'A')
FROM performance;

-- CONDITIONAL HANDELING OF NULLS --
SELECT
  score_percentage,
  CASE WHEN score_percentage IS NULL THEN 0 ELSE score_percentage END
FROM performance;

-- COUNT(column):- IGNORES NULL , VS ,  COUNT(*):- COUNT ALL ROWS --
SELECT
   COUNT(GRADE),
   COUNT(*)
FROM performance;