CREATE DATABASE ASSIGNMENT6
CREATE TABLE customertable(
    CustomerKey INT PRIMARY KEY,
    Prefix VARCHAR(10),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    MaritalStatus CHAR(1),
    Gender VARCHAR(MAX),
    EmailAddress VARCHAR(100),
    AnnualIncome DECIMAL(10, 2),
    TotalChildren INT,
    EducationLevel VARCHAR(50),
    Occupation VARCHAR(50),
    HomeOwner CHAR(1)
);


INSERT INTO customertable(CustomerKey, Prefix, FirstName, LastName, BirthDate, MaritalStatus, Gender, EmailAddress, AnnualIncome, TotalChildren, EducationLevel, Occupation, HomeOwner)
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
--ASSIGNMENT QUESTIONS(Session-6) 
======================================================================

----------------------------------------------------------------------

--Assignment Questions on INTO Clause , SQL TRANSACTIONS
----------------------------------------------------------------------------------------------

------------------------------
------------------------------------------
-- INTO Clause
------------------------------------------

-- 1. Create a new table with the names of all customers using the INTO clause.
SELECT FirstName, LastName
INTO CustomerNamelist
FROM customertable;
select*from customernamelist

-- 2. Insert all customers with an annual income greater than $70,000 into a new table.
SELECT *
INTO HighIncome
FROM customertable
WHERE AnnualIncome > 70000;
select*from highincome


-- 3. Create a new table containing only customers who own their home and have more than 2 children.
SELECT *
INTO customerchildrenfam
FROM Customertable
WHERE HomeOwner = 'y'AND TotalChildren > 2;

-- 4. Create a table to store the list of all customers with a Bachelors degree.
SELECT *
INTO Bachelorstable
FROM Customertable
WHERE Educationlevel = 'Bachelors';

-- 5. Insert the details of customers who are older than 50 into a new table.
SELECT *
INTO CustomersAbove50
FROM DimCustomer
WHERE DATEDIFF(YEAR, BirthDate, GETDATE()) > 50;

-- 6. Create a new table with customers whose occupation is "Skilled Manual" and who have zero children.
SELECT *
INTO Skilledpeople
FROM Customertable
WHERE Occupation = 'Skilled Manual'
  AND TotalChildren = 0;

-- 7. Insert customer data into a new table where the marital status is "S".
SELECT *
INTO SingleCustomers
FROM Customertable
WHERE MaritalStatus = 'S';

-- 8. Create a table with the names and email addresses of all customers whose annual income is less than $40,000.
SELECT FirstName, LastName, EmailAddress
INTO customerinfo
FROM Customertable
WHERE AnnualIncome < 40000;

-- 9. Create a new table to store customers' birth dates and total children.
SELECT BirthDate, TotalChildren
INTO CustomerBirthChildren
FROM Customertable;

-- 10. Insert records into a new table for customers whose education level is "Partial College".
SELECT *
INTO PartialCollegeCustomers
FROM Customertable
WHERE Educationlevel = 'Partial College';

---------------------------------------------------------------------------------------------------------------------

--ASSIGNMENTS ON SQL INBUILT FUNCTIONS

---------------------------------------------------------------------------------------------------------------------

------------------------------------------
--### 1. **String Functions**
------------------------------------------
  -- 1. Write an SQL query to concatenate the `FirstName` and `LastName` fields, separated by a space, and display the full name.
  SELECT CONCAT(FirstName, ' ', LastName) AS FullName FROM Customertable;

   --2. Write an SQL query to extract the first three characters from the `FirstName` field.
   SELECT LEFT(FirstName, 3) AS FirstThreeCharacters FROM Customertable;

  -- 3. Write an SQL query to convert the `FirstName` field into uppercase.
  SELECT UPPER(FirstName) AS UpperCaseName FROM Customertable;

  -- 4. Write an SQL query to find all records where the `EmailAddress` contains the word "learn".
  SELECT emailaddress from customertable WHERE EmailAddress LIKE '%learn%';

   --5. Write an SQL query to count how many records have the prefix "MR." in the `Prefix` field.
   SELECT COUNT(*) AS MrCount FROM Customertable WHERE Prefix = 'MR.';

   --6. Write an SQL query to replace all occurrences of ".com" with ".net" in the `EmailAddress` field.
