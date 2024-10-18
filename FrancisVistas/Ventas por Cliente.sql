--Total de Ventas por Cliente

CREATE VIEW TotalVentasPorCliente AS

SELECT C.CompanyName AS CLIENTE,
SUM(OD.UnitPrice * OD.Quantity) AS VENTASTOTALES
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
JOIN [Order Details] OD ON O.OrderID = OD.OrderID
GROUP BY C.CompanyName;