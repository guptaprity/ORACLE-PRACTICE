# Oracle HR Schema (EMP / DEPT / SALGRADE)

This project contains SQL scripts to create and populate the classic **EMP**, **DEPT**, and **SALGRADE** tables often used for learning SQL concepts.  
It is useful for practicing **joins, subqueries, group functions, and data manipulation** in Oracle SQL.

---

## 📂 Tables Overview

### 1. EMP (Employees)
| Column    | Data Type      | Description                          |
|-----------|----------------|--------------------------------------|
| EMPNO     | NUMBER(4)      | Employee number (Primary Key)        |
| ENAME     | VARCHAR2(10)   | Employee name                        |
| JOB       | VARCHAR2(9)    | Job title (e.g., CLERK, MANAGER)     |
| MGR       | NUMBER(4)      | Manager's employee number            |
| HIREDATE  | DATE           | Date of hiring                       |
| SAL       | NUMBER(7,2)    | Salary                               |
| COMM      | NUMBER(7,2)    | Commission                           |
| DEPTNO    | NUMBER(2)      | Department number (FK → DEPT)        |

---

### 2. DEPT (Departments)
| Column    | Data Type      | Description               |
|-----------|----------------|---------------------------|
| DEPTNO    | NUMBER(2)      | Department number (PK)    |
| DNAME     | VARCHAR2(14)   | Department name           |
| LOC       | VARCHAR2(13)   | Location of department    |

---

### 3. SALGRADE (Salary Grades)
| Column    | Data Type | Description                 |
|-----------|-----------|-----------------------------|
| GRADE     | NUMBER    | Salary grade level          |
| LOSAL     | NUMBER    | Lower salary range          |
| HISAL     | NUMBER    | Higher salary range         |

---

## 🚀 How to Use

1. Open SQL*Plus, SQL Developer, or any Oracle SQL client.
2. Run the **DDL (CREATE TABLE)** scripts to create the schema:
   ```sql
   CREATE TABLE EMP (...);
   CREATE TABLE DEPT (...);
   CREATE TABLE SALGRADE (...);

3.Insert sample data using the provided INSERT statements.

Start practicing SQL queries:

Find employees by department.

Get highest-paid employees.

Join EMP, DEPT, and SALGRADE for insights.

Use aggregate functions like SUM, AVG, COUNT.

## 1. List all employees with their department names
   ```sql
SELECT e.ename, e.job, d.dname, d.loc
FROM emp e
JOIN dept d ON e.deptno = d.deptno;
```
## 2. Find employees with salary grade
   ```sql
SELECT e.ename, e.sal, s.grade
FROM emp e
JOIN salgrade s
ON e.sal BETWEEN s.losal AND s.hisal;
```
## 3. Find the highest paid employee
   ```sql
SELECT ename, job, sal
FROM emp
WHERE sal = (SELECT MAX(sal) FROM emp);

```
## Notes

This schema is widely used in Oracle SQL practice and is a simplified HR database.

You can extend it with constraints (PK, FK) and indexes if required.

