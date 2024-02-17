drop database library_2;

create database library_2;

use library_2;

create table jobs (
job_id tinyint not null auto_increment primary key,
job_desc varchar(50) not null,
min_lvl enum("Stagiaire", "Junior", "Intermediaire", "Senior") null,
max_lvl enum("Stagiaire", "Junior", "Intermediaire", "Senior") null
);

create table publishers (
pub_id tinyint not null auto_increment primary key,
pub_name varchar(50) not null,
city varchar(50) not null,
state varchar(50) null,
country varchar(50) not null,
email varchar(50) null unique check(email rlike '@')
);

create table employees (
emp_id tinyint not null auto_increment primary key,
emp_name varchar(50) not null,
salary smallint not null,
fname varchar(50) not null,
lname varchar(50) not null,
job_id smallint not null references jobs(job_id),
pub_id smallint not null references publishers(pub_id),
hire_date date not null,
email varchar(50) null unique check(email rlike '@')
);





