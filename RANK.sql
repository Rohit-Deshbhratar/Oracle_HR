SELECT * FROM EMPLOYEES;

--DISPLAY RANK OF SALARY.
SELECT (FIRST_NAME||' '||LAST_NAME)AS FULL_NAME, SALARY, 
RANK() OVER(ORDER BY SALARY)AS SALARY_RANK FROM EMPLOYEES;

--DISPLAY RANK OF SALARY IN DESCENDING ORDER.
SELECT (FIRST_NAME||' '||LAST_NAME)AS FULL_NAME, SALARY,
RANK() OVER(ORDER BY SALARY DESC)AS SALARY_RANK FROM EMPLOYEES;

--DISPLAY RANK OF SALARY IN DESCENDING ORDER WITH NULLS LAST.
SELECT (FIRST_NAME||' '||LAST_NAME)AS FULL_NAME, SALARY,
RANK() OVER(ORDER BY SALARY DESC NULLS LAST)AS SALARY_RANK FROM EMPLOYEES;

--DISPLAY RANK OF SALARY WITH DETAILS.
SELECT EMPLOYEES.*, RANK() OVER(ORDER BY SALARY)AS SALARY_RANK FROM EMPLOYEES;

--DISPLAY RANK OF SALARY IN DESCENDING ORDER WITH DETAILS.
SELECT EMPLOYEES.*, RANK() OVER(ORDER BY SALARY DESC)AS SALARY_RANK FROM EMPLOYEES;

--DISPLAY RANK OF SALARY WITH DETAILS WHOSE RANK IS 6.
SELECT * FROM
    (SELECT (FIRST_NAME||' '||LAST_NAME)AS FULL_NAME, SALARY, 
        RANK() OVER(ORDER BY SALARY)AS SALARY_RANK FROM EMPLOYEES)
WHERE SALARY_RANK = 6;

--DISPLAY RANK OF SALARY IN DESCENDING ORDER WITH DETAILS WHOSE RANK IS 6.
SELECT * FROM
    (SELECT (FIRST_NAME||' '||LAST_NAME)AS FULL_NAME, SALARY, 
        RANK() OVER(ORDER BY SALARY DESC)AS SALARY_RANK FROM EMPLOYEES)
WHERE SALARY_RANK = 6;