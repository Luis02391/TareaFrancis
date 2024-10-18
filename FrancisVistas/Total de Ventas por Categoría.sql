--Total de Ventas por Categoría

CREATE VIEW TotalVentasPorCategoria AS

SELECT C.CategoryName AS CATEGORIA,
SUM(OD.UnitPrice * OD.Quantity) AS TOTALVENTAS
FROM [Order Details] OD
JOIN Products P ON OD.ProductID = P.ProductID
JOIN Categories C ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryName;
