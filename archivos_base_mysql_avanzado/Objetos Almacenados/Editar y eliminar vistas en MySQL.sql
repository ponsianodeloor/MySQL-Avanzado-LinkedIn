CREATE 
    ALGORITHM = UNDEFINED 
    SQL SECURITY DEFINER
VIEW `vw_ventas` AS
    SELECT 
        `detalle_factura`.`idFactura` AS `idFactura`,
        `factura`.`fecha` AS `fecha`,
        `producto`.`nombre` AS `producto`,
        `detalle_factura`.`precioUnitario` AS `precioUnitario`,
        `detalle_factura`.`cantidad` AS `cantidad`
    FROM
        ((`factura`
        LEFT JOIN `detalle_factura` ON ((`factura`.`idFactura` = `detalle_factura`.`idFactura`)))
        LEFT JOIN `producto` ON ((`detalle_factura`.`idProducto` = `producto`.`idProducto`)))
    ORDER BY `factura`.`idFactura`;