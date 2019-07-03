create table student(
id varchar(3) primary key,
name varchar(4),
age int,
sex varchar(2)
);
insert into student (id,name,age,sex) values ('001','张三',18,'男');
insert into student values ('002','李四',20,'女');

create table subject(
id varchar(4) primary key,
subject varchar(4),
teacher varchar(6),
description varchar(20)
);
insert into subject values('1001','语文','王老师','本次考试比较简单');
insert into subject values('1002','数学','刘老师','本次考试比较难');

create table score(
id int primary key,
student_id varchar(3),
subject_id varchar(4),
score double,
foreign key(student_id) references student(id) on delete cascade on update cascade, 
foreign key(subject_id) references subject(id) on delete cascade on update cascade
);
insert into score values (1,"001","1001",80);
insert into score(id,student_id,subject_id,score) values (2,"002","1002",
60);
insert into score(id,student_id,subject_id,score) values (3,"001","1001",
70);
insert into score(id,student_id,subject_id,score) values (4,"002","1002",
60.5);
