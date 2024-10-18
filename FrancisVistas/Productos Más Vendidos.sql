--Productos Más Vendidos

CREATE VIEW ProductosMasVendidos AS

SELECT P.ProductName AS PRODUCTO,
SUM(OD.Quantity) AS CANTIDADVENDIDA
FROM [Order Details] OD
JOIN Products P ON OD.ProductID = P.ProductID
GROUP BY P.ProductName
ORDER BY CANTIDADVENDIDA DESC;