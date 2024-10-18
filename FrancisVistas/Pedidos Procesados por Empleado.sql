--Número de Pedidos Procesados por Empleado

CREATE VIEW PedidosPorEmpleado AS

SELECT E.FirstName + ' ' + E.LastName AS EMPLEADO,
COUNT(O.OrderID) AS NUMEROPEDIDOS
FROM Orders O
JOIN Employees E ON O.EmployeeID = E.EmployeeID
GROUP BY E.FirstName, E.LastName;