CREATE TABLE PRODUCT_INFO(
    PID NUMBER(4),
    PNAME VARCHAR2(50),
    SALES_AMOUNT NUMBER(7)
);

INSERT INTO PRODUCT_INFO(PID, PNAME, SALES_AMOUNT)
VALUES(101, 'LAP', 80000);
INSERT INTO PRODUCT_INFO(PID, PNAME, SALES_AMOUNT)
VALUES(102, 'MOB', 60000);
INSERT INTO PRODUCT_INFO(PID, PNAME, SALES_AMOUNT)
VALUES(103, 'LAP', 50000);
INSERT INTO PRODUCT_INFO(PID, PNAME, SALES_AMOUNT)
VALUES(104, 'MOB', 40000);
INSERT INTO PRODUCT_INFO(PID, PNAME, SALES_AMOUNT)
VALUES(105, 'PD', 8000);
INSERT INTO PRODUCT_INFO(PID, PNAME, SALES_AMOUNT)
VALUES(106, 'MOB', 125000);
INSERT INTO PRODUCT_INFO(PID, PNAME, SALES_AMOUNT)
VALUES(107, 'PD', 6000);

SELECT * FROM PRODUCT_INFO;

--DISPLAY PRODUCT WISE SALES
SELECT PNAME, SUM(SALES_AMOUNT)
FROM PRODUCT_INFO
GROUP BY PNAME;