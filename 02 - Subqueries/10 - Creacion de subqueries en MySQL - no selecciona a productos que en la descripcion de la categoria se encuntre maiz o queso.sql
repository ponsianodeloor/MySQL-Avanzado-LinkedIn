#no selecciona los productos que en la descripcion de la categoria se encuntre maiz o queso
SELECT *
FROM productos
WHERE 
	idCategoria 
		NOT IN (SELECT idCategoria FROM categoria WHERE 
								descripcion LIKE '%maiz%' OR
								descripcion LIKE '%queso%'
			) 
			