delimiter // 
CREATE TRIGGER `empleado_BEFORE_UPDATE` BEFORE UPDATE ON `empleado` FOR EACH ROW BEGIN
	if(old.salario >= 400) then
		set new.salario = old.salario + old.salario * 0.01;
	else
		set new.salario = old.salario + old.salario * 0.02;
	end if;
END;//
delimiter ;

delimiter //
CREATE TRIGGER `empleado_AFTER_UPDATE` AFTER UPDATE ON `empleado` FOR EACH ROW BEGIN
	update asociacion
    set nombre = new.nombre,
    apellido = new.apellido,
    fechaIngreso = new.fechaIngreso,
    email = new.email,
    telefono = new.telefono
    where idEmpleado = new.idEmpleado;
END;//
delimiter ;