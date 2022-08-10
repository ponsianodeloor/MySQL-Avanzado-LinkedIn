delimiter //
CREATE PROCEDURE `pro_productoPrecio`(in id int)
BEGIN
	Declare precioProducto double (10,2);
    declare cursorPrecio cursor for
		Select precioUnitario
        from producto 
        where idProducto = id;
        
	OPEN cursorPrecio;
    fetch cursorPrecio into precioProducto;
    close cursorPrecio;
    
    Select concat('El precio del producto es ', precioProducto) as mensaje;
END;//
delimiter ;