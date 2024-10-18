--Ventas por Categoría de Producto

CREATE VIEW VentasPorCategoriaProducto AS

SELECT C.CategoryName AS Categoria,
P.ProductName AS Producto,
SUM(OD.UnitPrice * OD.Quantity * (1 - OD.Discount)) AS TotalVentas
FROM Products P
INNER JOIN Categories C ON P.CategoryID = C.CategoryID
INNER JOIN [Order Details] OD ON P.ProductID = OD.ProductID
INNER JOIN Orders O ON O.OrderID = OD.OrderID
GROUP BY C.CategoryName, P.ProductName;
