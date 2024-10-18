--Clientes Atendidos por Empleado

CREATE VIEW ClientesAtendidosPorEmpleado AS

SELECT E.FirstName + ' ' + E.LastName AS EMPLEADO,
COUNT(DISTINCT O.CustomerID) AS CLIENTESATENDIDOS
FROM Orders O
JOIN Employees E ON O.EmployeeID = E.EmployeeID
GROUP BY E.FirstName, E.LastName;