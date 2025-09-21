--1.Create a student123 table with constraints based on following  conditions.


--SID          don't accept nulls and duplicates

--SNAME        don't accept nulls

--MARKS        Marks must be between 0 and 100

--MAILID       Must be unique

CREATE TABLE student123(
  2  SID NUMBER(4) PRIMARY KEY,
  3  SNAME VARCHAR2(20) NOT NULL,
  4  MARKS NUMBER(3) CHECK(MARKS BETWEEN 0 AND 100),
  5  MAILID VARCHAR(100) UNIQUE));

---2.Create a emp3 table with constraints based on following  conditions.

---->after creating the table insert both valid, invalid the records  and observe the outputs.
---USERID       don't accept nulls and duplicates

---USERNAME     don't accept nulls and duplicates

--PWD          PWD minimum 8 characters

1  CREATE TABLE EMP3(
  2  USERID NUMBER(3) PRIMARY KEY,
  3  USERNAME VARCHAR2(10) PRIMARY KEY,
  4* PWD VARCHAR2(8) );
SQL> /
USERNAME VARCHAR2(10) PRIMARY KEY,
                      *
ERROR at line 3:
ORA-02260: table can have only one primary key

3.Create the emp4 table with constraints based on following
  conditions.

--->after creating the table insert both valid, invalid the records  and observe the outputs.
--EMPNO      don't accept nulls and duplicates 
--ENAME      don't accept nulls
--GENDER     Must be M or F
--SAL        Minimum 5000 (means 5000 or above it will accept)

  CREATE TABLE emp4 (
    EMPNO INT PRIMARY KEY,
    ENAME VARCHAR(50) NOT NULL,
    GENDER CHAR(1) CHECK (GENDER IN ('M', 'F')),
    SAL DECIMAL(10, 2) CHECK (SAL >= 5000)
);

4.Create the  ACCOUNTS table with constraints based on following
  conditions.

--->after creating the table insert both valid, invalid the records and observe the outputs.
--ACCNO       Should not be duplicate & null

--ACCTYPE     Must be 'S' OR 'C'

--BAL         Must be minimum 1000

  CREATE TABLE account (
  accno NUMBER(5) PRIMARY KEY,
  ac_type CHAR(1) CHECK (ac_type IN ('S', 'C')),
  bal NUMBER(5) CHECK (bal > 1000)
);
SQL> insert into emp4 values(101, 'AB', 'F', 6000);

1 row created.

SQL> insert into emp4 values(102, 'ABC', 'M', 7000);

1 row created.

SQL> insert into emp4 values(103, 'AB', 'M', 7000);

1 row created.

SQL> select * from emp4;

     EMPNO ENAME G        SAL
---------- ----- - ----------
       101 AB    F       6000
       102 ABC   M       7000
       103 AB    M       7000

  

--5.Create table PROJECT table with constraints based on following conditions.

--->after creating the table insert both valid, invalid the records and observe the outputs.

--PID              should not accept nulls & duplicates

--PNAME            don't accept nulls

--START_DATE

--END_DATE

--COST             Must be atleast 20000

--STATUS           Must be Active or completed or on hold     


SQL> CREATE TABLE PROJECT
  2  (
  3  PID NUMBER(4) PRIMARY KEY,
  4  PNAME VARCHAR2(10) NOT NULL,
  5  START_DATE DATE,
  6  END_DATE DATE,
  7  COST NUMBER(10,2) CHECK (COST >= 20000),
  8  STATUS VARCHAR2(20) CHECK (STATUS IN ('ACTIVE', 'COMPLETED', 'ON HOLD')));

Table created.


  --6.Create test123 table with following constraints by using table level

--SNO        it doesn't accept null values and duplicate values

--SNAME      should be capital letters 

--SAL        more than 9000

> create table table123(
  2  sno number(3) primary key,
  3  sname varchar2(10),
  4  sal number(7,2));

Table created.


 -- 7.Create a student10 table with 4 columns and apply following constraints.

--->after creating the table insert the records and observe the outputs.

--SID           don't accept duplicate values and null values
--SNAME         don't accept null values
--INAME         by default INAME  is NARESHIT
--CITY          by default CITY is AMMERPET 
--FEE           by default FEE is 30000

      

