USE [учебная_NDA_test]
GO
/****** Object:  Table [dbo].[Измерения]    Script Date: 21.05.2025 11:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Измерения](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[давление] [int] NOT NULL,
	[описание] [nvarchar](max) NOT NULL,
	[абсолютная_высота] [int] NOT NULL,
	[расстояние] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[координаты_площади]    Script Date: 21.05.2025 11:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[координаты_площади](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_площади] [int] NOT NULL,
	[x] [int] NOT NULL,
	[y] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[координаты_профиля]    Script Date: 21.05.2025 11:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[координаты_профиля](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_площади] [int] NOT NULL,
	[x] [int] NOT NULL,
	[y] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Площадь]    Script Date: 21.05.2025 11:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Площадь](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[координаты] [int] NOT NULL,
	[площадь] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пользователь]    Script Date: 21.05.2025 11:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пользователь](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[тип_пользователя] [nvarchar](max) NOT NULL,
	[ФИО] [nvarchar](max) NOT NULL,
	[пароль] [nvarchar](max) NOT NULL,
	[емайл] [nvarchar](max) NOT NULL,
	[телефон] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Проект]    Script Date: 21.05.2025 11:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Проект](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[дата_начала] [date] NOT NULL,
	[дата_конца] [date] NOT NULL,
	[цена] [int] NOT NULL,
	[название] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Профиль]    Script Date: 21.05.2025 11:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Профиль](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[длина] [int] NOT NULL,
	[высота] [int] NOT NULL,
	[описание] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пункты_наблюд]    Script Date: 21.05.2025 11:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пункты_наблюд](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[x] [int] NOT NULL,
	[y] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[список_измерений]    Script Date: 21.05.2025 11:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[список_измерений](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_пункта] [int] NOT NULL,
	[id_измерения] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[список_площадей]    Script Date: 21.05.2025 11:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[список_площадей](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_проекта] [int] NOT NULL,
	[id_площади] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[список_профилей]    Script Date: 21.05.2025 11:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[список_профилей](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_площади] [int] NOT NULL,
	[id_профиля] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[список_пунктов]    Script Date: 21.05.2025 11:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[список_пунктов](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_профиля] [int] NOT NULL,
	[id_пункта] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[список_участников]    Script Date: 21.05.2025 11:25:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[список_участников](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_проекта] [int] NOT NULL,
	[id_пользователя] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Измерения] ON 

INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (1, 100, N'Измерение 1', 1000, 50)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (2, 110, N'Измерение 2', 1010, 55)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (3, 120, N'Измерение 3', 1020, 60)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (4, 130, N'Измерение 4', 1030, 65)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (5, 140, N'Измерение 5', 1040, 70)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (6, 150, N'Измерение 6', 1050, 75)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (7, 160, N'Измерение 7', 1060, 80)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (8, 170, N'Измерение 8', 1070, 85)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (9, 180, N'Измерение 9', 1080, 90)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (10, 190, N'Измерение 10', 1090, 95)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (11, 200, N'Измерение 11', 1100, 100)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (12, 210, N'Измерение 12', 1110, 105)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (13, 220, N'Измерение 13', 1120, 110)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (14, 230, N'Измерение 14', 1130, 115)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (15, 240, N'Измерение 15', 1140, 120)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (16, 250, N'Измерение 16', 1150, 125)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (17, 260, N'Измерение 17', 1160, 130)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (18, 270, N'Измерение 18', 1170, 135)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (19, 280, N'Измерение 19', 1180, 140)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (20, 290, N'Измерение 20', 1190, 145)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (21, 300, N'Измерение 21', 1200, 150)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (22, 310, N'Измерение 22', 1210, 155)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (23, 320, N'Измерение 23', 1220, 160)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (24, 330, N'Измерение 24', 1230, 165)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (25, 340, N'Измерение 25', 1240, 170)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (26, 350, N'Измерение 26', 1250, 175)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (27, 360, N'Измерение 27', 1260, 180)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (28, 370, N'Измерение 28', 1270, 185)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (29, 380, N'Измерение 29', 1280, 190)
INSERT [dbo].[Измерения] ([id], [давление], [описание], [абсолютная_высота], [расстояние]) VALUES (30, 390, N'Измерение 30', 1290, 195)
SET IDENTITY_INSERT [dbo].[Измерения] OFF
GO
SET IDENTITY_INSERT [dbo].[координаты_площади] ON 

INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (1, 1, 0, 0)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (2, 1, 0, 10)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (3, 1, 10, 10)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (4, 1, 10, 0)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (5, 2, 0, 0)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (6, 2, 0, 10)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (7, 2, 10, 10)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (8, 2, 10, 0)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (9, 3, 0, 0)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (10, 3, 0, 10)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (11, 3, 10, 10)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (12, 3, 10, 0)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (13, 4, 0, 0)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (14, 4, 0, 10)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (15, 4, 10, 10)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (16, 4, 10, 0)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (17, 5, 0, 0)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (18, 5, 0, 10)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (19, 5, 10, 10)
INSERT [dbo].[координаты_площади] ([id], [id_площади], [x], [y]) VALUES (20, 5, 10, 0)
SET IDENTITY_INSERT [dbo].[координаты_площади] OFF
GO
SET IDENTITY_INSERT [dbo].[координаты_профиля] ON 

INSERT [dbo].[координаты_профиля] ([id], [id_площади], [x], [y]) VALUES (1, 1, 0, 0)
INSERT [dbo].[координаты_профиля] ([id], [id_площади], [x], [y]) VALUES (2, 1, 10, 10)
INSERT [dbo].[координаты_профиля] ([id], [id_площади], [x], [y]) VALUES (3, 1, 10, 0)
INSERT [dbo].[координаты_профиля] ([id], [id_площади], [x], [y]) VALUES (4, 2, 0, 0)
INSERT [dbo].[координаты_профиля] ([id], [id_площади], [x], [y]) VALUES (5, 2, 10, 10)
INSERT [dbo].[координаты_профиля] ([id], [id_площади], [x], [y]) VALUES (6, 2, 10, 0)
INSERT [dbo].[координаты_профиля] ([id], [id_площади], [x], [y]) VALUES (7, 3, 0, 0)
INSERT [dbo].[координаты_профиля] ([id], [id_площади], [x], [y]) VALUES (8, 3, 10, 10)
INSERT [dbo].[координаты_профиля] ([id], [id_площади], [x], [y]) VALUES (9, 3, 10, 0)
INSERT [dbo].[координаты_профиля] ([id], [id_площади], [x], [y]) VALUES (10, 4, 0, 0)
INSERT [dbo].[координаты_профиля] ([id], [id_площади], [x], [y]) VALUES (11, 4, 10, 10)
INSERT [dbo].[координаты_профиля] ([id], [id_площади], [x], [y]) VALUES (12, 4, 10, 10)
INSERT [dbo].[координаты_профиля] ([id], [id_площади], [x], [y]) VALUES (13, 5, 10, 0)
INSERT [dbo].[координаты_профиля] ([id], [id_площади], [x], [y]) VALUES (14, 5, 10, 5)
INSERT [dbo].[координаты_профиля] ([id], [id_площади], [x], [y]) VALUES (15, 5, 10, 10)
SET IDENTITY_INSERT [dbo].[координаты_профиля] OFF
GO
SET IDENTITY_INSERT [dbo].[Площадь] ON 

INSERT [dbo].[Площадь] ([id], [координаты], [площадь]) VALUES (1, 100, 500)
INSERT [dbo].[Площадь] ([id], [координаты], [площадь]) VALUES (2, 200, 600)
INSERT [dbo].[Площадь] ([id], [координаты], [площадь]) VALUES (3, 300, 700)
INSERT [dbo].[Площадь] ([id], [координаты], [площадь]) VALUES (4, 400, 800)
INSERT [dbo].[Площадь] ([id], [координаты], [площадь]) VALUES (5, 500, 900)
SET IDENTITY_INSERT [dbo].[Площадь] OFF
GO
SET IDENTITY_INSERT [dbo].[Пользователь] ON 

INSERT [dbo].[Пользователь] ([id], [тип_пользователя], [ФИО], [пароль], [емайл], [телефон]) VALUES (1, N'Админ', N'Иванов Иван Иванович', N'ss11', N'ivanov@example.com', 123456789)
INSERT [dbo].[Пользователь] ([id], [тип_пользователя], [ФИО], [пароль], [емайл], [телефон]) VALUES (2, N'Работник', N'Петров Петр Петрович', N'ss12', N'petrov@example.com', 987654321)
INSERT [dbo].[Пользователь] ([id], [тип_пользователя], [ФИО], [пароль], [емайл], [телефон]) VALUES (3, N'asf', N'Age', N'pass', N'Ageenko', 1232134)
SET IDENTITY_INSERT [dbo].[Пользователь] OFF
GO
SET IDENTITY_INSERT [dbo].[Проект] ON 

INSERT [dbo].[Проект] ([id], [дата_начала], [дата_конца], [цена], [название]) VALUES (1, CAST(N'2023-01-01' AS Date), CAST(N'2023-06-01' AS Date), 10000, N'Проект А')
INSERT [dbo].[Проект] ([id], [дата_начала], [дата_конца], [цена], [название]) VALUES (2, CAST(N'2023-02-01' AS Date), CAST(N'2023-07-01' AS Date), 20000, N'Проект Б')
SET IDENTITY_INSERT [dbo].[Проект] OFF
GO
SET IDENTITY_INSERT [dbo].[Профиль] ON 

INSERT [dbo].[Профиль] ([id], [длина], [высота], [описание]) VALUES (1, 10, 20, N'Профиль 1')
INSERT [dbo].[Профиль] ([id], [длина], [высота], [описание]) VALUES (2, 15, 25, N'Профиль 2')
INSERT [dbo].[Профиль] ([id], [длина], [высота], [описание]) VALUES (3, 20, 30, N'Профиль 3')
INSERT [dbo].[Профиль] ([id], [длина], [высота], [описание]) VALUES (4, 25, 35, N'Профиль 4')
INSERT [dbo].[Профиль] ([id], [длина], [высота], [описание]) VALUES (5, 30, 40, N'Профиль 5')
INSERT [dbo].[Профиль] ([id], [длина], [высота], [описание]) VALUES (6, 35, 45, N'Профиль 6')
INSERT [dbo].[Профиль] ([id], [длина], [высота], [описание]) VALUES (7, 40, 50, N'Профиль 7')
INSERT [dbo].[Профиль] ([id], [длина], [высота], [описание]) VALUES (8, 45, 55, N'Профиль 8')
INSERT [dbo].[Профиль] ([id], [длина], [высота], [описание]) VALUES (9, 50, 60, N'Профиль 9')
INSERT [dbo].[Профиль] ([id], [длина], [высота], [описание]) VALUES (10, 55, 65, N'Профиль 10')
SET IDENTITY_INSERT [dbo].[Профиль] OFF
GO
SET IDENTITY_INSERT [dbo].[Пункты_наблюд] ON 

INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (1, 10, 20)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (2, 15, 25)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (3, 20, 30)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (4, 25, 35)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (5, 30, 40)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (6, 35, 45)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (7, 40, 50)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (8, 45, 55)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (9, 50, 60)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (10, 55, 65)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (11, 60, 70)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (12, 65, 75)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (13, 70, 80)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (14, 75, 85)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (15, 80, 90)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (16, 85, 95)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (17, 90, 100)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (18, 95, 105)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (19, 100, 110)
INSERT [dbo].[Пункты_наблюд] ([id], [x], [y]) VALUES (20, 105, 115)
SET IDENTITY_INSERT [dbo].[Пункты_наблюд] OFF
GO
SET IDENTITY_INSERT [dbo].[список_измерений] ON 

INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (1, 1, 1)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (2, 1, 2)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (3, 1, 3)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (4, 1, 4)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (5, 1, 5)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (6, 2, 6)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (7, 2, 7)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (8, 2, 8)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (9, 2, 9)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (10, 2, 10)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (11, 3, 11)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (12, 3, 12)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (13, 3, 13)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (14, 3, 14)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (15, 3, 15)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (16, 4, 16)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (17, 4, 17)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (18, 4, 18)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (19, 4, 19)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (20, 4, 20)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (21, 5, 21)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (22, 5, 22)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (23, 5, 23)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (24, 5, 24)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (25, 5, 25)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (26, 6, 26)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (27, 6, 27)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (28, 6, 28)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (29, 6, 29)
INSERT [dbo].[список_измерений] ([id], [id_пункта], [id_измерения]) VALUES (30, 6, 30)
SET IDENTITY_INSERT [dbo].[список_измерений] OFF
GO
SET IDENTITY_INSERT [dbo].[список_площадей] ON 

INSERT [dbo].[список_площадей] ([id], [id_проекта], [id_площади]) VALUES (1, 1, 1)
INSERT [dbo].[список_площадей] ([id], [id_проекта], [id_площади]) VALUES (2, 1, 2)
INSERT [dbo].[список_площадей] ([id], [id_проекта], [id_площади]) VALUES (3, 1, 3)
INSERT [dbo].[список_площадей] ([id], [id_проекта], [id_площади]) VALUES (4, 2, 4)
INSERT [dbo].[список_площадей] ([id], [id_проекта], [id_площади]) VALUES (5, 2, 5)
SET IDENTITY_INSERT [dbo].[список_площадей] OFF
GO
SET IDENTITY_INSERT [dbo].[список_профилей] ON 

INSERT [dbo].[список_профилей] ([id], [id_площади], [id_профиля]) VALUES (1, 1, 1)
INSERT [dbo].[список_профилей] ([id], [id_площади], [id_профиля]) VALUES (2, 1, 2)
INSERT [dbo].[список_профилей] ([id], [id_площади], [id_профиля]) VALUES (3, 1, 3)
INSERT [dbo].[список_профилей] ([id], [id_площади], [id_профиля]) VALUES (4, 1, 4)
INSERT [dbo].[список_профилей] ([id], [id_площади], [id_профиля]) VALUES (5, 1, 5)
INSERT [dbo].[список_профилей] ([id], [id_площади], [id_профиля]) VALUES (6, 2, 6)
INSERT [dbo].[список_профилей] ([id], [id_площади], [id_профиля]) VALUES (7, 2, 7)
INSERT [dbo].[список_профилей] ([id], [id_площади], [id_профиля]) VALUES (8, 2, 8)
INSERT [dbo].[список_профилей] ([id], [id_площади], [id_профиля]) VALUES (9, 2, 9)
INSERT [dbo].[список_профилей] ([id], [id_площади], [id_профиля]) VALUES (10, 2, 10)
SET IDENTITY_INSERT [dbo].[список_профилей] OFF
GO
SET IDENTITY_INSERT [dbo].[список_пунктов] ON 

INSERT [dbo].[список_пунктов] ([id], [id_профиля], [id_пункта]) VALUES (1, 1, 1)
INSERT [dbo].[список_пунктов] ([id], [id_профиля], [id_пункта]) VALUES (2, 1, 2)
INSERT [dbo].[список_пунктов] ([id], [id_профиля], [id_пункта]) VALUES (3, 2, 3)
INSERT [dbo].[список_пунктов] ([id], [id_профиля], [id_пункта]) VALUES (4, 2, 4)
INSERT [dbo].[список_пунктов] ([id], [id_профиля], [id_пункта]) VALUES (5, 3, 5)
INSERT [dbo].[список_пунктов] ([id], [id_профиля], [id_пункта]) VALUES (6, 3, 6)
INSERT [dbo].[список_пунктов] ([id], [id_профиля], [id_пункта]) VALUES (7, 4, 7)
INSERT [dbo].[список_пунктов] ([id], [id_профиля], [id_пункта]) VALUES (8, 4, 8)
INSERT [dbo].[список_пунктов] ([id], [id_профиля], [id_пункта]) VALUES (9, 5, 9)
INSERT [dbo].[список_пунктов] ([id], [id_профиля], [id_пункта]) VALUES (10, 5, 10)
SET IDENTITY_INSERT [dbo].[список_пунктов] OFF
GO
SET IDENTITY_INSERT [dbo].[список_участников] ON 

INSERT [dbo].[список_участников] ([id], [id_проекта], [id_пользователя]) VALUES (1, 1, 1)
INSERT [dbo].[список_участников] ([id], [id_проекта], [id_пользователя]) VALUES (2, 1, 2)
INSERT [dbo].[список_участников] ([id], [id_проекта], [id_пользователя]) VALUES (3, 2, 1)
INSERT [dbo].[список_участников] ([id], [id_проекта], [id_пользователя]) VALUES (4, 2, 2)
SET IDENTITY_INSERT [dbo].[список_участников] OFF
GO
ALTER TABLE [dbo].[координаты_площади]  WITH CHECK ADD FOREIGN KEY([id_площади])
REFERENCES [dbo].[Площадь] ([id])
GO
ALTER TABLE [dbo].[координаты_профиля]  WITH CHECK ADD FOREIGN KEY([id_площади])
REFERENCES [dbo].[Площадь] ([id])
GO
ALTER TABLE [dbo].[список_измерений]  WITH CHECK ADD FOREIGN KEY([id_измерения])
REFERENCES [dbo].[Измерения] ([id])
GO
ALTER TABLE [dbo].[список_измерений]  WITH CHECK ADD FOREIGN KEY([id_пункта])
REFERENCES [dbo].[Пункты_наблюд] ([id])
GO
ALTER TABLE [dbo].[список_площадей]  WITH CHECK ADD FOREIGN KEY([id_площади])
REFERENCES [dbo].[Площадь] ([id])
GO
ALTER TABLE [dbo].[список_площадей]  WITH CHECK ADD FOREIGN KEY([id_проекта])
REFERENCES [dbo].[Проект] ([id])
GO
ALTER TABLE [dbo].[список_профилей]  WITH CHECK ADD FOREIGN KEY([id_площади])
REFERENCES [dbo].[Площадь] ([id])
GO
ALTER TABLE [dbo].[список_профилей]  WITH CHECK ADD FOREIGN KEY([id_профиля])
REFERENCES [dbo].[Профиль] ([id])
GO
ALTER TABLE [dbo].[список_пунктов]  WITH CHECK ADD FOREIGN KEY([id_профиля])
REFERENCES [dbo].[Профиль] ([id])
GO
ALTER TABLE [dbo].[список_пунктов]  WITH CHECK ADD FOREIGN KEY([id_пункта])
REFERENCES [dbo].[Пункты_наблюд] ([id])
GO
ALTER TABLE [dbo].[список_участников]  WITH CHECK ADD FOREIGN KEY([id_пользователя])
REFERENCES [dbo].[Пользователь] ([id])
GO
ALTER TABLE [dbo].[список_участников]  WITH CHECK ADD FOREIGN KEY([id_проекта])
REFERENCES [dbo].[Проект] ([id])
GO
