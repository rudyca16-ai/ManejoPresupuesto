CREATE TABLE [dbo].[usuarios] (
    [id]               INT            IDENTITY (1, 1) NOT NULL,
    [email]            NVARCHAR (60)  NOT NULL,
    [emailNormalizado] NVARCHAR (60)  NOT NULL,
    [passwordHash]     NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED ([id] ASC)
);

