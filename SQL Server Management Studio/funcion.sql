
--Usar base de datos--
USE Inv
GO

--Creacion de una Función--
CREATE FUNCTION FU_Existencia
(
@Primera_Exis FLOAT,
@Segunda_Exis FLOAT,
@Tercera_Exis FLOAT,
@Cuarta_Exis FLOAT
)
RETURNS FLOAT
AS 
BEGIN
DECLARE @Resultado FLOAT
SET @Resultado = (@Primera_Exis + @Segunda_Exis + @Tercera_Exis + @Cuarta_Exis)/4
RETURN @Resultado
END

--Creacióm de consulta para verficar si la función está correcta--
SELECT dbo.FU_Existencia (175,300,700,7)