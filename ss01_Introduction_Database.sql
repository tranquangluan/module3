create database Student_Management;
use Student_Management;
create table Class(
	id int not null primary key,
    name varchar(45) 
);
create table Teacher(
	id int not null primary key,
    name varchar(45),
    age int,
    country varchar(45)
);

create table Student(
	id int not null primary key,
    `name` varchar(45),
    age int,
    country varchar(45)
);

