--Crear o usar base de datos--
Use Financiera

--Escribir sintaxis para crear el trigger--
Create trigger ACCESODENEGADO
ON Cliente FOR DELETE
AS BEGIN
PRINT 'No tiene permiso para borrar el registro'
END

--Crear consulta para ver la tabla seleccionada--
SELECT * FROM Cliente

--Probar trigger tratando de eliminar un registro--
DELETE FROM Cliente WHERE ClienteID = '9'
