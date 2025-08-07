create database nn;
use nn;
show databases;
create table employee(Empid varchar(10),EmpName varchar(25),depid varchar(25));
desc employee;
create table department(depid varchar(25),depname varchar(25));
desc department;
insert into employee(empid,empname,depid)values
(200,'anish',300),
(201,'junai',301),
(203,'rubina',302),
(204,'saji',303);
select*from employee;
insert into department(depid,depname)values
(300,'HR'),
(301,'CEO'),
(303,'Doctor');
insert into department(depid,depname)values(305,'teacher');
select * from department;
SELECT e.depid,e.empname,d.depname
FROM employee e LEFT JOIN department d
ON e.depid=d.depid;

SELECT e.depid,e.empname,d.depname
FROM employee e RIGHT JOIN department d
ON e.depid=d.depid;


