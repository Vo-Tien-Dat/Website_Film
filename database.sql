USE [master]
GO
/****** Object:  Database [MOVIES]    Script Date: 2/20/2022 10:51:31 AM ******/
CREATE DATABASE [MOVIES]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MOVIES', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MOVIES.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MOVIES_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MOVIES_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MOVIES] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MOVIES].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MOVIES] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MOVIES] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MOVIES] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MOVIES] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MOVIES] SET ARITHABORT OFF 
GO
ALTER DATABASE [MOVIES] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MOVIES] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MOVIES] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MOVIES] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MOVIES] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MOVIES] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MOVIES] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MOVIES] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MOVIES] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MOVIES] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MOVIES] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MOVIES] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MOVIES] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MOVIES] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MOVIES] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MOVIES] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MOVIES] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MOVIES] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MOVIES] SET  MULTI_USER 
GO
ALTER DATABASE [MOVIES] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MOVIES] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MOVIES] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MOVIES] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MOVIES] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MOVIES] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MOVIES] SET QUERY_STORE = OFF
GO
USE [MOVIES]
GO
/****** Object:  Table [dbo].[INFORFILM]    Script Date: 2/20/2022 10:51:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFORFILM](
	[idinfor] [nchar](100) NOT NULL,
	[year] [nchar](4) NULL,
	[director] [nchar](100) NULL,
	[actor] [nvarchar](max) NULL,
	[id] [nvarchar](10) NOT NULL,
	[description] [nvarchar](max) NULL,
	[country] [nvarchar](50) NULL,
	[urlimage] [nvarchar](max) NULL,
 CONSTRAINT [PK_INFORMOVIES] PRIMARY KEY CLUSTERED 
(
	[idinfor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MOVIES]    Script Date: 2/20/2022 10:51:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MOVIES](
	[id] [nvarchar](10) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[type] [nvarchar](5) NOT NULL,
	[router] [nvarchar](100) NOT NULL,
	[urlimage] [nvarchar](100) NULL,
 CONSTRAINT [PK_INFOR_MOVIE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TYPEFILM]    Script Date: 2/20/2022 10:51:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TYPEFILM](
	[idtype] [nvarchar](5) NOT NULL,
	[nametype] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TYPE] PRIMARY KEY CLUSTERED 
(
	[idtype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIDEOFILM]    Script Date: 2/20/2022 10:51:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIDEOFILM](
	[idvideo] [nchar](100) NOT NULL,
	[urlvideo] [nvarchar](1000) NOT NULL,
	[id] [nvarchar](10) NOT NULL,
	[episode] [nvarchar](4) NOT NULL,
	[routervideo] [nvarchar](50) NULL,
 CONSTRAINT [PK_VIDEOMOVIES] PRIMARY KEY CLUSTERED 
(
	[idvideo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'1                                                                                                   ', N'2000', N'N/A                                                                                                 ', N'Vin Diesel, Paul Walker, Jordana Brewster', N'1', N'Bộ phim mở màn với cảnh cướp xe tải khá ngoạn mục và hoàn toàn mang tính bất khả thi ở ngoài đời. Sau hàng loạt những vụ cướp như thế, cánh xe tải bắt đầu gây áp lực mạnh với FBI. Bằng mọi giá, cơ quan điều tra phải ra tay ngăn chặn băng cướp nguy hiểm và táo tợn này… Brian (Paul Walker) là tay lang thang, đói meo và nóng lòng được nếm trải giới hạn của tốc độ. Anh tự hào về tài lái xe lả lướt của mình, thế nhưng với dân đua xe, anh chỉ là tay mơ. Với chiếc xe được lắp thêm bộ tăng tốc NOS, anh đi tìm Dominic để xin được tham dự làng đua. Dominic Toretto (Vin Diesel) xem các con đường ở Los Angeles như sân nhà mình. Ngôi vị ông hoàng tốc độ của anh chưa ai có đủ khả năng để lật đổ. Suốt ngày anh làm việc trong garage, mày mò tìm cách cải tiến kết cấu xe sao cho đạt được tốc độ tối ưu. Với anh điều này quan trọng và mang tính nghệ sĩ hơn nhiều so với những ống NOS được điều khiển bằng máy tính.Sau màn đua bạt mạng và bị cảnh sát đuổi bắt, Brian đã quay lại cứu Dominic khỏi chiếc còng đang sắp sửa bập vào tay anh chàng. Kể từ đó Brian được Dominic nhận vào đội, và cũng từ đó mối tình giữa Brian với Mia (Jordana Brewster) – em gái Dominic – cũng bắt đầu này nở. Thực chất, Brian là nhân viên mật của FBI được cử đi phá chuyên án Băng Cướp Tốc Độ đang gieo rắc kinh hoàng trên khắp các xa lộ. Sau lần chạm trán với băng du đãng do Johny Trần (Rick Yune) cầm đầu, và với cảnh tiền chảy như suối sau các cuộc đua, Brian lờ mờ biết rằng có sự mờ ám trong mớ tiền này. Cả Dominic lẫn Johny Trần đều khả nghi. Click this bar to view the full image.Khi cuộc đối đầu giữa nhóm Dominic và băng Johny Trần lên đến đỉnh điểm, đó cũng là lúc mối ràng buộc giữa Brian với Dominic và Mia trở nên ngày càng sâu đậm. Anh cảm thấy mình có mội mối quan hệ thật khắng khít với Dominic, và tình cảm giữa anh với Mia không thể nào chia lìa được. Nhưng anh lại là một cảnh sát với đầy đủ những nghĩa vụ thiêng liêng trước người dân, các áp lực đòi phá vụ án đánh cướp xe tải không ngừng tăng lên, Brian buộc phải quyết định đặt lòng trung thành của mình vào nơi nào và tìm xem giới hạn thật sự của bản thân mình là ở đâu.Bộ phim có tiết tấu nhanh và khá lôi cuốn. Các cảnh đua xe chỉ-có-trong-phim và âm thanh thật sống động hẳn sẽ làm hài lòng những khán giả thích sôi động. Đây là một bộ phim thuần tuý giải trí, nhưng cũng đủ làm bệ phóng để đưa Vin Diesel lên hàng ngôi sao phim hành động mới trong làng phim Hollywood. Tuy nhiên, cũng có điều phải nhắc nhở ở đây: Dominic, Brian và đám anh hùng xa lộ trong phim có thể sống sót với vài vết trầy xước sau những màn đâm xe đến bẹp dúm. Còn bạn, nếu bạn ngẫu hứng mà làm theo, thì chắn chắn kết quả sẽ ngược lại: chiếc xe trầy xước.', N'Mỹ', N'fastandfurious1.jpg')
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'10                                                                                                  ', N'2021', N'Tetsuo Yajima                                                                                       ', N'James Carter Cathcart, Megumi Hayashibara, Inuko Inuyama, Unshô Ishizuka, Michele Knotz, Rica Matsumoto, Shin''ichirô Miki, Sarah Natochenny, Rodger Parsons, Bill Rogers, Jake Paque, Haven Paschall, Laurie Hymes, Eddy Lee, Lisa Ortiz', N'10', N'Như thường lệ mỗi năm, Pokemon sẽ cho ra mắt một phần mới của series phim hoạt hình nổi tiếng từ Nhật Bản. Trong năm nay, nội dung phim sẽ tiếp tục xoay quanh câu chuyện của phần trước về nhân vật Pokemon Lugia trong truyền thuyết & sự gặp gỡ tình cờ của 5 huấn luyện viên Pokemon khi tham gia vào lễ hội Gió linh thiêng tại thành phố Fury. Theo phong tục, vào ngày cuối cùng của lễ hội, Pokemon Lugia sẽ ban phước lành cho người dân. Tuy nhiên, khi một sự kiện bất ngờ xảy ra, những cơn gió biến mất và thành phố bị đe dọa bởi một cuộc tấn công bí ẩn. Satoshi & Pikachu đã đứng lên kêu gọi những người bạn mới ra sức bảo vệ thành phố …', N'Nhật Bản', NULL)
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'11                                                                                                  ', N'2017', N'Thẩm Dục Kiệt                                                                                       ', N'Văn Trác, Lâu Giai Duyệt, Trương Khánh Khánh', N'11', N'Phim Thợ Săn Linh Hồn: Trong giới pháp thuật, anh chàng Tô Dương được biết đến là một “Thợ Săn Linh Hồn” vì sự tinh thông thuật thiên địa hơn người. Sau khi đến kim thành , anh bị cuốn vào hàng loạt chuyện thần bí. Bằng cách vận dụng sở trường kỹ năng âm dương ngũ hành vốn có, liệu anh có đủ sức chống lại thế lực ma quỷ, vạch trần sự thật.
', N'Trung Quốc', NULL)
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'12                                                                                                  ', N'2016', N'Shin Hirano, Hiroshi Nishitani                                                                      ', N'Miki Mizuno, Kaho, Masaharu Fukuyama, Sakura Fujiwara, Masaki Suda, Shogo Sakamoto', N'12', N'Trong phim Giai Điệu Tình Yêu, Kohei Kamishiro (Masaharu Fukuyama) từng là một nhạc sĩ . Anh duy nhất có một bản “hit” không may thì hợp đồng thu âm cũng bị hủy bỏ. Từ đó anh cũng bỏ luôn con đường âm nhạc. 20 năm sau, Kohei Kamishiro vẫn giữ khoảng cách với âm nhạc nhưng niềm đam mê trong anh vẫn chưa phai mờ. Một ngày nọ anh gặp một cô gái bị tật nói lắp và có một cuộc sống đơn độc. Bằng giọng hát của cô gái ấy đã khiến Kohei một lần nữa quay trở lại con đường âm nhạc.', N'Nhật Bản', NULL)
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'13                                                                                                  ', N'2019', N'N/A                                                                                                 ', N' Chang Ki-Yong, Nana, Ji Il-Joo, Lee Jae-Won', N'13', N'Kim Soo-Hyun (Chang Ki-Yong) là một sát thủ tài ba. Anh ta giết chết mục tiêu của mình và biến mất. Danh tính của anh ta như không ai hay biết. Các cá nhân, băng đảng và tổ chức từ khắp nơi trên thế giới thuê Kim Soo-Hyun. Nhưng sâu thẳm trong tâm trí anh, anh muốn có được tình cảm từ mọi người. Giờ đây Kim Soo-Hyun phải tìm gia đình mình.', N'Hàn Quốc', NULL)
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'14                                                                                                  ', N'2021', N'Jo Hyun-Tak                                                                                         ', N'Jung Hae In, Kim Ji Soo, Jang Seung Jo, Yoo In Na, Kim Hye Yoon, Yoon Se Ah', N'14', N'Snowdrop Hoa Tuyết Điểm phim kể về sau một biến cố đau buồn, cô gái trẻ Yoo So Na tập trung vào công việc trồng hoa trong vườn Snow Drop của mình. Tuy nhiên, cô bị người cha góa ép buộc phải quay lại trường trung học mới. Cô ấy rất đau khổ cho đến khi gặp Oh Hae Gi, một người mẫu trẻ. Họ dễ dàng hiểu nhau vì cả hai điều có một quá khứ bi thảm. Trái với mong muốn của gia đình, họ yêu nhau. Tuy nhiên, gia đình của họ có những bí mật đen tối. Trên thực tế, anh trai của Hae Gi đã bắt cóc So Na, lúc đó mới 12 tuổi và gây ra cái chết của mẹ cô. Bạn của So Na, Ha Da, phải lòng Ko Mo, người tình cờ là anh trai của Hae Gi, người mà anh ấy tin là một cô gái. So Na buộc phải kết hôn với Kwon Hwi Rin, cháu trai của bạn ông Yoo.', N'Hàn Quốc', N'snowdrop.jpg')
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'15                                                                                                  ', N'2021', N'Kim Yoon Jin                                                                                        ', N' Choi Woo-Sik, Kim Da-Mi, Kim Sung Chul, Roh Jeong Eui', N'15', N'Mùa hè yêu dấu của chúng ta là một bộ phim hài lãng mạn kể về tình yêu tuổi trẻ của Choi Woong (Choi Woo-Sik) và Kook Yeon-Soo (Kim Da-Mi). Họ là bạn thân thời trung học, từng có một tình yêu mãnh liệt và cùng nhau làm một bộ phim tài liệu. Tuy nhiên, tính cách trái ngược của họ đã dẫn đến cuộc chia tay và họ hứa sẽ không bao giờ gặp lại nhau nữa. Mười năm sau, bộ phim tài liệu của họ bỗng trở nên nổi tiếng. Điều này làm dấy lên sự quan tâm của Kim Ji-Woong (Kim Sung-Cheol), bạn thời thơ ấu của Choi Woong, đồng thời cũng là một đạo diễn phim tài liệu. Bị cuốn hút bởi những chuyện đã xảy ra giữa Choi Woong và Yeon-Soo, Ji-Woong đã cố gắng thuyết phục hai người đoàn tụ và tạo ra phần tiếp theo cho bộ phim tài liệu. Sau nhiều lần tranh cãi, cặp đôi mới đồng ý. Tuy nhiên, họ đã không lường trước được những vấn đề xảy ra khi họ tái hiện lại mối quan hệ trong quá khứ, cũng như con người hiện tại của họ…', N'Hàn Quốc', NULL)
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'16                                                                                                  ', N'2010', N' Martin Scorsese                                                                                    ', N' Ben Kingsley, Leonardo DiCaprio, Mark Ruffalo, Max von Sydow', N'16', N'Phim Đảo Kinh Hoàng Vào năm 1954, hai phó nghị sĩ Teddy Daniels và Chuck Aule được giao trọng trách tìm hiểu vụ mất tích của phụ nữ đã giết chết 3 đứa con, Rachel Solando – bệnh nhân của bệnh viện dành cho tội phạm tâm thần Ashecliffe trên đảo Shutter - Boston.', N'Mỹ', NULL)
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'17                                                                                                  ', N'2020', N'Ángel Gómez Hernández                                                                               ', N' Ana Fernández, Ramón Barea, Belén Fabra, Javier Botet, Rodolfo Sancho, Lucas Blas, Nerea Barros, Beatriz Arjona, José Bermúdez, José Luis Lozano, Rubén Corvo, Rosa Álvarez, Álvaro Fontalba, Aitor Toro, Viti Suárez', N'17', N'Daniel và Sara có một cậucon trai 9 tuổi tên Eric và họ vừa chuyển tới một ngôi nhà mới. Điều mà họkhông biết rằng ngôi nhà đó được người dân trong khu gọi là “Ngôi nhà của nhữngtiếng nói.” Và rồi Daniel bắt đầu để ý những giọng nói kì lạ vang lên đằng saunhững cánh cửa.', N'Canada', NULL)
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'18                                                                                                  ', N'2020', N'Leigh Whannell                                                                                      ', N'Elisabeth Moss, Oliver Jackson-Cohen, Storm Reid', N'18', N'Kẻ Vô Hình xoay quanh Cecilia Kass - cô gái bị mắc kẹt trong mối quan hệ đầy kiểm soát và bạo lực với khoa học gia tài năng và giàu có tên Adrian Griffin.', N'Mỹ', NULL)
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'19                                                                                                  ', N'2021', N'Justin Lin                                                                                          ', N'Vin Diesel, Tyrese Gibson, Cody Rain Murray, Krzysztof Mardula, John Cena', N'19', N'Fast & Furious 9: Huyền thoại tốc độ (F9) khi mà Dominic Toretto đang có một cuộc sống yên tĩnh ngoài lưới điện với Letty và con trai của anh ta, cậu bé Brian, nhưng họ biết rằng nguy hiểm luôn rình rập ngay phía chân trời yên bình của họ. Lần này, mối đe dọa đó sẽ buộc Dom phải đối mặt với tội lỗi trong quá khứ của mình nếu anh ấy định cứu những người anh ấy yêu thương nhất. Phi hành đoàn của anh ấy tham gia cùng nhau để ngăn chặn một âm mưu kinh hoàng thế giới được dẫn dắt bởi sát thủ lành nghề nhất và người lái xe hiệu suất cao nhất mà họ từng gặp: một người đàn ông cũng là người anh trai bị bỏ rơi của Dom, Jakob.', N'Anh, Mỹ', NULL)
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'2                                                                                                   ', N'2003', N'John Singleton                                                                                      ', N'Mo Gallini, Jin Auyeung, Devon Aoki, Tyrese Gibson, Cole Hauser, Mark Boone Junior, Michael Ealy, Ludacris, Thom Barry, James Remar, Roberto ''sanz'' Sanchez, Edward Finlay, Amaury Nolasco, Eva Mendes, Paul Walker', N'2', N'Brian O''Conner là một cảnh sát giỏi bị mất chức chỉ vì bọn tội phạm đã sử dụng những thủ đoạn quá tinh vi. Và nay anh có cơ hội chuộc lại lỗi lẫm với cuộc thử thách lần hai. Để thực hiện nhiệm vụ của mình, Brian O''Conner phải gia nhập hội đua xe trái phép trên các đường phố Miami để tìm kiếm tung tích Carter Verone, một tên tội phạm chuyên buôn ma tuý và rửa tiền.Anh và cậu bạn thân Roman Pearce được giao nhiệm vụ chuyển số tiền phi pháp cho Carter Verone hiện đang núp dưới danh nghĩa một thương gia xuất nhập khẩu ở Miami. Ngoài Roman Pearce, Brian O''Conner còn nhận được sự giúp đỡ của nữ mật vụ tài năng và hấp dẫn, Monica Clemente, trong vai người yêu bất đắc dĩ của Carter Verone. Và cuộc phiêu lưu cùng những pha rượt đuổi bắt đầu...', N'Mỹ', N'fastandfurious2.jpg')
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'20                                                                                                  ', N'2012', N'Roel Reiné                                                                                          ', N'Luke Goss, Ving Rhames, Danny Trejo, Dougray Scott, Fred Koehler, Tanit Phoenix, Robin Shou, Bart Fouche, Jeremy Crutchley, Eugene Khumbanyiwa, Mark Elderkin, Hlubi Mboya, Roxane Hayward, Michael Dube, Michelle Van Schaik', N'20', N'Nếu bạn là 1 fan của bộ phim Death Race, hẳn bạn sẽ rất vui mừng vì đạo diễn Roel Reine vừa trở lại cùng phần 3 của bộ phim Death Race 3 : Inferno. Phần 1 của Death Race ra mắt vào năm 2008 với nam tài tử Jason Statham trong vai một tù nhân phải tham gia cuộc đua sinh tử với những người bạn tù và người chiến thắng sẽ có được tự do, sang phần 2 bộ phim giới thiệu một nhân vật mới: Frankenstein được diễn bởi diễn viên Luke Goss, đến phần 3 Goss quay trở lại vai Frankenstein với cuộc đua tại một địa điểm mới: sa mạc Kalahari Nam Phi. Giống như những phần trước của bộ phim, Death Race 3 mang tới những cuộc đua xe tốc độ đầy tàn khốc với những chiếc xe tự chế theo phong cách Mad-Max, đầy súng ống. Bộ phim được dự kiến sẽ ra mắt vào đầu năm sau.', N'Mỹ', NULL)
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'3                                                                                                   ', N'2019', N'Kim Sung-hoon                                                                                       ', N'Kim Eui-sung, Jeong Man-sik, Jo Woo-jin', N'3', N'Dạ Quỷ là câu chuyện về hoàng tử Lee ở triều đại Joseon, người nổi tiếng có võ thuật cao cường. Trở về sau khoảng thời gian dài bị đày ải bởi nhà Thanh, Ngài đau lòng chứng kiến cả quê hương chìm trong một đại dịch của những “ác quỷ bóng đêm”. Liệu rằng vị hoàng tử Lee có ngăn được cơn cuồng nộ của đội quân quỷ dữ này và cứu được giang sơn?', N'Hàn Quốc', NULL)
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'4                                                                                                   ', N'2021', N'Rawson Marshall Thurber                                                                             ', N'Dwayne Johnson, Ryan Reynolds, Gal Gadot, Ritu Arya, Chris Diamantopoulos', N'4', N'Lệnh Truy Nã Đỏ Red Notice là một bộ phim hài hành động của Mỹ năm 2021 do Rawson Marshall Thurber viết kịch bản và đạo diễn. Phim có sự tham gia của Dwayne Johnson trong vai một đặc vụ FBI, người bất đắc dĩ phải hợp tác với một tên trộm nghệ thuật nổi tiếng để truy bắt một tên tội phạm đang manh nha Tác phẩm lấy bối cảnh cuộc chiến chống tội phạm đa quốc gia của các nhân viên Interpol đang trở nên nóng hơn bao giờ hết. Hành trình truy dấu các tên tội phạm trộm cướp chuyên nghiệp và tinh vi đang được ưu tiên hàng đầu. Dwayne Johnson vào vai nhân viên đặc vụ FBI - John Hartley, người được mệnh danh là kẻ theo dấu vĩ đại nhất trên thế giới. Nhiệm vụ của anh lần này là truy bắt cặp siêu trộm thần bí và nguy hiểm đang bị truy nã. Còn Ryan Reynolds sẽ hóa thân thành một thiên tài lừa đảo khét tiếng trong Lệnh truy nã đỏ - Red Notice tên là Nolan Booth, người đang bị truy nã xếp thứ hai trên thế giới. Nolan Booth sau đó đã được John Hartley thua để giúp anh tóm được siêu trộm nghệ thuật Sarah Black, còn được gọi là The Bishop (Gal Gadot), một cô nàng phù thuỷ chuyên đánh cắp các tác phẩm nghệ thuật đắt giá nhất thế giới và có nguồn tin cô ta đang để ý tới những quả trứng Cleopatra vô giá.', N'Mỹ', NULL)
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'5                                                                                                   ', N'2004', N'Sam Raimi                                                                                           ', N'J.K. Simmons, James Franco, Alfred Molina, Kirsten Dunst, Tobey Maguire', N'5', N'Spider Man 2 là phần thứ 2 của loạt phim Spider Man. Hai năm trôi qua kể từ ngày Peter Parker phát hiện ra khả năng kì lạ của mình. Anh phải luôn cố gắng cân bằng hai số phận khác nhau trong cùng con người mình: Người nhện trừ gian diệt bạo và một cậu sinh viên bình thường. Peter quyết định nói sự thật với Mary Jane. Tình bạn thân thiết giữa Peter và Harry ngày càng phức tạp bởi sau cái chết của cha mình, Harry luôn nuôi mối thù với Người Nhện. Và trong tập này, Người Nhện phải đối mặt với một kẻ độc ác khác Giáo sư Bạch Tuộc.', N'Mỹ', NULL)
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'6                                                                                                   ', N'2022', N'James Wan                                                                                           ', N'Jason Momoa, Amber Heard, Yahya Abdul-Mateen II', N'6', N'Aquaman được đạo diễn nổi tiếng với dòng phim kinh dị như Saw, Insidious, The Conjuring, The Nun và Annabelle đó là James Wan, nên có thể Aquaman sẽ không đi theo phong cách vui tươi hay bừng sức sống nhưng phần trước. Tại sự kiện DC FanDome, đao diễn James Wan đã trả lời bài phỏng vấn với lời lẽ xác nhận một số tình tiết "kinh dị" sẽ có trong bộ phim. Cụ thể câu nói của ông như sau: “Cũng giống như phân cảnh tấn công của bọn Trench trong phần phim đầu tiên, phần 2 của Aquaman sẽ có một vài điểm nhấn kinh dị. Tôi nghĩ những chi tiết này là một phần của con người tôi, và nó đều tự nhiên xuất hiện khi tôi làm những bộ phim như thế này. Với phim như Aquaman, bạn cũng biết rằng thế giới dưới nước có thể trở nên cực kỳ đáng sợ. Vậy nên tình yêu cho dòng phim kinh dị của tôi cũng khiến tôi xây dựng nên những cảnh phim với chất riêng của mình thế này, một cách rất tự nhiên.” Warrner Bros đã bật đèn xanh cho dự án Aquaman 2 này vào đầu năm 2019 và phim sẽ dự kiến công chiếu vào ngày 16/12/2022 - 4 năm sau phần một. Phần phim này sẽ có sự trở lại của dàn diễn viên cũ cùng đạo diễn James Wan và biên kịch David Leslie Johnson-McGoldrick.', N'Mỹ', NULL)
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'7                                                                                                   ', N'2021', N' N/A                                                                                                ', N' N/A', N'7', N'Là phần tiếp theo của ''''Bạch Xà Duyên Khởi'''' : Những năm cuối thời Nam Tống, Tiểu Bạch vì cứu Hứa Tiên mà dâng nước nhấn chìm Kim Sơn Tự, cuối cùng bị Pháp Hải phong ấn dưới Lôi Phong Tháp. Tiểu Thanh ngoài ý muốn bị Pháp Hải đánh rơi vào huyễn cảnh Tu La Thành. Gặp nguy hiểm nhiều lần nhưng Tiểu Thanh đều được thiếu niên che mặt thần bí cứu giúp, Tiểu Thanh mang theo chấp niệm đi cứu Tiểu Bạch trải qua khó khăn và trưởng thành, cùng thiếu niên che mặt cùng nhau tìm cách rời khỏi đây', N'Trung Quốc', NULL)
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'8                                                                                                   ', N'2014', N'Jun Chang Geun                                                                                      ', N' Park Hyung shik, Kim Hyun Joo, Kim Sang Kyung', N'8', N'"Gia Đình Kỳ Quặc" What Happens To My Family kể về cuộc sống của gia đình Kim Sang Kyung vô cùng đặc biệt, nổi loạn nhất khu phố, mỗi thành viên trong gia đình đều có tính cách riêng, sống độc lập không muốn lệ thuộc nhau, họ theo phong cách sống hiện đại. Tuy vậy, giữa họ luôn có một mối liên kết đặc biệt với nhau.', N'Hàn Quốc', NULL)
INSERT [dbo].[INFORFILM] ([idinfor], [year], [director], [actor], [id], [description], [country], [urlimage]) VALUES (N'9                                                                                                   ', N'2015', NULL, N'Pattie - Ungsumalin Sirapatsakmetha, Sananthachat', N'9', N'Vươn Tới Vì Sao: Marvin (Kang), chàng trai với hoài bão được bước chân vào giới nghệ thuật, nhưng lại bị mắc kẹt với ước muốn của cha mình là kế thừa lại sự nghiệp của ông. Tưởng chừng như Marvin sẽ từ bỏ ước mơ của mình thì cậu đã gặp được Torfun (Pattie), đã làm trỗi dậy niềm đam mê với âm nhạc của Marvin. Liệu những chàng trai cô gái này sẽ thực hiện được ước mơ của mình, hay sẽ từ bỏ nó để đi theo con đường mà gia đình đã chọn lựa?', N'Thái Lan', NULL)
GO
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'1         ', N'Fast and Furious 1', N'hd', N'fast-and-furious-1                                                                                  ', N'fastandfurious1.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'10', N'Pokemon: Phiêu lưu Pikachu', N'hh', N'pokemon                                                                                             ', N'pokemon.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'11 ', N'Thợ săn yêu tinh: Titan nổi dậy', N'hh', N'tho-san-yeu-tinh                                                                                    ', N'thosan.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'12', N'Lắng nghe giai điệu tình yêu', N'lm', N'lang-nghe-giai-dieu-tinh-yeu                                                                        ', N'langnghe.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'13', N'Kill It', N'lm', N'truy-sat                                                                                            ', N'killit.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'14', N'Snow Drop', N'lm', N'hoa-diem-xuyet                                                                                      ', N'snowdrop.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'15', N'mùa hè yêu dấu của chúng ta', N'lm', N'mua-he-yeu-dau-cua-chung-ta                                                                         ', N'muahe.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'16', N'Đảo Kinh Hoàng', N'kd', N'dao-kinh-hoang                                                                                      ', N'daokinhhoang.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'17', N'Don''t Listen', N'kd', N'dung-nghe                                                                                           ', N'khongnghe.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'18', N'Kẻ vô hình', N'kd', N'ke-vo-hinh                                                                                          ', N'ketvohinh.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'19', N'Fast and Furious 9', N'hd', N'fast-and-furious-9                                                                                  ', N'fastandfurious9.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'2         ', N'Fast and Furious 2', N'hd', N'fast-and-furious-2                                                                                  ', N'fastandfurious2.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'20', N'Cuộc đua chết chóc', N'hd', N'cuoc-dua-chet-choc                                                                                  ', N'cuocduachetchoc.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'3         ', N'Ấn quỷ', N'kd', N'an-quy                                                                                              ', N'anquy.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'4', N'lệnh truy nã đỏ', N'pl', N'lenh-truy-na-do                                                                                     ', N'lenhtruynado.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'5', N'người nhện', N'pl', N'nguoi-nhen                                                                                          ', N'nguoinhen.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'6', N'Aquaman', N'pl', N'aquaman                                                                                             ', N'aquaman.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'7', N'Bạch xà 2', N'pl', N'bach-xa-2                                                                                           ', N'bachxa2.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'8', N'Gia dinh', N'hh', N'gia-dinh                                                                                            ', N'giadinh.jpg')
INSERT [dbo].[MOVIES] ([id], [name], [type], [router], [urlimage]) VALUES (N'9', N'Vươn tới cung trăng', N'hh', N'vuon-toi-cung-trang                                                                                 ', N'vuontoicungtrang.jpg')
GO
INSERT [dbo].[TYPEFILM] ([idtype], [nametype]) VALUES (N'ct', N'phim-co-trang')
INSERT [dbo].[TYPEFILM] ([idtype], [nametype]) VALUES (N'hd', N'phim-hanh-dong')
INSERT [dbo].[TYPEFILM] ([idtype], [nametype]) VALUES (N'hh', N'phim-hoat-hinh')
INSERT [dbo].[TYPEFILM] ([idtype], [nametype]) VALUES (N'kd', N'phim-kinh-di')
INSERT [dbo].[TYPEFILM] ([idtype], [nametype]) VALUES (N'lm', N'phim-lang-man')
INSERT [dbo].[TYPEFILM] ([idtype], [nametype]) VALUES (N'pl', N'phim-phieu-luu')
GO
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'1                                                                                                   ', N'111.mp4                                                                                             ', N'1', N'1   ', N'1-1-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'10                                                                                                  ', N'10101.mp4                                                                                           ', N'10', N'1   ', N'10-10-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'11                                                                                                  ', N'11111.mp4                                                                                           ', N'11', N'1   ', N'11-11-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'12                                                                                                  ', N'12121.mp4                                                                                           ', N'12', N'1   ', N'12-12-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'13                                                                                                  ', N'13131.mp4                                                                                           ', N'13', N'1   ', N'13-13-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'14                                                                                                  ', N'14141.mp4', N'14', N'1   ', N'14-14-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'15                                                                                                  ', N'15151.mp4                                                                                           ', N'15', N'1   ', N'15-15-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'16                                                                                                  ', N'16161.mp4                                                                                           ', N'16', N'1   ', N'16-16-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'17                                                                                                  ', N'17171.mp4                                                                                           ', N'17', N'1   ', N'17-17-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'18                                                                                                  ', N'18181.mp4                                                                                           ', N'18', N'1   ', N'18-18-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'19                                                                                                  ', N'19191.mp4                                                                                           ', N'19', N'1   ', N'19-19-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'2                                                                                                   ', N'221.mp4                                                                                             ', N'2', N'1   ', N'2-2-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'20                                                                                                  ', N'20201.mp4                                                                                           ', N'20', N'1   ', N'20-20-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'21                                                                                                  ', N'2112.mp4                                                                                            ', N'1', N'2   ', N'21-1-2')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'22                                                                                                  ', N'22142.mp4', N'14', N'2', N'22-14-2')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'23                                                                                                  ', N'23143.mp4                                                                                           ', N'14', N'3', N'23-14-3')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'3                                                                                                   ', N'331.mp4                                                                                             ', N'3', N'1   ', N'3-3-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'4                                                                                                   ', N'441.mp4                                                                                             ', N'4', N'1   ', N'4-4-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'5                                                                                                   ', N'551.mp4                                                                                             ', N'5', N'1   ', N'5-5-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'6                                                                                                   ', N'661.mp4                                                                                             ', N'6', N'1   ', N'6-6-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'7                                                                                                   ', N'771.mp4                                                                                             ', N'7', N'1   ', N'7-7-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'8                                                                                                   ', N'881.mp4                                                                                             ', N'8', N'1   ', N'8-8-1')
INSERT [dbo].[VIDEOFILM] ([idvideo], [urlvideo], [id], [episode], [routervideo]) VALUES (N'9                                                                                                   ', N'991.mp4                                                                                             ', N'9', N'1   ', N'9-9-1')
GO
ALTER TABLE [dbo].[INFORFILM]  WITH CHECK ADD  CONSTRAINT [FK_INFORMOVIES_MOVIE] FOREIGN KEY([id])
REFERENCES [dbo].[MOVIES] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[INFORFILM] CHECK CONSTRAINT [FK_INFORMOVIES_MOVIE]
GO
ALTER TABLE [dbo].[MOVIES]  WITH CHECK ADD  CONSTRAINT [FK_MOVIE_TYPE] FOREIGN KEY([type])
REFERENCES [dbo].[TYPEFILM] ([idtype])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MOVIES] CHECK CONSTRAINT [FK_MOVIE_TYPE]
GO
ALTER TABLE [dbo].[VIDEOFILM]  WITH CHECK ADD  CONSTRAINT [FK_VIDEOMOVIES_MOVIE] FOREIGN KEY([id])
REFERENCES [dbo].[MOVIES] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[VIDEOFILM] CHECK CONSTRAINT [FK_VIDEOMOVIES_MOVIE]
GO
USE [master]
GO
ALTER DATABASE [MOVIES] SET  READ_WRITE 
GO
