drop database library2;

create database library2;

use library2;

create table jobs (
job_id tinyint not null auto_increment primary key,
job_desc varchar(50) not null,
min_lvl enum("Stagiaire", "Junior", "Intermediaire", "Senior") null,
max_lvl enum("Stagiaire", "Junior", "Intermediaire", "Senior") null
);

