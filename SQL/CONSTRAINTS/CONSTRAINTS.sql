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
     
