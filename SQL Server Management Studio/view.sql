--Usar base de datos--
Use Inv

--Creaci�n de vista que ense�a columnas especificas--
CREATE VIEW Inv_view
AS SELECT nombre, existencia FROM T_Productos
SELECT * FROM Inv_view