delimiter //
CREATE PROCEDURE `pro_salarioMinimo`(OUT salarioMinimo double)
BEGIN
	select min(empleado.salario) into salarioMinimo from empleado;
END;//
delimiter ;