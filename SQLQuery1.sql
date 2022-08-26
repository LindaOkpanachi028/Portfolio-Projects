--CREATE TABLE EmployeeDemographics
--(EmployeeID int,
--FirstName varchar(50),
--LastName varchar(50),
-- Age int,
--Gender varchar(50)
--)

--CREATE TABLE EmployeeSalary
--(EmployeeID int,
--JobTitle varchar(50),
--Salary int)

--INSERT INTO EmployeeDemographics VALUES
--(1001, 'Jim','Halpert',30, 'Male'),
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')

--INSERT INTO EmployeeSalary VALUES
--(1001, 'Salesman', 45000),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000)


/*
Select statemnent     Top, Distinct,Count,As,Min,Max,Avg*/

--SELECT *
--FROM EmployeeDemographics

--SELECT COUNT(LastName) AS LastNameCount
--FROM EmployeeDemographics


--SELECT *
--FROM EmployeeSalary

--SELECT MIN(Salary) AS MiniumSalaryEarner
--FROM EmployeeSalary

--SELECT AVG(Salary)AS AverageSalaryEarner
--FROM EmployeeSalary

--SELECT MAX(Salary) AS MaimumSalaryEarner
--FROM EmployeeSalary

--SELECT * FROM 
--[First Database].dbo.EmployeeSalary


/*
WHERE Statement <>, <, > And, Or, Like, Null,
Not Null, In */

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName='Jim'

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName<>'Jim'

--SELECT *
--FROM EmployeeDemographics
--WHERE Age>=30


--SELECT *
--FROM EmployeeDemographics
--WHERE Age<=32



--SELECT *
--FROM EmployeeDemographics
--WHERE Gender='Male' AND  Age<=32


--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE 'S%'

--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE 'S%OTT%'

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName is NOT NULL

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName IN ('Jim','Michael')


/*
Group By, Order By */

--SELECT Gender, COUNT(Gender)
--FROM EmployeeDemographics
--GROUP BY Gender

--SELECT Gender, Age, COUNT(Gender)
--FROM EmployeeDemographics
--GROUP BY Gender, Age


