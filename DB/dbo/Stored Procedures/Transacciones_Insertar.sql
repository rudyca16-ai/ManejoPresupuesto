-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Transacciones_Insertar]
	@UsuarioId nvarchar(450),
	@FechaTransaccion date,
	@Monto decimal(18, 2),
	@CategoriaId int,
	@CuentaId int,
	@Nota nvarchar(1000) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO transacciones(usuarioId, fechaTransaccion, monto, categoriaId, cuentaId, nota)
	values(@UsuarioId, @FechaTransaccion, ABS(@Monto), @CategoriaId, @CuentaId, @Nota)

	UPDATE cuentas
	SET balance += @Monto
	WHERE id = @CuentaId;

	SELECT SCOPE_IDENTITY();
END
