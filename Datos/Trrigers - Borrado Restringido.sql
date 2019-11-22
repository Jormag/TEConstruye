
--Borrado Restringido Ubicación
Create Trigger trgInsteadOfDeleteUBICACION on  [dbo].[Ubicacion]
INSTEAD OF DELETE
AS
Declare @IDUBICACION int;
Declare @PROVINCIA varchar(20);
Declare @CANTON varchar(20);
Declare @DISTRITO varchar(50);

Select @IDUBICACION = D.IDUbicacion From deleted D;
Select @PROVINCIA = D.Provincia From deleted D;
Select @CANTON = D.Canton From deleted D;
Select @DISTRITO = D.Distrito From deleted D;
Begin
		if (@IDUBICACION < 484)
		begin
				RAISERROR('NO SE PUEDE BORRAR DATOS PREDETERMINADOS',16,1);
				ROLLBACK;
		end
		else
		begin
				delete from Ubicacion where IDUbicacion = @IDUBICACION;
				Commit;
				Print 'DATO BORRADO'
		end
End
Go


--Borrado Restringido Especialidad
Create Trigger trgInsteadOfDeleteEspecialidad on  [dbo].[Especialidad]
INSTEAD OF DELETE
AS
Declare @IDEspecialidad int;
Declare @TipoEspecialidad varchar(30);


Select @IDEspecialidad = D.IDEspecialidad From deleted D;
Select @TipoEspecialidad = D.TipoEspecialidad From deleted D;

Begin
		if (@IDEspecialidad < 4)
		begin
				RAISERROR('NO SE PUEDE BORRAR DATOS PREDETERMINADOS',16,1);
				ROLLBACK;
		end
		else
		begin
				delete from Especialidad where IDEspecialidad = @IDEspecialidad;
				Commit;
				Print 'DATO BORRADO'
		end
End
Go


--Borrado Restringido Material
Create Trigger trgInsteadOfDeleteMaterial on  [dbo].[Material]
INSTEAD OF DELETE
AS
Declare @Codigo int;
Declare @Nombre varchar(50);
Declare @PrecioUnitario money;



Select @Codigo = D.Codigo From deleted D;
Select @Nombre = D.Nombre From deleted D;
Select @PrecioUnitario = D.PrecioUnitario From deleted D;


Begin
		if (@Codigo < 714)
		begin
				RAISERROR('NO SE PUEDE BORRAR DATOS PREDETERMINADOS',16,1);
				ROLLBACK;
		end
		else
		begin
				delete from Material where Codigo = @Codigo;
				Commit;
				Print 'DATO BORRADO'
		end
End
Go

--Borrado Restringido Etapa
Create Trigger trgInsteadOfDeleteEtapa on  [dbo].[Etapa]
INSTEAD OF DELETE
AS
Declare @IDEtapa int;
Declare @Nombre varchar(50);


Select @IDEtapa = D.IDEtapa From deleted D;
Select @Nombre = D.Nombre From deleted D;

Begin
		if (@IDEtapa < 21)
		begin
				RAISERROR('NO SE PUEDE BORRAR DATOS PREDETERMINADOS',16,1);
				ROLLBACK;
		end
		else
		begin
				delete from Etapa where IDEtapa = @IDEtapa;
				Commit;
				Print 'DATO BORRADO'
		end
End
Go