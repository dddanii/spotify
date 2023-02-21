--Creación de base de datos--
create database MedioAmbiente

--Creación de tabla de la planta seleccionada--
create table Planta
(Nombre varchar (20),
Nombre_cientifico varchar(20),
Familia varchar (20),
Origen varchar (100)
)

--Llenar la tabla con los datos--
insert into Planta values ('Cinamomo', 'Melia Azedarach','Meliaceae', 'Sureste Asiático')

--Creación de la tabla de la información de la planta--
create table Info
(Clima varchar (800),
Oxigeno_producida varchar (50),
Lugares_para_adquirila varchar (800)
)

--Llenar la tabla con los datos--
insert into Info values ('Clima cálido', 'Libera grandes cantidades durante la noche','Viveros Inmaculada, IKEA SDO, Viveverde')

--Crear Esquema-
CREATE SCHEMA MedAmb
GO

--Verificación del Esquema--
SELECT * FROM Sys.schemas
GO

--Colocar esquema a las tablas creadas--
ALTER SCHEMA MedAmb TRANSFER Planta
SELECT * FROM MedAmb.Planta

ALTER SCHEMA MedAmb TRANSFER Info
SELECT * FROM MedAmb.Info
