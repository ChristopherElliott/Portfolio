CREATE TABLE [dbo].[User] (
    [UserId] INT           NOT NULL,
    [Name]   VARCHAR (100) NOT NULL,
    [PasswordHash]   VARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC)
);

