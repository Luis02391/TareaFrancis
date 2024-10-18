--Número de Órdenes por Cliente

CREATE VIEW NumeroOrdenesPorCliente AS
SELECT C.CompanyName AS CLIENTE,
COUNT(O.OrderID) AS NUMEROORDENES
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
GROUP BY C.CompanyName;
