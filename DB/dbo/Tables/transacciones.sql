CREATE TABLE [dbo].[transacciones] (
    [id]               INT             IDENTITY (1, 1) NOT NULL,
    [usuarioId]        INT             NOT NULL,
    [fechaTransaccion] DATETIME        NOT NULL,
    [monto]            DECIMAL (18, 2) NOT NULL,
    [nota]             NVARCHAR (1000) NULL,
    [cuentaId]         INT             NOT NULL,
    [categoriaId]      INT             NOT NULL,
    CONSTRAINT [PK_transacciones] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_transacciones_categorias] FOREIGN KEY ([categoriaId]) REFERENCES [dbo].[categorias] ([id]),
    CONSTRAINT [FK_transacciones_cuentas] FOREIGN KEY ([cuentaId]) REFERENCES [dbo].[cuentas] ([id]),
    CONSTRAINT [FK_transacciones_usuarios] FOREIGN KEY ([usuarioId]) REFERENCES [dbo].[usuarios] ([id])
);

