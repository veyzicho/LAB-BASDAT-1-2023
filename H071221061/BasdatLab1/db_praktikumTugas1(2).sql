#5

create database db_praktikum

create table Students(
students_id int(11) primary key,
name varchar(50),
email varchar(255) unique,
gender char(1)
);

 
create table classes(
class_id int(11) primary key auto_increment,
class_name varchar(50)
);


create table class_students(
enrollment_id int(11) primary key auto_increment,
grade char(1) default 'E',
students_id int(11),
class_id int(11),
foreign key (students_id) references Students(students_id),
foreign key (class_id) references Classes(class_id)
);


use db_prakrikum

describe students;
describe classes;
describe class_students
show tables