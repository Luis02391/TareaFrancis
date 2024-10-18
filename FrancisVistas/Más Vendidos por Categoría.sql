--Productos Más Vendidos por Categoría

CREATE VIEW ProductosMasVendidosPorCategoria AS

SELECT C.CategoryName AS CATEGORIA,
P.ProductName AS PRODUCTO,
SUM(OD.Quantity) AS CANTIDADVENDIDA
FROM [Order Details] OD
JOIN Products P ON OD.ProductID = P.ProductID
JOIN Categories C ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryName, P.ProductName
ORDER BY CATEGORIA, CANTIDADVENDIDA DESC;