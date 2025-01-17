USE [Prueba]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 6/10/2020 7:24:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pais](
	[IdPais] [int] IDENTITY(1,1) NOT NULL,
	[Pais] [varchar](150) NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 6/10/2020 7:24:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[IdTipoDocumento] [int] IDENTITY(1,1) NOT NULL,
	[TipoDocumento] [varchar](50) NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[IdTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 6/10/2020 7:24:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NULL,
	[Direccion] [varchar](150) NULL,
	[FechaNacimiento] [datetime] NULL,
	[NumeroDocumento] [varchar](50) NULL,
	[IdTipoDocumento] [int] NOT NULL,
	[IdPais] [int] NOT NULL,
	[Departamento] [varchar](150) NULL,
	[Ciudad] [varchar](150) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Pais] ON 

INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (1, N'Aruba                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (2, N'Afghanistan                                         ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (3, N'Angola                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (4, N'Anguilla                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (5, N'Albania                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (6, N'Andorra                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (7, N'Netherlands Antilles                                ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (8, N'United Arab Emirates                                ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (9, N'Argentina                                           ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (10, N'Armenia                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (11, N'American Samoa                                      ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (12, N'Antarctica                                          ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (13, N'French Southern territories                         ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (14, N'Antigua and Barbuda                                 ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (15, N'Australia                                           ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (16, N'Austria                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (17, N'Azerbaijan                                          ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (18, N'Burundi                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (19, N'Belgium                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (20, N'Benin                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (21, N'Burkina Faso                                        ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (22, N'Bangladesh                                          ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (23, N'Bulgaria                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (24, N'Bahrain                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (25, N'Bahamas                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (26, N'Bosnia and Herzegovina                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (27, N'Belarus                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (28, N'Belize                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (29, N'Bermuda                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (30, N'Bolivia                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (31, N'Brazil                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (32, N'Barbados                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (33, N'Brunei                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (34, N'Bhutan                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (35, N'Bouvet Island                                       ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (36, N'Botswana                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (37, N'Central African Republic                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (38, N'Canada                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (39, N'Cocos (Keeling) Islands                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (40, N'Switzerland                                         ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (41, N'Chile                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (42, N'China                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (43, N'Côte d’Ivoire                                       ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (44, N'Cameroon                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (45, N'Congo, The Democratic Republic of the               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (46, N'Congo                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (47, N'Cook Islands                                        ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (48, N'Colombia                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (49, N'Comoros                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (50, N'Cape Verde                                          ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (51, N'Costa Rica                                          ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (52, N'Cuba                                                ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (53, N'Christmas Island                                    ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (54, N'Cayman Islands                                      ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (55, N'Cyprus                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (56, N'Czech Republic                                      ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (57, N'Germany                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (58, N'Djibouti                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (59, N'Dominica                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (60, N'Denmark                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (61, N'Dominican Republic                                  ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (62, N'Algeria                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (63, N'Ecuador                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (64, N'Egypt                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (65, N'Eritrea                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (66, N'Western Sahara                                      ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (67, N'Spain                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (68, N'Estonia                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (69, N'Ethiopia                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (70, N'Finland                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (71, N'Fiji Islands                                        ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (72, N'Falkland Islands                                    ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (73, N'France                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (74, N'Faroe Islands                                       ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (75, N'Micronesia, Federated States of                     ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (76, N'Gabon                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (77, N'United Kingdom                                      ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (78, N'Georgia                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (79, N'Ghana                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (80, N'Gibraltar                                           ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (81, N'Guinea                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (82, N'Guadeloupe                                          ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (83, N'Gambia                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (84, N'Guinea-Bissau                                       ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (85, N'Equatorial Guinea                                   ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (86, N'Greece                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (87, N'Grenada                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (88, N'Greenland                                           ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (89, N'Guatemala                                           ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (90, N'French Guiana                                       ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (91, N'Guam                                                ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (92, N'Guyana                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (93, N'Hong Kong                                           ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (94, N'Heard Island and McDonald Islands                   ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (95, N'Honduras                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (96, N'Croatia                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (97, N'Haiti                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (98, N'Hungary                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (99, N'Indonesia                                           ')
GO
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (100, N'India                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (101, N'British Indian Ocean Territory                      ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (102, N'Ireland                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (103, N'Iran                                                ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (104, N'Iraq                                                ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (105, N'Iceland                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (106, N'Israel                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (107, N'Italy                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (108, N'Jamaica                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (109, N'Jordan                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (110, N'Japan                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (111, N'Kazakstan                                           ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (112, N'Kenya                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (113, N'Kyrgyzstan                                          ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (114, N'Cambodia                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (115, N'Kiribati                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (116, N'Saint Kitts and Nevis                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (117, N'South Korea                                         ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (118, N'Kuwait                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (119, N'Laos                                                ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (120, N'Lebanon                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (121, N'Liberia                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (122, N'Libyan Arab Jamahiriya                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (123, N'Saint Lucia                                         ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (124, N'Liechtenstein                                       ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (125, N'Sri Lanka                                           ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (126, N'Lesotho                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (127, N'Lithuania                                           ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (128, N'Luxembourg                                          ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (129, N'Latvia                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (130, N'Macao                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (131, N'Morocco                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (132, N'Monaco                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (133, N'Moldova                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (134, N'Madagascar                                          ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (135, N'Maldives                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (136, N'Mexico                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (137, N'Marshall Islands                                    ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (138, N'Macedonia                                           ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (139, N'Mali                                                ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (140, N'Malta                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (141, N'Myanmar                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (142, N'Mongolia                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (143, N'Northern Mariana Islands                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (144, N'Mozambique                                          ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (145, N'Mauritania                                          ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (146, N'Montserrat                                          ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (147, N'Martinique                                          ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (148, N'Mauritius                                           ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (149, N'Malawi                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (150, N'Malaysia                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (151, N'Mayotte                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (152, N'Namibia                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (153, N'New Caledonia                                       ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (154, N'Niger                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (155, N'Norfolk Island                                      ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (156, N'Nigeria                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (157, N'Nicaragua                                           ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (158, N'Niue                                                ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (159, N'Netherlands                                         ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (160, N'Norway                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (161, N'Nepal                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (162, N'Nauru                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (163, N'New Zealand                                         ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (164, N'Oman                                                ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (165, N'Pakistan                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (166, N'Panama                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (167, N'Pitcairn                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (168, N'Peru                                                ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (169, N'Philippines                                         ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (170, N'Palau                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (171, N'Papua New Guinea                                    ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (172, N'Poland                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (173, N'Puerto Rico                                         ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (174, N'North Korea                                         ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (175, N'Portugal                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (176, N'Paraguay                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (177, N'Palestine                                           ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (178, N'French Polynesia                                    ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (179, N'Qatar                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (180, N'Réunion                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (181, N'Romania                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (182, N'Russian Federation                                  ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (183, N'Rwanda                                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (184, N'Saudi Arabia                                        ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (185, N'Sudan                                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (186, N'Senegal                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (187, N'Singapore                                           ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (188, N'South Georgia and the South Sandwich Islands        ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (189, N'Saint Helena                                        ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (190, N'Svalbard and Jan Mayen                              ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (191, N'Solomon Islands                                     ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (192, N'Sierra Leone                                        ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (193, N'El Salvador                                         ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (194, N'San Marino                                          ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (195, N'Somalia                                             ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (196, N'Saint Pierre and Miquelon                           ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (197, N'Sao Tome and Principe                               ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (198, N'Suriname                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (199, N'Slovakia                                            ')
GO
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (200, N'Slovenia                                            ')
INSERT [dbo].[Pais] ([IdPais], [Pais]) VALUES (201, N'Otro')
SET IDENTITY_INSERT [dbo].[Pais] OFF
SET IDENTITY_INSERT [dbo].[TipoDocumento] ON 

INSERT [dbo].[TipoDocumento] ([IdTipoDocumento], [TipoDocumento]) VALUES (1, N'Tarjeta Identidad')
INSERT [dbo].[TipoDocumento] ([IdTipoDocumento], [TipoDocumento]) VALUES (2, N'Cédula')
INSERT [dbo].[TipoDocumento] ([IdTipoDocumento], [TipoDocumento]) VALUES (3, N'Pasaporte')
SET IDENTITY_INSERT [dbo].[TipoDocumento] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Direccion], [FechaNacimiento], [NumeroDocumento], [IdTipoDocumento], [IdPais], [Departamento], [Ciudad]) VALUES (1, N'Yennifer Daza', N'cra.8F #25-34', CAST(0x00007C5B00000000 AS DateTime), N'754748484', 1, 8, N'Cundinamarca', N'Bogotá')
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Direccion], [FechaNacimiento], [NumeroDocumento], [IdTipoDocumento], [IdPais], [Departamento], [Ciudad]) VALUES (3, N'prueba', N'cad', CAST(0x00009BBF00000000 AS DateTime), N'8763333', 2, 16, N'dep', N'bog')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([IdPais])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Pais]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_TipoDocumento] FOREIGN KEY([IdTipoDocumento])
REFERENCES [dbo].[TipoDocumento] ([IdTipoDocumento])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_TipoDocumento]
GO
