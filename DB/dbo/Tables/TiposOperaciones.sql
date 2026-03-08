CREATE TABLE [dbo].[TiposOperaciones] (
    [id]          INT           IDENTITY (1, 1) NOT NULL,
    [descripcion] VARCHAR (450) NOT NULL,
    [prueba]      INT           NULL,
    CONSTRAINT [PK_tipos_operaciones] PRIMARY KEY CLUSTERED ([id] ASC)
);

