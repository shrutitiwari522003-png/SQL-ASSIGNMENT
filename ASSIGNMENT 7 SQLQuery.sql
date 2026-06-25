--ASSIGNMENTS ON SQL JOINS

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

create database assignment7
use assignment7
-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    Age INT,
    PhoneNumber VARCHAR(20)
);
select*from customers
-- Create Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,  -- Foreign Key to Customers table
    Amount DECIMAL(10, 2),
    ProductName VARCHAR(100),
    CONSTRAINT FK_CustomerOrder FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert records into Customers (including NULLs)
INSERT INTO Customers (CustomerID, CustomerName, City, Age, PhoneNumber)
VALUES
(1, 'Alice', 'New York', 25, '1234567890'),
(2, 'Bob', 'Los Angeles', 30, NULL),
(3, 'Charlie', 'Chicago', 40, '0987654321'),
(4, 'David', NULL, 35, '1234509876'),
(5, 'Eve', 'San Francisco', NULL, '0987651234'),
(6, 'Frank', 'Houston', 50, NULL),
(7, 'Grace', NULL, 28, '1230984567'),
(8, 'Hannah', 'Miami', NULL, '2345670987'),
(9, 'Ivy', 'Seattle', 60, '0982345671'),
(10, 'Jack', 'New York', 27, '3456789012');
select*from orders
-- Insert records into Orders (including NULLs)
INSERT INTO Orders (OrderID, OrderDate, CustomerID, Amount, ProductName)
VALUES
(101, '2024-09-01', 1, 150.00, 'Laptop'),
(102, '2024-09-03', 2, 200.00, 'Smartphone'),
(103, '2024-09-04', 3, 50.00, NULL),
(104, '2024-09-05', NULL, 500.00, 'Tablet'),
(105, '2024-09-06', 5, 100.00, 'Headphones'),
(106, '2024-09-07', 6, NULL, 'Monitor'),
(107, '2024-09-08', 7, 75.00, 'Keyboard'),
(108, '2024-09-09', 8, 300.00, 'Printer'),
(109, '2024-09-10', 9, 400.00, NULL),
(110, '2024-09-11', 10, 250.00, 'Mouse');

-----------------------------------------------------
--=INNER JOIN
-----------------------------------------------------
--List all customers who have placed an order, along with their order amounts, and order the result by the Amount in descending order.
SELECT
c.CustomerName, o.Amount, c.customerid,o.customerid
FROM Customers as c 
INNER JOIN 
Orders as o 
ON
c.CustomerID = o.CustomerID 
ORDER BY o.Amount DESC;



--Retrieve the customer names and their corresponding order dates, 
--filtering only those orders where the amount is greater than 100 and order them by OrderDate.
SELECT 
c.CustomerName, o.OrderDate FROM 
Customers as c 
INNER JOIN Orders as o 
ON 
c.CustomerID = o.CustomerID 
WHERE 
o.Amount > 100 
ORDER BY o.OrderDate desc

--Display the total amount spent by each customer on their orders using SUM(), 
--but only include customers who have spent more than 200. Use GROUP BY on CustomerID.
SELECT c.CustomerID,
SUM(o.Amount) AS TotalAmountSpent 
FROM customers as c
inner join 
orders as o
on
c.customerid=o.customerid
where o.amount>200
GROUP BY c.CustomerID

--Show the CustomerName, City, and the Amount of their orders, 
--but only for those customers whose name starts with 'A'. Sort the results by CustomerName.
SELECT 
c.CustomerName, 
c.City, 
o.Amount 
FROM Customers as c 
INNER JOIN 
Orders o 
ON 
c.CustomerID = o.CustomerID 
WHERE 
c.CustomerName LIKE 'A%'
ORDER BY c.CustomerName desc;

--Fetch the list of customers and their total order count using COUNT(), 
--but only include customers with more than 1 order, ordering the results by the number of orders in descending order.
SELECT 
c.CustomerName, 
count(o.orderid) as total_order
FROM Customers as c 
INNER JOIN 
Orders as o 
ON 
c.CustomerID = o.CustomerID 
group by c.customername
having count(o.orderid)>1
ORDER BY count(o.orderid) desc;


