delimiter //
CREATE FUNCTION `fcn_edad` (fecha date)
RETURNS INTEGER DETERMINISTIC
BEGIN
	declare edad int;
	SET edad = floor(datediff(now(), fecha)/365);
	RETURN edad;
END;//
delimiter ;


delimiter //
CREATE FUNCTION `fcn_nivelVentas`(idProducto int) RETURNS varchar(45) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
    DETERMINISTIC
BEGIN
	DECLARE cantidadVentas INT;
    DECLARE nivelVentas VARCHAR(45);
    Select sum(cantidad) into cantidadVentas from detalle_factura WHERE detalle_factura.idProducto = idProducto; 
	IF cantidadVentas > 15 THEN
		SET nivelVentas = 'Muy buena';
    ELSEIF (cantidadVentas >= 10) THEN
		SET nivelVentas = 'Bien';
    ELSE
		SET nivelVentas = 'Mejorable';
	END IF;
RETURN nivelVentas;
END;//
delimiter ;