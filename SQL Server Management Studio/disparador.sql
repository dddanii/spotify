--Crear base de datos--
Create database Inv

--Crear tabla--
Create table T_Productos(
id_Cod int identity primary key,
cod_prod varchar (4) not null,
nombre varchar (50) not null, 
existencia int not null, 
); 

GO
--Insertar datos a la tabla--
Insert into T_Productos values ('A001', 'MEMORIA USB 32GB',175);
Insert into T_Productos values ('A002', 'DISCO DURO 2TB',15);
Insert into T_Productos values ('A003', 'AIRE COMPRIMIDO',250);
Insert into T_Productos values ('A004', 'ESPUMA LIMPIADORA',300);
Insert into T_Productos values ('A005', 'FUNDA MONITOR',500);
Insert into T_Productos values ('A006', 'FUNDA TECLADO',700);
Insert into T_Productos values ('A007', 'SILLA ERGONOMICA',11);
Insert into T_Productos values ('A008', 'ALFOMBRILLA PARA SILLA',25);
Insert into T_Productos values ('A009', 'LAMPARA ESCRITORIO',7);
Insert into T_Productos values ('A010', 'MONITOR LED 18 PULGADA',45);
Insert into T_Productos values ('A011', 'LIBRERO',20);

--Crear trigger usando la sintaxis que vaya acorde a la acción que queramos realizar--
--En este caso será de inserción--
Create trigger Insert_triggerT
On T_Productos
for insert
as 
begin
insert into T_Productos (cod_prod, nombre,existencia)
values ('A012', 'ESTANTE',50)
END

insert into T_Productos (cod_prod, nombre,existencia)
values ('A00', 'BOLIGRAFO',70)
Select * from T_Productos

--Crear trigger usando la sintaxis que vaya acorde a la acción que queramos realizar--
--En este caso será de actualizar--
create trigger TR_Update
on T_Productos 
for insert
as
Print 'Registro actualizado'
GO
Update T_Productos Set cod_prod = 'A013' Where nombre = 'BOLIGRAFO' 

Select * from T_Productos