-----------------------------------------------------
---LEFT JOIN
-----------------------------------------------------

--Retrieve the names of all customers and their corresponding orders, ensuring that customers without any orders are also included.
--Order the results by CustomerName.
SELECT 
c.CustomerName, c.customerid,
o.customerid,
o.productname
FROM Customers as c 
left JOIN 
Orders as o 
ON 
c.CustomerID = o.CustomerID 

--Show all customers' names and the amount they spent on their orders, but replace null order amounts with the value 0 using ISNULL(). Sort the results by Amount.
SELECT 
c.CustomerName, 
isnull(o.amount,0) as amountspent
FROM Customers as c 
left JOIN 
Orders as o 
ON 
c.CustomerID = o.CustomerID 

--List the CustomerName and the count of orders placed by each customer,
--including customers who have not placed any orders. Use GROUP BY on CustomerID.
SELECT 
c.Customerid, 
count(o.orderid) as total_order
FROM Customers as c 
left JOIN 
Orders as o 
ON 
c.CustomerID = o.CustomerID 
group by c.customerid

--Fetch the names of customers along with the average order amount for each customer using AVG(). 
--Include customers without orders as well, 
--and order the results by the average order amount in descending order.
SELECT 
c.customerName, 
avg(amount) as average_amount
from customers as c
left JOIN 
Orders as o 
ON 
c.CustomerID = o.CustomerID 
group by customername
order by avg(amount) desc


--Retrieve the CustomerName and City of all customers who have either not placed any orders or have placed orders for more than 200. 
--Sort by City.
SELECT 
c.customerName, 
c.city,
o.amount 
from customers as c
left JOIN 
Orders as o 
ON 
c.CustomerID = o.CustomerID 
where o.Amount>200
order by city desc



-----------------------------------------------------
--RIGHT JOIN
-----------------------------------------------------

--Display the OrderID, ProductName, and CustomerName for all orders, including orders without associated customers (if any).
--Order the results by ProductName.
SELECT
o.OrderID, o.ProductName, c.CustomerName ,c.CustomerID,o.CustomerID
FROM Customers as c RIGHT JOIN 
Orders as o 
ON 
c.CustomerID = o.CustomerID
ORDER BY o.ProductName;

--List all the products and their respective order amounts,
--but ensure that even orders with no customers are displayed. 
--Order by Amount in ascending order.
SELECT
o.ProductName,
o.Amount 
FROM Customers c 
RIGHT JOIN Orders o 
ON c.CustomerID = o.CustomerID 
ORDER BY o.Amount ASC;

--Fetch the CustomerID, and the total amount spent on orders for customers who have placed orders worth more than 100, 
--including orders that may not have customers.
--Group the results by CustomerID using SUM().
SELECT
c.CustomerID, 
SUM(o.Amount) AS TotalAmountSpent 
FROM Customers c RIGHT JOIN Orders o
ON
c.CustomerID = o.CustomerID
GROUP BY c.CustomerID 
HAVING SUM(o.Amount) > 100;

--Retrieve the OrderID, OrderDate, and CustomerName for all orders, 
--even if the customer information is missing, 
--and filter for orders placed after '2024-09-05'.
--Order the results by OrderDate.
select o.orderid, o.orderdate,c.customername
from Customers as c
right join
orders as o
on
c.CustomerID=o.CustomerID
where o.OrderDate>'2024-09-05'

--Show all orders along with their respective customer names, 
--but include orders without a customer and group the results by CustomerID,
--showing only customers with an order count greater than 2.
SELECT c.CustomerID, COUNT(c.CustomerName) AS customerCount 
FROM Customers c 
RIGHT JOIN 
Orders o 
ON 
c.CustomerID = o.CustomerID 
GROUP BY c.CustomerID
HAVING COUNT(o.OrderID) > 2;

-----------------------------------------------------
--FULL OUTER JOIN
-----------------------------------------------------

