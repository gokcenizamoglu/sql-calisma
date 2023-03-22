-- employees who can't make sales at all --
--------------------------------------------
SELECT * FROM Employees as e left join Orders as o 
on e.EmployeeID = o.EmployeeID 
where o.EmployeeID is null
----------------------------------------------------------
-- information about how many units of which product have been sold -- 
SELECT p.ProductName, COUNT(*) as Piece FROM Products as p inner join [Order Details] as od
on p.ProductID = od.ProductID
group by p.ProductName
order by Piece desc



