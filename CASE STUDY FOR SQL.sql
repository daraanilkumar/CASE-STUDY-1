create database abc11;
use abc11;
create table regions(region_id int primary key,region_name varchar(50),last_update_date varchar(50),last_updated_by varchar(50));
insert into regions values(101,'europe'),(102,'america');
select * from regions;
create table countries(country_cd varchar(10) primary key,country_name varchar(50),region_id int,foreign key(region_id) references regions(region_id),
last_update_date varchar(50),last_updated_by varchar(50));
insert into countries values(+91,'india',101),(+1,'america',102);
create table departments(dept_id int primary key,dept_name varchar(50),last_update_date varchar(50),last_updated_by varchar(50));
insert into department values(111,'marketing'),(222,'software'),(333,'developer');
create table job_types(job_type_cd varchar(10) primary key,job_type_name varchar(50),last_update_date varchar(50),last_updated_by varchar(50));
insert into job_types values(1131,'IT manager'),(1132,'HR manager'),(1133,'IT developer'),(1134,'HR assistant');
create table job_status_codes(job_status_cd varchar(10) primary key,status_desc varchar(50),last_updated_date varchar(50),last_updated_by varchar(50));
insert into job_status_codes values(1,'open'),(2,'close'),(3,'pending');
create table appl-status_codes(appl_status_cd varchar(10) primary key,status_desc varchar(50),last_updated_date varchar(50),last_updated_by varchar(50));
insert into appl_status_codes values(1,'written test'),(2,'passed interview'),(3,'short listed');
create table education_levels(edu_level_cd varchar(10) primary key,edu_level_name varchar(50),last_update_date varchar(50),last_updated_by varchar(50));
insert into education_levels values(1111,'graduate'),(1212,'post graduate'),(1313,'PHD');
create table education_type(edu_type_cd varchar(10) primary key,edu_type_name varchar(50),last_update_date varchar(50),last_updated_by varchar(50));
create table jobs(job_id int primary key,job_title varchar(45),job_desc varchar(4000),job_type_cd varchar(10),
foreign key(job_type_cd) references job_types(job_type_cd),dept_id int,
foreign key(dept_id) references departments(dept_id),job_status_cd varchar(10),
foreign key(job_status_cd) references job_status_codes(job_status_cd),country_cd varchar(10),
foreign key(country_cd) references countries(country_cd),last_update_date varchar(50),last_updated_by varchar(50));
create table applicants(appl_id int primary key,first_name varchar(50),last_name varchar(50),email varchar(50),
phone_num varchar(20),address varchar(50),city varchar(50),state varchar(50),zip varchar(10),
country_cd varchar(10),foreign key(country_cd) references countries(country_cd),appl_status_cd varchar(10),
foreign key(appl_status_cd) references appl_status_codes(appl_status_cd),edu_level_cd varchar(10));