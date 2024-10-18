--Número de Órdenes Enviadas por Transportista

CREATE VIEW NumeroOrdenesEnviadasPorTransportista AS
SELECT S.CompanyName AS TRANSPORTISTA,
COUNT(O.OrderID) AS NUMEROORDENESENVIADAS
FROM Orders O
JOIN Shippers S ON O.ShipVia = S.ShipperID
GROUP BY S.CompanyName;