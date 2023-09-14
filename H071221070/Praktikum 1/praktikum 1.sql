-- No1
CREATE DATABASE db_library; -- Membuat DATABASE library
USE db_library;
CREATE TABLE books ( -- Membuat table books
	id INT PRIMARY KEY,
	isbn VARCHAR(50) UNIQUE,
	title VARCHAR(50) NOT NULL,
	pages INT,
	summary TEXT,
	genre VARCHAR(50) NOT NULL
)


DESCRIBE books; -- Untuk Menampilkan tabel books

ALTER TABLE books
MODIFY id INT AUTO_INCREMENT;
DESCRIBE books;

-- No2
ALTER TABLE books -- Alter table untuk mengubah atribut table books
MODIFY isbn CHAR(13); -- Mengubah atribut isbn

-- No3
ALTER TABLE books
DROP summary -- Menghapus atribut summary

-- No4
DESCRIBE books

ALTER TABLE books
ADD summary TEXT

DESCRIBE books

-- No5
CREATE DATABASE db_praktikum
USE db_praktikum

CREATE TABLE students(
	student_id INT(11) PRIMARY KEY,
	`name` VARCHAR(50) NOT NULL,
	email VARCHAR(255) UNIQUE,
	gender CHAR(1)
)

CREATE TABLE classes(
	class_id INT(11) PRIMARY KEY AUTO_INCREMENT, -- key auto_increment untuk menambah nilai baru
	class_name VARCHAR(50)
)

CREATE TABLE class_student(
	enrollment_id INT(11) PRIMARY KEY AUTO_INCREMENT,
	grade CHAR(1) DEFAULT "E", -- Default untuk mengisi otomatis jika nilainya kosong
	student_id INT(11),
	class_id INT(11),
	FOREIGN KEY(student_id) REFERENCES students(student_id), -- merujuk student_id ke table students
	FOREIGN KEY(class_id) REFERENCES classes(class_id) -- merujuk class_id ke table classes
)

SHOW TABLES
DESCRIBE students;
DESCRIBE classes;
DESCRIBE class_student;