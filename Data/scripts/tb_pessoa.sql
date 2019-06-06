/*    ==Parâmetros de Script==

    Versão do Servidor de Origem : SQL Server 2016 (13.0.4224)
    Edição do Mecanismo de Banco de Dados de Origem : Microsoft SQL Server Enterprise Edition
    Tipo do Mecanismo de Banco de Dados de Origem : SQL Server Autônomo

    Versão do Servidor de Destino : SQL Server 2016
    Edição de Mecanismo de Banco de Dados de Destino : Microsoft SQL Server Enterprise Edition
    Tipo de Mecanismo de Banco de Dados de Destino : SQL Server Autônomo
*/

USE [dbcadastro]
GO

/****** Object:  Table [dbo].[tb_pessoa]    Script Date: 06/06/2019 20:30:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_pessoa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NULL,
	[telefone] [varchar](50) NULL,
	[idcidade] [int] NULL,
 CONSTRAINT [PK_tb_pessoa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tb_pessoa]  WITH CHECK ADD  CONSTRAINT [FK_tb_pessoa_tb_cidade] FOREIGN KEY([idcidade])
REFERENCES [dbo].[tb_cidade] ([id])
GO

ALTER TABLE [dbo].[tb_pessoa] CHECK CONSTRAINT [FK_tb_pessoa_tb_cidade]
GO


