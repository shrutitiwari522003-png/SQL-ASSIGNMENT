create database clauseAssignment
CREATE TABLE Customerssss (
    CustomerKey INT PRIMARY KEY,
    Prefix VARCHAR(10),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    MaritalStatus CHAR(1),
    Gender varCHAR(max),
    EmailAddress VARCHAR(100),
    AnnualIncome DECIMAL(10, 2),
    TotalChildren INT,
    EducationLevel VARCHAR(50),
    Occupation VARCHAR(50),
    HomeOwner CHAR(1)
);


INSERT INTO Customerssss(CustomerKey, Prefix, FirstName, LastName, BirthDate, MaritalStatus, Gender, EmailAddress, AnnualIncome, TotalChildren, EducationLevel, Occupation, HomeOwner)
VALUES
(11000, 'MR.', 'JON', 'YANG', '1966-04-08', 'M', 'M', 'jon24@learnsector.com', 90000.00, 2, 'Bachelors', 'Professional', 'Y'),
(11001, 'MR.', 'EUGENE', 'HUANG', '1965-05-14', 'S', 'M', 'eugene10@learnsector.com', 60000.00, 3, 'Bachelors', 'Professional', 'N'),
(11002, 'MR.', 'RUBEN', 'TORRES', '1965-12-08', 'M', 'M', 'ruben35@learnsector.com', 60000.00, 3, 'Bachelors', 'Professional', 'Y'),
(11003, 'MS.', 'CHRISTY', 'ZHU', '1968-02-15', 'S', 'F', 'christy12@learnsector.com', 70000.00, 0, 'Bachelors', 'Professional', 'N'),
(11004, 'MRS.', 'ELIZABETH', 'JOHNSON', '1968-08-08', 'S', 'F', 'elizabeth5@learnsector.com', 80000.00, 5, 'Bachelors', 'Professional', 'Y'),
(11005, 'MR.', 'JULIO', 'RUIZ', '1965-05-08', 'S', 'M', 'julio1@learnsector.com', 70000.00, 0, 'Bachelors', 'Professional', 'Y'),
(11007, 'MR.', 'MARCO', 'MEHTA', '1964-09-05', 'M', 'M', 'marco14@learnsector.com', 60000.00, 3, 'Bachelors', 'Professional', 'Y'),
(11008, 'MRS.', 'ROBIN', 'VERHOFF', '1964-07-07', 'S', 'F', 'rob4@learnsector.com', 60000.00, 4, 'Bachelors', 'Professional', 'Y'),
(11009, 'MR.', 'SHANNON', 'CARLSON', '1964-01-04', 'S', 'M', 'shannon38@learnsector.com', 70000.00, 0, 'Bachelors', 'Professional', 'N'),
(11010, 'MS.', 'JACQUELYN', 'SUAREZ', '1964-06-02', 'S', 'F', 'jacquelyn20@learnsector.com', 70000.00, 0, 'Bachelors', 'Professional', 'N'),
(11011, 'MR.', 'CURTIS', 'LU', '1963-04-11', 'M', 'M', 'curtis9@learnsector.com', 60000.00, 4, 'Bachelors', 'Professional', 'Y'),
(11012, 'MRS.', 'LAUREN', 'WALKER', '1968-01-18', 'M', 'F', 'lauren41@learnsector.com', 100000.00, 2, 'Bachelors', 'Management', 'Y'),
(11013, 'MR.', 'IAN', 'JENKINS', '1968-06-08', 'M', 'M', 'ian47@learnsector.com', 100000.00, 2, 'Bachelors', 'Management', 'Y'),
(11014, 'MRS.', 'SYDNEY', 'BENNETT', '1968-09-05', 'S', 'F', 'sydney23@learnsector.com', 100000.00, 3, 'Bachelors', 'Management', 'N'),
(11015, 'MS.', 'CHLOE', 'YOUNG', '1979-02-27', 'S', 'F', 'chloe23@learnsector.com', 30000.00, 0, 'Partial College', 'Skilled Manual', 'N'),
(11016, 'MR.', 'WYATT', 'HILL', '1979-04-28', 'M', 'M', 'wyatt32@learnsector.com', 30000.00, 0, 'Partial College', 'Skilled Manual', 'Y'),
(11017, 'MRS.', 'SHANNON', 'WANG', '1944-06-26', 'S', 'F', 'shannon1@learnsector.com', 20000.00, 4, 'High School', 'Skilled Manual', 'Y'),
(11018, 'MR.', 'CLARENCE', 'RAI', '1944-09-10', 'S', 'M', 'clarence32@learnsector.com', 30000.00, 2, 'Partial College', 'Clerical', 'Y'),
(11019, 'MR.', 'LUKE', 'LAL', '1978-07-03', 'S', 'M', 'luke18@learnsector.com', 40000.00, 0, 'High School', 'Skilled Manual', 'N'),
(11020, 'MR.', 'JORDAN', 'KING', '1978-09-20', 'S', 'M', 'jordan73@learnsector.com', 40000.00, 0, 'High School', 'Skilled Manual', 'N'),
(11021, 'MS.', 'DESTINY', 'WILSON', '1978-03-09', 'S', 'F', 'destiny7@learnsector.com', 40000.00, 0, 'Partial College', 'Skilled Manual', 'N'),
(11022, 'MR.', 'ETHAN', 'ZHANG', '1978-12-10', 'M', 'M', 'ethan20@learnsector.com', 40000.00, 0, 'Partial College', 'Skilled Manual', 'Y'),
(11023, 'MR.', 'SETH', 'EDWARDS', '1978-11-10', 'M', 'M', 'seth46@learnsector.com', 40000.00, 0, 'Partial College', 'Skilled Manual', 'Y'),
(11024, 'MR.', 'RUSSELL', 'XIE', '1978-09-17', 'M', 'M', 'russell7@learnsector.com', 60000.00, 0, 'Partial College', 'Skilled Manual', 'Y'),
(11025, '', 'ALEJANDRO', 'BECK', '1945-12-23', 'M', 'NA', 'alejandro45@learnsector.com', 10000.00, 2, 'Partial High School', 'Clerical', 'Y'),
(11026, 'MR.', 'HAROLD', 'SAI', '1946-03-04', 'S', 'M', 'harold3@learnsector.com', 30000.00, 2, 'Partial College', 'Clerical', 'N'),
(11027, 'MR.', 'JESSIE', 'ZHAO', '1946-07-12', 'M', 'M', 'jessie16@learnsector.com', 30000.00, 2, 'Partial College', 'Clerical', 'Y'),
(11028, 'MRS.', 'JILL', 'JIMENEZ', '1946-11-04', 'M', 'F', 'jill13@learnsector.com', 30000.00, 2, 'Partial College', 'Clerical', 'Y'),
(11029, 'MR.', 'JIMMY', 'MORENO', '1946-12-21', 'M', 'M', 'jimmy9@learnsector.com', 30000.00, 2, 'Partial College', 'Clerical', 'Y');
==================================================================================================================================================================
--ASSIGNMENT QUESTIONS(Session-5) 
======================================================================



