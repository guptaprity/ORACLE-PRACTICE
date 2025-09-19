--1.Write a PL/SQL program to print a message 'WELCOME TO PL/SQL  
 declare
begin 
dbms_output.put_line('Welcome');
end;

--2.Write a PL/SQL program to add 2 numbers. And two numbers are enter from runtime ?

DECLARE 
x number(4);
y number(4);
z number(4);

begin 
x:= &x;
y:=&y;
z:=x+y;
dbms_output.put_line('sum='||z);
end;
/


--3.Write a PL/SQL program for user entered employee number then display name of the employee and his salary from emp table?
DECLARE 
V_EMPNO NUMBER(4);
V_ENAME VARCHAR2(10);
V_SAL NUMBER(7,2);
BEGIN
V_EMPNO:= &EMPNO;
SELECT ENAME, SAL INTO V_ENAME, V_SAL
FROM EMP WHERE EMPNO=V_EMPNO;
DBMS_OUTPUT.PUT_LINE(V_EMPNO||' '||V_ENAME||' '||V_SAL);
END;

--4.Write a PL/SQL program which is used to retrieve maximum salary
      --from emp table and store it into PL/SQL variable
              --and display maximum salary?
DECLARE 
V_MAX NUMBER(5);
BEGIN
SELECT MAX(SAL) INTO V_MAX FROM EMP;
dbms_output.put_line(V_MAX);
END;
/


--19-SEP-2025
---1.Write a PL/SQL program to calculate the experience of the given employeem based on passed employee number ?

--Enter value for empno: 7902
--experience is:43years

DECLARE 
V_EMPNO NUMBER(4);
v_HIRE DATE;
EXP NUMBER(5);
BEGIN 
V_EMPNO := &EMPNO;
SELECT HIREDATE INTO V_HIRE
FROM EMP WHERE EMPNO=V_EMPNO;

EXP:= TRUNC((SYSDATE-v_hire)/365);

DBMS_OUTPUT.PUT_LINE('experience is: '|| EXP);

END;
/

---OUTPUT---
--Enter value for empno: 7844
--experience is: 44


--%TYPE
--2.Write a PL/SQL program to retrieve and display the employee name, salary,
 -- and hiredate from the EMP table for a user entered empno using 
  --column level attributes(%type).
DECLARE 
V_empno emp.empno%type;
v_ename emp.ename%type;
v_sal emp.sal%type;
v_hiredate emp.hiredate%type;
begin
v_empno:=&empno;
select ename,sal,hiredate into v_ename, v_sal, v_hiredate from emp where empno = v_empno;
dbms_output.put_line(v_ename||' '|| v_sal||' '||v_hiredate);
end;
/

--%ROWTYPE
--3.Write a PL/SQL program to display all the details of an employee from 
 -- the EMP table for a user entered empno using row level attributes(%rowtype).
DEClare
V_EMPNO EMP.EMPNO%TYPE;
R EMP%ROWTYPE;
BEGIN
V_EMPNO := &EMPNO;
SELECT * INTO R FROM EMP
WHERE EMPNO = V_EMPNO;
DBMS_OUTPUT.PUT_LINE(R.ENAME || ' '||R.JOB||' '||R.SAL||' '||R.HIREDATE||' '||R.COMM);
END;
/










