delimiter //
CREATE PROCEDURE `proc_productosCategoria`(IN categoria INT)
BEGIN
	SELECT * FROM producto WHERE idCategoria = categoria;
END;//
delimiter ;