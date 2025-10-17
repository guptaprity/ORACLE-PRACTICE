                           CONSTRAINTS
                         ----------------

                        Data integrity(To Maintaine proper data)or
                           /      \    (To Maintaine valid data)
                          /        \
                        SQL        PL/SQL
                    CONSTRAINTS   TRIGGERS    

     Constraints are used to prevents or stops invalid data
entry into our tables. Generally constraints are created on
table columns.

 Oracle having following types of constraints.
These are
1. Not null
2. Unique
3. Primary key
4. Foreign key
5. Check
6. Default
  
   in database if we want to maintain proper data or valid data 
according to client requirement then we are using SQL language
constraints, Procedure language triggers.


## 1)NOT NULL:- 
Not null constraint doesn't support table level.
                 This constraint doesn't accepts null values. 
             But it will accepts duplicate values.


## 2.UNIQUE:-
This constraint is created on column level, table level.
            This constraint doesn't accepts duplicate values. But 
          it will accepts null values.


## 3.Primary Key:-
Primary key is Uniquely identifying a record in a 
             table. There can be only one primary key in a table. 
                primary key doesn't accepts duplicate, null values. 


## 4.Foreign Key:-
in all relational databases If we want to establishes
               relationship between tables then we are using 
               referential integrity constraint Foreign Key.


  Generally One table foreign key must belongs to another table
primary key. And also these primary key, foreign key columns must
belong to same datatype.

  Always foreign key values based on related primary key values only.
Generally primary key doesn't accepts duplicate, null values 
where as foreign key accepts duplicate, null values.


## 5.CHECK:-
Check constraint is used to define logical conditions
               according to client business rules.

## Default -
in all relational databases if we want to provide
          default values into a table column then we are using
         default clause.

• It is used to apply default value to table column.

• If we pass the value, it takes that value. if we don't pass the value
  it takes default value.