SELECT emailaddress,REPLACE(EmailAddress, '.com', '.net') AS ModifiedEmail FROM Customertable;

   --7. Write an SQL query to find the length of the `FirstName` field for each customer.
   SELECT FirstName, LEN(FirstName) AS NameLength FROM Customertable;

   ---8. Write an SQL query to trim any leading or trailing spaces from the `LastName` field.
   SELECT TRIM(LastName) AS TrimmedLastName FROM Customertable;

   --9. Write an SQL query to reverse the `FirstName` field for all records.
   SELECT REVERSE(FirstName) AS ReversedName FROM Customertable;

------------------------------------------
--### 2. **Date Functions**
------------------------------------------
  -- 1. Write an SQL query to extract the year from the `BirthDate` field for each customer.
  SELECT YEAR(BirthDate) AS BirthYear FROM Customertable;

   --2. Write an SQL query to find customers who were born after January 1, 1970.
   select birthdate from customertable 
     SELECT BirthDate FROM Customertable
     where birthdate>'1970-01-01'

   --3. Write an SQL query to calculate the age of each customer based on the current date.
   SELECT FirstName,DATEDIFF(YEAR, BirthDate, GETDATE()) AS Age FROM Customertable;

  -- 4. Write an SQL query to display the day of the week for each customer's `BirthDate`.
  SELECT DATENAME(WEEKDAY, BirthDate) AS BirthDate FROM Customertable;

  -- 5. Write an SQL query to find all customers born in the month of July.
  select*from customertable where month(birthdate)='07'

   --6. Write an SQL query to add 10 years to each customer’s `BirthDate`.
   select dateadd(year,10,birthdate) from customertable

   --7. Write an SQL query to calculate the number of days between today’s date and each customer’s `BirthDate`.
      select datediff(day,birthdate,getdate()) from customertable

   --8. Write an SQL query to format the `BirthDate` as 'MM/DD/YYYY'.
   SELECT FORMAT(BirthDate, 'MM/dd/yyyy') AS FormattedBirthDate FROM Customertable;

  -- 9. Write an SQL query to find customers whose birthdates fall in the last quarter of the year (October, November, December).
    select*from customertable where month(birthdate) in ('10','11','12')

   --10. Write an SQL query to find how many customers were born in 1968.
   select*from customertable where year(birthdate)='1968'
------------------------------------------
--### 3. **Aggregate Functions**
------------------------------------------
   --1. Write an SQL query to find the total number of customers in the dataset.
   SELECT COUNT(*) AS TotalCustomers FROM Customertable;

   --2. Write an SQL query to calculate the average `AnnualIncome` for all customers.
      SELECT avg(annualincome) AS avgannualincome FROM Customertable;

   --3. Write an SQL query to find the maximum number of `TotalChildren` across all customers.
         SELECT max(totalchildren) AS maxnochild FROM Customertable;

   --4. Write an SQL query to calculate the total number of children across all customers.
            SELECT sum(totalchildren) AS childrentotal FROM Customertable;

   --5. Write an SQL query to find the minimum `AnnualIncome` for customers who are homeowners.
            SELECT min(totalchildren) AS minnochild FROM Customertable;

   --6. Write an SQL query to count how many customers have a marital status of 'M'.
               SELECT count(*) AS marriedcount FROM Customertable
               where maritalstatus='m';

  -- 7. Write an SQL query to find the sum of `AnnualIncome` for all customers with more than two children.
SELECT SUM(AnnualIncome) AS TotalIncome
FROM Customertable
WHERE TotalChildren > 2;

   --8. Write an SQL query to calculate the standard deviation of `AnnualIncome`.
SELECT STDEV(AnnualIncome) AS IncomeStdDeviation
FROM Customertable;

   --9. Write an SQL query to find the customer with the highest `AnnualIncome`.
SELECT max(annualincome) AS maxnochild FROM Customertable;
SELECT TOP 1 *
FROM Customertable
ORDER BY AnnualIncome DESC;

   --10. Write an SQL query to calculate the average `TotalChildren` for customers with a bachelor's degree.
   SELECT AVG(TotalChildren) AS AverageChildren
