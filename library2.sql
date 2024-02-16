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

create table authors (
au_id tinyint not null auto_increment primary key,
au_lname varchar(50) not null,
au_fname varchar(50) not null,
phone varchar(50) not null,
address varchar(100) not null,
city varchar(50) not null,
state varchar(50) null,
zip varchar(50) not null,
contract int not null
);

create table titleauthor (
au_id tinyint not null references authors(au_id),
title_id tinyint not null references titles(title_id),
au_ord int not null,
royaltyper int null
);

create table stores (
stor_id tinyint not null auto_increment primary key,
stor_name varchar(50) not null,
stor_address varchar(100) not null,
city varchar(50) not null,
state varchar(50) not null,
zip varchar(50) not null
);

create table sales (
ord_num int not null auto_increment primary key,
stor_id tinyint not null references sales(stor_id),
title_id tinyint not null references titles(title_id),
ord_date date not null,
qty tinyint not null,
payterms varchar(50) not null
);

create table discounts (
discounttype varchar(50) null,
stor_id tinyint not null references sales(stor_id),
lowqty tinyint null,
highqty int null,
discount tinyint null
);

