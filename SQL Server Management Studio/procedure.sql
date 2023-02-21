use Financiera;
go

create procedure StoredProcedureFinancieraa
as
select ClienteID, Nombre, Apellido
from Cliente
where Nombre = 'Olivia' 
go

EXEC StoredProcedureFinancieraa