FROM Customertable
WHERE Educationlevel = 'Bachelors';

--------------------------------------------
--### 4. **Mathematical Functions**
------------------------------------------
  -- 1. Write an SQL query to round the `AnnualIncome` to the nearest thousand for all customers.
  SELECT AnnualIncome,
       ROUND(AnnualIncome, 2) AS RoundedIncome
FROM Customertable;

   --2. Write an SQL query to find the absolute value of the difference between the highest and lowest `AnnualIncome`.
   SELECT (MAX(AnnualIncome) - MIN(AnnualIncome)) AS IncomeDifference
FROM Customertable;

   --3. Write an SQL query to calculate the square root of the highest `AnnualIncome`.
   SELECT SQRT(MAX(AnnualIncome)) AS SquareRootIncome
FROM Customertable;

  -- 4. Write an SQL query to generate a random number for each customer.
  SELECT CustomerKey,
       RAND(CHECKSUM(NEWID())) AS RandomNumber
FROM Customertable;

   --5. Write an SQL query to calculate the modulus of `AnnualIncome` when divided by 10,000 for each customer.
   SELECT AnnualIncome,
       AnnualIncome % 10000 AS modulus
FROM Customertable;

   --6. Write an SQL query to find the ceiling value of `AnnualIncome` divided by 1000 for all customers.
   SELECT CEILING(AnnualIncome / 1000.0) AS CeilingValue
FROM Customertable;

   --7. Write an SQL query to calculate the floor value of `AnnualIncome` divided by 1000 for all customers.
   SELECT FLOOR(AnnualIncome / 1000.0) AS FloorValue
FROM Customertable;

   --8. Write an SQL query to multiply the `TotalChildren` by 2 for each customer.
   SELECT TotalChildren,
       TotalChildren * 2 AS DoubledChildren
FROM Customertable;

   --9. Write an SQL query to raise the `TotalChildren` value to the power of 2 for each customer.
   SELECT POWER(TotalChildren, 2) AS ChildrenSquared FROM Customertable

  -- 10. Write an SQL query to return the logarithm (base 10) of `AnnualIncome`.
  SELECT LOG10(AnnualIncome) AS LogIncome FROM Customertable;


------------------------------------------
--### 5. **Conditional Functions**
------------------------------------------
   --1. Write an SQL query to return 'Yes' if the customer is a homeowner and 'No' if they are not.
   SELECT CustomerKey,
       CASE
           WHEN HomeOwner = 'Y'THEN 'Yes'
           WHEN HomeOwner = 'N' THEN 'Yes'
           ELSE 'Not specified'
       END AS HomeOwnerStatus
FROM Customertable;

   --2. Write an SQL query to classify customers as 'High Income' if `AnnualIncome` is greater than 75,000, otherwise classify them as 'Low Income'.
   SELECT CustomerKey,
       CASE
           WHEN AnnualIncome > 75000 THEN 'High Income'
           ELSE 'Low Income'
       END AS IncomeCategory
FROM Customertable;

  -- 3. Write an SQL query to check if customers have more than 2 children, and if so, return 'Big Family', otherwise return 'Small Family'.
  SELECT CustomerKey,
       CASE
           WHEN TotalChildren > 2 THEN 'Big Family'
           ELSE 'Small Family'
       END AS FamilyType
FROM Customertable;

   --4. Write an SQL query to return 'Senior' if the customer is over 60 years old and 'Adult' if they are younger than 60.
   SELECT birthdate,
       CASE
           WHEN DATEDIFF(YEAR, BirthDate, GETDATE()) > 60 THEN 'Senior'
           ELSE 'Adult'
       END AS AgeGroup
FROM Customertable;

   --5. Write an SQL query to return 'Even' if the customer’s `CustomerKey` is an even number and 'Odd' if it is odd.
   SELECT CustomerKey,
       CASE
           WHEN CustomerKey % 2 = 0 THEN 'Evenflag'
           ELSE 'Odd'
       END AS NumberType
