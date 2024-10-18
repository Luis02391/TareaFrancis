--Total de Ventas por Transportista

CREATE VIEW TotalVentasPorTransportista AS

SELECT S.CompanyName AS TRANSPORTISTA,
SUM(OD.UnitPrice * OD.Quantity) AS VENTASTOTALES
FROM Orders O
JOIN Shippers S ON O.ShipVia = S.ShipperID
JOIN [Order Details] OD ON O.OrderID = OD.OrderID
GROUP BY S.CompanyName;