--Ventas Totales por Período (Año y Mes)

CREATE VIEW VentasTotalesPorPeriodo AS
SELECT YEAR(O.OrderDate) AS Año,
MONTH(O.OrderDate) AS Mes,
SUM(OD.UnitPrice * OD.Quantity * (1 - OD.Discount)) AS TotalVentas
FROM Orders O
INNER JOIN [Order Details] OD ON O.OrderID = OD.OrderID
GROUP BY YEAR(O.OrderDate), MONTH(O.OrderDate);