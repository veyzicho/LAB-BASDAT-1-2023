#soal1

create database library;
use library

create table book (
id int primary key,
isbn varchar(50) unique,
tittle varchar(50) not null,
pages int,
summary text,
genre varchar(50) not null
);

#2
alter table book
modify isbn char(13);

#3
alter table book
drop summary

use library
#4
describe book

drop table book

show tables

alter table book 
modify id int auto_increment

alter table book
add summary text


