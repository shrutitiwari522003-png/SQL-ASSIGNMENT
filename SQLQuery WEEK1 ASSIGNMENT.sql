--Section 1: Database (5 Questions)**

--1. Write the SQL command to create a new database named `school_db`.

	CREATE DATABASE SCHOOL_D_B

--2. Write the command to create a database called `hospital_management`.

	CREATE DATABASE HOSPITALMANAGEMENT

	--3. Write the SQL statement to delete the database named `test_db`.

	CREATE DATABASE TEST_DB

	--4. Write commands to create a database `company_db` and then switch to use that database.

	DROP DATABASE TEST_DB

	--5. What is the difference between `CREATE DATABASE` and `DROP DATABASE`? Give one example of each.

	--**Section 2: Creating Table (5 Questions)**

--6. Write the SQL command to create a table named `students` with the following columns: `id (INT)`, `name (VARCHAR(50))`, `age (INT)`, `city (VARCHAR(30))`, `marks (DECIMAL(5,2))`.
CREATE TABLE STUDENTS(
id INT,
nameS VARCHAR(50),
age INT,
city VARCHAR(30),
marks DECIMAL(5,2)
)
--7. Create a table `products` with columns: `pid (INT)`, `pname (VARCHAR(40))`, `price (DECIMAL(8,2))`, `category (VARCHAR(25))`, `stock (INT)`.
create table product_S
(pid INT, 
pname varchar(40),
price decimal(8,2),
category VARCHAR(25),
stock inT
)

--8. Write a query to create a table `employees` having columns: `emp_id`, `emp_name`, `salary`, `department`, `joining_date`.
create table employeesS
(emp_id int,
emp_name varchar(max),
Salary FLOAT,
department varchar(max),
joining_date date
)

--9. Create a table `customers` with 5 columns of your choice. Use appropriate data types.
create table customersSS
(CID VARCHAR(MAX),
CNAME VARCHAR(MAX), 
CSALARY INT,
CLOACTION VARCHAR(MAX)
)

--10. Write the command to create a table named `orders` with columns: `order_id (INT)`, `customer_name (VARCHAR(50))`, `amount (DECIMAL(10,2))`, `order_date`.
CREATE TABLE ORDERS(
order_id INT,
customer_name VARCHAR(50),
amount DECIMAL(10,2),
order_date DATE
)

---

  --**Section 3: Insert Records (8 Questions)**

--11. Write the INSERT statement to add one record into the `students` table with column names (id=1, name='Amit Kumar', age=18, city='Nagpur', marks=85.50).
INSERT INTO STUDENTS (ID, nameS, age,city,marks)
VALUES(1,'AMIT KUMAR',18,'NAGPUR',85.50)

--12. Insert the following record into `students` table without mentioning column names: (2, 'Priya Sharma', 17, 'Mumbai', 92.75).
INSERT INTO STUDENTS 
VALUES 
(2, 'Priya Sharma', 17, 'Mumbai', 92.75)

--13. Insert 3 records in one INSERT statement into the `students` table using column names.
INSERT INTO STUDENTS (ID, nameS, age,city,marks)
VALUES 
(3,'KRIYA',15,'MAMNALI',95),
(4,'NIYA',2,'SHIMALI',94),
(5,'RIYA',10,'MAMNALI',55)


--14. Write an INSERT query to add 4 records at once into the `products` table.
SELECT*FROM product_S
INSERT INTO product_S
VALUES
(1,'LUX',50,'SOAP',100),
(2,'LIFEBOY',511,'SOAP',18),
(3,'KEIONE',60,'SOAP',199)

--15. Insert complete records (without column names) for 2 students in the `students` table.
INSERT INTO STUDENTS
VALUES
(6,'ZIYA',22,'KOCHI',95.80),
(7,'GEETA',12,'RAMPUR',85.20)

--16. Add a record into `employees` table: emp_id=101, emp_name='Rahul', salary=65000.00, department='IT'.
SELECT*FROM employeesS
INSERT INTO employeesS 
VALUES
(101,'RAHUL',65000,'IT','2024-05-02')

--17. Write a query to insert 5 different employee records in a single statement.
INSERT INTO EMPLOYEES 
VALUES
(102,'RAHUL',99000,'IT','2024-04-02'),
(103,'RAM',65080,'MKT','2024-09-22'),
(104,'SHYAM',6800,'HR','2024-11-4'),
(105,'GOVIND',55000,'FINANCE','2024-12-22'),
(106,'FRAN',5000,'IT','2024-07-8')

