-- employees who can't make sales at all --
SELECT * FROM Employees as e left join Orders as o 
on e.EmployeeID = o.EmployeeID 
where o.EmployeeID is null
-- no employee who can not make sales 

