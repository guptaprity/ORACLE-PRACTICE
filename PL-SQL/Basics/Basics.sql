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
