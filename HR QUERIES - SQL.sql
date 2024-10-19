
SELECT 
    AVG(CAST(Age AS INT)) AS AvgAge, 
    MAX(CAST(Age AS INT)) AS HighestAge, 
    MIN(CAST(Age AS INT)) AS LowestAge
FROM Employee;
--1. Average Age, Highest, and Lowest Age


SELECT top 1
    Department, 
    JobRole, 
    MAX(CAST(Salary AS DECIMAL(10, 2))) AS HighestSalary
FROM Employee
GROUP BY Department, JobRole
ORDER BY HighestSalary DESC
--2 Highest Department Salary and Job Role

SELECT 
    Ethnicity, 
    AVG(CAST(Salary AS DECIMAL(10, 2))) AS AvgSalary
FROM 
    Employee
GROUP BY 
    Ethnicity;
--3.	هل كل العرقيات بتاخد الافريدج زي بعض ولا لا ؟


SELECT 
    State, 
    COUNT(EmployeeID) AS EmployeeCount, 
    AVG(CAST(Salary AS DECIMAL(10, 2))) AS AvgSalary
FROM Employee
GROUP BY State;
--4 State by Salary and Count of Employees

SELECT 
    E.EducationLevel, 
    AVG(CAST(Empl.Salary AS DECIMAL(10, 2))) AS AvgSalary
FROM EducationLevel E
JOIN Employee Empl ON E.EducationLevelID = Empl.Education
GROUP BY E.EducationLevel;
--5 Correlation Between Education Levels and Salary

SELECT top 1 
    Department, 
    JobRole, 
    MAX(CAST(Salary AS DECIMAL(10, 2))) AS HighestSalary
FROM Employee
GROUP BY Department, JobRole
ORDER BY HighestSalary DESC
--6 Most Paid Role and Department

SELECT 
    MaritalStatus, 
    COUNT(EmployeeID) AS Count, 
    AVG(CAST(Salary AS DECIMAL(10, 2))) AS AvgSalary
FROM Employee
GROUP BY MaritalStatus;
--7. Pie Chart of Marital Status + Correlation Between Status and Salaries


SELECT 
    MaritalStatus, 
    AVG(CASE WHEN OverTime = 'Yes' THEN 1 ELSE 0 END) AS OvertimePercentage
FROM Employee
GROUP BY MaritalStatus;
--8. Correlation Between Marital Status and Overtime


SELECT 
    SUM(CAST(Salary AS DECIMAL(10, 2))) AS TotalSalaries
FROM Employee;
--9. Total Salaries + Correlation Between Distance from Home and Overtime


SELECT 
    YEAR(HireDate) AS HireYear, 
    COUNT(EmployeeID) AS EmployeeCount
FROM Employee
GROUP BY YEAR(HireDate)
ORDER BY HireYear;
--10. Hire Date by Count of Employees (Line Chart)


SELECT 
    COUNT(EmployeeID) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS TerminatedEmployees
FROM Employee;
--11. Count of Employees, Count of Terminated Employees

SELECT top 1
    YEAR(HireDate) AS TurnoverYear, 
    COUNT(EmployeeID) AS TurnoverCount
FROM Employee
WHERE Attrition = 'Yes'
GROUP BY YEAR(HireDate)
ORDER BY TurnoverCount DESC
--12. Most Turnover Year

SELECT 
    Gender, 
    AVG(CAST(Salary AS DECIMAL(10, 2))) AS AvgSalary
FROM Employee
GROUP BY Gender;
--13. Salaries by Male and Female

SELECT 
    AVG(CAST(YearsAtCompany AS INT)) AS AvgYearsAtCompany
FROM Employee;
--14. Average Years at the Company

SELECT 
    MaritalStatus, 
    AVG(CAST(YearsAtCompany AS INT)) AS AvgYearsAtCompany
FROM Employee
GROUP BY MaritalStatus;

--15. Correlation Between Years at the Company and Salaries

SELECT 
    State, 
    AVG(CAST(Age AS INT)) AS AvgAge
FROM Employee
GROUP BY State;
--16. State with Age

SELECT 
    Department, 
    AVG(CAST(YearsSinceLastPromotion AS DECIMAL(10, 2))) AS AvgYearsSinceLastPromotion
FROM 
    Employee
GROUP BY 
    Department
ORDER BY 
    AvgYearsSinceLastPromotion ASC;
--17.	القسم اللي الناس في بتترقى اسرع


SELECT 
    State, 
    AVG(CAST(Age AS DECIMAL(10, 2))) AS AvgAge
FROM 
    Employee
GROUP BY 
    State;
--18.	State with age


SELECT 
    E.MaritalStatus, 
    AVG(CAST(PR.WorkLifeBalance AS DECIMAL(10, 2))) AS AvgWorkLifeBalance
FROM PerformanceRating PR
JOIN Employee E ON PR.EmployeeID = E.EmployeeID
GROUP BY E.MaritalStatus;
--19. Correlation Between Work-Life Balance and Marital Status


SELECT 
    PR.ManagerRating, 
    AVG(CAST(E.YearsSinceLastPromotion AS INT)) AS AvgYearsSincePromotion
FROM PerformanceRating PR
JOIN Employee E ON PR.EmployeeID = E.EmployeeID
GROUP BY PR.ManagerRating;
--20. Correlation Between Manager Rating and Promotion


SELECT 
    EmployeeID, 
    (CAST(SelfRating AS INT) - CAST(ManagerRating AS INT)) AS RatingDifference
FROM PerformanceRating;
--21. Difference Between Self-Rating and Manager Rating


SELECT 
    PR.TrainingOpportunitiesTaken, 
    AVG(CAST(E.Salary AS DECIMAL(10, 2))) AS AvgSalary
FROM PerformanceRating PR
JOIN Employee E ON PR.EmployeeID = E.EmployeeID
GROUP BY PR.TrainingOpportunitiesTaken;
--22. Training Opportunities Taken and Salaries or Promotion











