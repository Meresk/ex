CREATE DATABASE [de1];

USE [de1];
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Article] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](300) NOT NULL,
	[Unit] [nvarchar](20) NOT NULL,
	[Price] [decimal](10,2) NOT NULL,
	[Producer] [nvarchar](200) NOT NULL,
	[Manufacturer] [nvarchar](200) NOT NULL,
	[Category] [nvarchar](100) NOT NULL,
	[Discount] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Photo] [nvarchar](250) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 27.11.2025 4:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](100) NOT NULL,
	[FullName] [nvarchar](250) NOT NULL,
	[Login] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (1, N'А112Т4', N'Ботинки', N'шт.', 4990, N'Kari', N'Kari', N'Женская обувь', 3, 6, N'Женские Ботинки демисезонные kari', N'1.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (2, N'F635R4', N'Ботинки', N'шт.', 3244, N'Обувь для вас', N'Marco Tozzi', N'Женская обувь', 2, 13, N'Ботинки Marco Tozzi женские демисезонные, размер 39, цвет бежевый', N'2.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (3, N'H782T5', N'Туфли', N'шт.', 4499, N'Kari', N'Kari', N'Мужская обувь', 4, 5, N'Туфли kari мужские классика MYZ21AW-450A, размер 43, цвет: черный', N'3.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (4, N'G783F5', N'Ботинки', N'шт.', 5900, N'Kari', N'Рос', N'Мужская обувь', 2, 8, N'Мужские ботинки Рос-Обувь кожаные с натуральным мехом', N'4.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (5, N'J384T6', N'Ботинки', N'шт.', 3800, N'Обувь для вас', N'Rieker', N'Мужская обувь', 2, 16, N'B3430/14 Полуботинки мужские Rieker', N'5.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (6, N'D572U8', N'Кроссовки', N'шт.', 4100, N'Обувь для вас', N'Рос', N'Мужская обувь', 3, 6, N'129615-4 Кроссовки мужские', N'6.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (7, N'F572H7', N'Туфли', N'шт.', 2700, N'Kari', N'Marco Tozzi', N'Женская обувь', 2, 14, N'Туфли Marco Tozzi женские летние, размер 39, цвет черный', N'7.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (8, N'D329H3', N'Полуботинки', N'шт.', 1890, N'Обувь для вас', N'Alessio Nesca', N'Женская обувь', 4, 4, N'Полуботинки Alessio Nesca женские 3-30797-47, размер 37, цвет: бордовый', N'8.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (9, N'B320R5', N'Туфли', N'шт.', 4300, N'Kari', N'Rieker', N'Женская обувь', 2, 6, N'Туфли Rieker женские демисезонные, размер 41, цвет коричневый', N'9.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (10, N'G432E4', N'Туфли', N'шт.', 2800, N'Kari', N'Kari', N'Женская обувь', 3, 15, N'Туфли kari женские TR-YR-413017, размер 37, цвет: черный', N'10.jpg')
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (11, N'S213E3', N'Полуботинки', N'шт.', 2156, N'Обувь для вас', N'CROSBY', N'Мужская обувь', 3, 6, N'407700/01-01 Полуботинки мужские CROSBY', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (12, N'E482R4', N'Полуботинки', N'шт.', 1800, N'Kari', N'Kari', N'Женская обувь', 2, 14, N'Полуботинки kari женские MYZ20S-149, размер 41, цвет: черный', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (13, N'S634B5', N'Кеды', N'шт.', 5500, N'Обувь для вас', N'CROSBY', N'Мужская обувь', 3, 0, N'Кеды Caprice мужские демисезонные, размер 42, цвет черный', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (14, N'K345R4', N'Полуботинки', N'шт.', 2100, N'Обувь для вас', N'CROSBY', N'Мужская обувь', 2, 3, N'407700/01-02 Полуботинки мужские CROSBY', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (15, N'O754F4', N'Туфли', N'шт.', 5400, N'Обувь для вас', N'Rieker', N'Женская обувь', 4, 18, N'Туфли женские демисезонные Rieker артикул 55073-68/37', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (16, N'G531F4', N'Ботинки', N'шт.', 6600, N'Kari', N'Kari', N'Женская обувь', 12, 9, N'Ботинки женские зимние ROMER арт. 893167-01 Черный', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (17, N'J542F5', N'Тапочки', N'шт.', 500, N'Kari', N'Kari', N'Мужская обувь', 13, 0, N'Тапочки мужские Арт.70701-55-67син р.41', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (18, N'B431R5', N'Ботинки', N'шт.', 2700, N'Обувь для вас', N'Rieker', N'Мужская обувь', 2, 5, N'Мужские кожаные ботинки/мужские ботинки', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (19, N'P764G4', N'Туфли', N'шт.', 6800, N'Kari', N'CROSBY', N'Женская обувь', 15, 15, N'Туфли женские, ARGO, размер 38', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (20, N'C436G5', N'Ботинки', N'шт.', 10200, N'Kari', N'Alessio Nesca', N'Женская обувь', 15, 9, N'Ботинки женские, ARGO, размер 40', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (21, N'F427R5', N'Ботинки', N'шт.', 11800, N'Обувь для вас', N'Rieker', N'Женская обувь', 15, 11, N'Ботинки на молнии с декоративной пряжкой FRAU', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (22, N'N457T5', N'Полуботинки', N'шт.', 4600, N'Kari', N'CROSBY', N'Женская обувь', 3, 13, N'Полуботинки Ботинки черные зимние, мех', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (23, N'D364R4', N'Туфли', N'шт.', 12400, N'Kari', N'Kari', N'Женская обувь', 16, 5, N'Туфли Luiza Belly женские Kate-lazo черные из натуральной замши', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (24, N'S326R5', N'Тапочки', N'шт.', 9900, N'Обувь для вас', N'CROSBY', N'Мужская обувь', 17, 15, N'Мужские кожаные тапочки "Профиль С.Дали" ', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (25, N'L754R4', N'Полуботинки', N'шт.', 1700, N'Kari', N'Kari', N'Женская обувь', 2, 7, N'Полуботинки kari женские WB2020SS-26, размер 38, цвет: черный', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (26, N'M542T5', N'Кроссовки', N'шт.', 2800, N'Обувь для вас', N'Rieker', N'Мужская обувь', 18, 3, N'Кроссовки мужские TOFA', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (27, N'D268G5', N'Туфли', N'шт.', 4399, N'Обувь для вас', N'Rieker', N'Женская обувь', 3, 12, N'Туфли Rieker женские демисезонные, размер 36, цвет коричневый', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (28, N'T324F5', N'Сапоги', N'шт.', 4699, N'Kari', N'CROSBY', N'Женская обувь', 2, 5, N'Сапоги замша Цвет: синий', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (29, N'K358H6', N'Тапочки', N'шт.', 599, N'Kari', N'Rieker', N'Мужская обувь', 20, 2, N'Тапочки мужские син р.41', NULL)
GO
INSERT [dbo].[Product] ([Id], [Article], [Title], [Unit], [Price], [Producer], [Manufacturer], [Category], [Discount], [Amount], [Description], [Photo]) VALUES (30, N'H535R5', N'Ботинки', N'шт.', 2300, N'Обувь для вас', N'Rieker', N'Женская обувь', 2, 7, N'Женские Ботинки демисезонные', NULL)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (1, N'Администратор', N'Никифорова Весения Николаевна', N'94d5ous@gmail.com', N'uzWC67')
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (2, N'Администратор', N'Сазонов Руслан Германович', N'uth4iz@mail.com', N'2L6KZG')
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (3, N'Администратор', N'Одинцов Серафим Артёмович', N'yzls62@outlook.com', N'JlFRCZ')
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (4, N'Менеджер', N'Степанов Михаил Артёмович', N'1diph5e@tutanota.com', N'8ntwUp')
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (5, N'Менеджер', N'Ворсин Петр Евгеньевич', N'tjde7c@yahoo.com', N'YOyhfR')
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (6, N'Менеджер', N'Старикова Елена Павловна', N'wpmrc3do@tutanota.com', N'RSbvHv')
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (7, N'Авторизированный клиент', N'Михайлюк Анна Вячеславовна', N'5d4zbu@tutanota.com', N'rwVDh9')
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (8, N'Авторизированный клиент', N'Ситдикова Елена Анатольевна', N'ptec8ym@yahoo.com', N'LdNyos')
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (9, N'Авторизированный клиент', N'Ворсин Петр Евгеньевич', N'1qz4kw@mail.com', N'gynQMT')
GO
INSERT [dbo].[User] ([Id], [Role], [FullName], [Login], [Password]) VALUES (10, N'Авторизированный клиент', N'Старикова Елена Павловна', N'4np6se@mail.com', N'AtnDjr')
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
USE [master]
GO

