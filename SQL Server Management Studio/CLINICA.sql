create database Clinica_BD
GO

use Clinica_BD
GO

create table Pacientes(
ID_Pacientes BIGInt identity (100,1) primary key  not null,
Nombre varchar (30) not null,
Apellidos varchar (30) not null,
Fecha_nacimiento date not null,
Sexo char (15) not null,
Tipo_sangre varchar (10) null,
Cédula varchar (15) null,
Teléfono varchar (15) null,
Dirección varchar (50) not null,
Estado_paciente varchar (10) null,
);

go


create table Empleados(
ID_Empleados BIGInt identity (10,10) primary key not null,
Nombre varchar (50)null,
Apellidos varchar (50),
Fecha_nacimiento date,
Cédula varchar (15) null,
Teléfono varchar (15) null,
Dirección varchar (50) null,
Estado_empleado varchar (10)
);

insert into Empleados (Nombre, Apellidos, Fecha_nacimiento,Cédula, Teléfono, Dirección, Estado_empleado) values ('Eduardo', 'Martinez', '1997-9-5', '234556-7', '809-356-7345','Edificio B', 'Activo');
select * from Empleados


GO

alter table Empleados add Especialidad varchar (50),
Categoría varchar (50)

create table Categoria (
ID_Categoria int primary key not null,
Nombre varchar (30),
Descripción varchar (50)
);

GO

create table Especialidades (
ID_Especialidad BIGInt identity (10,10) primary key not null,
Nombre varchar (30),
Descripción varchar (50)
);
GO

Alter table Especialidades add foreign key (ID_Especialidad) references Empleados (ID_Empleados)

GO

create table Seguros(
ID_Seguro BIGInt identity (100,1) primary key  not null,
Nombre varchar (30),
Tipo_seguro varchar (40),
Monto_seguro money, 
Estado_seguro varchar (40)
);

GO

select ID_Seguro, Nombre, Tipo_seguro, Monto_seguro, Estado_seguro from Seguros

insert into Seguros(Nombre, Tipo_seguro, Monto_seguro,Estado_seguro) values ('Josue', 'VIP', '$500', 'Activo');
select * from Seguros

create table Ingresos(
ID_Ingreso BIGInt identity (100,1) primary key  not null,
Descripción varchar (100),
Tratamiento varchar (50),
Fecha_ingreso date,
Fecha_salida date,
);
Alter table	Ingresos add foreign key (ID_Ingreso) references Pacientes (ID_Pacientes)
Alter table	Ingresos add foreign key (ID_Ingreso) references Empleados (ID_Empleados)

Alter table Ingresos 
add Médico varchar (30)

Alter table Ingresos 
add Paciente varchar (30)

Alter table Ingresos 
add Diagnóstico varchar (200)

Alter table Ingresos 
add Razón_ingreso varchar (200)

Alter table Ingresos
add Seguro varchar (30)

GO


create table Nomina(
ID_Nomina BIGInt identity (100,1) primary key  not null,
Fecha date,
Sueldo money not null,
Descuentos money,
Horas_extras money,
Frecuencia varchar (15)
);
Alter table	Nomina add foreign key (ID_Nomina) references Empleados (ID_Empleados)

GO

create table Consultas(
ID_Consultas BIGInt identity (100,1) primary key  not null,
Fecha_consulta datetime not null,
Descripción varchar (50),
Diagnóstico varchar (50),
Monto_consulta money
);
Go
Alter table	Consultas add foreign key (ID_Consultas) references Pacientes (ID_Pacientes)
Alter table	Consultas add foreign key (ID_Consultas) references Empleados (ID_Empleados)

GO
 
create table Usuario 
(
ID_Usuario int identity primary key not null,
Usuario varchar (15) not null,
Clave varchar (20) not null,
Gmail varchar (50)
)

select * from Usuario where Usuario = '' and Clave = ''

insert into Usuario (Usuario, Clave, Gmail) values ('Josue', '1234', 'jouse33@gmail.com');
insert into Usuario (Usuario, Clave, Gmail) values ('Lara', '5678', 'laraxroff@gmail.com');
select * from Usuario

select * from Usuario
go 


create procedure Registro_Pacientes

@Nombre varchar (50),
@Apellidos varchar (50),
@Teléfono varchar (15),
@Cédula varchar (15),
@Dirección varchar (15),
@Sexo varchar (15),
@Fecha_nacimiento varchar (20),
@Tipo_sangre varchar (10),
@Estado_paciente varchar (15),
@Foto image
as
begin
insert into Pacientes (Nombre, Apellidos, Teléfono, Cédula, Dirección, Sexo, Fecha_nacimiento, Tipo_sangre, Estado_paciente, Foto)
values (@Nombre, @Apellidos, @Teléfono, @Cédula, @Dirección, @Sexo, @Fecha_nacimiento, @Tipo_sangre, @Estado_paciente, @Foto)
end

select* from Pacientes

ALTER TABLE Pacientes
ADD Foto image NULL
go


select ID_Pacientes as ID, Nombre+'  '+Apellidos as Nombre, Cédula, Dirección, Teléfono from Pacientes


insert into Pacientes (Nombre, Apellidos, Fecha_nacimiento, Sexo, Tipo_sangre, Cédula, Teléfono, Dirección,Estado_paciente, Foto) values ('Lola', 'Lol', '2003-3-3', 'Fmenino', 'A','29384', '345445', 'Calle Rosa 2', 'En coma', 'carwash.png')
go 

Create procedure SP_Registro_seguro

@Nombre varchar (30),
@Tipo varchar (40),
@Monto money,
@Estado varchar (40)

AS

BEGIN

Insert into Seguros (Nombre, Tipo_Seguro, Monto_seguro, Estado_Seguro) values (@Nombre, @Tipo, @Monto, @Estado)

End

go

create procedure Registro_Empleados

@Nombre varchar (50),
@Apellidos varchar (50),
@Teléfono varchar (15),
@Cédula varchar (15),
@Dirección varchar (15),
@Fecha_nacimiento varchar (20),
@Estado_empleado varchar (10),
@Especialidad varchar (50),
@Categoría varchar (50)
as
begin
insert into Empleados (Nombre, Apellidos, Teléfono, Cédula, Dirección,Fecha_nacimiento, Estado_empleado)
values (@Nombre, @Apellidos, @Teléfono, @Cédula, @Dirección, @Fecha_nacimiento, @Estado_empleado)
end

select * from Seguros

insert into Ingresos (Descripción, Tratamiento, Fecha_ingreso, Fecha_salida, Médico, Paciente, Diagnóstico, Razón_ingreso, Seguro) values ('Hombre de mediana edad', 'Calmantes y antibióticos', '2022-12-31', '2022-1-6', 'Luis Miniel', 'Josue', 'Enteritis crónica','Deshidratación y desmayos', 'Palic');
select * from Ingresos 
