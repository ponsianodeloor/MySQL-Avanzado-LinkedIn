delimiter //
create trigger empleado_BEFORE_INSERT before INSERT on empleado for each row
begin
	set new.nombre = concat(upper(substring(new.nombre,1,1)), substring(new.nombre,2));   
	set new.apellido = concat(upper(substring(new.apellido,1,1)), substring(new.apellido,2));
end;//
delimiter ;

delimiter //
CREATE TRIGGER `empleado_AFTER_INSERT` AFTER INSERT ON `empleado` FOR EACH ROW BEGIN
	insert into asociacion (idEmpleado, nombre, apellido, fechaIngreso, email, telefono)
    value (new.idEmpleado, new.nombre, new.apellido, new.fechaIngreso, new.email, new.telefono);
END;//
delimiter ;