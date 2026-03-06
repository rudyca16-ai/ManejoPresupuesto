-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Transacciones_Borrar] 
	-- Add the parameters for the stored procedure here
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Monto decimal(18, 2);
	DECLARE @CuentaId int;
	DECLARE @TipoOperacionId int;

	SELECT @Monto = monto, @CuentaId = cuentaId, @TipoOperacionId = cat.tipoOperacionId
	FROM transacciones
	inner join categorias cat
	on cat.id = transacciones.categoriaId
	where transacciones.id = @Id;

	DECLARE @FactorMultiplicativo int= 1;

	IF (@TipoOperacionId = 2)
		SET @FactorMultiplicativo =-1;

	SET @Monto = @Monto * @FactorMultiplicativo;

	UPDATE cuentas
	set balance -= @Monto
	where id = @CuentaId;

	DELETE transacciones
	where id = @id;

END
