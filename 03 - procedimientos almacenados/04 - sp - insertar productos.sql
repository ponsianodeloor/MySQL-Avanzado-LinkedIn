DELIMITER $$

CREATE
    PROCEDURE `tienda`.`sp_insertarProducto`(
	IN nombre VARCHAR(45), 
	IN idCategoria INT,
	IN precioUnitario DECIMAL(10,2)
    )
    BEGIN
	INSERT INTO producto (
		nombre, 
		idCategoria, 
		precioUnitario
		)
		VALUE(
			nombre,
			idCategoria,
			precioUnitario
		);
    END$$

DELIMITER ;