FROM Customertable;

   --6. Write an SQL query to return the customer’s `AnnualIncome` if it is greater than 50,000; otherwise, return 50,000.
   SELECT CustomerKey,
       CASE
           WHEN AnnualIncome > 50000 THEN AnnualIncome
           ELSE 50000
       END AS IncomeValue
FROM Customertable;

   --7. Write an SQL query to categorize customers based on `MaritalStatus` as 'Married', 'Single', or 'Other'.
   SELECT CustomerKey,
       CASE
           WHEN MaritalStatus = 'M' THEN 'Married'
           WHEN MaritalStatus = 'S' THEN 'Single'
           ELSE 'Other'
       END AS MaritalCategory
FROM Customertable;

   --8. Write an SQL query to return 'Professional' if the customer’s occupation is 'Professional', otherwise return 'Non-Professional'.
   SELECT occupation,CustomerKey,
       CASE
           WHEN Occupation = 'Professional' THEN 'Professional'
           ELSE 'Non-Professional'
       END AS OccupationCategory
FROM Customertable;

   --9. Write an SQL query to return 'Eligible' if the customer’s `TotalChildren` is less than 2 and `AnnualIncome` is more than 50,000, otherwise return 'Not Eligible'.
   SELECT annualincome,totalchildren,
       CASE
           WHEN TotalChildren < 2
                AND AnnualIncome > 50000 THEN 'Eligible'
           ELSE 'Not Eligible'
       END AS Eligibility
FROM Customertable;

  -- 10. Write an SQL query to return 'Low Income' for customers with `AnnualIncome` less than 40,000, 'Middle Income' for those with income between 40,000 and 80,000, and 'High Income' for those with more than 80,000.
  SELECT annualincome,
       CASE
           WHEN AnnualIncome < 40000 THEN 'Low Income'
           WHEN AnnualIncome BETWEEN 40000 AND 80000 THEN 'Middle Income'
           ELSE 'High Income'
       END AS Incomestatus
FROM Customertable;


------------------------------------------
--### 6. **Conversion Functions**
------------------------------------------

  -- 1. Write an SQL query to convert the `AnnualIncome` field to an integer type.
  SELECT CAST(AnnualIncome AS INT) AS IncomeInteger
FROM Customertable;

   --2. Write an SQL query to convert the `BirthDate` field to a string format.
   SELECT CONVERT(VARCHAR, BirthDate, 101) AS BirthDateString
FROM Customertable;

   --3. Write an SQL query to convert the `TotalChildren` field to a decimal format with 2 decimal places.
   SELECT CAST(TotalChildren AS DECIMAL(10,2)) AS ChildrenDecimal
FROM Customertable;

 --  4. Write an SQL query to cast the `CustomerKey` field as a string.
 SELECT CAST(AnnualIncome AS FLOAT) * 1.1 AS IncreasedIncome
FROM Customertable;

  -- 5. Write an SQL query to convert the `AnnualIncome` field to a float and multiply it by 1.1.
  SELECT CAST(AnnualIncome AS FLOAT) * 1.1 AS IncreasedIncome
FROM Customertable;

  -- 6. Write an SQL query to cast the `BirthDate` to a DATE format (YYYY-MM-DD).
  SELECT CAST(BirthDate AS DATE) AS DateOnly
FROM Customertable;

   --7. Write an SQL query to cast the `AnnualIncome` as VARCHAR and concatenate it with the string ' USD'.
   SELECT CAST(AnnualIncome AS VARCHAR) + ' USD' AS IncomeText
FROM Customertable;

  -- 8. Write an SQL query to convert `MaritalStatus` from a character field to an integer (where 'M' is 1, 'S' is 0).
  SELECT CustomerKey,
       CASE
           WHEN MaritalStatus = 'M' THEN 1
           WHEN MaritalStatus = 'S' THEN 0
       END AS MaritalValue
FROM Customertable;

  --9. Write an SQL query to convert the `TotalChildren` field to a string type and concatenate it with the word 'children'.
  SELECT CAST(TotalChildren AS VARCHAR) + ' children' AS ChildrenText
FROM Customertable;

   --10. Write an SQL query to convert the `AnnualIncome` to a decimal value and divide it by 1,000.
   SELECT CAST(AnnualIncome AS DECIMAL(10,2)) / 1000 AS IncomeThousands
