--Productividad de Empleados (Ventas por Empleado)

CREATE VIEW VentasPorEmpleado AS

SELECT E.FirstName + ' ' + E.LastName AS EMPLEADO,
 SUM(OD.UnitPrice * OD.Quantity) AS VENTASTOTALES
FROM Orders O
JOIN Employees E ON O.EmployeeID = E.EmployeeID
JOIN [Order Details] OD ON O.OrderID = OD.OrderID
GROUP BY E.FirstName, E.LastName;