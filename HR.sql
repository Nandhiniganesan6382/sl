create database s;
use s;
show databases;
create table employee(Empid varchar(10),EmpName varchar(25),depid varchar(25));
desc employee;
create table department(depid varchar(25),depname varchar(25));
desc department;

insert into employee(empid,empname,depid)values
(200,'anish',301),
(201,'junai',302),
(203,'rubina',303),
(204,'saji',304);
select*from employee;

insert into department(depid,depname)values
(301,'HR'),
(302,'CEO'),
(303,'Doctor'),
(304,'Fashion designer');
select * from department;

SELECT
employee.empname,
department.depname
FROM
employee
INNER JOIN
department
ON
employee.depid=department.depid;

SELECT 
department.depname,
employee.empname
FROM 
department
INNER JOIN
employee ON department.depid=employee.depid;

SELECT 
department.depname,
COUNT(employee.empid) AS employee_count
FROM
department
INNER JOIN
employee ON department.depid=employee.depid
GROUP BY
department.depname;

SELECT 
 employee.*
 FROM
 employee
 INNER JOIN
   department ON employee.depid=department.depid
 WHERE
  department.depname='HR';
  
  SELECT employee.empname,employee.depid
  FROM employee
  INNER JOIN department
  ON employee.depid=department.depid;
  SELECT employee.empname,department.depname
  FROM employee
  INNER JOIN department
  ON employee.depid=department.depid
  ORDER BY department.depname;
  
  
  
  