--SELECT Gender, COUNT(Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE Age> 31
--GROUP BY Gender
--ORDER BY CountGender DESC


--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age DESC, Gender DESC

--SELECT *
--FROM EmployeeDemographics
--ORDER BY 4 DESC, 5 DESC

/*
Inner Joins, Full/Left/Right Outer Joins */



--Insert into [First Database].dbo.EmployeeDemographics VALUES
--(1011, 'Ryan', 'Howard', 26, 'Male'),
--(NULL, 'Holly','Flax', NULL, 'Male'),
--(1013, 'Darryl', 'Philbin', NULL, 'Male')

--Insert into [First Database].dbo.EmployeeSalary VALUES
--(1010, NULL, 47000),
--(NULL, 'Salesman', 43000)

--SELECT * FROM
--[First Database].dbo.EmployeeDemographics 
--INNER JOIN [First Database].dbo.EmployeeSalary 
--ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID


--SELECT * FROM
--[First Database].dbo.EmployeeDemographics 
-- Full OUTER JOIN [First Database].dbo.EmployeeSalary 
--ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

--SELECT * FROM
--[First Database].dbo.EmployeeDemographics 
-- Left OUTER JOIN [First Database].dbo.EmployeeSalary 
--ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

--SELECT * FROM
--[First Database].dbo.EmployeeDemographics 
-- Right OUTER JOIN [First Database].dbo.EmployeeSalary 
--ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID


--SELECT EmployeeDemographics.EmployeeID, FirstName,LastName, JobTitle, Salary
--FROM
--[First Database].dbo.EmployeeDemographics 
-- INNER JOIN [First Database].dbo.EmployeeSalary 
--ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, FirstName,LastName, JobTitle, Salary
--FROM
--[First Database].dbo.EmployeeDemographics 
-- RIGHT OUTER JOIN [First Database].dbo.EmployeeSalary 
--ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, FirstName,LastName, JobTitle, Salary
--FROM
--[First Database].dbo.EmployeeDemographics 
-- LEFT OUTER JOIN [First Database].dbo.EmployeeSalary 
--ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, FirstName,LastName, Salary
--FROM
--[First Database].dbo.EmployeeDemographics 
-- INNER JOIN [First Database].dbo.EmployeeSalary 
--ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
--where FirstName <> 'Michael'
--order by Salary Desc

--SELECT JobTitle, AVG(Salary) As SalaryToBeFixed
--FROM
--[First Database].dbo.EmployeeDemographics 
-- INNER JOIN [First Database].dbo.EmployeeSalary 
--ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
--where JobTitle= 'Salesman' 
--Group by JobTitle

--CREATE TABLE WareHouseEmployeeDemographics
--(EmployeeID int, 
--FirstName varchar(50), 
--LastName varchar(50), 
--Age int, 
--Gender varchar(50))


--INSERT INTO WareHouseEmployeeDemographics VALUES
--(1011, 'Ryan', 'Howard', 26, 'Male'),
--(NULL, 'Holly', 'Flax', NULL, NULL),
--(1013, 'Darryl', 'Philbin', NULL, 'Male')

--Insert into WareHouseEmployeeDemographics VALUES
--(1013, 'Darryl', 'Philbin', NULL, 'Male'),
--(1050, 'Roy', 'Anderson', 31, 'Male'),
--(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
--(1052, 'Val', 'Johnson', 31, 'Female')

--This merges as well but does not include duplicates
--SELECT * FROM [First Database].dbo.EmployeeDemographics
--UNION
--SELECT * FROM [First Database].dbo.WareHouseEmployeeDemographics

--This merges all data with the same columns in the same place rather than displaying them seperately. it also includes duplicates
--SELECT * FROM [First Database].dbo.EmployeeDemographics
--UNION ALL
--SELECT * FROM [First Database].dbo.WareHouseEmployeeDemographics

--Unions can be problematic, look through the execution and notice that first name an jobtitle are in the same column, smae thing with salary and age
--unions can be dangerous, so make use of case statements
--SELECT  EmployeeID,FirstName, Age 
--FROM [First Database].dbo.EmployeeDemographics
--UNION
--SELECT EmployeeID, JobTitle, Salary 
--FROM [First Database].dbo. EmployeeSalary

--use case statments when you need to satisfy conditions
--SELECT FirstName, LastName, Age, 
--CASE
--    when Age >30 THEN 'Old'
--	When Age between 27 and 30 then 'Young'
--    ELSE 'Baby'
--END
--FROM [First Database].dbo.EmployeeDemographics
--where Age is not null
--order by Age
--UNION
--SELECT EmployeeID, JobTitle, Salary 
--FROM [First Database].dbo. EmployeeSalary

--If there are multiple conditions to be met, the case statement meets uses the first condition, 
--Here Stanley will not be printed out because the first condition is already met


--SELECT FirstName, LastName, Age, 
--CASE
--    when Age >30 THEN 'Old'
--	When Age =38 THEN 'Stanley'
--    ELSE 'Baby'
--END
--FROM [First Database].dbo.EmployeeDemographics
--where Age is not null
--order by Age



--SELECT * FROM
--[First Database].dbo.EmployeeDemographics 
--JOIN [First Database].dbo.EmployeeSalary 
--ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID


--SELECT FirstName,LastName, JobTitle, Salary,

--CASE
--	WHEN JobTitle = 'Salesman' THEN Salary = Salary + (Salary * 0.10)
--	WHEN JobTitle = 'Accountant' THEN Salary = Salary + (Salary * 0.05)
--	WHEN JobTitle = 'HR' THEN Salary = Salary + (Salary * 0.00001)
--	ELSE Salary = (Salary * 0.03)

--END 


--FROM [First Database].dbo.EmployeeDemographics 
--JOIN [First Database].dbo.EmployeeSalary 
--ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID



----using the Having clause
--SELECT JobTitle, COUNT(JobTitle)

--FROM[First Database].dbo.EmployeeDemographics 
--JOIN [First Database].dbo.EmployeeSalary 
--ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

--WHERE COUNT(JobTitle)>1-- You cant this because it gives an error An aggregate may not appear in the WHERE clause unless
--it is in a subquery contained in a HAVING clause or a select list, and the column being aggregated is an outer reference.
--GROUP BY JobTitle
--HAVING COUNT(JobTitle)> 1

--SELECT JobTitle, AVG(Salary) As AverageSalary

--FROM[First Database].dbo.EmployeeDemographics 
--JOIN [First Database].dbo.EmployeeSalary 
--ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
--GROUP BY JobTitle
--Having AVG (Salary) > 45000
--order by AVG(Salary)



--Updating and Deleting Data in a Table

--SELECT *
--FROM [First Database].dbo.EmployeeDemographics

--UPDATE [First Database].dbo.EmployeeDemographics
--SET EmployeeID =1012, Age= 31, Gender = 'Female'
--WHERE FirstName= 'Holly' and LastName = 'Flax'

---- You can also have another way of doing it
--UPDATE [First Database].dbo.EmployeeDemographics
--SET  Age= 31, Gender = 'Female'
--WHERE EmployeeID= 1012



-- BEFORE deleting, you can actually check to see what row you will be delting so you dont have any problems
--Select * 
--FROM [First Database].dbo.EmployeeDemographics
--WHERE EmployeeID = 1004

----Then you can use the following code
--DELETE FROM [First Database].dbo.EmployeeDemographics
--WHERE EmployeeID=1005

--You can decide to use the AS or not, Aliasing helps to rename
--Coming both first name and last name
--Select FirstName + '' + LastName AS Fname
--FROM [First Database].dbo.EmployeeDemographics

--Another example
--SELECT Avg(Age) As AvgAge
--FROM [First Database].dbo.EmployeeDemographics

--You can also aliase the table

--SELECT Demo.EmployeeID, Sal.Salary
--FROM [First Database].dbo.EmployeeDemographics As Demo
--JOIN [First Database].dbo.EmployeeSalary As Sal
--	on Demo.EmployeeID = Sal.EmployeeID


--SELECT Demo.EmployeeID, Demo.FirstName, Sal.JobTitle, Ware.Age
--FROM [First Database].dbo.EmployeeDemographics As Demo
--LEFT JOIN [First Database].dbo.EmployeeSalary As Sal
--	on Demo.EmployeeID = Sal.EmployeeID
--LEFT JOIN [First Database].dbo.WareHouseEmployeeDemographics As Ware
--	on Sal.EmployeeID = Ware.EmployeeID

--Partition By Statement
-- Divides the dataset into parts

--SELECT FirstName, LastName,Gender, Salary,
--	COUNT(Gender)OVER (PARTITION BY Gender) as TotalGender
--FROM [First Database].dbo.EmployeeDemographics 
--JOIN [First Database].dbo.EmployeeSalary 
--	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT Gender, COUNT(Gender) As TotalGender
--FROM [First Database].dbo.EmployeeDemographics 
--JOIN [First Database].dbo.EmployeeSalary 
--	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--	GROUP BY Gender

--CTEs
--CTE is a common table epression used to manipulate a subquery file
-- It act very much like subqueries
--when you cancel this query, its like it never existed

-- With CTE_Employee as 
-- (Select FirstName, LastName, Gender, Salary,
-- COUNT(Gender) over(Partition by Gender) as TotalGender
-- ,AVG(Salary) over(Partition by Gender) as AvgSalary
--	FROM [First Database].dbo.EmployeeDemographics As emp
--	JOIN [First Database].dbo.EmployeeSalary As sal
--	on emp.EmployeeID=sal.EmployeeID
--where Salary > '45000'
--)
--Select *
--FROM CTE_Employee
-- This wont work because you need to query the CTE directly aafter creating one
--Select FirstName,AvgSalary
--FROM CTE_Employee


--Temp Tables 
--They are Temporary tables

--Create table #temp_Employee (
--EmployeeID int,
--JobTitle varchar(100),
--Salary int)

--Select * 
--FROM  #temp_Employee

--INSERT into #temp_Employee  values
--('1001', 'HR', '45000')

--Taking all of the data from the Employee Salary table and infusing it into the temp_Employee table
--INSERT into #temp_Employee
--select * 
--FROM [First Database].dbo.EmployeeSalary

--Since temp tables are not there when the session goes off, you can use the drop code that enables recreation
--Drop Table if exists #Temp_Employee2
--Create table #Temp_Employee2 (
--JobTitle varchar(50),
--EmployeesPerJob int,
--AvgAge int,
--AvgSalary int)