--Assignment Questions on AGGREGATED FUNCTIONS , GROUP BY  Clause and  HAVING CLAUSE

----------------------------------------------------------------------------------------------

--T-SQL Aggregate Functions
---------------------------------------
select*from customerssss
--What is the average annual income of all customers?
select avg(annualincome) as annualincome from customerssss

--What is the total number of children across all customers?
select count(totalchildren) as totalchildren from customerssss

--What is the maximum annual income among the customers?
select max(annualincome) as annualincome from customerssss

--What is the minimum annual income among the customers?
select min(annualincome) as annualincome from customerssss

--What is the count of customers with a Bachelors degree?
select*from customersss
select count(*) from customerssss where educationlevel='bachelors'

--What is the sum of annual incomes for customers with more than 2 children?
select sum(annualincome) as annualincome  from customerssss where totalchildren>2

--What is the average annual income of customers who own their home?
select avg(annualincome) as annualincome  from customerssss where homeowner='y'

--What is the total number of customers grouped by marital status?
select*from customerssss
select maritalstatus,count(*) as totalcustomers from customerssss
group by maritalstatus

--What is the average annual income of customers based on their education level?
select educationlevel,avg(annualincome) as annualincome  from customerssss
group by educationlevel


--What is the maximum number of children any customer has?
select firstname,max(totalchildren) as maxichild from customerssss
group by firstname
--------------------------------------------
GROUP BY Clause
------------------------------------
--Group the customers by gender and calculate the average annual income for each gender.
select gender,avg(annualincome) as annualincome  from customerssss
group by gender

