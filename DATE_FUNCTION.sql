SELECT * FROM EMP7;

--DISPLAY EXPERIENCE OF EMPLOYEE IN YEAR.
SELECT EMP7.*, TRUNC((MONTHS_BETWEEN(EDOR, EDOJ) / 12), 0)AS EXP_IN_YEARS
FROM EMP7
WHERE EDOJ < EDOR;

--DISPLAY EXPERIENCE OF EMPLOYEE IN MONTHS.
SELECT EMP7.*, TRUNC(MONTHS_BETWEEN(EDOR, EDOJ), 2)AS EXP_IN_MONTHS
FROM EMP7
WHERE EDOJ < EDOR;

--DISPLAY AGE OF EMPLOYEE IN MONTHS.
SELECT MONTHS_BETWEEN(SYSDATE, '20-04-1989') AS AGE_IN_MONTHS 
FROM DUAL;
--OR
SELECT MONTHS_BETWEEN(SYSDATE, EDOJ)AS AGE_IN_MONTHS 
FROM EMP7
WHERE EDOJ < EDOR;

--DISPLAY AGE IN YEARS.
SELECT MONTHS_BETWEEN(SYSDATE, EDOJ) / 12 AS AGE_IN_YEARS
FROM EMP7
WHERE EDOJ < EDOR;

--DISPLAY EMPLOYEE INFO WHO JOINED ON PARTICULAR DATE = AUG-31-2022
SELECT * FROM EMP7
WHERE EDOJ = TO_DATE('AUG-31-2022', 'MM-DD-YYYY');

--DISPLAY EMPLOYE INFO WHO JOINED ON PARTICULAR DATE = 29-SEP-2023
SELECT * FROM EMP7
WHERE EDOJ = TO_DATE('29-SEP-2023', 'DD-MM-YYYY');

--DISPLAY EMPLOYE INFO WHO JOINED BETWEEN GIVEN DATES WITH DEFAULT DATE FORMAT.
SELECT * FROM EMP7
WHERE EDOJ BETWEEN '01-02-23' AND '28-02-23'
ORDER BY EDOJ;
--OR
SELECT * FROM EMP7
WHERE EDOJ BETWEEN TO_DATE('01-02-23', 'DD-MM-YY') AND TO_DATE('28-02-23', 'DD-MM-YY')
ORDER BY EDOJ;
--OR
SELECT * FROM EMP7
WHERE EDOJ >= TO_DATE('01-02-23', 'DD-MM-YY') AND EDOJ <= TO_DATE('28-02-23', 'DD-MM-YY')
ORDER BY EDOJ;
--OR
SELECT * FROM EMP7
WHERE EDOJ IN(TO_DATE('02-02-23', 'DD-MM-YY'), TO_DATE('07-02-23', 'DD-MM-YY'),
           TO_DATE('09-02-23', 'DD-MM-YY'), TO_DATE('14-02-23', 'DD-MM-YY'))
ORDER BY EDOJ;

--DISPLAY EMPLOYEES JOINING DATE/DAY/MONTH/YEAR.
--DATE
SELECT ENAME, TO_CHAR(EDOJ, 'DD')AS DATE_JOINED_ON FROM EMP7;
--DAY
SELECT ENAME, TO_CHAR(EDOJ, 'DAY')AS DAY_JOINED_ON FROM EMP7;

--MONTH
SELECT ENAME, TO_CHAR(EDOJ, 'MM')AS MONTH_IN_DIGIT FROM EMP7;
--OR
SELECT ENAME, TO_CHAR(EDOJ, 'MON')AS FIRST_3_CHAR_OF_MONTH FROM EMP7;
--OR
SELECT ENAME, TO_CHAR(EDOJ, 'MONTH')AS MONTH_IN_TEXT FROM EMP7;

--YEAR
SELECT ENAME, TO_CHAR(EDOJ, 'YY')AS LAST_2_DIGIT_OF_YEAR FROM EMP7;
--OR
SELECT ENAME, TO_CHAR(EDOJ, 'YYYY')AS FULL_YEAR FROM EMP7;
--OR
SELECT ENAME, TO_CHAR(EDOJ, 'YEAR')AS YEAR_IN_TEXT FROM EMP7;

--RETURN DATE IN YYYY-DD-MM FORMAT
SELECT ENAME, TO_CHAR(EDOJ, 'YYYY-DD-MM') FROM EMP7;

--RETURN DATE IN MM-DD-YY FORMAT.
SELECT TO_CHAR(EDOJ, 'MM-DD-YY') FROM EMP7;

--DISPLAY DATE IN TEXT FORMAT.
SELECT ENAME, TO_CHAR(EDOJ, 'DAY-MONTH-YEAR') FROM EMP7;

--DISPLAY EMPLOYEE DATA WHO JOINED ON PARTICULAR MONTH OR YEAR OR BOTH.
--MONTH ONLY
SELECT * FROM EMP7 
WHERE TO_CHAR(EDOJ, 'MM') = '05'
ORDER BY EDOJ;

--YEAR ONLY
SELECT * FROM EMP7
WHERE TO_CHAR(EDOJ, 'YY') = 23
ORDER BY EDOJ;

--YEAR AND MONTH
SELECT * FROM EMP7
WHERE TO_CHAR(EDOJ, 'MON-YYYY') = 'NOV-2020'
ORDER BY EDOJ;

--DISPLAY EMPLOYEE INFO WHO JOINED IN PARTICULAR QUARTER
--FIRST QUARTER
SELECT  * FROM EMP7
WHERE TO_CHAR(EDOJ, 'Q') = 1
ORDER BY EDOJ;

--SECOND QUARTER
SELECT * FROM EMP7
WHERE TO_CHAR(EDOJ, 'Q') = 2
ORDER BY EDOJ;

--THIRD QUARTER
SELECT * FROM EMP7
WHERE TO_CHAR(EDOJ, 'Q') = 3
ORDER BY EDOJ;

--FOURTH QUARTER
SELECT * FROM EMP7
WHERE TO_CHAR(EDOJ, 'Q') = 4
ORDER BY EDOJ;
