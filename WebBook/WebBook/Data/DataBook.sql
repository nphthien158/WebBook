USE [DataBook]
GO
/****** Object:  Table [dbo].[ChiTietDH]    Script Date: 16/04/2023 12:02:28 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDH](
	[MaDonHang] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_ChiTietDH] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 16/04/2023 12:02:28 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[MaChuDe] [int] NOT NULL,
	[TenChuDe] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaChuDe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 16/04/2023 12:02:28 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] NOT NULL,
	[DaThanhToan] [int] NULL,
	[TinhTrangGiaoHang] [int] NULL,
	[NgayDat] [nvarchar](10) NULL,
	[NgayGiao] [nvarchar](10) NULL,
	[MaKH] [int] NOT NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 16/04/2023 12:02:28 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] NOT NULL,
	[HoTen] [nvarchar](max) NULL,
	[TaiKhoan] [nvarchar](max) NULL,
	[MatKhau] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[DienThoai] [nvarchar](max) NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [nvarchar](10) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 16/04/2023 12:02:28 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[MaNSB] [int] NOT NULL,
	[TenNSB] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNSB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 16/04/2023 12:02:28 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [int] NOT NULL,
	[TenSach] [nvarchar](max) NULL,
	[GiaBan] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
	[AnhBia] [nvarchar](max) NULL,
	[NgayCapNhat] [nvarchar](10) NULL,
	[SoLuongTon] [int] NULL,
	[MaNSB] [int] NOT NULL,
	[MaChuDe] [int] NOT NULL,
	[MaTacGia] [int] NULL,
	[Hinh] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 16/04/2023 12:02:28 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTacGia] [int] NOT NULL,
	[TenTacGia] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[TieuSu] [nvarchar](max) NULL,
	[DienThoai] [nvarchar](max) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 16/04/2023 12:02:28 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](20) NULL,
	[VaiTro] [nvarchar](20) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (1, N'Sách Giáo Khoa')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (2, N'Văn Học')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (3, N'Kinh Doanh')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (4, N'Thiếu Nhi')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (5, N'Teen')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [GioiTinh], [NgaySinh]) VALUES (1, N'Nguyễn Văn Trỗi', N'troideptraikolochetdoi', N'1', N'troideptraikolochetdoi@gmail.com', N'529 Lý Chính Thắng Q3', N'0768888888', 1, N'25/12/1999')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [GioiTinh], [NgaySinh]) VALUES (2, N'Lê Quang Tèo', N'quangteoaka', N'1', N'quangteoaka999@gmail.com', N'555 Lý Thường Kiệt Q10', N'0999999999', 1, N'22/12/1999')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [GioiTinh], [NgaySinh]) VALUES (3, N'Lê Thị Hồng', N'hongkute', N'1', N'hongkute999@gmail.com', N'5 Lý Thường Kiệt Q10', N'0397999999', 0, N'22/1/1990')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [GioiTinh], [NgaySinh]) VALUES (4, N'Lê Hồng Thắm', N'thamsadgo', N'1', N'thamsadgo@gmail.com', N'5 Lý Thường Kiệt Q10', N'0397999999', 0, N'2/1/1990')
GO
INSERT [dbo].[NhaXuatBan] ([MaNSB], [TenNSB]) VALUES (1, N'NXB ĐH Quốc Gia Hà Nội')
INSERT [dbo].[NhaXuatBan] ([MaNSB], [TenNSB]) VALUES (2, N'NXB Thanh Niên')
INSERT [dbo].[NhaXuatBan] ([MaNSB], [TenNSB]) VALUES (3, N'NXB Thanh Hóa')
INSERT [dbo].[NhaXuatBan] ([MaNSB], [TenNSB]) VALUES (4, N'NXB Trẻ')
INSERT [dbo].[NhaXuatBan] ([MaNSB], [TenNSB]) VALUES (5, N'AZ Việt Nam')
GO
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (1, N'Bài Tập Trắc Nghiệm Và Đề Tự Kiểm Tra Toán Lớp 5
', 76500, N'Trắc nghiệm là một phương pháp kiểm tra, đánh giá được nhiều kiến thức và tiết kiệm thời gian. Ở trường, các em được học những kiến thức mới trong các tiết học. Về nhà các em chỉ cần dành từ 10 phút đến 15 phút làm các bài tập trắc nghiệm để rèn luyện và ghi nhớ những kiến thức vừa được học. Như thế, buổi tối các em vẫn còn thời gian vui chơi và trò chuyện bên những người thân trong gia đình.', N'Bìa mềm', N'27/03/2023', 10, 1, 1, 1, N'1.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (2, N'Bài Tập Trắc Nghiệm Và Đề Tự Kiểm Tra Toán Lớp 4', 100000, N'Trắc nghiệm là một phương pháp kiểm tra, đánh giá được nhiều kiến thức và tiết kiệm thời gian. Ở trường, các em được học những kiến thức mới trong các tiết học. Về nhà các em chỉ cầndành từ 10 phút đến 15 phút làm các bài tập trắc nghiệm để rèn luyện và ghi nhớ những kiến thức vừa được học. Như thế, buổi tối các em vẫn còn thời gian vui chơi và trò chuyện bên những người thân trong gia đình.', N'Bìa mềm', N'27/03/2023', 10, 1, 1, 1, N'2.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (3, N'Bài Tập Trắc Nghiệm Và Đề Tự Kiểm Tra Toán Lớp 3', 85000, N'Trắc nghiệm là một phương pháp kiểm tra, đánh giá được nhiều kiến thức và tiết kiệm thời gian.', N'Bìa mềm', N'27/03/2023', 10, 1, 1, 1, N'3.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (4, N'Chút Sự Thật Của Người Nổi Tiếng (Tập 1)', 25000, N'"Ở Việt Nam, phóng viên văn hóa nghệ thuật nào làm cho người được phỏng vấn vừa thích thú, vừa lo sợ, vừa muốn nhận lời, lại vừa muốn từ chối. Đó chính là Dương Thúy.

Dương Thúy luôn đặt người được phỏng vấn vào thế mạo hiểm của kẻ đi săn cọp. Có thể sẽ săn được cọp, hoặc sẽ bị cọp vồ, nhưng chắc chắn họ sẽ phơi xác trên báo để làm mồi nhậu cho thiên hạ. Họ tốt đẹp, độc giả sẽ thấy họ tốt đẹp. Họ giả dối lưu manh, độc giả sẽ thấy họ giả dối lưu manh.

Khi Dương Thúy chọn phỏng vấn ai, chắc chắn thời điểm đó người ấy đang có cái gì để khai thác, và bài phỏng vấn chắc chắn phải có vấn đề. Nó sẽ tạo ra tiếng nổ nhỏ hay to tùy theo vấn đề mà Dương Thúy muốn khai thác..." - Đạo diễn Vũ Ngọc Đãng', N'Bìa mềm', N'27/03/2023', 10, 2, 2, 2, N'4.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (5, N'Chút Sự Thật Của Người Nổi Tiếng (Tập 2)', 25000, N'"Bạn đang cầm trên tay cuốn sách của Dương Thúy. Dương Thúy không phải là Vệ Tuệ, cũng chả phải Quỳnh Dao. Hai kẻ đó viết văn, còn Dương Thúy viết người.

Có thể khẳng định, viết về người rất khó, nhất là lại viết theo mồm người ấy kể. Nhưng nàng (tức Dương Thúy) đã làm được việc này một cách... vất vả, tham lam và... đều đặn.

Có thể khẳng định, gần như tất cả những người nổi tiếng ở Việt Nam, trừ Năm Cam, đã qua tay Dương Thúy. Khi lọt vào bàn tay "hộ pháp" ấy, họ bị nhào nặn, bị bóp bẹp, bị kéo căng ra, nhưng không hề bị bóp méo. Đó quả là điều kỳ diệu..." - Đạo diễn Lê Hoàng', N'Bìa mềm', N'27/03/2023', 10, 2, 2, 2, N'5.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (6, N'Bí Quyết Kinh Doanh Của Người Do Thái (Tái bản năm 2022)', 98000, N'Có lẽ bạn đã từng nghe nói: Khi một ông chủ ngân hàng lớn người Do Thái “ho hắng” một tiếng, toàn bộ các ngân hàng trên thế giới sẽ bị “cảm cúm” ngay; hay: Năm tập đoàn tài chính lớn của người Do Thái liên hợp lại có thể khống chế toàn bộ thị trường vàng thế giới.

Không phải vô cớ mà người Do Thái được ca tụng như vậy. Hơn 2.000 năm sống phiêu bạt khắp nơi, người Do Thái đã tích lũy cho mình rất nhiều tri thức về thương trường thế giới. Họ nổi tiếng thế giới với tài kinh doanh, luôn tuân thủ pháp luật nhưng cũng sẵn sàng lách luật, luôn giữ chữ tín và đề cao trí tuệ trong kinh doanh... Tất cả được hệ thống hóa thành bí quyết kinh doanh của người Do Thái, giúp họ được đánh giá là “thương nhân số một thế giới”.

Do Thái là một trong những dân tộc thông minh nhất thế giới. Họ đã cống hiến cho nhân loại những bộ óc vĩ đại trong các lĩnh vực từ Khoa học Xã hội đến Khoa học Tự nhiên như Karl Marx, Einstein,… Do Thái còn là dân tộc giàu có nhất thế giới, với các gương mặt tiêu biểu như George Soros, Warren Buffett,… Có thể thấy, thành công của người Do Thái có sức ảnh hưởng vô cùng lớn không chỉ với nền kinh tế mà cả nền chính trị thế giới trong thời đại ngày nay.

Tiền của thế giới nằm trong túi của người Mỹ, tiền của người Mỹ lại nằm trong túi của người Do Thái, còn tiền của người Do Thái thì nằm trong bộ não của họ.', N'Bìa mềm', N'27/03/2023', 10, 3, 3, 3, N'6.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (7, N'Trí Tuệ Kinh Doanh Của Người Nhật (Tái bản năm 2022)', 128000, N'Điều gì đã làm nên hiện tượng được gọi là “thần kỳ kinh tế” Nhật Bản kéo dài suốt mấy thập niên?

Doanh nhân Nhật Bản đã làm thế nào để vươn lên từ những đổ nát điêu tàn của Thế chiến Thứ hai để chiếm lĩnh vị thế vững vàng trên thị trường sản phẩm Công nghệ như ngày hôm nay?

Trí Tuệ Kinh Doanh Của Người Nhật sẽ giúp bạn hiểu được quan niệm, triết lý và đạo đức kinh doanh của người Nhật, qua đó lý giải nguyên nhân dẫn đến thành Công vượt trội của họ trên thương trường. Từ những bài học kinh nghiệm của doanh nhân Nhật Bản trong các lĩnh vực quản lý, nhân sự, đàm phán..., bạn sẽ tìm thấy những chỉ dẫn khôn ngoan trong hoạt động kinh doanh và trong cuộc sống đời thường.

Con đường thành công của các nhà lãnh đạo doanh nghiệp tài ba được đề cập trong sách sẽ giúp bạn có được rất nhiều ý tưởng và sự gợi mở cho chính mình.', N'Bìa mềm', N'27/03/2023', 11, 3, 3, 3, N'7.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (8, N'Giáo Dục Đầu Đời Cho Trẻ - Những Bài Học Tự Bảo Vệ Bản Thân – Tớ Không Giữ Bí Mật Cho Kẻ Xấu', 42000, N'Trong xã hội ngày nay, việc trang bị cho trẻ em những kiến thức an toàn để tự bảo vệ bản thân là điều hết sức cần thiết. Thấu hiểu điều này, bộ sách Giáo Dục Đầu Đời Cho Trẻ - Những Bài Học Tự Bảo Vệ Bản Thân đã ra đời nhằm giúp các em nhận thức rõ về cơ thể mình, bồi dưỡng những quan niệm đúng đắn về giới tính, đồng thời nắm được những nguy cơ tiềm tàng trong cuộc sống, tránh xa mọi hiểm nguy.

Với nội dung được lồng ghép tinh tế kèm tranh minh họa sinh động, chắc chắn các em sẽ tiếp thu những điều bổ ích trong sách rất nhanh và dễ dàng áp dụng vào cuộc sống đấy! Hãy mở sách và khám phá nhé!', N'Bìa mềm', N'27/03/2023', 20, 2, 4, 4, N'8.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (9, N'Giáo Dục Đầu Đời Cho Trẻ - Những Bài Học Tự Bảo Vệ Bản Thân – Tớ Dũng Cảm Nói "Không"', 42000, N'Trong xã hội ngày nay, việc trang bị cho trẻ em những kiến thức an toàn để tự bảo vệ bản thân là điều hết sức cần thiết. Thấu hiểu điều này, bộ sách Giáo Dục Đầu Đời Cho Trẻ - Những Bài Học Tự Bảo Vệ Bản Thân đã ra đời nhằm giúp các em nhận thức rõ về cơ thể mình, bồi dưỡng những quan niệm đúng đắn về giới tính, đồng thời nắm được những nguy cơ tiềm tàng trong cuộc sống, tránh xa mọi hiểm nguy.

Với nội dung được lồng ghép tinh tế kèm tranh minh họa sinh động, chắc chắn các em sẽ tiếp thu những điều bổ ích trong sách rất nhanh và dễ dàng áp dụng vào cuộc sống đấy! Hãy mở sách và khám phá nhé!', N'Bìa mềm', N'27/03/2023', 30, 2, 4, 4, N'9.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (10, N'Giáo Dục Đầu Đời Cho Trẻ - Những Bài Học Tự Bảo Vệ Bản Thân – Nguy Hiểm Đấy, Mau Tránh Xa', 42000, N'Trong xã hội ngày nay, việc trang bị cho trẻ em những kiến thức an toàn để tự bảo vệ bản thân là điều hết sức cần thiết. Thấu hiểu điều này, bộ sách Giáo Dục Đầu Đời Cho Trẻ - Những Bài Học Tự Bảo Vệ Bản Thân đã ra đời nhằm giúp các em nhận thức rõ về cơ thể mình, bồi dưỡng những quan niệm đúng đắn về giới tính, đồng thời nắm được những nguy cơ tiềm tàng trong cuộc sống, tránh xa mọi hiểm nguy.

Với nội dung được lồng ghép tinh tế kèm tranh minh họa sinh động, chắc chắn các em sẽ tiếp thu những điều bổ ích trong sách rất nhanh và dễ dàng áp dụng vào cuộc sống đấy! Hãy mở sách và khám phá nhé!', N'Bìa mềm', N'27/03/2023', 20, 2, 4, 4, N'10.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (11, N'Giáo Dục Đầu Đời Cho Trẻ - Những Bài Học Tự Bảo Vệ Bản Thân – Không Được Chạm Vào Vùng Riêng Tư Của Tớ', 42000, N'Trong xã hội ngày nay, việc trang bị cho trẻ em những kiến thức an toàn để tự bảo vệ bản thân là điều hết sức cần thiết. Thấu hiểu điều này, bộ sách Giáo Dục Đầu Đời Cho Trẻ - Những Bài Học Tự Bảo Vệ Bản Thân đã ra đời nhằm giúp các em nhận thức rõ về cơ thể mình, bồi dưỡng những quan niệm đúng đắn về giới tính, đồng thời nắm được những nguy cơ tiềm tàng trong cuộc sống, tránh xa mọi hiểm nguy.

Với nội dung được lồng ghép tinh tế kèm tranh minh họa sinh động, chắc chắn các em sẽ tiếp thu những điều bổ ích trong sách rất nhanh và dễ dàng áp dụng vào cuộc sống đấy! Hãy mở sách và khám phá nhé!', N'Bìa mềm', N'27/03/2023', 10, 2, 4, 4, N'11.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (12, N'Đi Qua Hoa Cúc (Tái bản năm 2018)', 49000, N'Mùa hè năm ấy, Trường cảm nhận được những rung động đầu đời trước một hình bóng thiếu nữ. Giữa khung cảnh yên bình của làng quê và những trò láu cá với đám bạn, Trường bắt đầu trải qua các cung bậc cảm xúc của một cậu trai rụt rè lần đầu biết yêu, biết ghen khi người mình thương có tình cảm với một người đàn ông khác. Tình yêu đầu của cậu rực rỡ như màu vàng của bông hoa cúc trong vườn mà hai người từng cùng nhau ngồi ngắm những ngày hè khi Trường 16 tuổi, sắc vàng ấy mang theo một nỗi buồn cứ neo mãi trong lòng Trường. Đi qua hoa cúc, chỉ còn lại tiếc nuối và hoài niệm đã xa.', N'Bìa mềm', N'27/03/2023', 50, 4, 5, 5, N'12.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (13, N'Còn Chút Gì Để Nhớ (Tái bản năm 2018)', 45500, N'Đó là những kỷ niệm thời đi học của Chương, lúc mới bước chân vào Sài Gòn và làm quen với cuộc sống đô thị. Là những mối quan hệ bạn bè tưởng chừng hời hợt thoảng qua nhưng gắn bó suốt cuộc đời. Cuộc sống đầy biến động đã xô dạt mỗi người mỗi nơi, nhưng trải qua hàng mấy chục năm, những kỷ niệm ấy vẫn luôn níu kéo Chương về với một thời để nhớ', N'Bìa mềm', N'27/03/2023', 20, 4, 5, 5, N'13.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (14, N'Hoa Hồng Xứ Khác (Tái bản năm 2019)', 56000, N'Trong truyện, Ngữ, Khoa và Hòa lé đều say mê cô bạn cùng lớp Gia Khanh. Cái cô gái bị ba người cùng theo đó sẽ phải làm sao. Ba anh chàng làm gì để “chiến thắng”. Điều lý thú là gần như tác giả tái hiện lại thời học trò của mình với ngôn ngữ thời bây giờ nên các bạn đọc trẻ sẽ tìm thấy hình...', N'Bìa mềm', N'27/03/2023', 10, 4, 5, 5, N'14.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (15, N'Ngôi Trường Mọi Khi (Tái bản năm 2019)', 50400, N'Những câu chuyện về nhóm bạn học sinh năm đầu cấp 3 với bao kỷ niệm vui buồn hờn giận, bao nhiêu trò tinh nghịch của tuổi mới lớn. Với những Hạt tiêu, Tóc ngắn, Hột mít, Bảnh trai, Răng chuột, Mặt mụn… đã tạo nên không khí của một lớp học thật dễ thương với bao nhiêu tình cảm yêu thương, cảm...', N'Bìa mềm', N'27/03/2023', 10, 4, 5, 5, N'15.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (16, N'Luyện Chuyên Sâu Ngữ Pháp Và Bài Tập Tiếng Anh Lớp 7 - Tập 2 (Theo chương trình Global Success)
', 79000, N'Luyện Chuyên Sâu Ngữ Pháp Và Bài Tập Tiếng Anh phù hợp với các em từ lớp 6 tới lớp 9. Mỗi cuốn sách gồm các bài học với Từ vựng - Ngữ pháp - Bài tập tương ứng bám sát chương trình Tiếng Anh cấp THCS. Chúng tôi - những người biên soạn cuốn sách đã sắp xếp bộ đề theo cấp độ khó tăng dần, phù hợp với tất cả các đối tượng học sinh có học lực từ trung bình đến khá, giỏi.', N'Bìa mềm', N'27/03/2023', 10, 1, 1, 1, N'16.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (17, N'Luyện Viết Chữ Từ Vựng Tiếng Anh Theo Chương Trình Sách Giáo Khoa Lớp 3
', 35000, N'Luyện Viết Chữ Từ Vựng Tiếng Anh Theo Chương Trình Sách Giáo Khoa  là bộ tập viết được biên soạn cho các bé học sinh từ lớp 1 đến lớp 3, hỗ trợ các bé học hiệu quả, ghi nhớ nhanh từ vựng theo chương trình học trên lớp. Ưu điểm nổi bật của Luyện Viết Chữ Từ Vựng Tiếng Anh Theo Chương Trình...', N'Bìa mềm', N'27/03/2023', 20, 1, 1, 1, N'17.jpg')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaNSB], [MaChuDe], [MaTacGia], [Hinh]) VALUES (18, N'Bài Tập Bổ Trợ Nâng Cao Kỹ Năng Hóa Học Lớp 10 - Tập 1
', 126000, N'Bài tập bổ trợ nâng cao kỹ năng Hóa học dành cho học sinh khối Trung học Phổ thông là bộ sách giúp các em có một tài liệu để tự ôn luyện và nâng cao kỹ năng làm bài môn Hóa học và chuẩn bị cho các bài kiểm tra trên lớp cũng như chuẩn bị cho kì thi THPT Quốc Gia', N'Bìa mềm', N'27/03/2023', 10, 1, 1, 1, N'18.jpg')
GO
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (1, N'Đỗ Ngọc Thiện', N'252 Lý Chính Thắng', N'aaaaaa', N'0900001983')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (2, N'Dương Thụy', N'123 Quang Trung', N'aaa', N'0999999999')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (3, N'Tri Thức Việt', N'321 Hai Bà Trưng', N'acv', N'0969696969')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (4, N'Hồ Tâm', N'12 CMT8', N'ưqê', N'0902345000')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [DiaChi], [TieuSu], [DienThoai]) VALUES (5, N'Nguyễn Nhật Ánh', N'Quãng Nam', N'abc', N'0797979797')
GO
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [VaiTro]) VALUES (N'admin', N'123', N'admin')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [VaiTro]) VALUES (N'user', N'123', N'user')
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_Sach]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_ChuDe] FOREIGN KEY([MaChuDe])
REFERENCES [dbo].[ChuDe] ([MaChuDe])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_ChuDe]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaXuatBan] FOREIGN KEY([MaNSB])
REFERENCES [dbo].[NhaXuatBan] ([MaNSB])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaXuatBan]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TacGia] FOREIGN KEY([MaTacGia])
REFERENCES [dbo].[TacGia] ([MaTacGia])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TacGia]
GO
