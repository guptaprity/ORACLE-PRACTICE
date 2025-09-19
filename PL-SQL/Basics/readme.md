
            
                                 PL/SQL
                              ============

PL/SQL is an procedure language extension for SQL. oracle 6.0
 introduced PL/SQL.

Basically pl/sql is an block structure programming language.


1.declaring a variable
======================

  in declare section of pl/sql block by using following syntax
syntax:-
=======
variablename datatype(size);

a number(10);



2.storing a value into variable:-
================================

   By using assignment operator(:=) we can also store a value
into variable.


syntax:-
=======
     variablename:=value;

   we can also use this assignment operator(:=) either in declare
section or in executable section in pl/sql block.

EX:-
===
declare
a number(10);
begin
a:=80;
end;
/

3.Display a message (or) variable value:-
======================================

   In pl/sql if we want to display a message or variable value then
we are using following syntax.

syntax:-
=======
dbms_output.put_line('message');

dbms_output.put_line(variablename);
    |          |
package      procedure
name         name

   This package is used in either in executable section or in exception
section of the pl/sql block.

eg:-
===
begin
dbms_output.put_line('welcome');
end;
/

PL/SQL procedure successfully completed

        In pl/sql whenever we are passing any data into dbms_output package 
then that package internally automatically creates a buffer and also passed data automatically stored in buffer but this buffer data does not visible in sqlplus client tool.To overcome this problem then we must set serveroutput environment variable by using following syntax at sql prompt. 

syntax:-
=======
SQL>set serveroutput on;

SQL> /

    welcome


 *
*** select....into clause:- 
 *  ======================

   Select.... into clause is used to retrieve data from table then that 
data is storing into pl/sql variable.

  select.... into clause always returns single record or single value
at a time from a table.

syntax:-
=======
select col1,col2....into varname1,varname2.....
from tablename
where condition;

 This clause is used in executable section of the pl/sql block.
 ## Summary

PL/SQL allows combining SQL with procedural features.

DECLARE → Variables defined.

BEGIN → Executable logic.

DBMS_OUTPUT.PUT_LINE → Display output.

SELECT ... INTO → Fetch values from table into variables. 


variable attributes(%type,%rowtype):-
====================================

   pl/sql having two types of variable attributes
1)column level attributes
2)row level attributes

1)column level attributes

syntax:-
========
variable tablename.columnname%type;

2)row level attributes

syntax:-
========
variablename tablename%rowtype


EG:-
flowchart TD

subgraph EMP_Table [EMP Table Row]
    A1[empno = 7902]
    A2[ename = FORD]
    A3[job = ANALYST]
    A4[mgr = 7566]
    A5[hiredate = 03-DEC-81]
    A6[sal = 4900]
    A7[comm = NULL]
    A8[deptno = 20]
end

subgraph Variable [Variable i EMP%ROWTYPE]
    V[i]
end

V -->|.ename| A2
V -->|.hiredate| A5
V -->|.sal| A6




