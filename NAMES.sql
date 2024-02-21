CREATE TABLE names (
    full_name VARCHAR2 (25)
);

INSERT INTO names (full_name)
VALUES ('Ronald V. McDonald, DO');

INSERT INTO names (full_name)
VALUES ('Fred Derf, DD');

INSERT INTO names (full_name)
VALUES ('Pig Pen');

INSERT INTO names (full_name)
VALUES ('ROHIT SUBODH DESHBHRATAR');

INSERT INTO names (full_name)
VALUES ('YOGITA DETHE');

SELECT * FROM NAMES;

SELECT 
    SUBSTR(full_name,0,INSTR(full_name,' ')- 1) AS first_name,
    SUBSTR(full_name,INSTR(full_name,' ') +1,  INSTR(full_name,' ',-1,1) - INSTR(full_name,' ') -1) AS mid_name,
    SUBSTR(full_name,INSTR(full_name,' ',-1)+ 1) AS last_name,
    SUBSTR(full_name,INSTR(full_name,',',-1)+2) AS suffix
FROM  names;