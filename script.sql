USE [master]
GO
/****** Object:  Database [website_banRuou]    Script Date: 9/20/2019 10:01:01 AM ******/
CREATE DATABASE [website_banRuou]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'website_banRuou', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.TRANTAN\MSSQL\DATA\website_banRuou.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'website_banRuou_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.TRANTAN\MSSQL\DATA\website_banRuou_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [website_banRuou] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [website_banRuou].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [website_banRuou] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [website_banRuou] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [website_banRuou] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [website_banRuou] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [website_banRuou] SET ARITHABORT OFF 
GO
ALTER DATABASE [website_banRuou] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [website_banRuou] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [website_banRuou] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [website_banRuou] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [website_banRuou] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [website_banRuou] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [website_banRuou] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [website_banRuou] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [website_banRuou] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [website_banRuou] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [website_banRuou] SET  DISABLE_BROKER 
GO
ALTER DATABASE [website_banRuou] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [website_banRuou] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [website_banRuou] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [website_banRuou] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [website_banRuou] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [website_banRuou] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [website_banRuou] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [website_banRuou] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [website_banRuou] SET  MULTI_USER 
GO
ALTER DATABASE [website_banRuou] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [website_banRuou] SET DB_CHAINING OFF 
GO
ALTER DATABASE [website_banRuou] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [website_banRuou] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [website_banRuou]
GO
/****** Object:  Table [dbo].[chitiet_donhang]    Script Date: 9/20/2019 10:01:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiet_donhang](
	[id_chitietdonhang] [int] NOT NULL,
	[id_khachhang] [int] NULL,
	[id_sanpham] [int] NULL,
	[id_donhang] [int] NULL,
	[ngay_nhanhang] [date] NULL,
 CONSTRAINT [PK_chitiet_donhang] PRIMARY KEY CLUSTERED 
(
	[id_chitietdonhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chitiet_sp]    Script Date: 9/20/2019 10:01:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chitiet_sp](
	[id_sanpham] [int] NOT NULL,
	[id_loaitin] [int] NULL,
	[ten_sp] [varchar](255) NULL,
	[giaban] [float] NULL,
	[noidung] [varchar](255) NULL,
	[hinh_sp] [varchar](255) NULL,
	[soluotxem] [int] NULL,
 CONSTRAINT [PK_chitiet_sp] PRIMARY KEY CLUSTERED 
(
	[id_sanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[donhang]    Script Date: 9/20/2019 10:01:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[donhang](
	[id_donhang] [int] NOT NULL,
	[id_sanpham] [int] NULL,
	[ten_sp] [varchar](255) NULL,
	[giaban] [float] NULL,
	[hinhanh] [nchar](10) NULL,
	[soluong] [int] NULL,
	[thanhtien] [int] NULL,
	[ngaymua] [date] NULL,
 CONSTRAINT [PK_donhang] PRIMARY KEY CLUSTERED 
(
	[id_donhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[giohang]    Script Date: 9/20/2019 10:01:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giohang](
	[id_giohang] [int] NOT NULL,
	[id_khachhang] [int] NULL,
	[id_sanpham] [int] NULL,
 CONSTRAINT [PK_giohang] PRIMARY KEY CLUSTERED 
(
	[id_giohang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 9/20/2019 10:01:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[khachhang](
	[id_khachhang] [int] NOT NULL,
	[ten_khachhang] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[diachi] [varchar](255) NULL,
	[sdt] [int] NULL,
	[taikhoan] [varchar](255) NULL,
	[matkhau] [varchar](255) NULL,
 CONSTRAINT [PK_khachhang] PRIMARY KEY CLUSTERED 
(
	[id_khachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loaitin_sp]    Script Date: 9/20/2019 10:01:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[loaitin_sp](
	[id_loaitin] [int] NOT NULL,
	[id_theloai] [int] NULL,
	[ten_sp] [varchar](255) NULL,
	[hinh_sp] [varchar](255) NULL,
	[giaban] [float] NULL,
	[ten_thuonghieu] [varchar](255) NULL,
	[id_sanpham] [nchar](10) NULL,
 CONSTRAINT [PK_loaitin_sp] PRIMARY KEY CLUSTERED 
(
	[id_loaitin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Theloai]    Script Date: 9/20/2019 10:01:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Theloai](
	[id_theloai] [int] NOT NULL,
	[Ten_theloai] [varchar](255) NULL,
 CONSTRAINT [PK_Theloai] PRIMARY KEY CLUSTERED 
(
	[id_theloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[chitiet_donhang]  WITH CHECK ADD  CONSTRAINT [FK_chitiet_donhang_donhang] FOREIGN KEY([id_donhang])
REFERENCES [dbo].[donhang] ([id_donhang])
GO
ALTER TABLE [dbo].[chitiet_donhang] CHECK CONSTRAINT [FK_chitiet_donhang_donhang]
GO
ALTER TABLE [dbo].[chitiet_donhang]  WITH CHECK ADD  CONSTRAINT [FK_chitiet_donhang_khachhang] FOREIGN KEY([id_khachhang])
REFERENCES [dbo].[khachhang] ([id_khachhang])
GO
ALTER TABLE [dbo].[chitiet_donhang] CHECK CONSTRAINT [FK_chitiet_donhang_khachhang]
GO
ALTER TABLE [dbo].[chitiet_sp]  WITH CHECK ADD  CONSTRAINT [FK_chitiet_sp_loaitin_sp] FOREIGN KEY([id_loaitin])
REFERENCES [dbo].[loaitin_sp] ([id_loaitin])
GO
ALTER TABLE [dbo].[chitiet_sp] CHECK CONSTRAINT [FK_chitiet_sp_loaitin_sp]
GO
ALTER TABLE [dbo].[donhang]  WITH CHECK ADD  CONSTRAINT [FK_donhang_chitiet_sp] FOREIGN KEY([id_sanpham])
REFERENCES [dbo].[chitiet_sp] ([id_sanpham])
GO
ALTER TABLE [dbo].[donhang] CHECK CONSTRAINT [FK_donhang_chitiet_sp]
GO
ALTER TABLE [dbo].[giohang]  WITH CHECK ADD  CONSTRAINT [FK_giohang_chitiet_sp] FOREIGN KEY([id_sanpham])
REFERENCES [dbo].[chitiet_sp] ([id_sanpham])
GO
ALTER TABLE [dbo].[giohang] CHECK CONSTRAINT [FK_giohang_chitiet_sp]
GO
ALTER TABLE [dbo].[giohang]  WITH CHECK ADD  CONSTRAINT [FK_giohang_khachhang] FOREIGN KEY([id_khachhang])
REFERENCES [dbo].[khachhang] ([id_khachhang])
GO
ALTER TABLE [dbo].[giohang] CHECK CONSTRAINT [FK_giohang_khachhang]
GO
ALTER TABLE [dbo].[loaitin_sp]  WITH CHECK ADD  CONSTRAINT [FK_loaitin_sp_Theloai] FOREIGN KEY([id_theloai])
REFERENCES [dbo].[Theloai] ([id_theloai])
GO
ALTER TABLE [dbo].[loaitin_sp] CHECK CONSTRAINT [FK_loaitin_sp_Theloai]
GO
USE [master]
GO
ALTER DATABASE [website_banRuou] SET  READ_WRITE 
GO