--insert into #Temp_Employee2
--select JobTitle, COUNT(JobTitle), Avg(Age), Avg(Salary)
--from [First Database].dbo.EmployeeDemographics As emp
--join [First Database].dbo.EmployeeSalary As sal
--	 on emp.EmployeeID = sal.EmployeeID
--group by JobTitle

--Select * from #Temp_Employee2

--String Functions + Use Cases TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower

--CREATE TABLE EmployeeErrors (
--EmployeeID varchar(50)
--,FirstName varchar(50)
--,LastName varchar(50)
--)

--Insert into EmployeeErrors Values 
--('1001  ', 'Jimbo', 'Halbert')
--,('  1002', 'Pamela', 'Beasely')
--,('1005', 'TOby', 'Flenderson - Fired')

--Select *
--From EmployeeErrors

----LTRIM RTRIM
--select EmployeeID, TRIM(EmployeeID) As IDTRIM
--FROM EmployeeErrors


--select EmployeeID, LTRIM(EmployeeID) As IDTRIM
--FROM EmployeeErrors


--select EmployeeID, RTRIM(EmployeeID) As IDTRIM
--FROM EmployeeErrors


--Using Replace
--select LastName, Replace(LastName, '- Fired', '') As LastNameFixed
--From EmployeeErrors

