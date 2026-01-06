use college;
create table student(rollno int primary key , name varchar(50), marks int not null, grade varchar(1),city varchar (20));
insert into student (rollno,name,marks,grade,city) values (101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

select a.rollno,b.city
from student as a
join student as b
on a.rollno = b.rollno;


SELECT s1.name, s1.city
FROM student s1
JOIN student s2
ON s1.city = s2.city
AND s1.rollno <> s2.rollno;
