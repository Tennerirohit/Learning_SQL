#Update 
use college;
create table student(rollno int primary key , name varchar(50), marks int not null, grade varchar(1),city varchar (20));
insert into student (rollno,name,marks,grade,city) values (101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

set SQL_SAFE_UPDATES=0;

update student
set grade="O"
where grade ="A";

select * from student ;

update student
set marks=82,grade="B"
where rollno=106;

update student
set grade="B"
where marks between 80 and 90;

update student
set marks=marks+1



