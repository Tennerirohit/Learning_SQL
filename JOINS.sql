create database st;
use st;
create table student(studend_id int primary key,name varchar(50));
insert into student values (101,"adam"),
(102,"bob"),
(103,"casey");
create table course(student_id int ,course varchar(50));
insert into course values (102,"english"),
(105,"math"),
(103,"science"),
(107,"computer science");

alter table student
change column  studend_id student_id int;

select * 
from student
inner join course
on student.student_id=course.student_id;


select * 
from student 
left join course
on student.student_id=course.student_id;

select * 
from student 
right join course
on student.student_id=course.student_id;


select * 
from student 
left join course
on student.student_id=course.student_id
union
select * 
from student 
right join course
on student.student_id=course.student_id;
