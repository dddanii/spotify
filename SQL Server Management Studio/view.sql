--Usar base de datos--
Use Inv

--Creación de vista que enseña columnas especificas--
CREATE VIEW Inv_view
AS SELECT nombre, existencia FROM T_Productos
SELECT * FROM Inv_view