--Fetch a list of all customers and their corresponding orders, including customers without orders and orders without customers. Order the result by CustomerName.
select  c.Customername,o.ProductName from Customers as c
full outer join
Orders as o
on c.CustomerID=o.CustomerID
order by CustomerName

--Display the CustomerName, OrderID, 
--and Amount for all customers and orders,
--showing "N/A" for missing customer or order details using COALESCE(). Order by Amount.
select
c.customername,
o.amount,
coalesce(o.productname,'NA') as missingcustomer
from customers as c
full outer join
orders as o
on 
c.CustomerID=o.CustomerID
order by amount desc

--List all the customers and orders,
--including customers who have not placed any orders and orders without customers,
--grouped by CustomerID and ordered by the sum of their order amounts using SUM().
SELECT 
    c.CustomerID,
    SUM(o.Amount) AS TotalAmount
FROM Customers c
FULL OUTER JOIN Orders o
    ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY sum(o.Amount) DESC;

--Show all customers and their corresponding orders, 
--or customers without orders and orders without customers, 
--who have ordered products starting with the letter 'P'. Sort by ProductName.
SELECT 
    c.CustomerName,
    o.OrderID,
    o.ProductName
FROM Customers as c
FULL OUTER JOIN Orders o
    ON c.CustomerID = o.CustomerID
WHERE o.ProductName LIKE 'P%'
ORDER BY o.ProductName;

--Fetch the total number of customers and orders, 
--including unmatched customers and orders, 
--using COUNT(), and display only those who have more than 2 related records.
SELECT 
    c.CustomerName,
    COUNT(c.CustomerID) AS TotalRecords
FROM Customers c
FULL OUTER JOIN Orders o
    ON c.CustomerID = o.CustomerID
GROUP BY CustomerName
HAVING COUNT(c.CustomerID) > 2;

-----------------------------------------------------
--SELF JOIN
-----------------------------------------------------

--List all pairs of customers who are from the same city using a self-join on the City field.
--Exclude the case where a customer is paired with themselves. Order by City.
SELECT 
    C1.CustomerID AS Customer1_ID,
    C2.CustomerID AS Customer2_ID,
    C2.CustomerName AS Customer2_Name,
    C1.City
FROM Customers C1
INNER JOIN Customers C2
    ON C1.City = C2.City
    AND C1.CustomerID <> C2.CustomerID
ORDER BY C1.City;

-----------------------------------------------------
--CROSS JOIN
-----------------------------------------------------

--Generate a list of all possible combinations of customers and orders using a cross join,
--displaying their names and product names. 
--Order by CustomerName.
SELECT 
    c.CustomerName,
    o.ProductName
FROM Customers as c
CROSS JOIN Orders as o
ORDER BY c.CustomerName;

--Show all possible pairs of customers and their order amounts using a cross join,
--but only include combinations where the CustomerName of the customer starts with 'A'.
SELECT 
    c.CustomerName,
    o.Amount
FROM Customers as c
CROSS JOIN Orders as o
WHERE c.CustomerName LIKE 'A%';

--Fetch all combinations of customers and their order details, 
--showing the CustomerName, OrderID, and ProductName, and order by ProductName.
SELECT 
    c.CustomerName,
    o.OrderID,
    o.ProductName
FROM Customers c
CROSS JOIN Orders o
ORDER BY o.ProductName;

--Display the cartesian product of customers and orders, 
--along with the total order amount for each combination using SUM(), 
--ordered by the total amount in descending order.
SELECT 
    c.CustomerName,
    SUM(o.Amount) AS TotalAmount
FROM Customers as c
CROSS JOIN Orders as o
group by c.CustomerName
ORDER BY TotalAmount DESC;

--List all combinations of customers and orders, 
--but filter to show only those where the total amount is greater than 100 using a HAVING clause, 
--and order the result by Amount.
SELECT 
    c.CustomerName,
    SUM(o.Amount) AS TotalAmount
FROM Customers as c
CROSS JOIN Orders as o
group by c.CustomerName
having SUM(o.amount)>100
ORDER BY TotalAmount DESC;




