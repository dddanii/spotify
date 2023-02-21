Use CAFAM

--Creamos un LOG para historial usando un trigger--
create trigger TLOG_Historial
on Alumnos_
for insert
as
begin
insert into LOG_Historial(
Nombre,Fecha,Descripción) select Nombre, getdate(),'Se ha agregado un estudinate'
from inserted
end

--Comprobamos el trigger--
insert into Alumnos_ values('A007', 'Michael', 'Jackson', '7-6-07', 'Calle Hollywood, Casa número 25', '829-256-1958', '809-966-4670')

--Consulta de la tabla historial--
select * from LOG_Historial2 

--Consulta de la tabla afectada--
select * from Alumnos_

