CREATE DATABASE library;
USE library;

-- nomor 1
CREATE TABLE books(
id INT PRIMARY KEY AUTO_INCREMENT,
isbn VARCHAR(50) UNIQUE,
title VARCHAR(50) NOT NULL,
pages INT,
summary TEXT,
genre VARCHAR(50) NOT NULL);

ALTER TABLE books
MODIFY id INT AUTO_INCREMENT  

-- nomor 2
ALTER TABLE books
MODIFY isbn CHAR(13)

-- nomor 3
ALTER TABLE books DROP summary

ALTER TABLE books ADD summary TEXT

-- nomor 4
DESCRIBE books;

-- nomor 5
CREATE DATABASE db_praktikum;
USE db_praktikum;

CREATE TABLE students(
`name` VARCHAR(50),
email VARCHAR(255) UNIQUE,
gender CHAR(1),
student_id INT(11) PRIMARY KEY);

CREATE TABLE classes(
class_name VARCHAR(50),
class_id INT(11) PRIMARY KEY AUTO_INCREMENT);

CREATE TABLE class_student(
grade CHAR(1) DEFAULT "E",
student_id INT(11),
class_id INT(11),
enrollment_id INT(11) PRIMARY KEY AUTO_INCREMENT,
FOREIGN KEY(student_id) REFERENCES students(student_id),
FOREIGN KEY(class_id) REFERENCES classes(class_id));

DROP TABLE class_student;

DESCRIBE students;
DESCRIBE classes;
DESCRIBE class_student;

SHOW TABLES  

   

      