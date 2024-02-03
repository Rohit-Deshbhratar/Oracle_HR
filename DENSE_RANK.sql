SELECT * FROM EMPLOYEES;

-- DISPLAY RANK OF SALARY USING DENSE_RANK() FUNCTION(LOWEST FIRST)
SELECT (FIRST_NAME||' '||LAST_NAME)AS FULL_NAME,
DENSE_RANK() OVER(ORDER BY SALARY)AS SALARY_RANK FROM EMPLOYEES;

--DISPLAY RANK OF SALARY USING DENSE_RANK() IN DESCENDING ORDER(HIGHEST FIRST)
SELECT (FIRST_NAME||' '||LAST_NAME)AS FULL_NAME,
DENSE_RANK() OVER(ORDER BY SALARY DESC)AS SALARY_RANK FROM EMPLOYEES;

--DISPLAY RANK OF SALARY WITH DETAILS
SELECT EMPLOYEES.*, DENSE_RANK() OVER(ORDER BY SALARY DESC)AS SALARY_RANK
FROM EMPLOYEES;

--DISPLAY FULL NAME, SALARY WHOSE RANK IS 3 BOTH ASC AND DESC.
--ASC
SELECT (FIRST_NAME||' '||LAST_NAME)AS FULL_NAME, SALARY, SALARY_RANK_ASC FROM
(SELECT EMPLOYEES.*, DENSE_RANK() OVER(ORDER BY SALARY)AS SALARY_RANK_ASC 
    FROM EMPLOYEES)
WHERE SALARY_RANK_ASC = 3;

--DESC
SELECT (FIRST_NAME||' '||LAST_NAME)AS FULL_NAME, SALARY, SALARY_RANK_DESC FROM
(SELECT EMPLOYEES.*, DENSE_RANK() OVER(ORDER BY SALARY DESC)AS SALARY_RANK_DESC
    FROM EMPLOYEES)
WHERE SALARY_RANK_DESC = 3;
--------------------------------------------------------------------------------
-- IMPORTANT QUESTIONS ON DENSE_RANK()

-- HIGHEST SALARY WITH DETAILS
SELECT * FROM 
(SELECT EMPLOYEES.*, DENSE_RANK() OVER(ORDER BY SALARY DESC)AS RANK FROM EMPLOYEES) 
WHERE RANK = 1;

-- TOP 5 SALARIES
SELECT * FROM
(SELECT EMPLOYEES.*, DENSE_RANK() OVER(ORDER BY SALARY DESC)AS RANK FROM EMPLOYEES) 
WHERE RANK BETWEEN 1 AND 5;

-- TOP SALARIES BETWEEN THIRD MAX TO SIXTH MAX
SELECT * FROM 
(SELECT EMPLOYEES.*, DENSE_RANK() OVER(ORDER BY SALARY DESC)AS RANK FROM EMPLOYEES)
WHERE RANK BETWEEN 3 AND 6;

-- TOP SALARIES NOT BETWEEN THIRD MAX TO SIXTH MAX
SELECT * FROM 
(SELECT EMPLOYEES.*, DENSE_RANK() OVER(ORDER BY SALARY DESC)AS RANK FROM EMPLOYEES) 
WHERE RANK NOT BETWEEN 3 AND 6;

-- DISPLAY PARTICULAR SALARY RANK = 3, 6, 8
SELECT * FROM 
(SELECT EMPLOYEES.*, DENSE_RANK() OVER(ORDER BY SALARY DESC)AS RANK FROM EMPLOYEES) 
WHERE RANK IN (3, 6, 8);

-- DISPLAY PARTICULAR SALARY EXCEPT RANK = 3, 6, 8
SELECT * FROM 
(SELECT EMPLOYEES.*, DENSE_RANK() OVER(ORDER BY SALARY DESC)AS RANK FROM EMPLOYEES) 
WHERE RANK NOT IN (3, 6, 8);

-- LOWEST SALARY
SELECT * FROM
(SELECT EMPLOYEES.*, DENSE_RANK() OVER(ORDER BY SALARY)AS RANK FROM EMPLOYEES)
WHERE RANK = 1;

-- LOWEST 5 SALARY
SELECT * FROM
(SELECT EMPLOYEES.*, DENSE_RANK() OVER(ORDER BY SALARY)AS RANK FROM EMPLOYEES)
WHERE RANK BETWEEN 1 AND 5;

-- LOWEST SALARY THIRD MAX TO SIXTH MAX
SELECT * FROM 
(SELECT EMPLOYEES.*, DENSE_RANK() OVER(ORDER BY SALARY)AS RANK FROM EMPLOYEES)
WHERE RANK BETWEEN 3 AND 6;

-- LOWEST SALARY NOT BETWEEN THIRD MAX TO SIXTH MAX
SELECT * FROM 
(SELECT EMPLOYEES.*, DENSE_RANK() OVER(ORDER BY SALARY)AS RANK FROM EMPLOYEES)
WHERE RANK NOT BETWEEN 3 AND 6;

-- PARTICULAR LOWEST SALARY 3, 6, 8
SELECT * FROM 
(SELECT EMPLOYEES.*, DENSE_RANK() OVER(ORDER BY SALARY)AS RANK FROM EMPLOYEES)
WHERE RANK IN (3, 6, 8);

-- PARTICULAR LOWEST SALARY EXCEPT 3, 6, 8
SELECT * FROM 
(SELECT EMPLOYEES.*, DENSE_RANK() OVER(ORDER BY SALARY)AS RANK FROM EMPLOYEES)
WHERE RANK NOT IN (3, 6, 8);