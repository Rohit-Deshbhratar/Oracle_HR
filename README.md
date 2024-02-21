# Oracle_HR
This repository contains '.sql' file, each file contains specific concept and their actual implementation. 
 
# MAX_SALARY
In this file we have written queries to find maximum salary, second maximum salary, third maximum salary of an employee.
For this we have used concept of MAX() aggregate function, subquery.

# MIN_SALARY
In this file we have written queries to find minimum salary, second minimum salary, third minimum salary of an employee.
For this we have used concept of MIN() aggregate function, subquery.

# RANK
With the help of RANK() function we have displayed rank of salary of an employee. Concepts used with RANK() function are ORDER BY ASC/DESC, NULLS LAST.

# DENSE_RANK
This file contains implementation of DENSE_RANK() function. We have displayed rank of salary, rank of salary with details, top 5 salaries, 5 lowest salaries,
highest/lowest salary, particular salary etc. 

# ROWNUM
We have demonstrated use of ROWNUM function. We have displayed first and last 'N' records, ROWNUM with details, skip 'N' rows and fetch next 'M' rows.

# ROWID
In this file we have demonstrated use of 'ROWID'. Using 'ROWID' we have displayed first and last inserted record in table, 
department wise first and last inserted record, first and last inserted record inserted in a particular department.

# JOINS
Here wehave applied following joins INNER JOIN, LEFT/RIGHT JOIN, FULL OUTER JOIN, SELF JOIN, CROSS JOIN, EQUI JOIN, NON-EQUI JOIN. We have used 2 or 3 tables in example.

# SET Operators
We have created separate database "EMP" for this practicle. Refer file "EMP_DATA_FOR_SET_OPERATIONS.sql" for table and data. We have worked on UNION, UNION ALL, INTERSECT & MINUS OPERATOR.

## UNION
It will display unique reconds and remove duplicate records from both tables.

## UNION ALL
It will display unique and duplicate records from both tables.

## INTERSECT
It will display common records from both tables.

## MINUS
It will display rows present in first query but abscent in second query with no duplicates.

# AGGREGATE FUNCTIONS
Oracle has 6 aggregate functions. Aggregate functions works on columns.
Aggregate functions are AVG, MIN, MAX, SUM, COUNT(COL_NAME), COUNT(*). 
These functions excludes null values in a column except COUNT($*$).

AVG() = Computes average value of that column, excludes null value.

MIN() = Selects minimum value in a cloumn.

MAX() = Selects maximum value in a cloumn.

SUM() = Computes addition of all nomber values, excluding null value.

COUNT(col_name) = Returns number of non null records present in a column.

COUNT(*) = Returns number of records present in a column, includes null. 

# HAVING_CLAUSE
Using "HAVING CLAUSE" we have displayed unique and duplicate records, also covered different scenarios using aggregate function.

# CHARACTER_FUNCTION
It is used to manipulate string. Basically it is divided into two type 1. Character manipulation, 2. Case manipulation or Scalar function.

## 1. CHARACTER MANIPULATION
It has 3 functions. 1. length(), 2. substr(), 3. instr()

1. length() = Returns length of string.
2. substr() = Extract portion of string.
3. instr() = Return location of substring, it detect first, second. appearance
## 2. CASE MANIPULATION OR SCALAR FUNCTION
It has 3 functions. 1. lower(), 2. upper(), 3. initcap()
1. lower() = Convert entire string in lower case.
2. upper() = Convert entire string in upper case.
3. initcap() = Convert first letter of each word in a string to capital. 

# DATE