--18. Insert the following data into `customers` table using column names: (C001, 'Sneha', 45000, 'Delhi'), (C002, 'Vikas', 62000, 'Pune').
SELECT*FROM customersSS
INSERT INTO customersSS
VALUES
(1, 'Sneha', 45000, 'Delhi'), 
(2, 'Vikas', 62000, 'Pune')

---

  --**Section 4: SELECT Statement with WHERE (8 Questions)**

--19. Write a query to display all records from the `students` table.
SELECT*FROM STUDENTS
SELECT*FROM customersSS
SELECT*FROM employeesS

--20. Select only `name`, `city`, and `marks` columns from the `students` table.
SELECT NAMES, CITY, MARKS FROM STUDENTS

-- 21. Write a query to show all students who are from 'Nagpur' city
SELECT*FROM STUDENTS 
WHERE 
CITY='NAGPUR'


--21. Display all employees whose salary is greater than 60000.
SELECT SALARY FROM employeesS WHERE SALARY>60000

--23. Select name and marks of students who have marks greater than 80.
SELECT NAMES,MARKS FROM STUDENTS
WHERE 
marks>80

--24. Write a query to find all products whose price is less than 500.
SELECT*FROM product_S
SELECT PNAME FROM product_S
WHERE price<500

--25. Show all students who are older than 18 years and from 'Mumbai'.
SELECT*FROM STUDENTS
SELECT *FROM STUDENTS 
WHERE AGE>18 AND CITY='MUMBAI'

--26. Display name, department, and salary of employees who work in 'HR' or 'IT' department. (Use two separate conditions with OR)
SELECT*FROM employeesS
WHERE 
DEPARTMENT='IT' OR department='HR'
---

  --**Section 5: UPDATE Statement (5 Questions)**

--27. Write a query to increase the salary of all employees by 5000.
UPDATE employeesS SET Salary=70000
WHERE emp_id=101
SELECT*FROM employeesS

--28. Update the city of student with id=3 to 'Delhi'.
SELECT *FROM STUDENTS
UPDATE STUDENTS SET 
city='DELHI'
WHERE id=3

--29. Give a 10% hike to all employees in the 'IT' department.
SELECT*FROM employeesS
UPDATE employeesS SET Salary=SALARY+(Salary*0.10)
WHERE department='IT'

--30. Update the marks of student 'Amit Kumar' to 88.50.
UPDATE STUDENTS SET marks=88.50 WHERE NAMES='AMIT KUMAR'

--31. Change the department of employee with emp_id=101 from 'IT' to 'Finance' and increase salary to 72000.
SELECT*FROM employeesS
UPDATE employeesS SET department='FIANNCE', SALARY=72000 
WHERE emp_id=101
---

  --**Section 6: DELETE Statement (4 Questions)**

--32. Write a query to delete the student with id=5.
SELECT*FROM STUDENTS
DELETE STUDENTS WHERE ID=5

--33. Delete all records of students who are from 'Mumbai'.
DELETE STUDENTS WHERE CITY='MUMBAI'

--34. Delete all employees whose salary is less than 30000.
DELETE employeesS WHERE SALARY<30000

--35. Delete all records from the `students` table without deleting the table structure.
TRUNCATE TABLE STUDENTS
SELECT*FROM STUDENTS
---

--**Bonus Questions:**

--36. Write a complete sequence: Create database ? Create table ? Insert 3 records ? Update one record ? Delete one record.
CREATE DATABASE A
CREATE TABLE ALAPHEBETS(NUMBERS INT, ALPHA VARCHAR(MAX))
INSERT INTO ALAPHEBETS
VALUES 
(1,'A'),
(2,'B'),
(3,'C')
DELETE ALAPHEBETS WHERE NUMBERS=2
SELECT*FROM ALAPHEBETS

--37. What will happen if you run `DELETE FROM students;` without any WHERE clause?
-- IT WILL DELETE ALL THE RECORDS 

--38. What is the difference between `DROP DATABASE` and `DELETE FROM table`?
--DROP DELETE WITH ITS EXISTENCE AND DELETE KEPT STRUCTURE AS IT IS AND DELETE THE RECORDS