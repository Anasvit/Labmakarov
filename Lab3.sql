CREATE TABLE [dbo].[Categories](
	[Id] [int] NOT NULL PRIMARY KEY,
	[Name] [nvarchar](255) NULL) 

CREATE TABLE [dbo].[Manufacturers](
	[Id] [int] NOT NULL PRIMARY KEY,
	[Name] [nvarchar](255) NULL)

CREATE TABLE [dbo].[OrderArticle](
	[Id] [int] NOT NULL PRIMARY KEY,
	[OrderId] [int] NULL,
	[Count] [float] NULL,
	[ProductId] [int] NULL)

CREATE TABLE [dbo].[Orders](
	[Id] [int] NOT NULL PRIMARY KEY,
	[Number] [float] NULL,
	[OrderDate] [datetime] NULL,
	[DeliveryDate] [datetime] NULL,
	[PickupPointId] [int] NULL,
	[UserId] [int] NULL,
	[Code] [float] NULL,
	[StatusId] [int] NULL)


CREATE TABLE [dbo].[PickupPoint](
	[Id] [int] NOT NULL PRIMARY KEY,
	[Adress] [nvarchar](255) NULL)

CREATE TABLE [dbo].[ProductNames](
	[Id] [int] NOT NULL PRIMARY KEY,
	[Name] [nvarchar](255) NULL)


CREATE TABLE [dbo].[Products](
	[Id] [int] NOT NULL PRIMARY KEY,
	[Article] [nvarchar](255) NULL,
	[NameId] [int] NULL,
	[Unit] [nvarchar](255) NULL,
	[Price] [float] NULL,
	[SupplierId] [int] NULL,
	[ManufacturerId] [int] NULL,
	[CategoryId] [int] NULL,
	[Discount] [float] NULL,
	[Count] [float] NULL,
	[Description] [nvarchar](255) NULL,
	[ImagePath] [nvarchar](255) NULL)


CREATE TABLE [dbo].[Roles](
	[Id] [int] NOT NULL PRIMARY KEY,
	[Role] [nvarchar](255) NULL)



CREATE TABLE [dbo].[Statuses](
	[Id] [int] NOT NULL PRIMARY KEY,
	[Status] [nvarchar](255) NULL)
 
CREATE TABLE [dbo].[Suppliers](
	[Id] [int] NOT NULL PRIMARY KEY,
	[Name] [nvarchar](255) NULL)


