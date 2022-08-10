#productos vendidos con el valor mas alto
SELECT idCategoria, AVG(precioUnitario) AS precioUnitario
FROM producto
GROUP BY idCategoria
HAVING AVG(precioUnitario) >= ALL (SELECT AVG(precioUnitario) FROM producto GROUP BY idCategoria)