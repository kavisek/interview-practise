# Write your MySQL query statement below
SELECT *, 
RANK() OVER (PARTITION BY Employee.departmentId ORDER BY salary) my_rank FROM Employee
INNER JOIN Department ON Department.id = Employee.departmentId

