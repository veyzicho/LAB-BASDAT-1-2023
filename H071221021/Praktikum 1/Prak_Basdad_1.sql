-- Nomor 1 
CREATE DATABASE library;
USE library;

CREATE TABLE books (
	id INT PRIMARY KEY,
	isbn VARCHAR(50) UNIQUE,
	title VARCHAR(50) NOT NULL,
	pages INT,
	summary TEXT,
	genre VARCHAR(50) NOT NULL
);

ALTER TABLE books
MODIFY id INT AUTO_INCREMENT;

-- Nomor 2
ALTER TABLE books
MODIFY isbn CHAR (13);

-- Nomor 3
ALTER TABLE books
DROP summary;

ALTER TABLE books
ADD summary TEXT;

-- Nomor 4
DESCRIBE books;

-- Nomor 5
CREATE DATABASE db_praktikum;
USE db_praktikum;

CREATE TABLE students (
	nama VARCHAR(50),
	email VARCHAR(255) UNIQUE,
	gender CHAR(1),
	student_id INT(11) PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE classes (
	class_name VARCHAR(50),
	class_id INT(11)
);

ALTER TABLE classes
MODIFY class_id INT(11) PRIMARY KEY;

CREATE TABLE class_student (
	grade CHAR(1) DEFAULT 'E',
	student_id INT,
	class_id INT,
	enrollment_id INT(11) PRIMARY KEY AUTO_INCREMENT,
	
	FOREIGN KEY (student_id) REFERENCES students(student_id),
	FOREIGN KEY (class_id) REFERENCES classes(class_id)
);

DESCRIBE class_student;
DESCRIBE classes;
DESCRIBE students;