drop database library2;

create database library2;

use library2;

create table jobs (
job_id tinyint not null auto_increment,
job_desc varchar(100) not null,
min_lvl varchar(50) null,
max_lvl varchar(50) null,
constraint pk_jobs primary key(job_id)
);

create table publishers (
pub_id tinyint not null auto_increment primary key,
pub_name varchar(50) not null,
city varchar(50) not null,
state varchar(50) null,
country varchar(50) not null
);

create table employees (
emp_id tinyint not null auto_increment primary key,
fname varchar(50) not null,
minit int not null,
lname varchar(50) not null,
job_id tinyint not null references jobs(job_id),
job_lvl varchar(50) not null,
pub_id tinyint not null references publishers(pub_id),
hire_date date not null
);

create table titles (
title_id tinyint not null auto_increment primary key,
title varchar(100) not null,
type varchar(50) not null,
pub_id tinyint not null references publishers(pub_id),
price int not null,
advance int null,
royalty int null,
ytd_sales int null,
notes varchar(100) null,
pub_date date not null 
);




