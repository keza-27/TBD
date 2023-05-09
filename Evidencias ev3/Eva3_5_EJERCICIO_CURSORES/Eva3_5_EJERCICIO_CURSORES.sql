DELIMITER //
CREATE FUNCTION generar_rfc(apellido_paterno VARCHAR(25), apellido_materno VARCHAR(25), nombre VARCHAR(25), fecha_nacimiento DATE)
RETURNS VARCHAR(25)
DETERMINISTIC
BEGIN
    DECLARE rfc VARCHAR(13);
    SET rfc = SUBSTRING(apellido_paterno, 1, 2);
		IF apellido_materno IS NULL OR apellido_materno = '' THEN
			SET rfc = CONCAT(rfc, 'X');
		ELSE
			SET rfc = CONCAT(rfc, LEFT(apellido_materno, 1));
		END IF;
    SET rfc = CONCAT(rfc, LEFT(nombre, 1));
    SET rfc = CONCAT(rfc, DATE_FORMAT(fecha_nacimiento, '%Y%m%d'));
    RETURN rfc;
END //
DELIMITER ;