USE [TourBooking]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 4/25/2018 10:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 4/25/2018 10:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBooking]    Script Date: 4/25/2018 10:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBooking](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[TourId] [int] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Contact] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Remark] [nvarchar](50) NULL,
	[DetailInfo] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblBooking] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDayActivity]    Script Date: 4/25/2018 10:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDayActivity](
	[DayID] [int] IDENTITY(1,1) NOT NULL,
	[DayTitle] [nvarchar](50) NULL,
	[Tour_ID] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[Extra] [nvarchar](50) NULL,
	[ExtraTwo] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblDayActivity] PRIMARY KEY CLUSTERED 
(
	[DayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGallery]    Script Date: 4/25/2018 10:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGallery](
	[Image_ID] [int] IDENTITY(1,1) NOT NULL,
	[Tour_ID] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[Extra] [nvarchar](50) NULL,
	[ExtraTwo] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblGallery] PRIMARY KEY CLUSTERED 
(
	[Image_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPackage]    Script Date: 4/25/2018 10:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPackage](
	[Tour_ID] [int] IDENTITY(1,1) NOT NULL,
	[Tour_Name] [nvarchar](50) NULL,
	[Package_Image] [nvarchar](max) NULL,
	[Packagedetails] [nvarchar](max) NULL,
	[OfferInclude] [nvarchar](max) NULL,
	[OfferExclude] [nvarchar](max) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Status] [nvarchar](50) NULL,
	[Price] [int] NULL,
	[Extra] [nvarchar](50) NULL,
	[Extratwo] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblPackage] PRIMARY KEY CLUSTERED 
(
	[Tour_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReview]    Script Date: 4/25/2018 10:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReview](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Review] [nvarchar](max) NULL,
	[Tour_ID] [int] NULL,
	[Extra] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblReview] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([id], [username], [password], [role_id]) VALUES (1, N'user', N'user', 2)
INSERT [dbo].[Login] ([id], [username], [password], [role_id]) VALUES (2, N'admin', N'admin', 1)
SET IDENTITY_INSERT [dbo].[Login] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([role_id], [role]) VALUES (1, N'user')
INSERT [dbo].[Role] ([role_id], [role]) VALUES (2, N'admin')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[tblBooking] ON 

INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (0, 1, N'user', NULL, NULL, NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (1, 2, N'user', NULL, NULL, NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (2, 3, N'user', NULL, NULL, NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (3, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (4, 1, N'ujal', NULL, NULL, NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (5, 2, N'user', N'34567890', N'sdfghjkl;', NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (6, 2, N'user', N'12345', N'sdfhgj', NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (7, 3, N'user', N'9860434364', N'nirajbokati@gmail.com', NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (8, 0, N'user', N'9850434323', N'niraj.com', NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (9, 0, N'user', N'9860548232', N'bikramgurun@gmail.com', NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (10, 10, N'user', N'67890-', N'adhish.com', NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (11, 0, N'user', N'0987656789', N'Rahul.com', NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (12, 1, N'admin', N'987654345', N'nirajbokati@gmail.com', NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (13, 2, N'admin', N'98324564', N'rahul@gmail.com', NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (14, 0, N'user', N'9874123456', N'remon.com', NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (15, 0, N'user', N'9842175974', N'remonray@gmail.com', NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (16, 0, N'user', N'556666', N're@hd.ff', NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (17, 0, N'user', N'26565565665', N'gh@fd.cf', NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (18, 2, N'user', N'7856876', N'erf@WER.R', NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (19, 3, N'user', N'86898+89', N'rr@geg.rtgr', NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (20, 3, N'user', N'8767898', N'fs@ert.erger', NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (21, 1, N'user', N'789', N'789@789.789', NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (1001, 1, N'user', N'1235', N'remon.com', NULL, NULL)
INSERT [dbo].[tblBooking] ([BookingId], [TourId], [UserName], [Contact], [Email], [Remark], [DetailInfo]) VALUES (1002, 9, N'user', N'34567', N'ghj', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblBooking] OFF
SET IDENTITY_INSERT [dbo].[tblDayActivity] ON 

INSERT [dbo].[tblDayActivity] ([DayID], [DayTitle], [Tour_ID], [Description], [Active], [Extra], [ExtraTwo]) VALUES (1, N'Kathmandu FLight To Mustang', 1, N'Breakfast at Hotel. Today morning we will proceed to Half Day Guided Panoramic City Tour of Paris. This excursion will enable you to discover Paris from three different viewpoints. The first being a one and a half hour drive in the City. Second is a Boat Cruise down the Seine (Admission Included), taking you back through 2000 years of Parisian history. Finally the third is an elevator ride up to the 2nd Floor of the Eiffel Tower (Admission Included)', NULL, NULL, NULL)
INSERT [dbo].[tblDayActivity] ([DayID], [DayTitle], [Tour_ID], [Description], [Active], [Extra], [ExtraTwo]) VALUES (2, N'Pokhara To Muktinath', 1, N'Breakfast at Hotel. Today morning we will proceed to Brussels. Arrive & proceed to a Short Orientation Tour of Brussels. Later proceed to Amsterdam. Arrive & check into Hotel. Evening transfer for Dinner at Restaurant. Overnight at Holiday Inn Express Amsterdam - Schiphol (Tourist Class Hotel) or similar.', NULL, NULL, NULL)
INSERT [dbo].[tblDayActivity] ([DayID], [DayTitle], [Tour_ID], [Description], [Active], [Extra], [ExtraTwo]) VALUES (3, N'Gokyo Hike', 3, N'kathmandu Flight To Lukla', NULL, NULL, NULL)
INSERT [dbo].[tblDayActivity] ([DayID], [DayTitle], [Tour_ID], [Description], [Active], [Extra], [ExtraTwo]) VALUES (4, N'Welcome To Illam', 4, N'Birtabmode To illam', NULL, NULL, NULL)
INSERT [dbo].[tblDayActivity] ([DayID], [DayTitle], [Tour_ID], [Description], [Active], [Extra], [ExtraTwo]) VALUES (5, N'Khaptad Tour', 5, N'Breakfast at Hotel. Today morning we will proceed to Brussels. Arrive & proceed to a Short Orientation Tour of Brussels. Later proceed to Amsterdam. Arrive & check into Hotel', NULL, NULL, NULL)
INSERT [dbo].[tblDayActivity] ([DayID], [DayTitle], [Tour_ID], [Description], [Active], [Extra], [ExtraTwo]) VALUES (6, N'Kathmandu to Annapurna Base Camp', 6, N'Breakfast at Hotel. Today morning we will proceed to Brussels. Arrive & proceed to a Short Orientation Tour of Brussels. Later proceed to Amsterdam. Arrive & check into Hotel', NULL, NULL, NULL)
INSERT [dbo].[tblDayActivity] ([DayID], [DayTitle], [Tour_ID], [Description], [Active], [Extra], [ExtraTwo]) VALUES (7, N'Kathmandu To Pokhara Flight', 7, N'Breakfast at Hotel. Today morning we will proceed to Brussels. Arrive & proceed to a Short Orientation Tour of Brussels. Later proceed to Amsterdam. Arrive & check into Hotel', NULL, NULL, NULL)
INSERT [dbo].[tblDayActivity] ([DayID], [DayTitle], [Tour_ID], [Description], [Active], [Extra], [ExtraTwo]) VALUES (8, N'Flight To Mugu', 8, N'Breakfast at Hotel. Today morning we will proceed to Brussels. Arrive & proceed to a Short Orientation Tour of Brussels. Later proceed to Amsterdam. Arrive & check into Hotel', NULL, NULL, NULL)
INSERT [dbo].[tblDayActivity] ([DayID], [DayTitle], [Tour_ID], [Description], [Active], [Extra], [ExtraTwo]) VALUES (9, N'Kathmandu To Nagarkot', 9, N'Breakfast at Hotel. Today morning we will proceed to Brussels. Arrive & proceed to a Short Orientation Tour of Brussels. Later proceed to Amsterdam. Arrive & check into Hotel\', NULL, NULL, NULL)
INSERT [dbo].[tblDayActivity] ([DayID], [DayTitle], [Tour_ID], [Description], [Active], [Extra], [ExtraTwo]) VALUES (10, N'', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblDayActivity] OFF
SET IDENTITY_INSERT [dbo].[tblGallery] ON 

INSERT [dbo].[tblGallery] ([Image_ID], [Tour_ID], [Description], [Active], [Extra], [ExtraTwo]) VALUES (1, 1, N'pic11.jpg', NULL, NULL, NULL)
INSERT [dbo].[tblGallery] ([Image_ID], [Tour_ID], [Description], [Active], [Extra], [ExtraTwo]) VALUES (2, 1, N'pic110.jpg', NULL, NULL, NULL)
INSERT [dbo].[tblGallery] ([Image_ID], [Tour_ID], [Description], [Active], [Extra], [ExtraTwo]) VALUES (3, 1, N'pic111.jpg', NULL, NULL, NULL)
INSERT [dbo].[tblGallery] ([Image_ID], [Tour_ID], [Description], [Active], [Extra], [ExtraTwo]) VALUES (4, 2, N'pic112.jpg', NULL, NULL, NULL)
INSERT [dbo].[tblGallery] ([Image_ID], [Tour_ID], [Description], [Active], [Extra], [ExtraTwo]) VALUES (5, 2, N'pic113.jpg', NULL, NULL, NULL)
INSERT [dbo].[tblGallery] ([Image_ID], [Tour_ID], [Description], [Active], [Extra], [ExtraTwo]) VALUES (6, 2, N'pic11.jpg', NULL, NULL, NULL)
INSERT [dbo].[tblGallery] ([Image_ID], [Tour_ID], [Description], [Active], [Extra], [ExtraTwo]) VALUES (7, 2, N'pic12.jpg', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblGallery] OFF
SET IDENTITY_INSERT [dbo].[tblPackage] ON 

INSERT [dbo].[tblPackage] ([Tour_ID], [Tour_Name], [Package_Image], [Packagedetails], [OfferInclude], [OfferExclude], [StartDate], [EndDate], [Status], [Price], [Extra], [Extratwo]) VALUES (1, N'Five Days Manang', N'pic109.jpg', N'Dummy', N'11 Nights Accommodation at Tourist class Hotel
2 Dinners (Local Meals), 9 Dinners (Indian Meals)', N'Hotel City Tax
Driver & Guide Tips
Anything not mention in Inclusion', CAST(N'2016-08-08' AS Date), CAST(N'2016-08-08' AS Date), NULL, 9000, NULL, NULL)
INSERT [dbo].[tblPackage] ([Tour_ID], [Tour_Name], [Package_Image], [Packagedetails], [OfferInclude], [OfferExclude], [StartDate], [EndDate], [Status], [Price], [Extra], [Extratwo]) VALUES (2, N'Gokyo Hike ', N'pic110.jpg', N'dummy', N'11 Nights Accommodation at Tourist class Hotel
2 Dinners (Local Meals), 9 Dinners (Indian Meals)', N'Hotel City Tax
Driver & Guide Tips
Anything not mention in Inclusion', CAST(N'2016-08-08' AS Date), CAST(N'2016-08-08' AS Date), NULL, 1000, NULL, NULL)
INSERT [dbo].[tblPackage] ([Tour_ID], [Tour_Name], [Package_Image], [Packagedetails], [OfferInclude], [OfferExclude], [StartDate], [EndDate], [Status], [Price], [Extra], [Extratwo]) VALUES (3, N'Illam TOur SUmmer', N'illam.jpg', N'dummy', N'11 Nights Accommodation at Tourist class Hotel
2 Dinners (Local Meals), 9 Dinners (Indian Meals)', N'Hotel City Tax
Driver & Guide Tips
Anything not mention in Inclusion', CAST(N'2016-08-08' AS Date), CAST(N'2016-08-08' AS Date), NULL, 5000, NULL, NULL)
INSERT [dbo].[tblPackage] ([Tour_ID], [Tour_Name], [Package_Image], [Packagedetails], [OfferInclude], [OfferExclude], [StartDate], [EndDate], [Status], [Price], [Extra], [Extratwo]) VALUES (4, N'Khaptad canyoing', N'khaptad.jpg', N'dummy', N'11 Nights Accommodation at Tourist class Hotel
2 Dinners (Local Meals), 9 Dinners (Indian Meals)', N'Hotel City Tax
Driver & Guide Tips
Anything not mention in Inclusion', CAST(N'2016-08-08' AS Date), CAST(N'2016-08-08' AS Date), NULL, 6000, NULL, NULL)
INSERT [dbo].[tblPackage] ([Tour_ID], [Tour_Name], [Package_Image], [Packagedetails], [OfferInclude], [OfferExclude], [StartDate], [EndDate], [Status], [Price], [Extra], [Extratwo]) VALUES (5, N'Annapurna Base Camp', N'annapurna.jpg', N'dummy', N'11 Nights Accommodation at Tourist class Hotel
2 Dinners (Local Meals), 9 Dinners (Indian Meals)y', N'Hotel City Tax
Driver & Guide Tips
Anything not mention in Inclusion', CAST(N'2016-08-08' AS Date), CAST(N'2016-08-08' AS Date), NULL, 6000, NULL, NULL)
INSERT [dbo].[tblPackage] ([Tour_ID], [Tour_Name], [Package_Image], [Packagedetails], [OfferInclude], [OfferExclude], [StartDate], [EndDate], [Status], [Price], [Extra], [Extratwo]) VALUES (6, N'Mustang Five days tour', N'pic111.jpg', N'dummy', N'11 Nights Accommodation at Tourist class Hotel
2 Dinners (Local Meals), 9 Dinners (Indian Meals)', N'Hotel City Tax
Driver & Guide Tips
Anything not mention in Inclusion', CAST(N'2016-08-08' AS Date), CAST(N'2016-08-08' AS Date), NULL, 9000, NULL, NULL)
INSERT [dbo].[tblPackage] ([Tour_ID], [Tour_Name], [Package_Image], [Packagedetails], [OfferInclude], [OfferExclude], [StartDate], [EndDate], [Status], [Price], [Extra], [Extratwo]) VALUES (7, N'Pokhara one days tour', N'pic110.jpg', N'dummy', N'11 Nights Accommodation at Tourist class Hotel
2 Dinners (Local Meals), 9 Dinners (Indian Meals)', N'Hotel City Tax
Driver & Guide Tips
Anything not mention in Inclusion', CAST(N'2016-08-08' AS Date), CAST(N'2016-08-08' AS Date), NULL, 1000, NULL, NULL)
INSERT [dbo].[tblPackage] ([Tour_ID], [Tour_Name], [Package_Image], [Packagedetails], [OfferInclude], [OfferExclude], [StartDate], [EndDate], [Status], [Price], [Extra], [Extratwo]) VALUES (8, N'Rara Lake camping', N'pic112.jpg', N'dummy', N'11 Nights Accommodation at Tourist class Hotel
2 Dinners (Local Meals), 9 Dinners (Indian Meals)', N'Hotel City Tax
Driver & Guide Tips
Anything not mention in Inclusion', CAST(N'2016-08-08' AS Date), CAST(N'2016-08-08' AS Date), NULL, 1000, NULL, NULL)
INSERT [dbo].[tblPackage] ([Tour_ID], [Tour_Name], [Package_Image], [Packagedetails], [OfferInclude], [OfferExclude], [StartDate], [EndDate], [Status], [Price], [Extra], [Extratwo]) VALUES (9, N'Nagarkot Hike', N'travel.jpg', N'dummy', N'11 Nights Accommodation at Tourist class Hotel
2 Dinners (Local Meals), 9 Dinners (Indian Meals)', N'Hotel City Tax
Driver & Guide Tips
Anything not mention in Inclusion', CAST(N'2016-08-08' AS Date), CAST(N'2016-08-08' AS Date), NULL, 9000, NULL, NULL)
INSERT [dbo].[tblPackage] ([Tour_ID], [Tour_Name], [Package_Image], [Packagedetails], [OfferInclude], [OfferExclude], [StartDate], [EndDate], [Status], [Price], [Extra], [Extratwo]) VALUES (1011, N'Manang the way to heaven', N'53693064.jpg', N'Welcome to Manang', NULL, NULL, CAST(N'2018-04-27' AS Date), CAST(N'2018-04-26' AS Date), NULL, 150000, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblPackage] OFF
SET IDENTITY_INSERT [dbo].[tblReview] ON 

INSERT [dbo].[tblReview] ([UserID], [UserName], [Review], [Tour_ID], [Extra]) VALUES (1, N'Niraj Bokati', N'This trip was easily the trip of a lifetime for our family of four, and it will be quite some time before we stop talking about it!!  We have a done a lot of travel with our children alongside us, but the adventures that were found around every corner on this African safari were beyond our expectations, and FAR', 1, NULL)
INSERT [dbo].[tblReview] ([UserID], [UserName], [Review], [Tour_ID], [Extra]) VALUES (2, N'Rahul Yadav', N'Few things command more respect than hard work, integrity, dedication and the ability to follow through. These are among the many attributes we experienced from start to finish when organizing our trip to India with this travel agent. This travel agent is an excellent listener and pays attention to detail', 2, NULL)
INSERT [dbo].[tblReview] ([UserID], [UserName], [Review], [Tour_ID], [Extra]) VALUES (3, N'Abinash Nepali', N'My wife, daughter and myself cannot say enough about how wonderful a trip we had, how great this travel company - in particular our travel agent was from the beginning of our interest in the tour, helping us develop a fascinating and thorough schedule and, what was really impressive, was staying in touch with us', 3, NULL)
INSERT [dbo].[tblReview] ([UserID], [UserName], [Review], [Tour_ID], [Extra]) VALUES (4, N'Aarya Poudel', N'My husband and I could not have been happier with our experience working with this travel agency. Our agent assisted us in designing an absolutely spectacular itinerary for our two-week trip. We visited Delhi (1 night), Varanasi (2 nights), Agra (1 night), Jaipur (3 nights), Barli (1 night), Jodphur (2 nights)', 4, NULL)
INSERT [dbo].[tblReview] ([UserID], [UserName], [Review], [Tour_ID], [Extra]) VALUES (5, N'Samjhana Neupane', N'We''re sorry that we can only give this travel agency 5 stars -- we''d have preferred 10 stars or more!  What an awesome trip!  It helps that New Zealand is probably the most beautiful place on the planet, but more importantly, our travel agency arranged our access to the country’s wonders so seamlessly.', 5, NULL)
INSERT [dbo].[tblReview] ([UserID], [UserName], [Review], [Tour_ID], [Extra]) VALUES (6, N'Lalit Bhandari', N'We cannot recommend this travel company enough! My husband and I had been wanting to go to Germany/Austria for quite some time but had not done so due to lack of time to plan a worthwhile trip. Booking with this company was exactly what we needed--we told them the types of places and sites we wanted to see and they', 6, NULL)
INSERT [dbo].[tblReview] ([UserID], [UserName], [Review], [Tour_ID], [Extra]) VALUES (7, N'Dhaniram Chaudhary', N'We just returned from an amazing week in Iceland.  Our travel agent planned an amazing week for us and wasn''t fazed when we threw in the wrinkle of getting married on New Year''s Eve two weeks before our trip.  He took us to the office to finish our paperwork, helped coordinate where we would meet the officiant and', 7, NULL)
INSERT [dbo].[tblReview] ([UserID], [UserName], [Review], [Tour_ID], [Extra]) VALUES (8, N'KP Sharma', N'I''ve traveled A LOT in my life, but this was the best trip I''ve ever taken and it had everything to do with using this travel company and this agent to plan our Honeymoon. Everything from the initial trip planning process to the actual trip itself was seamless and made for an unforgettable experience.

During', 8, NULL)
INSERT [dbo].[tblReview] ([UserID], [UserName], [Review], [Tour_ID], [Extra]) VALUES (9, N'Pusha Kamal', N'Our trip to Peru exceeded our expectations on every level.  From my very first interaction with her, this travel agent demonstrated her care and concern for understanding the needs of our group, and the experiences we had while traveling confirmed at every step that she not only understood our needs ', 9, NULL)
SET IDENTITY_INSERT [dbo].[tblReview] OFF
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [R_10] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [R_10]
GO
ALTER TABLE [dbo].[tblDayActivity]  WITH CHECK ADD  CONSTRAINT [FK_tblDayActivity_tblPackage] FOREIGN KEY([Tour_ID])
REFERENCES [dbo].[tblPackage] ([Tour_ID])
GO
ALTER TABLE [dbo].[tblDayActivity] CHECK CONSTRAINT [FK_tblDayActivity_tblPackage]
GO
ALTER TABLE [dbo].[tblGallery]  WITH CHECK ADD  CONSTRAINT [FK_tblGallery_tblPackage] FOREIGN KEY([Tour_ID])
REFERENCES [dbo].[tblPackage] ([Tour_ID])
GO
ALTER TABLE [dbo].[tblGallery] CHECK CONSTRAINT [FK_tblGallery_tblPackage]
GO
/****** Object:  StoredProcedure [dbo].[DbBookingSelect]    Script Date: 4/25/2018 10:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DbBookingSelect]
@UserName nvarchar(50)
as
select * from tblBooking where UserName=@UserName
GO
/****** Object:  StoredProcedure [dbo].[DbDayActivitySelect]    Script Date: 4/25/2018 10:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DbDayActivitySelect]
as
select * from tblDayActivity

GO
/****** Object:  StoredProcedure [dbo].[DbDayActivitySelectPac]    Script Date: 4/25/2018 10:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DbDayActivitySelectPac] 
@Tour_Id int
as
select * from tblDayActivity where Tour_ID=@Tour_Id

GO
/****** Object:  StoredProcedure [dbo].[DbGallerySelect]    Script Date: 4/25/2018 10:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DbGallerySelect]
as
select * from tblGallery

GO
/****** Object:  StoredProcedure [dbo].[DbGallerySelectPac]    Script Date: 4/25/2018 10:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DbGallerySelectPac]
@Tour_Id int
as
select * from tblGallery where Tour_ID=@Tour_Id

GO
/****** Object:  StoredProcedure [dbo].[DbPackageSelect]    Script Date: 4/25/2018 10:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DbPackageSelect]
as
select * from tblPackage

GO
/****** Object:  StoredProcedure [dbo].[DbPackageSelectPac]    Script Date: 4/25/2018 10:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DbPackageSelectPac]
@Tour_Id int
as
select * from tblPackage where Tour_ID=@Tour_Id

GO
/****** Object:  StoredProcedure [dbo].[DbRevieSelect]    Script Date: 4/25/2018 10:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DbRevieSelect]
as
select * from tblReview

GO
/****** Object:  StoredProcedure [dbo].[DbReviewSelectPac]    Script Date: 4/25/2018 10:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DbReviewSelectPac]
@Tour_Id int
as
select * from tblReview where Tour_ID=@Tour_Id

GO
/****** Object:  StoredProcedure [dbo].[LoginByUsernamePassword]    Script Date: 4/25/2018 10:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================    
 -- Author:          <Author,,Name>    
 -- Create date: <Create Date,,>    
 -- Description:     <Description,,>    
 -- =============================================    
 CREATE PROCEDURE [dbo].[LoginByUsernamePassword]     
      @username varchar(50),    
      @password varchar(50)    
 AS    
 BEGIN    
      SELECT id, username, password, role_id    
      FROM Login    
      WHERE username = @username    
      AND password = @password    
 END    
 

GO
