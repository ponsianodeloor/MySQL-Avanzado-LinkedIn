delimiter //
CREATE PROCEDURE `pro_insertarProducto`(in nombre varchar(45), in categoria int, in precio decimal (10,2))
BEGIN
	insert into producto (nombre, idCategoria, precioUnitario) value (nombre, categoria, precio);
END;//;
delimiter ;

delimiter //
CREATE PROCEDURE `pro_actualizarProducto`(in id int, in nombre varchar(45), in categoria int, in precio decimal(10,2))
BEGIN
	update producto
    set nombre = nombre, 
    idCategoria = categoria,
    precioUnitario = precio
    where idProducto = id;
END; //
delimiter ;


delimiter //
CREATE PROCEDURE `pro_eliminarProducto`(in id int)
BEGIN
	delete from producto where idProducto = id;
END;//
delimiter ;