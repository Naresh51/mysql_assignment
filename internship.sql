# name= naresh kumar

CREATE DATABASE ORG1;
USE ORG1;
CREATE TABLE Worker (
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);
INSERT INTO Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE,
DEPARTMENT) VALUES
(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

select*from WORKER;


/*QUESTION 1
Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name
<WORKER_NAME>.*/
SELECT FIRST_NAME AS WORKER_NAME FROM WORKER;


/*Question 2:
Write an SQL query to fetch unique values of DEPARTMENT from the Worker table*/
select distinct department from worker;


/*Question 3:
Write an SQL query to print the first three characters of FIRST_NAME from the Worker table.*/
select substring(first_name,1,3) from worker;


/*Question 4:
Write an SQL query that fetches the unique values of DEPARTMENT from the Worker table and
prints its length.*/
select distinct department ,length(department)as length from worker;


/*Question 5:
Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME
Ascending and DEPARTMENT Descending*/
select*from worker
order by first_name asc, department desc;


/*Question 6:
Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.*/
select *from worker
where department = 'admin';


/*Question 7:
Write an SQL query to print details of the Workers whose SALARY lies between 100000 and
500000.*/
select*from worker 
where salary between 100000 and 500000;


/*Question 8:
Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.*/
select concat(first_name,' ',last_name)as worker_name,salary from worker
where salary >=50000 and salary <=100000;


/*question 9
write an sql qurey to show only even rows rom worker table*/
select*from worker
where mod(worker_id,2)=0;

/*question 10
write an sql query to print details of the Workers who joined in Feb’2014.
*/
Select * from Worker 
where year(JOINING_DATE) = 2014 and month(JOINING_DATE) = 2;

