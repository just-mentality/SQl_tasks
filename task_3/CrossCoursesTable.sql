USE [Mental.Model]

IF OBJECT_ID('dbo.CrossCourses', 'U') IS NOT NULL
  DROP TABLE dbo.CrossCourses
GO

CREATE TABLE dbo.CrossCourses
(
	ID_ToSell INT NOT NULL,
	ID_ToBuy INT NOT NULL,
	Attitude FLOAT NOT NULL, 
	CONSTRAINT PK_CrossCourses PRIMARY KEY (ID_ToSell, ID_ToBuy),

	CONSTRAINT FK_CrossCourses1 FOREIGN KEY (ID_ToSell)
	REFERENCES dbo.FullNamesOfCurrency (ID_Currency),

	CONSTRAINT FK_CrossCourses2 FOREIGN KEY (ID_ToBuy)
	REFERENCES dbo.FullNamesOfCurrency (ID_Currency)
)
GO

INSERT INTO [dbo].[CrossCourses]([ID_ToSell], [ID_ToBuy], [Attitude])
     VALUES
			(1, 1, 1.0000),
			(1, 2, 0.6230),
			(1, 3, 78.0650),
			(1, 4, 0.9011),
			(1, 5, 1.0134),
			(1, 6, 5.4064),
			(1, 7, 6.5620),
			(1, 8, 0.7263),
			(1, 9, 0.9639),
			(1, 10, 1.2549),

			(2, 1, 1.6051),
			(2, 2, 1.0000),
			(2, 3, 125.3100),
			(2, 4, 1.4467),
			(2, 5, 1.6268),
			(2, 6, 8.6788),
			(2, 7, 10.5285),
			(2, 8, 1.1658),
			(2, 9, 1.5473),
			(2, 10, 2.0144),

			(3, 1, 0.0128),
			(3, 2, 0.0080),
			(3, 3, 1.0000),
			(3, 4, 0.0115),
			(3, 5, 0.0130),
			(3, 6, 0.0692),
			(3, 7, 8.4000),
			(3, 8, 0.0093),
			(3, 9, 0.0123),
			(3, 10, 0.0161),

			(4, 1, 1.1098),
			(4, 2, 0.6912),
			(4, 3, 86.9565),
			(4, 4, 1.0000),
			(4, 5, 1.1246),
			(4, 6, 0.0600),
			(4, 7, 7.2825),
			(4, 8, 0.8059),
			(4, 9, 1.0696),
			(4, 10, 1.3924),

			(5, 1, 0.9868),
			(5, 2, 0.6147),
			(5, 3, 76.9231),
			(5, 4, 0.8892),
			(5, 5, 1.0000),
			(5, 6, 5.3350),
			(5, 7, 6.4754),
			(5, 8, 0.7166),
			(5, 9, 0.9512),
			(5, 10, 1.2383),

			(6, 1, 0.1850),
			(6, 2, 0.1152),
			(6, 3, 14.4509),
			(6, 4, 16.6667),
			(6, 5, 0.1874),
			(6, 6, 1.0000),
			(6, 7, 1.2137),
			(6, 8, 0.1343),
			(6, 9, 0.1783),
			(6, 10, 0.2322),

			(7, 1, 0.1524),
			(7, 2, 0.0950),
			(7, 3, 0.1190),
			(7, 4, 0.1373),
			(7, 5, 0.1544),
			(7, 6, 0.8239),
			(7, 7, 1.0000),
			(7, 8, 0.1107),
			(7, 9, 0.1469),
			(7, 10, 0.1912),

			(8, 1, 1.3768),
			(8, 2, 0.8578),
			(8, 3, 107.5269),
			(8, 4, 1.2408),
			(8, 5, 1.3955),
			(8, 6, 7.4460),
			(8, 7, 9.0334),
			(8, 8, 1.0000),
			(8, 9, 1.3273),
			(8, 10, 1.7279),

			(9, 1, 1.0375),
			(9, 2, 0.6463),
			(9, 3, 81.3008),
			(9, 4, 0.9349),
			(9, 5, 1.0513),
			(9, 6, 5.6085),
			(9, 7, 6.8074),
			(9, 8, 0.7534),
			(9, 9, 1.0000),
			(9, 10, 1.3018),

			(10, 1, 0.7969),
			(10, 2, 0.4964),
			(10, 3, 62.1118),
			(10, 4, 0.7182),
			(10, 5, 0.8076),
			(10, 6, 4.3066),
			(10, 7, 5.2301),
			(10, 8, 0.5787),
			(10, 9, 0.7682),
			(10, 10, 1.0000)
GO

SELECT TOP 1000 [ID_ToSell]
      ,[ID_ToBuy]
      ,[Attitude]
  FROM [Mental.Model].[dbo].[CrossCourses]
