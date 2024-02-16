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




