--Ventas Totales por Per�odo (A�o y Mes)

CREATE VIEW VentasTotalesPorPeriodo AS
SELECT YEAR(O.OrderDate) AS A�o,
MONTH(O.OrderDate) AS Mes,
SUM(OD.UnitPrice * OD.Quantity * (1 - OD.Discount)) AS TotalVentas
FROM Orders O
INNER JOIN [Order Details] OD ON O.OrderID = OD.OrderID
GROUP BY YEAR(O.OrderDate), MONTH(O.OrderDate);