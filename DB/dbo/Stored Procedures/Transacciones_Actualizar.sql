-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Transacciones_Actualizar]
	-- Add the parameters for the stored procedure here
	@Id int,
	@FechaTransaccion datetime,
	@Monto decimal(18, 2),
	@MontoAnterior decimal(18, 2),
	@CuentaId int,
	@CuentaAnteriorId int,
	@CategoriaId int,
	@Nota nvarchar(1000) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE cuentas
	set balance -= @MontoAnterior
	where id = @CuentaAnteriorId;

	UPDATE cuentas
	set balance += @Monto
	where id = @CuentaId;

	UPDATE transacciones
	set monto = ABS(@Monto), fechaTransaccion = @FechaTransaccion,
	categoriaId = @CategoriaId, cuentaId = @CuentaId, nota = @Nota
	where id = @Id;
END