FROM Customertable;
------------------------------------------

--### 7. **Numeric Functions**
------------------------------------------


  -- 1. Write an SQL query to find the average number of `TotalChildren` for customers with `AnnualIncome` greater than 50,000.
  SELECT AVG(TotalChildren) AS AverageChildren
FROM customertable
WHERE AnnualIncome > 50000;

   --2. Write an SQL query to find the customer with the lowest `AnnualIncome`.
  SELECT TOP 1 *
FROM Customertable
ORDER BY AnnualIncome ASC;
select min(annualincome) from customertable

   --3. Write an SQL query to sum the `TotalChildren` for all customers who are homeowners.
SELECT SUM(TotalChildren) AS HomeOwnerChildren
FROM Customertable
WHERE HomeOwner = 'Y';

   --4. Write an SQL query to return the `AnnualIncome` multiplied by 2 for each customer.
   SELECT AnnualIncome,
       AnnualIncome * 2 AS DoubleIncome
FROM Customertable;

   --5. Write an SQL query to count the number of customers whose `TotalChildren` is greater than 2.
SELECT COUNT(*) AS LargeFamilyCount
FROM Customertable
WHERE TotalChildren > 2;

  -- 6. Write an SQL query to return the highest `AnnualIncome` among all female customers.
SELECT MAX(AnnualIncome) AS HighestFemaleIncome
FROM Customertable
WHERE Gender = 'F'

  -- 7. Write an SQL query to subtract 5,000 from the `AnnualIncome` for customers who are not homeowners.
  SELECT AnnualIncome,
       AnnualIncome - 5000 AS ReducedIncome
FROM Customertable
WHERe not HomeOwner= 'y';

   --8. Write an SQL query to add 1 to the `TotalChildren` for all customers.
SELECT TotalChildren,
       TotalChildren + 1 AS UpdatedChildren
FROM Customertable;

   --9. Write an SQL query to return the square of the `TotalChildren` for each customer.
   SELECT POWER(TotalChildren, 2) AS ChildrenSquare
FROM Customertable;

   --10. Write an SQL query to divide `AnnualIncome` by the number of `TotalChildren` for each customer.
   select annualincome/totalchildren from customertable


------------------------------------------
### 8. **NULL Functions**
------------------------------------------
  --1. Write an SQL query to return customers where `Prefix` is NULL.
  SELECT * FROM Customertable WHERE Prefix IS NULL;

 --  2. Write an SQL query to replace any NULL values in the `Prefix` field with 'Unknown'.
 SELECT ISNULL(Prefix, 'Unknown') AS PrefixValue FROM Customertable;

   --3. Write an SQL query to find customers where `HomeOwner` is NULL.
 SELECT * FROM Customertable WHERE HomeOwner=NULL;

   --4. Write an SQL query to count how many customers have a NULL value in the `EmailAddress` field.
   SELECT COUNT(emailaddress) AS NullEmails FROM Customertable WHERE EmailAddress=NULL;

   --5. Write an SQL query to display the `AnnualIncome` for each customer, and if it is NULL, display 'Income Not Available'.
   SELECT CustomerKey,
       ISNULL(CAST(AnnualIncome AS VARCHAR), 'Income Not Available') AS IncomeDisplay
FROM Customertable;

  -- 6. Write an SQL query to return all customers where the `EducationLevel` is not NULL.
  SELECT *
FROM Customertable
WHERE Educationlevel IS NOT NULL;

   --7. Write an SQL query to update NULL values in `Occupation` to 'Unemployed'.
   UPDATE customertable
SET Occupation = 'Unemployed'
WHERE Occupation IS NULL;

   --8. Write an SQL query to count how many NULL valuesare present in the `AnnualIncome` field.
   SELECT COUNT(*) AS NullIncomeCount
FROM customertable
WHERE AnnualIncome IS NULL;


   --10. Write an SQL query to check if any `TotalChildren` fields have NULL values and return 'Children Data Missing' if NULL is found.
SELECT totalchildren,
       CASE
           WHEN TotalChildren IS NULL THEN 'Children Data Missing'
           ELSE 'Children Data Available'
       END AS ChildrenStatus
FROM Customertable;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


