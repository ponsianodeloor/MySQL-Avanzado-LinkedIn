delimiter //
CREATE TRIGGER `empleado_BEFORE_DELETE` BEFORE DELETE ON `empleado` FOR EACH ROW BEGIN
	delete from asociacion where asociacion.idEmpleado = old.idEmpleado;
END;//
delimiter ;