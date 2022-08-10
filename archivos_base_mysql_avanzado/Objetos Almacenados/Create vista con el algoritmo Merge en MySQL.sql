CREATE 
    ALGORITHM = MERGE 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `vw_contactoempleado` (`id` , `nombreEmpleado` , `apellidoEmpleado` , `telefonoEmpleado` , `emailEmpleado`) AS
    SELECT 
        `empleado`.`idEmpleado` AS `idEmpleado`,
        `empleado`.`nombre` AS `nombre`,
        `empleado`.`apellido` AS `apellido`,
        `empleado`.`telefono` AS `telefono`,
        `empleado`.`email` AS `email`
    FROM
        `empleado`