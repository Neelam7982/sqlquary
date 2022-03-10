use Mydb

create table student ( id int identity not null , stu_name varchar(20) , stu_rollNo varchar(20) not null , stu_sub varchar(20) );

insert into student (stu_name,stu_rollNo,stu_sub) values 
('Nitin' , 'I-5246', 'DotNet'),
('Neelam' , 'I-5247', 'DotNet'),
('Fazal' , 'I-5248', 'DotNet'),
('Askeen' , 'I-5249', 'DotNet'),
('pankaj' , 'I-5246', 'DotNet');

alter table student add sub_teach varchar(20);

update student set sub_teach='Sakhir Sir' where id=1;
update student set sub_teach='Vishal Sir' where id=2;
update student set sub_teach='Sakhir Sir' where id =3;
update student set sub_teach='Vishal Sir' where id =4;
update student set sub_teach='Sir' where id =5;

delete from student where id =5;

sp_rename 'student.sub_teach', 'Teacher_Name';
sp_rename 'student.stu_name', 'Student Name';
sp_rename 'student.Student Name', 'stu_name';

select * from student;

select stu_name from student ORDER BY stu_name;
