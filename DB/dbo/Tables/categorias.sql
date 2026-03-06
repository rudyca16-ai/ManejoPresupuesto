CREATE TABLE [dbo].[categorias] (
    [id]              INT           IDENTITY (1, 1) NOT NULL,
    [nombre]          NVARCHAR (50) NOT NULL,
    [TipoOperacionId] INT           NOT NULL,
    [usuarioId]       INT           NOT NULL,
    CONSTRAINT [PK_categorias] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_categorias_tipos_operaciones] FOREIGN KEY ([TipoOperacionId]) REFERENCES [dbo].[TiposOperaciones] ([id]),
    CONSTRAINT [FK_categorias_usuarios] FOREIGN KEY ([usuarioId]) REFERENCES [dbo].[usuarios] ([id])
);