--select LastName, Replace(LastName, 'TOby', 'Toby') As LastNameFixed
--From EmployeeErrors


-- Uisng Substring
--select Substring(FirstName, 3, 3)
--From EmployeeErrors


--Select Substring(err.FirstName,1,3), Substring(dem.FirstName,1,3), Substring(err.LastName,1,3), Substring(dem.LastName,1,3)
--FROM EmployeeErrors err
--JOIN EmployeeDemographics dem
--	on Substring(err.FirstName,1,3) = Substring(dem.FirstName,1,3)
--	and Substring(err.LastName,1,3) = Substring(dem.LastName,1,3)

-- Using UPPER and lower

--Select firstname, LOWER(firstname)
--from EmployeeErrors

--Select Firstname, UPPER(FirstName)
--from EmployeeErrors

--Stored Procedures
--create Procedure test
--as
--select * from EmployeeDemographics

--ALL e did here to to run the procedure and sinnce it contains a function, its not so difficult
--EXEC TEST


CREATE PROCEDURE Temp_Employee
As 
Create Table #temp_employee (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)


insert into #temp_employee
select JobTitle, COUNT(JobTitle), Avg(Age), Avg(Salary)
from [First Database].dbo.EmployeeDemographics As emp
join [First Database].dbo.EmployeeSalary As sal
	 on emp.EmployeeID = sal.EmployeeID
group by JobTitle

Select * from
#temp_employee

EXEC Temp_Employee


-- Subqueries (in the select, from and where statement

--Select * from EmployeeSalary

----Subquery in Select
--Select EmployeeID, Salary, (Select AVG(Salary) From EmployeeSalary) As AllAvgSalary
--FROM EmployeeSalary 

----How to do it Partition By
--Select EmployeeID, Salary, AVG(Salary) over () As AllAvgSalary
--FROM EmployeeSalary 

----Why Group by doesnt work
--Select EmployeeID, Salary, AVG(Salary) As AllAvgSalary
--FROM EmployeeSalary 
--Group By EmployeeID, Salary
--order by 1,2

----Subquery in From

--Select *
-- FROM (Select EmployeeID, Salary, AVG(Salary) over () As AllAvgSalary
--	FROM EmployeeSalary)




















