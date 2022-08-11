DELIMITER $$

CREATE
    PROCEDURE `tienda`.`sp_actualizarProducto`(
	IN id INT,
	IN nombre VARCHAR(45),
	IN idCategoria INT,
	IN precioUnitario DECIMAL(10,2)
    )
    BEGIN
	UPDATE producto SET 
		nombre = nombre,
		idCategoria = idCategoria,
		precioUnitario = precioUnitario
	WHERE
		idProducto = id;	
    END$$

DELIMITER ;