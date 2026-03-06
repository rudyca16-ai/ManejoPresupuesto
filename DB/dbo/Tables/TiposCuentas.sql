CREATE TABLE [dbo].[TiposCuentas] (
    [id]        INT           IDENTITY (1, 1) NOT NULL,
    [nombre]    NVARCHAR (50) NOT NULL,
    [usuarioId] INT           NOT NULL,
    [orden]     INT           NOT NULL,
    CONSTRAINT [PK_tipos_cuentas] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_tipos_cuentas_usuarios] FOREIGN KEY ([usuarioId]) REFERENCES [dbo].[usuarios] ([id])
);