SQL> CREATE TABLE student10 (
  2    SID NUMBER(5) PRIMARY KEY,
  3    SNAME VARCHAR2(50) NOT NULL,
  4    INAME VARCHAR2(50) DEFAULT 'NARESHIT',
  5    CITY VARCHAR2(50) DEFAULT 'AMMERPET',
  6    FEE NUMBER(10, 2) DEFAULT 30000
  7  );

Table created.


  --1. Write an SQL query to generate a report from EMP table showing (2M)
-- Department Number
-- Number of Employees
--Total Salary
-- Average Salary
--• The result should be descending order of deptno
SELECT deptno,
       COUNT(*) AS num_employees,
       SUM(sal) AS total_salary,
       AVG(sal) AS average_salary
FROM emp
GROUP BY deptno
ORDER BY deptno DESC;

--2. Write a query to display the state wise gender wise no of employees from the
--following PERSONS table? (1M)
--EMPID ENAME GENDER STATE
--------------- -------------------- -------------- -------------
--1 SUBBARAO M AP
--2 KAVYA F TS
--3 KIRAN M TS
--4 GOWTHAM M AP
--5 PREETI F AP
--6 SURYA M AP
--7 ANUSHKA F AP
--8 SHREYAS M TS
SELECT state,
       gender,
       COUNT(*) AS num_employees
FROM persons
GROUP BY state, gender;

--3. Find the number of employees in each department, but only display departments
--Having more than 3 employees from EMP table.


SELECT deptno,
       COUNT(*) AS num_employees
FROM emp
GROUP BY deptno
HAVING COUNT(*) > 3;

--4. Write a query to display duplicate records from the following EMP111 table ?
SELECT empno, ename
FROM emp111
GROUP BY empno, ename
HAVING COUNT(*) > 1;

--5 Write a query to display employees along with their department names from EMPLOYEES, DEPPARTMENTS tables?
SELECT e.empno, e.ename, d.dname
FROM employees e
JOIN departments d
ON e.deptno = d.deptno;

--6 Retrieve all employees and their department names, including employees who are not assigned to any department from EMPLOYEES, DEPPARTMENTS tables?
SELECT e.empno, e.ename, d.dname
FROM employees e
LEFT JOIN departments d
ON e.deptno = d.deptno;


--7 List all departments and their employees. Include departments that have no employees from EMPLOYEES, DEPPARTMENTS tables.
SELECT e.empno, e.ename, d.dname
FROM departments d
LEFT JOIN employees e
ON e.deptno = d.deptno;

--8 Write a query to display the employee names and their manager names from EMP table by using SELF join .
SELECT e.ename AS employee,
       m.ename AS manager
FROM emp e
JOIN emp m
ON e.mgr = m.empno;

--9  Write a query to display the employees who are working in SMITH department number from EMP table?
SELECT ename
FROM emp
WHERE deptno = (SELECT deptno FROM emp WHERE ename = 'SMITH');

-- Write a query to display the employee records who are earning more salary than the BLAKE salary? 

SELECT *
FROM emp
WHERE sal > (SELECT sal FROM emp WHERE ename = 'BLAKE');

--10 Write a query to display 2nd highest salary employee from EMP table by using dense_rank() analytical function?


SELECT ename, sal
FROM (
    SELECT ename, sal, DENSE_RANK() OVER (ORDER BY sal DESC) AS rnk
    FROM emp
) 
WHERE rnk = 2;


--12 .  Write a query to display employees who are getting more salary then the average salary of their departments from EMP table by using corelated subquery?


SELECT e.empno, e.ename, e.sal, e.deptno
FROM emp e
WHERE e.sal > (
    SELECT AVG(sal)
    FROM emp
    WHERE deptno = e.deptno
);

--13 Create following COURSE10, STUDENT10 tables with given rules? 

-- COURSE10 table
CREATE TABLE course10 (
    cid     INT PRIMARY KEY,          
    cname   VARCHAR(50) NOT NULL
);

-- STUDENT10 table
CREATE TABLE student10 (
    sid     INT PRIMARY KEY,          
    sname   VARCHAR(50) NOT NULL,
    gender  CHAR(1) CHECK (gender IN ('M', 'F')),
    fee     NUMBER DEFAULT 30000,
    cid     INT,
    CONSTRAINT fk_course FOREIGN KEY (cid)
        REFERENCES course10(cid)
);



  
