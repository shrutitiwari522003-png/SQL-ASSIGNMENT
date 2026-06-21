--  **Category 1: Creating Tables with Constraints (1-12)**

------------------------------------------------------------------------------------------------

--1. Create a `Customers` table with `CustomerID` as PRIMARY KEY, `CustomerName` as NOT NULL, and `Email` as UNIQUE.
CREATE DATABASE CUSTOMERS
USE CUSTOMERS
CREATE TABLE CTSTOMERS(
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(MAX) NOT NULL,
EMAIL VARCHAR(100) UNIQUE 
)

--2. Create an `Employees` table where `EmployeeID` is PRIMARY KEY (Identity), `FirstName` and `LastName` are NOT NULL, `Email` is UNIQUE, and `Salary` has a CHECK constraint (`Salary >= 15000`).
CREATE TABLE EMPLOYEES(
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR (MAX),
LastName VARCHAR(MAX) NOT NULL,
Email VARCHAR(100) UNIQUE,
Salary INT CHECK (Salary >= 15000)
)

--3. Create a `Products` table with `ProductID` (PK), `ProductName` (NOT NULL), `Price` (CHECK > 0), `Discount` (CHECK between 0 and 100), and `Stock` with DEFAULT value 0.
CREATE TABLE PRODUCTS(
PRODUCTID INT PRIMARY KEY,
ProductName VARCHAR(MAX) NOT NULL, 
Price INT CHECK(PRICE > 0), 
Discount INT CHECK (DISCOUNT between 0 and 100),
Stock INT DEFAULT 0
)

--4. Create an `Orders` table with `OrderID` (PK), `OrderDate` DEFAULT `GETDATE()`, `Status` DEFAULT 'Pending', and `TotalAmount`.
CREATE TABLE Orders(
    OrderID INT PRIMARY KEY,
    OrderDate DATE DEFAULT GETDATE(),
    Status_ VARCHAR(MAX) DEFAULT 'Pending',
    TotalAmount DECIMAL(10,2)
)

--5. Create two tables `Departments` and `Employees` with proper FOREIGN KEY relationship. `Employees.DeptID` should reference `Departments.DeptID`.
CREATE TABLE DepartmentsTABLE(
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100)
)

CREATE TABLE EmployeesTABLE
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(MAX) NOT NULL,
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
)

--6. Create a `Users` table with a composite PRIMARY KEY on (`UserID`, `CompanyCode`).
create table users(
userid int primary key,
companycode int
)
--7. Create a table `StudentMarks` where `TotalMarks` CHECK constraint ensures value is between 0 and 500.
CREATE TABLE StudentMarks
(
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    TotalMarks INT CHECK (TotalMarks BETWEEN 0 AND 500)
)

--8. Create a `BankAccounts` table with `AccountNumber` as UNIQUE, `Balance` CHECK (`Balance >= 0`), and `AccountType` NOT NULL.
CREATE TABLE BankAccounts
(
    AccountID INT PRIMARY KEY,
    AccountNumber VARCHAR(20) UNIQUE,
    Balance DECIMAL(12,2) CHECK (Balance >= 0),
    AccountType VARCHAR(30) NOT NULL
)

--9. Create a table with a column `PhoneNumber` that must be exactly 10 digits using CHECK constraint.
CREATE TABLE Contacts
(
    PhoneNumber INT CHECK (LEN(PhoneNumber) = 10)
);

--10. Create an `Invoices` table where `DueDate` must be greater than or equal to `InvoiceDate` using CHECK constraint.
CREATE TABLE Invoices
(
    InvoiceDate DATE ,
    DueDate DATE ,
    CHECK (DueDate >= InvoiceDate)
)

--11. Create a table `Projects` with `ProjectStatus` having DEFAULT value 'Not Started' and CHECK constraint allowing only ('Not Started', 'In Progress', 'Completed').
create table pro(projstatus varchar(max) default 'not_started',
constraint check_project check(projstatus in ('not started', 'in progress', 'completed')))

--12. Create a table where one column has both UNIQUE and NOT NULL constraints.
CREATE TABLE EmployeesInfo
(
    AadhaarNumber VARCHAR(12) NOT NULL UNIQUE
)

------------------------------------------------------------------------------------------------
 -- **Category 2: INSERT, UPDATE, DELETE & Constraint Violations (13-25)**


------------------------------------------------------------------------------------------------

--13. Write INSERT statements for the `Employees` table (from Q2) and show which ones will fail and why.
select*from EMPLOYEES
insert into EMPLOYEES values(101,'ST','T','s@Tgmai.com',50000,5612,'2026-05-02')

--14. Try inserting a duplicate value in a UNIQUE column and explain the error.
insert into EMPLOYEES values(101,'ST','T','s@Tgmai.com',50000,5612,'2026-05-02')

--15. Insert a record without providing a value for a NOT NULL column. What happens?
insert into EMPLOYEES values(101,'ST','s@Tgmai.com',50000,5612,'2026-05-02')

--16. Insert a negative salary in a table having CHECK (`Salary > 0`). What is the result?
insert into EMPLOYEES values(102,'T','l@Tgmai.com',-50000,5612,'2026-08-02')

--17. Insert an `Order` with a non-existing `CustomerID` (FOREIGN KEY violation).
select*from Orders
insert into Orders (orderid,orderdate,totalamount,mobile) values
(1,'2024-05-06',50000,565656
)

--child table
create table custome(
customid int primary key,
orderid int,
foreign key(orderid) references orders(orderid)
)
insert into CUSTOME values(101,1)

