SELECT * FROM EMP7
ORDER BY EID;

INSERT INTO EMP7
VALUES(109, 'Parag Dethe', 9874563210, 18972, 'Legal Department', '03-09-20', '31-12-23', 'parag_dethe@gmail.com', '');

INSERT INTO EMP7
VALUES(199, 'Asha Wankar', 8746521309, 20800, 'Accounting', '11-08-20', '', 'wankar_asha@outlook.org', '');

INSERT INTO EMP7
VALUES(260, 'Lata Deshbhratar', 7465213098, 19236, 'Asset Management', '', '', 'lata_deshbhratar@yahoo.com', 'Chandrapur');

INSERT INTO EMP7
VALUES(199, 'Asha Wankar', 8746521309, 20800, 'Accounting', '11-08-20', '', 'wankar_asha@outlook.org', '');

INSERT INTO EMP7
VALUES(315, 'Suhas Sheware', 8503124697, 20800, 'Media Relations', '01-12-22', '30-11-23', '', '');

INSERT INTO EMP7
VALUES(549, 'Vaneeta Ramteke', 9888654213, 15900, 'Customer Relations', '', '', 'wankar_asha@outlook.org', '');

INSERT INTO EMP7
VALUES(699, 'Maria Sharapova', 13254679801, 16235, 'Media Relations', '11-01-20', '20-02-24', 'maria_sharapova@protonmail.org', '');

select * from emp7
where eid in(109, 199, 260, 315, 549, 699);
--------------------------------------------------------------------------------

--NVL 
--DISPLAY DATA WITHOUT NULL VALUES.
SELECT EID, NVL(ECITY, 'N.A.')AS CITY_NOT_AVAILABLE 
FROM EMP7
ORDER BY EID;
--OR
SELECT EID, ENAME, EMOB, ESAL, EDEPT,  
    NVL(EMAIL, 'N.A.')AS NOT_MENTIONED,
    NVL(ECITY, 'NO DATA')AS CITY_NOT_AVAILABLE
FROM EMP7
ORDER BY EID;
--------------------------------------------------------------------------------
UPDATE EMP7
SET ECITY = 'CR'
WHERE ECITY = 'ViñadelMar';
--------------------------------------------------------------------------------
--DECODE
SELECT
    EID, ENAME, ECITY, DECODE(ECITY, 'PN', 'Pune', 'CR', 'Cairo', 'SAD', 'SanAndreas', 'TOK', 'Tokyo')
FROM EMP7;