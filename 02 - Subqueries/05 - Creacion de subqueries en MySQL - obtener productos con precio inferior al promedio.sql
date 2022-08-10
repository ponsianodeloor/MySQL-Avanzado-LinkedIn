#precios de los productos menores al promedio de la categoria 5 frutas
SELECT * FROM producto
WHERE precioUnitario <= (SELECT AVG(precioUnitario) FROM producto WHERE idCategoria = 5)
AND idCategoria = 5