--18. Update a PRIMARY KEY column value. Is it allowed? What happens?
update EMPLOYEES set EmployeeID=102 where fullname='ST'

--19. Update a FOREIGN KEY column with a value that does not exist in the parent table.
update custome set customid=5 where customid=101

--20. Try to delete a parent record (`Department`) that is referenced by child records (`Employees`). What happens?
CREATE TABLE OrdersS(
    OrderID INT PRIMARY KEY,
    OrderDate DATE DEFAULT GETDATE(),
    Status_ VARCHAR(MAX) DEFAULT 'Pending',
    TotalAmount DECIMAL(10,2)
)
INSERT INTO OrdersS(OrderID,TotalAmount) 
VALUES(1,90000.00)
SELECT*FROM OrdersS

------------------------------------------------------------------------------------------------
  --**Category 3: ALTER TABLE - Column Operations (26-40)**

------------------------------------------------------------------------------------------------

--26. Add a new column `DateOfJoining` (DATE) to the `Employees` table.
alter table EMPLOYEES add dateofjoining date

--27. Add a NOT NULL column `MiddleName` to an existing table that already has data.
alter table employees
alter column middlename  varchar(max) not null

--28. Change the datatype of `Salary` from INT to DECIMAL(10,2).
alter table EMPLOYEES alter column salary decimal(10,2)

--29. Rename a column `EmpName` to `FullName` in MS-SQL.
exec sp_rename 'EMPLOYEES.firstname', 'fullname', 'column'

--30. Make an existing column `Email` as NOT NULL.
alter table EMPLOYEES alter column email varchar(100) not null

--31. Remove the NOT NULL constraint from a column.
alter table employees
alter column lastname varchar(max) null

--32. Add a DEFAULT constraint 'Active' to an existing `Status` column.
alter table orders 
add constraint status_active default active for status_

--33. Drop the DEFAULT constraint from a column.
alter table orders 
drop constraint status_active

--34. Increase the length of a VARCHAR column from 50 to 100.
alter table employees alter column firstame varchar(100)

--35. Add a new column `Mobile` with UNIQUE constraint in one statement.
alter table orders add mobile int unique

--38. Rename the table `OldEmployees` to `CurrentEmployees`.
exec sp_rename 'oldemployees' , 'currentemployees'

--39. Add a CHECK constraint on an existing column `Age` (Age >= 18).
alter table employees 
add constraint checkconstraint check(age>=18)

--40. Drop a CHECK constraint from a table.
alter table employees 
drop constraint ck_salary

  --**Category 4: ALTER TABLE - Constraint Operations (41-55)**

--41. Add a PRIMARY KEY constraint on an existing column `StudentID`
alter table students add constraint pk_studentid  primary key(studentid)

--42. Drop the PRIMARY KEY constraint from a table.
alter table students
drop constraint pk_studentid

--43. Add a FOREIGN KEY constraint on an existing column.
--parent table
CREATE TABLE Bank
(
    AccID INT PRIMARY KEY,
)

--child table
create table holder(
pan int primary key,
accid int
)

alter table holder add constraint fk
foreign key(accid) references Bank(accid) 

--44. Drop a FOREIGN KEY constraint.
alter table holder 
drop constraint fk

--45. Add a UNIQUE constraint on an existing column `AadhaarNumber`.
alter table employees 
add constraint uniqueid unique (aadhaaenumber)

--46. Drop a UNIQUE constraint.
alter table employees 
drop constraint uniqueid

--47. Add a named CHECK constraint `CK_Salary` on `Salary` column.
alter table orders 
add constraint ck_salary check(salary>15000)

--48. Add a composite UNIQUE constraint on (`FirstName`, `LastName`, `DateOfBirth`).
create table stu(stid int, FirstName varchar(100), LastName varchar(100), DateOfBirth date)
alter table stu
add constraint stcompose unique(FirstName, LastName, DateOfBirth)


--49. Add a named PRIMARY KEY constraint while creating or altering table.
alter table students add constraint pk_studentid  primary key(studentid)

--51. Design a schema for Library Management System with proper constraints (Books, Members, IssuedBooks).
CREATE TABLE LIB_MANAGEMENT(
BOOKID INT PRIMARY KEY,
BOOKNAME VARCHAR(100) UNIQUE,
PAGESIZE INT CHECK (PAGESIZE>100),
SIGNATURE_ VARCHAR(MAX) NOT NULL,
DATEOF_ISSUE DATE DEFAULT GETDATE()
)
SELECT*FROM LIB_MANAGEMENT
INSERT INTO LIB_MANAGEMENT(BOOKID,BOOKNAME,PAGESIZE,SIGNATURE_)
VALUES
(1,'MONEY',150,'SHRUTI')
INSERT INTO LIB_MANAGEMENT(BOOKID,BOOKNAME,PAGESIZE,SIGNATURE_)
VALUES
(2,'PSYCHLOGY',120,'SHUBHAM')

--CHILD TABLE
CREATE TABLE DPARTMENT_OFBOOKS
(DEPT_ID INT PRIMARY KEY,
DEPT_NAME VARCHAR(MAX),
BOOKID INT,
FOREIGN KEY(BOOKID) REFERENCES LIB_MANAGEMENT(BOOKID)
)
INSERT INTO DPARTMENT_OFBOOKS VALUES(6,'HR',2)

SELECT*FROM DPARTMENT_OFBOOKS
SELECT*FROM LIB_MANAGEMENT










