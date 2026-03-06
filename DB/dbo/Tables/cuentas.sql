CREATE TABLE [dbo].[cuentas] (
    [id]           INT             IDENTITY (1, 1) NOT NULL,
    [nombre]       NVARCHAR (50)   NOT NULL,
    [tipoCuentaId] INT             NOT NULL,
    [balance]      DECIMAL (18, 2) NOT NULL,
    [descripcion]  NVARCHAR (1000) NULL,
    CONSTRAINT [PK_cuentas] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_cuentas_tipos_cuentas] FOREIGN KEY ([tipoCuentaId]) REFERENCES [dbo].[TiposCuentas] ([id])
);

