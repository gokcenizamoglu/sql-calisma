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
---------------------------------------------------------------------
--information about how many units from which category have been sold

SELECT c.CategoryName , count(*) as Piece2 FROM Products as p inner join Categories as c
on p.CategoryID = c.CategoryID
inner join [Order Details] as od
on od.ProductID = p.ProductID
group by CategoryName 
order by Piece2 desc
----------------------------------------
--information to who reports to whom --
SELECT e2.FirstName + ' ' + e2.LastName as Staff,
e1.FirstName + ' ' + e2.LastName as Superior 
FROM Employees as e1 right join Employees e2
on e1.EmployeeID = e2.ReportsTo


