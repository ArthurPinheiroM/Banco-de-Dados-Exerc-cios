USE [Aulas_BD]
GO
/****** Object:  Table [dbo].[Aluno]    Script Date: 08/07/2025 16:05:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aluno](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](90) NOT NULL,
	[telefones] [varchar](20) NULL,
	[idade] [int] NULL,
	[data_nascimento] [date] NULL,
	[turma_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bairro]    Script Date: 08/07/2025 16:05:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bairro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](30) NOT NULL,
	[cidade_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carro]    Script Date: 08/07/2025 16:05:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cor] [varchar](30) NOT NULL,
	[placa] [varchar](8) NOT NULL,
	[ano_fabricacao] [int] NOT NULL,
	[preco] [numeric](10, 2) NULL,
	[modelo_id] [int] NOT NULL,
	[categoria_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 08/07/2025 16:05:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cidade]    Script Date: 08/07/2025 16:05:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cidade](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](30) NOT NULL,
	[estado_id] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 08/07/2025 16:05:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](30) NOT NULL,
	[nomeDiretor] [varchar](90) NULL,
	[ramal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 08/07/2025 16:05:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[sigla] [char](2) NOT NULL,
	[nome] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fabricante]    Script Date: 08/07/2025 16:05:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricante](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 08/07/2025 16:05:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](90) NOT NULL,
	[telefones] [varchar](20) NULL,
	[idade] [int] NULL,
	[dataNascimento] [date] NULL,
	[endereco] [varchar](200) NULL,
	[departamento_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modelo]    Script Date: 08/07/2025 16:05:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modelo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](30) NOT NULL,
	[fabricante_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turma]    Script Date: 08/07/2025 16:05:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Aluno] ON 

INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (1, N'Jolva', N'3211-1221', 17, CAST(N'1992-03-25' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (2, N'Josélva', N'3211-1221', 17, CAST(N'1992-03-25' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (3, N'José', N'3211-1221', 17, CAST(N'1992-03-25' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (4, N'Jsé da S', N'3211-1221', 17, CAST(N'1992-03-25' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (5, N'Jva', N'3211-1221', 17, CAST(N'1992-03-25' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (6, N'Jolva', N'3211-1221', 17, CAST(N'1992-03-25' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (7, N'Josélva', N'3211-1221', 17, CAST(N'1992-03-25' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (8, N'José', N'3211-1221', 17, CAST(N'1992-03-25' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (9, N'Jsé da S', N'3211-1221', 17, CAST(N'1992-03-25' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (10, N'Jva', N'3211-1221', 17, CAST(N'1992-03-25' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (11, N'Jolva', N'3211-1221', 17, CAST(N'1992-03-25' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (12, N'Josélva', N'3211-1221', 17, CAST(N'1992-03-25' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (13, N'José', N'3211-1221', 17, CAST(N'1992-03-25' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (14, N'Jsé da S', N'3211-1221', 17, CAST(N'1992-03-25' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (15, N'Jva', N'3211-1221', 17, CAST(N'1992-03-25' AS Date), 3)
SET IDENTITY_INSERT [dbo].[Aluno] OFF
GO
SET IDENTITY_INSERT [dbo].[Bairro] ON 

INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (31, N'Felizlândia', 7)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (32, N'Felizlândia', 7)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (33, N'Felizlândia', 7)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (34, N'Felizlândia', 7)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (35, N'Felizlândia', 7)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (36, N'Tristelândia', 8)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (37, N'Tristelândia', 8)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (38, N'Tristelândia', 8)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (39, N'Tristelândia', 8)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (40, N'Tristelândia', 8)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (41, N'Raivalândia', 9)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (42, N'Raivalândia', 9)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (43, N'Raivalândia', 9)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (44, N'Raivalândia', 9)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (45, N'Raivalândia', 9)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (46, N'Felizlândia', 10)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (47, N'Felizlândia', 10)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (48, N'Felizlândia', 10)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (49, N'Felizlândia', 10)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (50, N'Felizlândia', 10)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (51, N'Tristelândia', 11)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (52, N'Tristelândia', 11)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (53, N'Tristelândia', 11)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (54, N'Tristelândia', 11)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (55, N'Tristelândia', 11)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (56, N'Raivalândia', 12)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (57, N'Raivalândia', 12)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (58, N'Raivalândia', 12)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (59, N'Raivalândia', 12)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (60, N'Raivalândia', 12)
SET IDENTITY_INSERT [dbo].[Bairro] OFF
GO
SET IDENTITY_INSERT [dbo].[Carro] ON 

INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (1, N'Preto', N'ABC1234', 2020, CAST(90000.00 AS Numeric(10, 2)), 1, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (2, N'Branco', N'DEF5678', 2021, CAST(92000.00 AS Numeric(10, 2)), 1, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (3, N'Prata', N'GHI9012', 2022, CAST(95000.00 AS Numeric(10, 2)), 1, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (4, N'Preto', N'JKL3456', 2020, CAST(75000.00 AS Numeric(10, 2)), 2, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (5, N'Vermelho', N'MNO7890', 2021, CAST(77000.00 AS Numeric(10, 2)), 2, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (6, N'Branco', N'PQR2345', 2022, CAST(79000.00 AS Numeric(10, 2)), 2, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (7, N'Prata', N'STU6789', 2020, CAST(190000.00 AS Numeric(10, 2)), 3, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (8, N'Preto', N'VWX1234', 2021, CAST(195000.00 AS Numeric(10, 2)), 3, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (9, N'Branco', N'YZA5678', 2022, CAST(200000.00 AS Numeric(10, 2)), 3, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (10, N'Azul', N'BCD9012', 2020, CAST(65000.00 AS Numeric(10, 2)), 4, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (11, N'Prata', N'EFG3456', 2021, CAST(68000.00 AS Numeric(10, 2)), 4, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (12, N'Branco', N'HIJ7890', 2022, CAST(70000.00 AS Numeric(10, 2)), 4, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (13, N'Preto', N'KLM2345', 2020, CAST(160000.00 AS Numeric(10, 2)), 5, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (14, N'Vermelho', N'NOP6789', 2021, CAST(165000.00 AS Numeric(10, 2)), 5, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (15, N'Prata', N'QRS1234', 2022, CAST(170000.00 AS Numeric(10, 2)), 5, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (16, N'Prata', N'TUV5678', 2020, CAST(60000.00 AS Numeric(10, 2)), 6, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (17, N'Azul', N'WXY9012', 2021, CAST(62000.00 AS Numeric(10, 2)), 6, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (18, N'Branco', N'ZAB3456', 2022, CAST(64000.00 AS Numeric(10, 2)), 6, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (19, N'Branco', N'CDE7890', 2020, CAST(75000.00 AS Numeric(10, 2)), 7, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (20, N'Preto', N'FGH2345', 2021, CAST(77000.00 AS Numeric(10, 2)), 7, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (21, N'Prata', N'IJK6789', 2022, CAST(80000.00 AS Numeric(10, 2)), 7, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (22, N'Vermelho', N'LMN0123', 2020, CAST(180000.00 AS Numeric(10, 2)), 8, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (23, N'Azul', N'OPQ4567', 2021, CAST(185000.00 AS Numeric(10, 2)), 8, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (24, N'Preto', N'RST8901', 2022, CAST(190000.00 AS Numeric(10, 2)), 8, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (25, N'Cinza', N'UVW2345', 2020, CAST(88000.00 AS Numeric(10, 2)), 9, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (26, N'Preto', N'XYZ6789', 2021, CAST(90000.00 AS Numeric(10, 2)), 9, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (27, N'Branco', N'AAA1111', 2022, CAST(92000.00 AS Numeric(10, 2)), 9, 2)
SET IDENTITY_INSERT [dbo].[Carro] OFF
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([id], [descricao]) VALUES (1, N'Hatch')
INSERT [dbo].[Categoria] ([id], [descricao]) VALUES (2, N'Sedã')
INSERT [dbo].[Categoria] ([id], [descricao]) VALUES (3, N'Picape')
INSERT [dbo].[Categoria] ([id], [descricao]) VALUES (4, N'Utilitário')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Cidade] ON 

INSERT [dbo].[Cidade] ([id], [nome], [estado_id]) VALUES (7, N'Natal', N'RN')
INSERT [dbo].[Cidade] ([id], [nome], [estado_id]) VALUES (8, N'Pernambuco', N'RN')
INSERT [dbo].[Cidade] ([id], [nome], [estado_id]) VALUES (9, N'João Pessoa', N'RN')
INSERT [dbo].[Cidade] ([id], [nome], [estado_id]) VALUES (10, N'Felizinho Town', N'FX')
INSERT [dbo].[Cidade] ([id], [nome], [estado_id]) VALUES (11, N'Tristinho Town', N'FX')
INSERT [dbo].[Cidade] ([id], [nome], [estado_id]) VALUES (12, N'Raivosinho Town', N'FX')
SET IDENTITY_INSERT [dbo].[Cidade] OFF
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON 

INSERT [dbo].[Departamento] ([id], [nome], [nomeDiretor], [ramal]) VALUES (1, N'RH', N'José da Silva', 3001)
INSERT [dbo].[Departamento] ([id], [nome], [nomeDiretor], [ramal]) VALUES (2, N'Financeiro', N'Maria José', 3022)
INSERT [dbo].[Departamento] ([id], [nome], [nomeDiretor], [ramal]) VALUES (3, N'Compras', N'João', 3311)
SET IDENTITY_INSERT [dbo].[Departamento] OFF
GO
INSERT [dbo].[Estado] ([sigla], [nome]) VALUES (N'FX', N'Felix')
INSERT [dbo].[Estado] ([sigla], [nome]) VALUES (N'PB', N'Paraíba')
INSERT [dbo].[Estado] ([sigla], [nome]) VALUES (N'RN', N'Rua Nilo')
GO
SET IDENTITY_INSERT [dbo].[Fabricante] ON 

INSERT [dbo].[Fabricante] ([id], [descricao]) VALUES (1, N'Toyota')
INSERT [dbo].[Fabricante] ([id], [descricao]) VALUES (2, N'Ford')
INSERT [dbo].[Fabricante] ([id], [descricao]) VALUES (3, N'Chevrolet')
SET IDENTITY_INSERT [dbo].[Fabricante] OFF
GO
SET IDENTITY_INSERT [dbo].[Funcionario] ON 

INSERT [dbo].[Funcionario] ([id], [nome], [telefones], [idade], [dataNascimento], [endereco], [departamento_id]) VALUES (1, N'José da Silva', N'3211-1221', 17, CAST(N'1992-03-25' AS Date), N'Rua São José, 1221', 1)
INSERT [dbo].[Funcionario] ([id], [nome], [telefones], [idade], [dataNascimento], [endereco], [departamento_id]) VALUES (2, N'Maria Mariana', NULL, 16, CAST(N'1991-03-01' AS Date), N'Av. Hermes da Fonseca, 121', 1)
INSERT [dbo].[Funcionario] ([id], [nome], [telefones], [idade], [dataNascimento], [endereco], [departamento_id]) VALUES (3, N'Marcos Silva', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Funcionario] ([id], [nome], [telefones], [idade], [dataNascimento], [endereco], [departamento_id]) VALUES (4, N'Ivan Justo', N'3211-8877', 17, CAST(N'2002-08-25' AS Date), N'Rua São João, 21', 2)
INSERT [dbo].[Funcionario] ([id], [nome], [telefones], [idade], [dataNascimento], [endereco], [departamento_id]) VALUES (5, N'Cibele da Silva', NULL, 16, CAST(N'1999-12-25' AS Date), N'Av. Hermes da Fonseca, 121', 2)
INSERT [dbo].[Funcionario] ([id], [nome], [telefones], [idade], [dataNascimento], [endereco], [departamento_id]) VALUES (6, N'Lúcia Gomes', NULL, NULL, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[Funcionario] OFF
GO
SET IDENTITY_INSERT [dbo].[Modelo] ON 

INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (1, N'Corolla', 1)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (2, N'Yaris', 1)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (3, N'Hilux', 1)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (4, N'Fiesta', 2)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (5, N'Ranger', 2)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (6, N'Ka', 2)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (7, N'Onix', 3)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (8, N'S10', 3)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (9, N'Cobalt', 3)
SET IDENTITY_INSERT [dbo].[Modelo] OFF
GO
SET IDENTITY_INSERT [dbo].[Turma] ON 

INSERT [dbo].[Turma] ([id], [nome]) VALUES (1, N'Administração')
INSERT [dbo].[Turma] ([id], [nome]) VALUES (2, N'Infoweb')
INSERT [dbo].[Turma] ([id], [nome]) VALUES (3, N'Manutenção e Suporte')
SET IDENTITY_INSERT [dbo].[Turma] OFF
GO
ALTER TABLE [dbo].[Aluno]  WITH CHECK ADD FOREIGN KEY([turma_id])
REFERENCES [dbo].[Turma] ([id])
GO
ALTER TABLE [dbo].[Bairro]  WITH CHECK ADD FOREIGN KEY([cidade_id])
REFERENCES [dbo].[Cidade] ([id])
GO
ALTER TABLE [dbo].[Carro]  WITH CHECK ADD FOREIGN KEY([categoria_id])
REFERENCES [dbo].[Categoria] ([id])
GO
ALTER TABLE [dbo].[Carro]  WITH CHECK ADD FOREIGN KEY([modelo_id])
REFERENCES [dbo].[Modelo] ([id])
GO
ALTER TABLE [dbo].[Cidade]  WITH CHECK ADD FOREIGN KEY([estado_id])
REFERENCES [dbo].[Estado] ([sigla])
GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD FOREIGN KEY([departamento_id])
REFERENCES [dbo].[Departamento] ([id])
GO
ALTER TABLE [dbo].[Modelo]  WITH CHECK ADD FOREIGN KEY([fabricante_id])
REFERENCES [dbo].[Fabricante] ([id])
GO