--Group the customers by education level and find the total annual income for each level.
select gender,avg(annualincome) as annualincome  from customerssss
group by gender

--Group the customers by marital status and count the number of customers in each group.
select maritalstatus,count(*) as totalperson  from customerssss
group by maritalstatus

--Group the customers by occupation and find the average number of children for each occupation.
select occupation,avg(totalchildren) as totalperson  from customerssss
group by occupation

--Group the customers by home ownership status and get the maximum annual income for each status.
select homeowner,count(*) as totalperson  from customerssss
group by homeowner


--Group the customers by birth year and calculate the total annual income for each year.
select*from customerssss
select birthdate,count(*) as totalperson  from customerssss
group by birthdate

--Group the customers by prefix and find the average annual income for each prefix.
select prefix,avg(annualincome) as totalperson  from customerssss
group by prefix

--Group the customers by education level and count the number of customers for each level.
select educationlevel,count(*) as totalperson  from customerssss
group by educationlevel

--Group the customers by gender and marital status, and find the sum of annual 
--incomes for each combination.
select maritalstatus,gender,sum(annualincome) as totalincome from customerssss
group by maritalstatus,gender


-----------------------------------------------------
--HAVING Clause
-----------------------------------------------
--Find the education levels where the average annual income is greater than $70,000.
select*from customerssss
SELECT Educationlevel,
       AVG(AnnualIncome) AS Avg_Income
FROM customerssss
GROUP BY Educationlevel
HAVING AVG(AnnualIncome) > 70000;

--List the prefixes that have more than 5 customers.
SELECT Prefix,
       COUNT(*) AS Customer_Count
FROM customerssss
GROUP BY Prefix
HAVING COUNT(*) > 5;

--Identify the birth years where the total number of children across customers is more than 10.
select*from customerssss
SELECT Birthdate,
       count(TotalChildren) AS Total_Children_Count
FROM customerssss
GROUP BY Birthdate
HAVING SUM(TotalChildren) > 10;

--Find the marital status where the average annual income is less than $50,000.
SELECT MaritalStatus,
       AVG(AnnualIncome) AS Avg_Income
FROM customerssss
GROUP BY MaritalStatus
HAVING AVG(AnnualIncome) < 50000;

--Show the occupations where the maximum annual income is more than $80,000.
SELECT Occupation,
       MAX(AnnualIncome) AS Max_Income
FROM customerssss
GROUP BY Occupation
HAVING MAX(AnnualIncome) > 80000;

--List the education levels where the count of customers with more than 2 children is greater than 3.
SELECT Educationlevel,
       COUNT(*) AS Customer_Count
FROM customerssss
WHERE TotalChildren > 2
GROUP BY Educationlevel
HAVING COUNT(*) > 3;

--Identify the home ownership status where the average number of children is more than 2.
select*from customerssss
SELECT HomeOwner,
       avg(TotalChildren) AS Avg_Children
FROM customerssss
GROUP BY HomeOwner
HAVING avg(TotalChildren) > 2;

--Find the gender groups where the total annual income exceeds $200,000.
SELECT Gender,
       SUM(AnnualIncome) AS Total_Income
FROM customerssss
GROUP BY Gender
HAVING SUM(AnnualIncome) > 200000;

--List the prefixes where the count of customers is exactly 2.
SELECT Prefix,
       COUNT(*) AS Customer_Count
FROM customerssss
GROUP BY Prefix
HAVING COUNT(*) = 2;

--Show the occupations where the average annual income is greater than $60,000 and the total number of children is less than 10.
SELECT Occupation,
       AVG(AnnualIncome) AS Avg_Income,
       count(TotalChildren) AS Total_Children_Count
FROM customerssss
GROUP BY Occupation
HAVING AVG(AnnualIncome) > 60000
   AND count(TotalChildren) < 10;