CREATE TABLE [dbo].[Users](
	[Id] [int] NOT NULL PRIMARY KEY,
	[FullName] [nvarchar](255) NULL,
	[Login] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[Role] [int] NULL)

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Общестроительные материалы')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Стеновые и фасадные материалы')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Сухие строительные смеси и гидроизоляция')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Ручной инструмент')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Защита лица, глаз, головы')
INSERT [dbo].[Manufacturers] ([Id], [Name]) VALUES (1, N'М500')
INSERT [dbo].[Manufacturers] ([Id], [Name]) VALUES (2, N'Изостронг')
INSERT [dbo].[Manufacturers] ([Id], [Name]) VALUES (3, N'Knauf')
INSERT [dbo].[Manufacturers] ([Id], [Name]) VALUES (4, N'MixMaster')
INSERT [dbo].[Manufacturers] ([Id], [Name]) VALUES (5, N'ЛСР')
INSERT [dbo].[Manufacturers] ([Id], [Name]) VALUES (6, N'ВОЛМА')
INSERT [dbo].[Manufacturers] ([Id], [Name]) VALUES (7, N'Vinylon')
INSERT [dbo].[Manufacturers] ([Id], [Name]) VALUES (8, N'Павловский завод ')
INSERT [dbo].[Manufacturers] ([Id], [Name]) VALUES (9, N'Weber')
INSERT [dbo].[Manufacturers] ([Id], [Name]) VALUES (10, N'Hesler')
INSERT [dbo].[Manufacturers] ([Id], [Name]) VALUES (11, N'Armero')
INSERT [dbo].[Manufacturers] ([Id], [Name]) VALUES (12, N'Wenzo Roma')
INSERT [dbo].[Manufacturers] ([Id], [Name]) VALUES (13, N'KILIMGRIN')
INSERT [dbo].[Manufacturers] ([Id], [Name]) VALUES (14, N'Исток')
INSERT [dbo].[Manufacturers] ([Id], [Name]) VALUES (15, N'RUIZ')
INSERT [dbo].[Manufacturers] ([Id], [Name]) VALUES (16, N'Husqvarna')
INSERT [dbo].[Manufacturers] ([Id], [Name]) VALUES (17, N'Delta')
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (1, 1, 1, 2)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (2, 2, 3, 1)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (3, 3, 5, 10)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (4, 4, 7, 5)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (5, 5, 9, 2)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (6, 6, 11, 1)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (7, 7, 13, 10)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (8, 8, 15, 5)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (9, 9, 17, 5)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (10, 10, 19, 5)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (11, 1, 2, 2)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (12, 2, 4, 1)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (13, 3, 6, 10)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (14, 4, 8, 4)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (15, 5, 10, 2)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (16, 6, 12, 1)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (17, 7, 14, 10)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (18, 8, 16, 4)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (19, 9, 18, 1)
INSERT [dbo].[OrderArticle] ([Id], [OrderId], [Count], [ProductId]) VALUES (20, 10, 20, 5)
INSERT [dbo].[Orders] ([Id], [Number], [OrderDate], [DeliveryDate], [PickupPointId], [UserId], [Code], [StatusId]) VALUES (1, 1, CAST(N'2025-02-27T00:00:00.000' AS DateTime), CAST(N'2025-04-20T00:00:00.000' AS DateTime), 1, 7, 901, 2)
INSERT [dbo].[Orders] ([Id], [Number], [OrderDate], [DeliveryDate], [PickupPointId], [UserId], [Code], [StatusId]) VALUES (2, 2, CAST(N'2024-09-28T00:00:00.000' AS DateTime), CAST(N'2025-04-21T00:00:00.000' AS DateTime), 11, 8, 902, 2)
INSERT [dbo].[Orders] ([Id], [Number], [OrderDate], [DeliveryDate], [PickupPointId], [UserId], [Code], [StatusId]) VALUES (3, 3, CAST(N'2025-03-21T00:00:00.000' AS DateTime), CAST(N'2025-04-22T00:00:00.000' AS DateTime), 2, 9, 903, 2)
INSERT [dbo].[Orders] ([Id], [Number], [OrderDate], [DeliveryDate], [PickupPointId], [UserId], [Code], [StatusId]) VALUES (4, 4, CAST(N'2025-02-20T00:00:00.000' AS DateTime), CAST(N'2025-04-23T00:00:00.000' AS DateTime), 11, 10, 904, 2)
INSERT [dbo].[Orders] ([Id], [Number], [OrderDate], [DeliveryDate], [PickupPointId], [UserId], [Code], [StatusId]) VALUES (5, 5, CAST(N'2025-03-17T00:00:00.000' AS DateTime), CAST(N'2025-04-24T00:00:00.000' AS DateTime), 2, 7, 905, 2)
INSERT [dbo].[Orders] ([Id], [Number], [OrderDate], [DeliveryDate], [PickupPointId], [UserId], [Code], [StatusId]) VALUES (6, 6, CAST(N'2025-03-01T00:00:00.000' AS DateTime), CAST(N'2025-04-25T00:00:00.000' AS DateTime), 15, 8, 906, 2)
INSERT [dbo].[Orders] ([Id], [Number], [OrderDate], [DeliveryDate], [PickupPointId], [UserId], [Code], [StatusId]) VALUES (7, 7, CAST(N'2025-03-31T00:00:00.000' AS DateTime), CAST(N'2025-04-26T00:00:00.000' AS DateTime), 3, 9, 907, 2)
INSERT [dbo].[Orders] ([Id], [Number], [OrderDate], [DeliveryDate], [PickupPointId], [UserId], [Code], [StatusId]) VALUES (8, 8, CAST(N'2025-03-31T00:00:00.000' AS DateTime), CAST(N'2025-04-27T00:00:00.000' AS DateTime), 19, 10, 908, 1)
INSERT [dbo].[Orders] ([Id], [Number], [OrderDate], [DeliveryDate], [PickupPointId], [UserId], [Code], [StatusId]) VALUES (9, 9, CAST(N'2025-04-02T00:00:00.000' AS DateTime), CAST(N'2025-04-28T00:00:00.000' AS DateTime), 5, 9, 909, 1)
INSERT [dbo].[Orders] ([Id], [Number], [OrderDate], [DeliveryDate], [PickupPointId], [UserId], [Code], [StatusId]) VALUES (10, 10, CAST(N'2025-04-03T00:00:00.000' AS DateTime), CAST(N'2025-04-29T00:00:00.000' AS DateTime), 19, 10, 910, 1)
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (1, N'420151, г. Лесной, ул. Вишневая, 32')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (2, N'125061, г. Лесной, ул. Подгорная, 8')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (3, N'630370, г. Лесной, ул. Шоссейная, 24')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (4, N'400562, г. Лесной, ул. Зеленая, 32')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (5, N'614510, г. Лесной, ул. Маяковского, 47')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (6, N'410542, г. Лесной, ул. Светлая, 46')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (7, N'620839, г. Лесной, ул. Цветочная, 8')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (8, N'443890, г. Лесной, ул. Коммунистическая, 1')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (9, N'603379, г. Лесной, ул. Спортивная, 46')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (10, N'603721, г. Лесной, ул. Гоголя, 41')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (11, N'410172, г. Лесной, ул. Северная, 13')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (12, N'614611, г. Лесной, ул. Молодежная, 50')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (13, N'454311, г.Лесной, ул. Новая, 19')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (14, N'660007, г.Лесной, ул. Октябрьская, 19')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (15, N'603036, г. Лесной, ул. Садовая, 4')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (16, N'394060, г.Лесной, ул. Фрунзе, 43')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (17, N'410661, г. Лесной, ул. Школьная, 50')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (18, N'625590, г. Лесной, ул. Коммунистическая, 20')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (19, N'625683, г. Лесной, ул. 8 Марта')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (20, N'450983, г.Лесной, ул. Комсомольская, 26')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (21, N'394782, г. Лесной, ул. Чехова, 3')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (22, N'603002, г. Лесной, ул. Дзержинского, 28')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (23, N'450558, г. Лесной, ул. Набережная, 30')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (24, N'344288, г. Лесной, ул. Чехова, 1')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (25, N'614164, г.Лесной,  ул. Степная, 30')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (26, N'394242, г. Лесной, ул. Коммунистическая, 43')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (27, N'660540, г. Лесной, ул. Солнечная, 25')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (28, N'125837, г. Лесной, ул. Шоссейная, 40')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (29, N'125703, г. Лесной, ул. Партизанская, 49')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (30, N'625283, г. Лесной, ул. Победы, 46')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (31, N'614753, г. Лесной, ул. Полевая, 35')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (32, N'426030, г. Лесной, ул. Маяковского, 44')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (33, N'450375, г. Лесной ул. Клубная, 44')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (34, N'625560, г. Лесной, ул. Некрасова, 12')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (35, N'630201, г. Лесной, ул. Комсомольская, 17')
INSERT [dbo].[PickupPoint] ([Id], [Adress]) VALUES (36, N'190949, г. Лесной, ул. Мичурина, 26')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (1, N'Цемент')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (2, N'Пленка техническая')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (3, N'Песок строительный')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (4, N'Керамзит фракция')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (5, N'Газобетон')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (6, N'Пазогребневая плита ')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (7, N'Угол наружный')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (8, N'Кирпич')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (9, N'Скоба для пазогребневой плиты')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (10, N'Штукатурка гипсовая')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (11, N'Шпаклевка')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (12, N'Клей для плитки, керамогранита и камня')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (13, N'Смесь цементно-песчаная')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (14, N'Ровнитель')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (15, N'Лезвие для ножа ')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (16, N'Шпатель')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (17, N'Нож строительный ')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (18, N'Валик')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (19, N'Кисть')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (20, N'Очки защитные')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (21, N'Каска защитная ')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (22, N'Очки защитные ')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (23, N'Маска защитная')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (24, N'Подшлемник')
INSERT [dbo].[ProductNames] ([Id], [Name]) VALUES (25, N'Каска защитная')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (1, N'PMEZMH', 1, N'1', 440, 1, 1, 1, 8, 34, N'Цемент Евроцемент М500 Д0 ЦЕМ I 42,5 50 кг', N'PMEZMH.jpg')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (2, N'BPV4MM', 2, N'1', 8, 2, 2, 1, 8, 2, N'Пленка техническая полиэтиленовая Изостронг 60 мк 3 м рукав 1,5 м, пог.м', N'BPV4MM.jpg')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (3, N'JVL42J', 2, N'1', 13, 2, 2, 1, 4, 34, N'Пленка техническая полиэтиленовая Изостронг 100 мк 3 м рукав 1,5 м, пог.м', N'JVL42J.jpg')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (4, N'F895RB', 3, N'1', 102, 3, 3, 1, 6, 7, N'Песок строительный 50 кг', N'F895RB.jpg')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (5, N'3XBOTN', 4, N'1', 110, 4, 4, 1, 5, 21, N'Керамзит фракция 10-20 мм 0,05 куб.м', N'3XBOTN.jpg')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (6, N'3L7RCZ', 5, N'1', 7400, 5, 5, 2, 2, 20, N'Газобетон ЛСР 100х250х625 мм D400', N'3L7RCZ.jpg')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (7, N'S72AM3', 6, N'1', 500, 6, 6, 2, 5, 35, N'Пазогребневая плита ВОЛМА Гидро 667х500х80 мм полнотелая', N'S72AM3.jpg')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (8, N'2G3280', 7, N'1', 795, 7, 7, 2, 9, 20, N'Угол наружный Vinylon 3050 мм серо-голубой', N'2G3280.jpg')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (9, N'MIO8YV', 8, N'1', 30, 6, 6, 2, 9, 31, N'Кирпич рядовой Боровичи полнотелый М150 250х120х65 мм 1NF', N'MIO8YV.jpg')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (10, N'UER2QD', 9, N'1', 25, 3, 3, 2, 8, 27, N'Скоба для пазогребневой плиты Knauf С1 120х100 мм', N'UER2QD.jpg')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (11, N'ZR70B4', 8, N'1', 16, 8, 8, 2, 3, 0, N'Кирпич рядовой силикатный Павловский завод полнотелый М200 250х120х65 мм 1NF', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (12, N'LPDDM4', 10, N'1', 500, 3, 3, 3, 6, 38, N'Штукатурка гипсовая Knauf Ротбанд 30 кг', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (13, N'LQ48MW', 10, N'1', 462, 9, 9, 3, 6, 33, N'Штукатурка гипсовая Knauf МП-75 машинная 30 кг', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (14, N'O43COU', 11, N'1', 750, 6, 6, 3, 1, 16, N'Шпаклевка полимерная Weber.vetonit LR + для сухих помещений белая 20 кг', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (15, N'M26EXW', 12, N'1', 340, 3, 3, 3, 8, 0, N'Клей для плитки, керамогранита и камня Крепс Усиленный серый (класс С1) 25 кг', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (16, N'K0YACK', 13, N'1', 160, 4, 4, 3, 8, 19, N'Смесь цементно-песчаная (ЦПС) 300 по ТУ MixMaster Универсал 25 кг', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (17, N'ASPXSG', 14, N'1', 711, 9, 9, 3, 10, 20, N'Ровнитель (наливной пол) финишный Weber.vetonit 4100 самовыравнивающийся высокопрочный 20 кг', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (18, N'ZKQ5FF', 15, N'1', 65, 10, 10, 4, 6, 6, N'Лезвие для ножа Hesler 18 мм прямое (10 шт.)', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (19, N'4WZEOT', 15, N'1', 110, 11, 11, 4, 6, 17, N'Лезвие для ножа Armero 18 мм прямое (10 шт.)', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (20, N'4JR1HN', 16, N'1', 26, 10, 10, 4, 6, 7, N'Шпатель малярный 100 мм с пластиковой ручкой', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (21, N'Z3XFSP', 17, N'1', 63, 10, 10, 4, 8, 5, N'Нож строительный Hesler 18 мм с ломающимся лезвием пластиковый корпус', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (22, N'I6MH89', 18, N'1', 326, 12, 12, 4, 12, 3, N'Валик Wenzo Roma полиакрил 250 мм ворс 18 мм для красок грунтов и антисептиков на водной основе с рукояткой', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (23, N'83M5ME', 19, N'1', 122, 11, 11, 4, 9, 26, N'Кисть плоская смешанная щетина 100х12 мм для красок и антисептиков на водной основе', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (24, N'61PGH3', 20, N'1', 184, 13, 13, 5, 6, 25, N'Очки защитные Delta Plus KILIMANDJARO (KILIMGRIN) открытые с прозрачными линзами', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (25, N'GN6ICZ', 21, N'1', 154, 14, 14, 5, 15, 8, N'Каска защитная Исток (КАС001О) оранжевая', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (26, N'Z3LO0U', 22, N'1', 228, 15, 15, 5, 9, 11, N'Очки защитные Delta Plus RUIZ (RUIZ1VI) закрытые с прозрачными линзами', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (27, N'QHNOKR', 23, N'1', 251, 14, 14, 5, 2, 22, N'Маска защитная Исток (ЩИТ001) ударопрочная и термостойкая', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (28, N'EQ6RKO', 24, N'1', 36, 16, 16, 5, 17, 22, N'Подшлемник для каски одноразовый', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (29, N'81F1WG', 25, N'1', 1500, 17, 17, 5, 2, 13, N'Каска защитная Delta Plus BASEBALL DIAMOND V UP (DIAM5UPBCFLBS) белая', N'')
INSERT [dbo].[Products] ([Id], [Article], [NameId], [Unit], [Price], [SupplierId], [ManufacturerId], [CategoryId], [Discount], [Count], [Description], [ImagePath]) VALUES (30, N'0YGHZ7', 22, N'1', 700, 16, 16, 5, 9, 36, N'Очки защитные Husqvarna Clear (5449638-01) открытые с прозрачными линзами', N'')
INSERT [dbo].[Roles] ([Id], [Role]) VALUES (1, N'Администратор')
INSERT [dbo].[Roles] ([Id], [Role]) VALUES (2, N'Менеджер')
INSERT [dbo].[Roles] ([Id], [Role]) VALUES (3, N'Авторизированный клиент')
INSERT [dbo].[Statuses] ([Id], [Status]) VALUES (1, N'Новый ')
INSERT [dbo].[Statuses] ([Id], [Status]) VALUES (2, N'Завершен')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (1, N'М500')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (2, N'Изостронг')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (3, N'Knauf')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (4, N'MixMaster')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (5, N'ЛСР')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (6, N'ВОЛМА')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (7, N'Vinylon')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (8, N'Павловский завод ')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (9, N'Weber')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (10, N'Hesler')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (11, N'Armero')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (12, N'Wenzo Roma')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (13, N'KILIMGRIN')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (14, N'Исток')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (15, N'RUIZ')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (16, N'Husqvarna')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (17, N'Delta')
INSERT [dbo].[Users] ([Id], [FullName], [Login], [Password], [Role]) VALUES (1, N'Ворсин Петр Евгеньевич', N'94d5ous@gmail.com', N'uzWC67', 1)
INSERT [dbo].[Users] ([Id], [FullName], [Login], [Password], [Role]) VALUES (2, N'Старикова Елена Павловна', N'uth4iz@mail.com', N'2L6KZG', 1)
INSERT [dbo].[Users] ([Id], [FullName], [Login], [Password], [Role]) VALUES (3, N'Одинцов Серафим Артёмович', N'yzls62@outlook.com', N'JlFRCZ', 1)
INSERT [dbo].[Users] ([Id], [FullName], [Login], [Password], [Role]) VALUES (4, N'Степанов Михаил Артёмович', N'1diph5e@tutanota.com', N'8ntwUp', 2)
INSERT [dbo].[Users] ([Id], [FullName], [Login], [Password], [Role]) VALUES (5, N'Ворсин Петр Евгеньевич', N'tjde7c@yahoo.com', N'YOyhfR', 2)
INSERT [dbo].[Users] ([Id], [FullName], [Login], [Password], [Role]) VALUES (6, N'Старикова Елена Павловна', N'wpmrc3do@tutanota.com', N'RSbvHv', 2)
INSERT [dbo].[Users] ([Id], [FullName], [Login], [Password], [Role]) VALUES (7, N'Михайлюк Анна Вячеславовна', N'5d4zbu@tutanota.com', N'rwVDh9', 3)
INSERT [dbo].[Users] ([Id], [FullName], [Login], [Password], [Role]) VALUES (8, N'Ситдикова Елена Анатольевна', N'ptec8ym@yahoo.com', N'LdNyos', 3)
INSERT [dbo].[Users] ([Id], [FullName], [Login], [Password], [Role]) VALUES (9, N'Никифорова Весения Николаевна', N'1qz4kw@mail.com', N'gynQMT', 3)
INSERT [dbo].[Users] ([Id], [FullName], [Login], [Password], [Role]) VALUES (10, N'Сазонов Руслан Германович', N'4np6se@mail.com', N'AtnDjr', 3)

ALTER TABLE [dbo].[OrderArticle]  WITH CHECK ADD  CONSTRAINT [FK_OrdersArticle_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ALTER TABLE [dbo].[OrderArticle] CHECK CONSTRAINT [FK_OrdersArticle_Orders]
ALTER TABLE [dbo].[OrderArticle]  WITH CHECK ADD  CONSTRAINT [FK_OrdersArticle_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ALTER TABLE [dbo].[OrderArticle] CHECK CONSTRAINT [FK_OrdersArticle_Products]
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_PickupPoints] FOREIGN KEY([PickupPointId])
REFERENCES [dbo].[PickupPoint] ([Id])
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_PickupPoints]
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Statuses] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Statuses] ([Id])
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Statuses]
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Manufacturers] FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Manufacturers] ([Id])
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Manufacturers]
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductNames] FOREIGN KEY([NameId])
REFERENCES [dbo].[ProductNames] ([Id])
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductNames]
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([Id])
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserRoles] FOREIGN KEY([Role])
REFERENCES [dbo].[Roles] ([Id])
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserRoles]