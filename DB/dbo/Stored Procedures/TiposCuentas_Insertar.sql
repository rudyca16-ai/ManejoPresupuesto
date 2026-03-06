-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TiposCuentas_Insertar]
	@Nombre nvarchar(50),
	@UsuarioId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    DECLARE @Orden int;
	SELECT @Orden = COALESCE(MAX(orden), 0)+1
	FROM tiposCuentas
	WHERE usuarioId = @UsuarioId

	INSERT INTO tiposCuentas(nombre, usuarioId, orden)
	values(@Nombre, @UsuarioId, @Orden);

	SELECT SCOPE_IDENTITY();
END
