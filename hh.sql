USE [master]
GO
/****** Object:  Database [UBER_EATS]    Script Date: 12/12/2020 20:11:11 ******/
CREATE DATABASE [UBER_EATS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UBER_EATS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\UBER_EATS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UBER_EATS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\UBER_EATS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [UBER_EATS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UBER_EATS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UBER_EATS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UBER_EATS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UBER_EATS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UBER_EATS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UBER_EATS] SET ARITHABORT OFF 
GO
ALTER DATABASE [UBER_EATS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UBER_EATS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UBER_EATS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UBER_EATS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UBER_EATS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UBER_EATS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UBER_EATS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UBER_EATS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UBER_EATS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UBER_EATS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [UBER_EATS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UBER_EATS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UBER_EATS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UBER_EATS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UBER_EATS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UBER_EATS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UBER_EATS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UBER_EATS] SET RECOVERY FULL 
GO
ALTER DATABASE [UBER_EATS] SET  MULTI_USER 
GO
ALTER DATABASE [UBER_EATS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UBER_EATS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UBER_EATS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UBER_EATS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UBER_EATS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'UBER_EATS', N'ON'
GO
ALTER DATABASE [UBER_EATS] SET QUERY_STORE = OFF
GO
USE [UBER_EATS]
GO
/****** Object:  Table [dbo].[ADMINISTRADOR]    Script Date: 12/12/2020 20:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMINISTRADOR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CORREO] [varchar](100) NOT NULL,
	[CONTRASEÑA] [varchar](130) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 12/12/2020 20:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[ID] [int] NOT NULL,
	[TELEFONO] [varchar](15) NOT NULL,
	[NOMBRE] [varchar](100) NOT NULL,
	[EMAIL] [varchar](200) NOT NULL,
	[FECHA_DE_INGRESO] [datetime] NOT NULL,
	[PERFIL] [varchar](400) NOT NULL,
	[Password] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIRECCION]    Script Date: 12/12/2020 20:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIRECCION](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_CLIENTE] [int] NOT NULL,
	[DIRECCION_AREA] [varchar](400) NOT NULL,
	[CORREO_REF] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PEDIDO]    Script Date: 12/12/2020 20:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PEDIDO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CLIENTE] [varchar](600) NOT NULL,
	[PLATOS] [varchar](600) NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[DIRECCION_DE_ENTREGA] [varchar](700) NOT NULL,
	[TRABAJADOR] [varchar](60) NOT NULL,
	[PRECIO] [decimal](5, 2) NULL,
	[TOTAL] [decimal](5, 2) NULL,
	[ID_REF] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PEDIDOS_PROCESO]    Script Date: 12/12/2020 20:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PEDIDOS_PROCESO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CLIENTE] [varchar](60) NOT NULL,
	[PLATOS] [varchar](100) NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[DIRECCION_DE_ENTREGA] [varchar](500) NOT NULL,
	[TRABAJADOR] [varchar](60) NOT NULL,
	[PRECIO] [decimal](5, 2) NULL,
	[TOTAL] [decimal](5, 2) NULL,
	[ID_REF] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PEDIDOS_REALIZADOS]    Script Date: 12/12/2020 20:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PEDIDOS_REALIZADOS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CLIENTE] [varchar](600) NOT NULL,
	[PLATOS] [varchar](600) NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[DIRECCION_DE_ENTREGA] [varchar](700) NOT NULL,
	[TRABAJADOR] [varchar](60) NOT NULL,
	[PRECIO] [decimal](5, 0) NOT NULL,
	[TOTAL] [decimal](5, 0) NOT NULL,
	[ID_REF] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 12/12/2020 20:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](600) NOT NULL,
	[RESTAURANTE] [varchar](65) NOT NULL,
	[PRECIO] [decimal](5, 2) NOT NULL,
	[IMAGEN_PRESENTACION] [varchar](400) NOT NULL,
	[CATEGORIA_PRODUCTO] [varchar](150) NOT NULL,
	[DESCRIPCION] [varchar](150) NOT NULL,
	[ID_REF] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESTAURANTE]    Script Date: 12/12/2020 20:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESTAURANTE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](600) NOT NULL,
	[DIRECCION] [varchar](650) NOT NULL,
	[TELEFONO] [varchar](18) NOT NULL,
	[EMAIL] [varchar](600) NOT NULL,
	[IMAGEN] [varchar](800) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRABAJADOR]    Script Date: 12/12/2020 20:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRABAJADOR](
	[ID] [int] NOT NULL,
	[NOMBRE] [varchar](100) NOT NULL,
	[CORREO_ELECTRONICO] [varchar](150) NOT NULL,
	[TELEFONO] [varchar](9) NOT NULL,
	[DOMICILIO] [varchar](150) NOT NULL,
	[CONTRASENA] [varchar](260) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ADMINISTRADOR] ON 

INSERT [dbo].[ADMINISTRADOR] ([ID], [CORREO], [CONTRASEÑA]) VALUES (1, N'JUANITOX777@TEST.COM', N'TEST')
SET IDENTITY_INSERT [dbo].[ADMINISTRADOR] OFF
GO
INSERT [dbo].[CLIENTE] ([ID], [TELEFONO], [NOMBRE], [EMAIL], [FECHA_DE_INGRESO], [PERFIL], [Password]) VALUES (1, N'00000', N'TEST', N'TEST@TEST.COM', CAST(N'2020-11-23T00:00:00.000' AS DateTime), N'NO', N'TEST')
INSERT [dbo].[CLIENTE] ([ID], [TELEFONO], [NOMBRE], [EMAIL], [FECHA_DE_INGRESO], [PERFIL], [Password]) VALUES (2, N'60004068', N'Juan Mendez Lopez', N'Tester@Tester.com', CAST(N'2020-12-12T00:00:00.000' AS DateTime), N'https://pbs.twimg.com/profile_images/1569965057/se_or_x_400x400.jpg', N'984816fd329622876e14907634264e6f332e9fb3')
GO
SET IDENTITY_INSERT [dbo].[DIRECCION] ON 

INSERT [dbo].[DIRECCION] ([ID], [ID_CLIENTE], [DIRECCION_AREA], [CORREO_REF]) VALUES (2038, 2, N'Colonia Entre Rios, Calle Jiboa, Casa #55, Ciudad Carmesi, San Salvador', N'Tester@Tester.com')
SET IDENTITY_INSERT [dbo].[DIRECCION] OFF
GO
SET IDENTITY_INSERT [dbo].[PEDIDO] ON 

INSERT [dbo].[PEDIDO] ([ID], [CLIENTE], [PLATOS], [FECHA], [DIRECCION_DE_ENTREGA], [TRABAJADOR], [PRECIO], [TOTAL], [ID_REF]) VALUES (2003, N'No confirmado', N'Woper', CAST(N'2020-12-12T00:00:00.000' AS DateTime), N'Colonia Entre Rios, Calle Jiboa, Casa', N'No Seleccionado', CAST(5.00 AS Decimal(5, 2)), CAST(10.00 AS Decimal(5, 2)), 2)
SET IDENTITY_INSERT [dbo].[PEDIDO] OFF
GO
SET IDENTITY_INSERT [dbo].[PEDIDOS_PROCESO] ON 

INSERT [dbo].[PEDIDOS_PROCESO] ([ID], [CLIENTE], [PLATOS], [FECHA], [DIRECCION_DE_ENTREGA], [TRABAJADOR], [PRECIO], [TOTAL], [ID_REF]) VALUES (2076, N'Juan Mendez Lopez', N'Los Sopes', CAST(N'2020-12-12T00:00:00.000' AS DateTime), N'Colonia Entre Rios, Calle Jiboa, Casa ', N'No Seleccionado', CAST(5.00 AS Decimal(5, 2)), CAST(5.00 AS Decimal(5, 2)), 2)
INSERT [dbo].[PEDIDOS_PROCESO] ([ID], [CLIENTE], [PLATOS], [FECHA], [DIRECCION_DE_ENTREGA], [TRABAJADOR], [PRECIO], [TOTAL], [ID_REF]) VALUES (2077, N'Juan Mendez Lopez', N'Combo 8 Piezas Bañado', CAST(N'2020-12-12T00:00:00.000' AS DateTime), N'Colonia Entre Rios, Calle Jiboa, Casa ', N'No Seleccionado', CAST(16.00 AS Decimal(5, 2)), CAST(16.00 AS Decimal(5, 2)), 2)
SET IDENTITY_INSERT [dbo].[PEDIDOS_PROCESO] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCTO] ON 

INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1001, N'Menu Campero Bañado', N' Pollo Campero', CAST(6.00 AS Decimal(5, 2)), N'https://s3.amazonaws.com/ldm-src/Campero/test/menu%20campero%20nuevo.jpg', N'Comida Salvadoreña', N'Menú de 2 piezas de pollo Extra Crujiente bañado, 1 acompañamientos, 1 complemento y 1 bebida', 1)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1002, N'Menu Super Campero', N'Pollo Campero', CAST(9.00 AS Decimal(5, 2)), N'https://www.campero.com/iCadImagesMNCSV/Productos/NC50015.png', N'Comida Salvadoreña', N'Menú de 3 piezas de pollo Extra Crujiente bañado, 2 acompañamientos, 1 complemento y 1 bebida.', 1)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1003, N'Combo 8 Piezas Bañado', N'Pollo Campero', CAST(15.75 AS Decimal(5, 2)), N'https://s3.amazonaws.com/ldm-src/Campero/test/8%20piezas.jpg', N'Comida Salvadoreña', N'Combo de 12 piezas de pollo Extra Crujientes bañadas, 6 acompañamientos y 6 panes o tortillas.', 1)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1004, N'Combo 10 Piezas Bañado', N'Pollo Campero', CAST(19.75 AS Decimal(5, 2)), N'https://www.campero.com/iCadImagesMNCSV/Productos/58115WAP.png', N'Comida Salvadoreña', N'Combo de 10 piezas de pollo Extra Crujiente bañadas, 5 acompañamientos y 5panes o tortillas.', 1)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1005, N'Combo 6 piezas', N'Pollo Campero', CAST(8.75 AS Decimal(5, 2)), N'https://s3.amazonaws.com/ldm-src/Campero/test/Combo6Tradicionales.jpg', N'Comida Salvadoreña', N'Combo de 6 piezas de tradicionales piernas y muslos, 3 acompañamientos y 3 panes o tortillas.', 1)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1006, N' Menú 6 Alitas Bañadas o Empanizadas', N'Pollo Campero', CAST(6.10 AS Decimal(5, 2)), N'https://s3.amazonaws.com/ldm-src/Campero/test/Combo6Tradicionales.jpg', N'Comida Salvadoreña', N'6 alitas empanizadas o bañadas con tu salsa favorita con un aderezo, un acompañamiento y bebida', 1)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1007, N'Menú Hamburguesa Clásica', N'Pollo Campero', CAST(3.85 AS Decimal(5, 2)), N'https://s3.amazonaws.com/ldm-src/Campero/test/HamburguesaClasica%20(1).jpg', N'Comida Salvadoreña', N'Hamburguesa sin queso, un acompañamiento y bebida', 1)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1008, N'Pollo Sweet Teriyaki', N'China Wok', CAST(10.00 AS Decimal(5, 2)), N'https://www.chinawok.com.sv/static/media/images/products/webp/PRD_4095_SM.webp?2.0.6', N'Comida Asiatica', N'Delicioso valde de Pollo Dulce acompañada de dulce de anjonjoli y vegetales', 2)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1009, N'Mixto al Wok', N'China Wok', CAST(10.25 AS Decimal(5, 2)), N'https://www.chinawok.com.sv/static/media/images/products/webp/PRD_876_SM.webp?2.0.6', N'Comida Asiatica', N'La combinacion de los mejores sabores de un solo plato', 2)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1010, N'Arroz Cantonés Mixto China Wok', N'China Wok', CAST(9.99 AS Decimal(5, 2)), N'https://www.chinawok.com.sv/static/media/images/products/webp/PRD_877_SM.webp?2.0.6', N'Comida Asiatica', N'Arroz mas completo de ingredientes.Con un Sabor unico e incomparable', 2)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1011, N'Chaomein Mixto China Wok', N'China Wok', CAST(14.99 AS Decimal(5, 2)), N'https://www.chinawok.com.sv/static/media/images/products/webp/PRD_1025_SM.webp?2.0.6', N'Comida Asiatica', N'El chaomein mas completo de sabores, para 4 porciones', 2)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1012, N'Mix de Vegetales al Vapor', N'China Wok', CAST(4.25 AS Decimal(5, 2)), N'https://www.chinawok.com.sv/static/media/images/products/webp/PRD_890_SM.webp?2.0.6', N'Comida Asiatica', N'Mezcla de Brocoli,Zanahoria,ejotes y Apio al Vapor. Cocidos en su punto.', 2)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1014, N'El Volcan', N'La calaca', CAST(9.10 AS Decimal(5, 2)), N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7Dp7QqKQaURSOwi78DwWgFHnxiLdSn6NTbw&usqp=CAU', N'Comida Mexicana', N'Crujiente tortilla laca de carne a tu preferencia', 3)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1016, N'Los Sopes', N'La calaca', CAST(4.50 AS Decimal(5, 2)), N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwDE8CFL-wW8kYGzk9QqTHev8jP8hQ224c7Q&usqp=CAU', N'Comida Mexicana', N'Tortilla, hecho al estilo Norteño como un buen Mexicano de Corazon', 3)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1017, N'El Volcan', N'Lacalaca', CAST(9.10 AS Decimal(5, 2)), N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7Dp7QqKQaURSOwi78DwWgFHnxiLdSn6NTbw&usqp=CAU', N'Comida Mexicana', N'Crujiente tortilla laca de carne a tu preferencia', 3)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1018, N'El Volcan', N'Lacalaca', CAST(9.10 AS Decimal(5, 2)), N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7Dp7QqKQaURSOwi78DwWgFHnxiLdSn6NTbw&usqp=CAU', N'Comida Mexicana', N'Crujiente tortilla laca de carne a tu preferencia', 3)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1019, N'Woper', N'BURGUER KING', CAST(5.10 AS Decimal(5, 2)), N'https://i.blogs.es/d15669/1eaa1ec86777372cf132b8a6ffd00120/840_560.jpg', N'Comida Americana', N'Hamburguesa acompañada de papas y Soda', 4)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1020, N'La King Delivery', N'BURGUER KING', CAST(12.10 AS Decimal(5, 2)), N'https://cdn.vox-cdn.com/thumbor/J1ap801pIkP2IehiUyTPFgxKljc=/0x260:1440x1440/1200x800/filters:focal(632x830:862x1060)/cdn.vox-cdn.com/uploads/chorus_image/image/63960957/BK_ImpossibleWhopper_Post1.0.jpg', N'Comida Americana', N'Hamburguesa comemorada por el Aniversario Burguer', 4)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1021, N'La King Delivery', N'BURGUER KING', CAST(12.10 AS Decimal(5, 2)), N'https://cdn.vox-cdn.com/thumbor/J1ap801pIkP2IehiUyTPFgxKljc=/0x260:1440x1440/1200x800/filters:focal(632x830:862x1060)/cdn.vox-cdn.com/uploads/chorus_image/image/63960957/BK_ImpossibleWhopper_Post1.0.jpg', N'Comida Americana', N'Hamburguesa comemorada por el Aniversario Burguer', 4)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1022, N'La King Delivery', N'BURGUER KING', CAST(12.10 AS Decimal(5, 2)), N'https://cdn.vox-cdn.com/thumbor/J1ap801pIkP2IehiUyTPFgxKljc=/0x260:1440x1440/1200x800/filters:focal(632x830:862x1060)/cdn.vox-cdn.com/uploads/chorus_image/image/63960957/BK_ImpossibleWhopper_Post1.0.jpg', N'Comida Americana', N'Hamburguesa comemorada por el Aniversario Burguer', 4)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1023, N'La Madness', N'Creeper Lover', CAST(12.10 AS Decimal(5, 2)), N'https://vuira.com/wp-content/uploads/2018/02/crepe-lovers1.jpg', N'Comida Sur Americana', N'Rico Combo a tu antojo de Crepas ya puede ser salada o dulces', 5)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1024, N'La Madness', N'Creeper Lover', CAST(12.10 AS Decimal(5, 2)), N'https://vuira.com/wp-content/uploads/2018/02/crepe-lovers1.jpg', N'Comida Sur Americana', N'Rico Combo a tu antojo de Crepas ya puede ser salada o dulces', 5)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1025, N'La Madness', N'Creeper Lover', CAST(12.10 AS Decimal(5, 2)), N'https://vuira.com/wp-content/uploads/2018/02/crepe-lovers1.jpg', N'Comida Sur Americana', N'Rico Combo a tu antojo de Crepas ya puede ser salada o dulces', 5)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1026, N'La Madness', N'Creeper Lover', CAST(12.10 AS Decimal(5, 2)), N'https://vuira.com/wp-content/uploads/2018/02/crepe-lovers1.jpg', N'Comida Sur Americana', N'Rico Combo a tu antojo de Crepas ya puede ser salada o dulces', 5)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1027, N'La Madness', N'Creeper Lover', CAST(12.10 AS Decimal(5, 2)), N'https://vuira.com/wp-content/uploads/2018/02/crepe-lovers1.jpg', N'Comida Sur Americana', N'Rico Combo a tu antojo de Crepas ya puede ser salada o dulces', 5)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1028, N'Combo Familiar Super Suprema', N'Pizza Hut', CAST(19.10 AS Decimal(5, 2)), N'https://i1.wp.com/www.ofertasahora.com/wp-content/uploads/2016/03/GOLD-summer-pack-pizza-hut-el-salvador.jpg?fit=300%2C188&ssl=1?resize=776%2C440', N'Comida Norte Americana', N'Rico Combo Familiar de Pizza Hut,incluye palitrokes y un litro de Gaseosa', 6)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1029, N'Combo Familiar Super Suprema', N'Pizza Hut', CAST(19.10 AS Decimal(5, 2)), N'https://i1.wp.com/www.ofertasahora.com/wp-content/uploads/2016/03/GOLD-summer-pack-pizza-hut-el-salvador.jpg?fit=300%2C188&ssl=1?resize=776%2C440', N'Comida Norte Americana', N'Rico Combo Familiar de Pizza Hut,incluye palitrokes y un litro de Gaseosa', 6)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1030, N'Combo Familiar Super Suprema', N'Pizza Hut', CAST(19.10 AS Decimal(5, 2)), N'https://i1.wp.com/www.ofertasahora.com/wp-content/uploads/2016/03/GOLD-summer-pack-pizza-hut-el-salvador.jpg?fit=300%2C188&ssl=1?resize=776%2C440', N'Comida Norte Americana', N'Rico Combo Familiar de Pizza Hut,incluye palitrokes y un litro de Gaseosa', 6)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1031, N'Combo Familiar Super Suprema', N'Pizza Hut', CAST(19.10 AS Decimal(5, 2)), N'https://i1.wp.com/www.ofertasahora.com/wp-content/uploads/2016/03/GOLD-summer-pack-pizza-hut-el-salvador.jpg?fit=300%2C188&ssl=1?resize=776%2C440', N'Comida Norte Americana', N'Rico Combo Familiar de Pizza Hut,incluye palitrokes y un litro de Gaseosa', 6)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1032, N'Combo Familiar Super Suprema', N'Pizza Hut', CAST(19.10 AS Decimal(5, 2)), N'https://i1.wp.com/www.ofertasahora.com/wp-content/uploads/2016/03/GOLD-summer-pack-pizza-hut-el-salvador.jpg?fit=300%2C188&ssl=1?resize=776%2C440', N'Comida Norte Americana', N'Rico Combo Familiar de Pizza Hut,incluye palitrokes y un litro de Gaseosa', 6)
INSERT [dbo].[PRODUCTO] ([ID], [NOMBRE], [RESTAURANTE], [PRECIO], [IMAGEN_PRESENTACION], [CATEGORIA_PRODUCTO], [DESCRIPCION], [ID_REF]) VALUES (1033, N'Combo Familiar Super Suprema', N'Pizza Hut', CAST(19.10 AS Decimal(5, 2)), N'https://i1.wp.com/www.ofertasahora.com/wp-content/uploads/2016/03/GOLD-summer-pack-pizza-hut-el-salvador.jpg?fit=300%2C188&ssl=1?resize=776%2C440', N'Comida Norte Americana', N'Rico Combo Familiar de Pizza Hut,incluye palitrokes y un litro de Gaseosa', 6)
SET IDENTITY_INSERT [dbo].[PRODUCTO] OFF
GO
SET IDENTITY_INSERT [dbo].[RESTAURANTE] ON 

INSERT [dbo].[RESTAURANTE] ([ID], [NOMBRE], [DIRECCION], [TELEFONO], [EMAIL], [IMAGEN]) VALUES (1, N'Pollo Campero', N'Avenida Juan Bertiz', N'22505555', N'PolloCampero@gmail.com', N'https://cdn.forbescentroamerica.com/2020/03/Pollo-Campero-640x360.jpg')
INSERT [dbo].[RESTAURANTE] ([ID], [NOMBRE], [DIRECCION], [TELEFONO], [EMAIL], [IMAGEN]) VALUES (2, N'China Wok', N'Avenida Juan Bertiz', N'22505555', N'Chinawok@gmail.com', N'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT4xQaHFO40ZDCenpFopIJK01ppkvKUMkgxpg&usqp=CAU')
INSERT [dbo].[RESTAURANTE] ([ID], [NOMBRE], [DIRECCION], [TELEFONO], [EMAIL], [IMAGEN]) VALUES (3, N'La calaca', N'Avenida Santa Ana', N'50565545', N'Calaca@gmail.com', N'https://res.cloudinary.com/expresateweb/image/upload/v1/GetMyFood/restaurants/76d5cf24d2ea67ddf8b607c79a453ddb.jpg')
INSERT [dbo].[RESTAURANTE] ([ID], [NOMBRE], [DIRECCION], [TELEFONO], [EMAIL], [IMAGEN]) VALUES (4, N'BURGUER KING', N'Avenida Santa Ana', N'50565545', N'BURGUER@gmail.com', N'https://multiplaza-samantha.s3.amazonaws.com/uploads/post/v4_mobile/116/v400_400_Burger_King_IMG_8386.jpg')
INSERT [dbo].[RESTAURANTE] ([ID], [NOMBRE], [DIRECCION], [TELEFONO], [EMAIL], [IMAGEN]) VALUES (5, N'Creeper Lover', N'Galeria', N'50565545', N'CreepOhMen@gmail.com', N'https://res.cloudinary.com/expresateweb/image/upload/v1602280791/GetMyFood/restaurants/d0c1f091bd30ab1e93dc5eb30afdf052.png')
INSERT [dbo].[RESTAURANTE] ([ID], [NOMBRE], [DIRECCION], [TELEFONO], [EMAIL], [IMAGEN]) VALUES (6, N'Pizza Hut', N'Metrocentro', N'970656217', N'Pizzahut@gmail.com', N'https://www.estrategiaynegocios.net/csp/mediapool/sites/dt.common.streams.StreamServer.cls?STREAMOID=20EPYL3PLU4YN$WP$hbj9s$daE2N3K4ZzOUsqbU5sYuFuXN_emvnu8jYdSmRMZRv6FB40xiOfUoExWL3M40tfzssyZqpeG_J0TFo7ZhRaDiHC9oxmioMlYVJD0A$3RbIiibgT65kY_CSDiCiUzvHvODrHApbd6ry6YGl5GGOZrs-&CONTENTTYPE=image/jpeg')
SET IDENTITY_INSERT [dbo].[RESTAURANTE] OFF
GO
INSERT [dbo].[TRABAJADOR] ([ID], [NOMBRE], [CORREO_ELECTRONICO], [TELEFONO], [DOMICILIO], [CONTRASENA]) VALUES (1, N'Juan Mendez', N'Juan@gmail.com', N'60004062', N'San Salvador', N'SAMARA56')
INSERT [dbo].[TRABAJADOR] ([ID], [NOMBRE], [CORREO_ELECTRONICO], [TELEFONO], [DOMICILIO], [CONTRASENA]) VALUES (2, N'Mario Lopez Obrador', N'Marito@gmail.com', N'72759576', N'Ciudad Delgado San Salvador', N'Mendez')
GO
ALTER TABLE [dbo].[DIRECCION]  WITH CHECK ADD FOREIGN KEY([ID_CLIENTE])
REFERENCES [dbo].[CLIENTE] ([ID])
GO
ALTER TABLE [dbo].[PEDIDO]  WITH CHECK ADD FOREIGN KEY([ID_REF])
REFERENCES [dbo].[CLIENTE] ([ID])
GO
ALTER TABLE [dbo].[PEDIDOS_PROCESO]  WITH CHECK ADD FOREIGN KEY([ID_REF])
REFERENCES [dbo].[CLIENTE] ([ID])
GO
ALTER TABLE [dbo].[PEDIDOS_REALIZADOS]  WITH CHECK ADD FOREIGN KEY([ID_REF])
REFERENCES [dbo].[CLIENTE] ([ID])
GO
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD FOREIGN KEY([ID_REF])
REFERENCES [dbo].[RESTAURANTE] ([ID])
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZACION_CLIENTE]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACTUALIZACION_CLIENTE]
(
	@PERFIL varchar(400),
	@NOMBRE varchar(100),
	@TELEFONO varchar(15),
	@ID int
)
AS
	SET NOCOUNT OFF;
UPDATE       CLIENTE
SET                PERFIL = @PERFIL, NOMBRE = @NOMBRE, TELEFONO = @TELEFONO
WHERE        (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_PEDIDOSUP]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACTUALIZAR_PEDIDOSUP]
 @ACTUALIZAR_PEDIDOS VARCHAR(60),
 @ID_REFE INT
AS
UPDATE PEDIDOS_PROCESO SET TRABAJADOR=@ACTUALIZAR_PEDIDOS 
WHERE ID_REF=@ID_REFE;
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZO]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACTUALIZO]
(
	@CLIENTE varchar(600),
	@ID_REF int
)
AS
	SET NOCOUNT OFF;
UPDATE       PEDIDO
SET                CLIENTE = @CLIENTE, ID_REF = @ID_REF
WHERE        (ID_REF = @ID_REF)
GO
/****** Object:  StoredProcedure [dbo].[Actualizo_Nombres]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Actualizo_Nombres]
(
	@CLIENTE varchar(600),
	@ID_REF int
)
AS
	SET NOCOUNT OFF;
UPDATE       PEDIDO
SET                CLIENTE = @CLIENTE
WHERE        (ID_REF = @ID_REF)
GO
/****** Object:  StoredProcedure [dbo].[BUSQUEDAID]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BUSQUEDAID]
(
	@ID_REF int
)
AS
	SET NOCOUNT ON;
SELECT        CLIENTE
FROM            PEDIDO
WHERE        (ID_REF = @ID_REF)
GO
/****** Object:  StoredProcedure [dbo].[CONFIRMACION]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CONFIRMACION]
(
	@CLIENTE varchar(600),
	@ID_REF int
)
AS
	SET NOCOUNT OFF;
UPDATE       PEDIDO
SET                CLIENTE = @CLIENTE, ID_REF = @ID_REF
GO
/****** Object:  StoredProcedure [dbo].[DeleteQuery]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteQuery]
(
	@ID_REF int
)
AS
	SET NOCOUNT OFF;
DELETE FROM PEDIDO
WHERE        (ID_REF = @ID_REF)
GO
/****** Object:  StoredProcedure [dbo].[FILTRO]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FILTRO]
(
	@ID_REF int
)
AS
	SET NOCOUNT ON;
SELECT ID, CLIENTE, PLATOS, FECHA, DIRECCION_DE_ENTREGA, TRABAJADOR, PRECIO, TOTAL, ID_REF FROM PEDIDOS_PROCESO WHERE (ID_REF = @ID_REF)
GO
/****** Object:  StoredProcedure [dbo].[INSERTO_COPIO]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTO_COPIO]
(
	@ID_REF int
)
AS
	SET NOCOUNT OFF;
INSERT INTO PEDIDOS_PROCESO
SELECT        CLIENTE, PLATOS, FECHA, DIRECCION_DE_ENTREGA, TRABAJADOR, PRECIO, TOTAL, ID_REF
FROM            PEDIDO
WHERE        (ID_REF = @ID_REF)
GO
/****** Object:  StoredProcedure [dbo].[LOGIN]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LOGIN]
(
	@EMAIL varchar(200),
	@PASSWORD varchar(100)
)
AS
	SET NOCOUNT ON;
SELECT        ID, TELEFONO, NOMBRE, EMAIL, FECHA_DE_INGRESO, PERFIL, Password
FROM            CLIENTE
WHERE        (EMAIL = @EMAIL) AND (Password = @PASSWORD)
GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_ID]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MOSTRAR_ID]
(
	@ID int
)
AS
	SET NOCOUNT ON;
SELECT        ID, TELEFONO, NOMBRE, EMAIL, FECHA_DE_INGRESO, PERFIL, Password
FROM            CLIENTE
WHERE        (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[Mostrar_ID_Cliente]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Mostrar_ID_Cliente]
(
	@ID int
)
AS
	SET NOCOUNT ON;
SELECT        ID, TELEFONO, NOMBRE, EMAIL, FECHA_DE_INGRESO, PERFIL
FROM            CLIENTE
WHERE        (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_POR_ID]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MOSTRAR_POR_ID]
(
	@ID int
)
AS
	SET NOCOUNT ON;
SELECT        ID, TELEFONO, NOMBRE, EMAIL, FECHA_DE_INGRESO, PERFIL, Password
FROM            CLIENTE
WHERE        (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[MOTRAR_ID]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MOTRAR_ID]
(
	@ID int
)
AS
	SET NOCOUNT ON;
SELECT        ID, TELEFONO, NOMBRE, EMAIL, FECHA_DE_INGRESO, PERFIL, Password
FROM            CLIENTE
WHERE        (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[PROCESO_FINAL]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROCESO_FINAL]
@ID_REF int 
AS
INSERT INTO PEDIDOS_REALIZADOS SELECT CLIENTE,PLATOS,FECHA,DIRECCION_DE_ENTREGA,TRABAJADOR,PRECIO,TOTAL,ID_REF
FROM PEDIDOS_PROCESO WHERE ID_REF=@ID_REF;
DELETE PEDIDOS_PROCESO WHERE ID_REF=@ID_REF;
GO
/****** Object:  StoredProcedure [dbo].[REGISTRO]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[REGISTRO]
(
	@EMAIL varchar(200)
)
AS
	SET NOCOUNT ON;
SELECT        ID, TELEFONO, NOMBRE, EMAIL, FECHA_DE_INGRESO, PERFIL, Password
FROM            CLIENTE
WHERE        (EMAIL = @EMAIL)
GO
/****** Object:  StoredProcedure [dbo].[STP_CLIENTE_DELETE]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CLIENTE_DELETE]
(
	@Original_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [CLIENTE] WHERE (([ID] = @Original_ID))
GO
/****** Object:  StoredProcedure [dbo].[STP_CLIENTE_INSERT]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CLIENTE_INSERT]
(
	@ID int,
	@TELEFONO varchar(15),
	@NOMBRE varchar(100),
	@EMAIL varchar(200),
	@FECHA_DE_INGRESO datetime,
	@PERFIL varchar(400),
	@Password varchar(100)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [CLIENTE] ([ID], [TELEFONO], [NOMBRE], [EMAIL], [FECHA_DE_INGRESO], [PERFIL], [Password]) VALUES (@ID, @TELEFONO, @NOMBRE, @EMAIL, @FECHA_DE_INGRESO, @PERFIL, @Password);
	
SELECT ID, TELEFONO, NOMBRE, EMAIL, FECHA_DE_INGRESO, PERFIL, Password FROM CLIENTE WHERE (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[STP_CLIENTE_MOSTRAR]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CLIENTE_MOSTRAR]
AS
	SET NOCOUNT ON;
SELECT        ID, TELEFONO, NOMBRE, EMAIL, FECHA_DE_INGRESO, PERFIL, Password
FROM            CLIENTE
GO
/****** Object:  StoredProcedure [dbo].[STP_CLIENTE_UPDATE]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_CLIENTE_UPDATE]
(
	@ID int,
	@TELEFONO varchar(15),
	@NOMBRE varchar(100),
	@EMAIL varchar(200),
	@FECHA_DE_INGRESO datetime,
	@PERFIL varchar(400),
	@Password varchar(100),
	@Original_ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [CLIENTE] SET [ID] = @ID, [TELEFONO] = @TELEFONO, [NOMBRE] = @NOMBRE, [EMAIL] = @EMAIL, [FECHA_DE_INGRESO] = @FECHA_DE_INGRESO, [PERFIL] = @PERFIL, [Password] = @Password WHERE (([ID] = @Original_ID));
	
SELECT ID, TELEFONO, NOMBRE, EMAIL, FECHA_DE_INGRESO, PERFIL, Password FROM CLIENTE WHERE (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[STP_DIRECCION_DELETE]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_DIRECCION_DELETE]
(
	@Original_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [DIRECCION] WHERE (([ID] = @Original_ID))
GO
/****** Object:  StoredProcedure [dbo].[STP_DIRECCION_INSERT]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_DIRECCION_INSERT]
(
	@ID_CLIENTE int,
	@DIRECCION_AREA varchar(400),
	@CORREO_REF varchar(100)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [DIRECCION] ([ID_CLIENTE], [DIRECCION_AREA], [CORREO_REF]) VALUES (@ID_CLIENTE, @DIRECCION_AREA, @CORREO_REF);
	
SELECT ID, ID_CLIENTE, DIRECCION_AREA, CORREO_REF FROM DIRECCION WHERE (ID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[STP_DIRECCION_MOSTRAR]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_DIRECCION_MOSTRAR]
AS
	SET NOCOUNT ON;
SELECT        ID, ID_CLIENTE, DIRECCION_AREA, CORREO_REF
FROM            DIRECCION
GO
/****** Object:  StoredProcedure [dbo].[STP_DIRECCION_UPDATE]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_DIRECCION_UPDATE]
(
	@ID_CLIENTE int,
	@DIRECCION_AREA varchar(400),
	@CORREO_REF varchar(100),
	@Original_ID int,
	@ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [DIRECCION] SET [ID_CLIENTE] = @ID_CLIENTE, [DIRECCION_AREA] = @DIRECCION_AREA, [CORREO_REF] = @CORREO_REF WHERE (([ID] = @Original_ID));
	
SELECT ID, ID_CLIENTE, DIRECCION_AREA, CORREO_REF FROM DIRECCION WHERE (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[STP_PEDIDO_DELETE]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_PEDIDO_DELETE]
(
	@Original_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [PEDIDO] WHERE (([ID] = @Original_ID))
GO
/****** Object:  StoredProcedure [dbo].[STP_PEDIDO_INSERT]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_PEDIDO_INSERT]
(
	@CLIENTE varchar(600),
	@PLATOS varchar(600),
	@FECHA datetime,
	@DIRECCION_DE_ENTREGA varchar(700),
	@TRABAJADOR varchar(60),
	@PRECIO decimal(5, 0),
	@TOTAL decimal(5, 0),
	@ID_REF int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [PEDIDO] ([CLIENTE], [PLATOS], [FECHA], [DIRECCION_DE_ENTREGA], [TRABAJADOR], [PRECIO], [TOTAL], [ID_REF]) VALUES (@CLIENTE, @PLATOS, @FECHA, @DIRECCION_DE_ENTREGA, @TRABAJADOR, @PRECIO, @TOTAL, @ID_REF);
	
SELECT ID, CLIENTE, PLATOS, FECHA, DIRECCION_DE_ENTREGA, TRABAJADOR, PRECIO, TOTAL, ID_REF FROM PEDIDO WHERE (ID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[STP_PEDIDO_MOSTRAR]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_PEDIDO_MOSTRAR]
AS
	SET NOCOUNT ON;
SELECT        ID, CLIENTE, PLATOS, FECHA, DIRECCION_DE_ENTREGA, TRABAJADOR, PRECIO, TOTAL, ID_REF
FROM            PEDIDO
GO
/****** Object:  StoredProcedure [dbo].[STP_PEDIDO_UPDATE]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_PEDIDO_UPDATE]
(
	@CLIENTE varchar(600),
	@PLATOS varchar(600),
	@FECHA datetime,
	@DIRECCION_DE_ENTREGA varchar(700),
	@TRABAJADOR varchar(60),
	@PRECIO decimal(5, 0),
	@TOTAL decimal(5, 0),
	@ID_REF int,
	@Original_ID int,
	@ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [PEDIDO] SET [CLIENTE] = @CLIENTE, [PLATOS] = @PLATOS, [FECHA] = @FECHA, [DIRECCION_DE_ENTREGA] = @DIRECCION_DE_ENTREGA, [TRABAJADOR] = @TRABAJADOR, [PRECIO] = @PRECIO, [TOTAL] = @TOTAL, [ID_REF] = @ID_REF WHERE (([ID] = @Original_ID));
	
SELECT ID, CLIENTE, PLATOS, FECHA, DIRECCION_DE_ENTREGA, TRABAJADOR, PRECIO, TOTAL, ID_REF FROM PEDIDO WHERE (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[STP_PROCESO_DELETE]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_PROCESO_DELETE]
(
	@Original_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [PEDIDOS_PROCESO] WHERE (([ID] = @Original_ID))
GO
/****** Object:  StoredProcedure [dbo].[STP_PROCESO_INSERT]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_PROCESO_INSERT]
(
	@CLIENTE varchar(60),
	@PLATOS varchar(100),
	@FECHA datetime,
	@DIRECCION_DE_ENTREGA varchar(500),
	@TRABAJADOR varchar(60),
	@PRECIO decimal(5, 2),
	@TOTAL decimal(5, 2),
	@ID_REF int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [PEDIDOS_PROCESO] ([CLIENTE], [PLATOS], [FECHA], [DIRECCION_DE_ENTREGA], [TRABAJADOR], [PRECIO], [TOTAL], [ID_REF]) VALUES (@CLIENTE, @PLATOS, @FECHA, @DIRECCION_DE_ENTREGA, @TRABAJADOR, @PRECIO, @TOTAL, @ID_REF);
	
SELECT ID, CLIENTE, PLATOS, FECHA, DIRECCION_DE_ENTREGA, TRABAJADOR, PRECIO, TOTAL, ID_REF FROM PEDIDOS_PROCESO WHERE (ID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[STP_PROCESO_MOSTRAR]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_PROCESO_MOSTRAR]
AS
	SET NOCOUNT ON;
SELECT ID, CLIENTE, PLATOS, FECHA, DIRECCION_DE_ENTREGA, TRABAJADOR, PRECIO, TOTAL, ID_REF FROM PEDIDOS_PROCESO
GO
/****** Object:  StoredProcedure [dbo].[STP_PROCESO_UPDATE]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_PROCESO_UPDATE]
(
	@CLIENTE varchar(60),
	@PLATOS varchar(100),
	@FECHA datetime,
	@DIRECCION_DE_ENTREGA varchar(500),
	@TRABAJADOR varchar(60),
	@PRECIO decimal(5, 2),
	@TOTAL decimal(5, 2),
	@ID_REF int,
	@Original_ID int,
	@ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [PEDIDOS_PROCESO] SET [CLIENTE] = @CLIENTE, [PLATOS] = @PLATOS, [FECHA] = @FECHA, [DIRECCION_DE_ENTREGA] = @DIRECCION_DE_ENTREGA, [TRABAJADOR] = @TRABAJADOR, [PRECIO] = @PRECIO, [TOTAL] = @TOTAL, [ID_REF] = @ID_REF WHERE (([ID] = @Original_ID));
	
SELECT ID, CLIENTE, PLATOS, FECHA, DIRECCION_DE_ENTREGA, TRABAJADOR, PRECIO, TOTAL, ID_REF FROM PEDIDOS_PROCESO WHERE (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[STP_PROCESOS_DELETE]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_PROCESOS_DELETE]
(
	@Original_ID int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [PEDIDOS_PROCESO] WHERE (([ID] = @Original_ID))
GO
/****** Object:  StoredProcedure [dbo].[STP_PROCESOS_INSERT]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_PROCESOS_INSERT]
(
	@CLIENTE varchar(60),
	@PLATOS varchar(100),
	@FECHA datetime,
	@DIRECCION_DE_ENTREGA varchar(500),
	@TRABAJADOR varchar(60),
	@PRECIO decimal(18, 0),
	@TOTAL decimal(18, 0),
	@ID_REF int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [PEDIDOS_PROCESO] ([CLIENTE], [PLATOS], [FECHA], [DIRECCION_DE_ENTREGA], [TRABAJADOR], [PRECIO], [TOTAL], [ID_REF]) VALUES (@CLIENTE, @PLATOS, @FECHA, @DIRECCION_DE_ENTREGA, @TRABAJADOR, @PRECIO, @TOTAL, @ID_REF);
	
SELECT ID, CLIENTE, PLATOS, FECHA, DIRECCION_DE_ENTREGA, TRABAJADOR, PRECIO, TOTAL, ID_REF FROM PEDIDOS_PROCESO WHERE (ID = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[STP_PROCESOS_MOSTRAR]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_PROCESOS_MOSTRAR]
AS
	SET NOCOUNT ON;
SELECT        ID, CLIENTE, PLATOS, FECHA, DIRECCION_DE_ENTREGA, TRABAJADOR, PRECIO, TOTAL, ID_REF
FROM            PEDIDOS_PROCESO
GO
/****** Object:  StoredProcedure [dbo].[STP_PROCESOS_UPDATE]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STP_PROCESOS_UPDATE]
(
	@CLIENTE varchar(60),
	@PLATOS varchar(100),
	@FECHA datetime,
	@DIRECCION_DE_ENTREGA varchar(500),
	@TRABAJADOR varchar(60),
	@PRECIO decimal(18, 0),
	@TOTAL decimal(18, 0),
	@ID_REF int,
	@Original_ID int,
	@ID int
)
AS
	SET NOCOUNT OFF;
UPDATE [PEDIDOS_PROCESO] SET [CLIENTE] = @CLIENTE, [PLATOS] = @PLATOS, [FECHA] = @FECHA, [DIRECCION_DE_ENTREGA] = @DIRECCION_DE_ENTREGA, [TRABAJADOR] = @TRABAJADOR, [PRECIO] = @PRECIO, [TOTAL] = @TOTAL, [ID_REF] = @ID_REF WHERE (([ID] = @Original_ID));
	
SELECT ID, CLIENTE, PLATOS, FECHA, DIRECCION_DE_ENTREGA, TRABAJADOR, PRECIO, TOTAL, ID_REF FROM PEDIDOS_PROCESO WHERE (ID = @ID)
GO
/****** Object:  StoredProcedure [dbo].[TOTAL_PRECIOS]    Script Date: 12/12/2020 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TOTAL_PRECIOS]
@ID_REF int
AS
SELECT DISTINCT TOTAL FROM PEDIDOS_PROCESO where ID_REF=@ID_REF ;
GO
USE [master]
GO
ALTER DATABASE [UBER_EATS] SET  READ_WRITE 
GO
