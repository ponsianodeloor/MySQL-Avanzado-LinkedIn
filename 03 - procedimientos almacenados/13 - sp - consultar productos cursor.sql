DELIMITER $$

CREATE
    PROCEDURE `tienda`.`sp_consultarProductoCursor`(IN id INT)
    BEGIN
	DECLARE precioProducto DECIMAL(10,2);
	DECLARE cursorPrecio CURSOR FOR
		SELECT precioUnitario FROM producto WHERE idProducto = id;
	
	OPEN cursorPrecio;
		FETCH cursorPrecio INTO precioProducto;
	CLOSE cursorPrecio;
	
	SELECT CONCAT('El precio del producto usando cursor es ', precioProducto) AS mensaje;
    END$$

DELIMITER ;