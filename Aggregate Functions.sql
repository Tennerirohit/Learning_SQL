#Aggregate Functions
#Aggregate functions perform a calculation on a set of values , return a single value.
#1. COUNT()
#2.MAX()
#3.MIN()
#4.SUM()
#5.AVG() 

use college;
create table student(rollno int primary key , name varchar(50), marks int not null, grade varchar(1),city varchar (20));
insert into student (rollno,name,marks,grade,city) values (101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

select max(marks) 
from student;

select min(marks) 
from student;

select avg(marks) 
from student;

select sum(marks) 
from student;

select count(rollno) 
from student;