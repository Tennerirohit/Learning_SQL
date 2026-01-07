#DML Commands 


create database lab;
use lab;
create table student(stu_id int primary key , stu_name varchar(50), dob date);
insert into student values (553,"Jadiel","2000-11-18"),
(554,"Charlie","2000-10-14"),
(555,"Joseph","2000-12-13"),
(556,"Rachel","2000-07-30");

select * from student;

#UPDATE 

update student set dob="2003-11-18"
where stu_id=553;

select length("ROHIT");

#DELETE

delete from student
where stu_id=555 ;

