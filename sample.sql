create table employee(
eno int(5) primary key auto_increment,
ename varchar(10) not null,
gender varchar(1) not null check(gender in('m','f')),
age int(3) not null check(age>=18),
passport varchar(10) unique,
workmode varchar(10) default 'wfh',
salary int(5) check(salary>0));

alter table employee
add city varchar(10);

USE emp_db;
desc employee;

alter table employee
modify salary int(10);

desc employee	