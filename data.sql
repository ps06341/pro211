use db
go

insert into Account(Username,Password,role)

	values
	('admin1','1234',1),
	('admin2','1234',1),
	('admin3','1234',1),
	('admin4','1234',1),
	('admin5','1234',1),
	('admin6','1234',1),
	('admin7','1234',0),
	('admin8','1234',0),
	('admin9','1234',0),
	('admin10','1234',0)	
	go
insert into Employee(EmpID,Name,Gender,Address,Email,Phone,Birthday,Salary,startDay,endDay,Image,AccountID)
values
	('nv01',N'Nguyễn Văn Trỗi',1,N'phường Linh Xuân, quận Thủ Đức, Hồ Chí Minh',
	'troinv@gmail.com','01219795410','02-28-1996',7000,'06-12-2016','','/images/nhanvien/vantroi.jpg','admin1'),
	('nv02',N'Nguyễn Thị Minh Nguyệt',0,N'12 Võ Thị Sáu, Quận 3, Hồ Chí Minh',
	'nguyetmnt@gmail.com','0964738333','02-28-1992',6500,'01-01-2013','','/images/nhanvien/minhnguyet.jpg','admin2'),
	('nv03',N'Nguyễn Văn Công',1,N'12 Phan Văn Trị,Quận Gò Vấp, Hồ Chí Minh',
	'congnv@gmail.com','0444342323','02-20-1994',7000,'05-12-2014','','/images/nhanvien/vancong.jpg','admin3'),
	('nv04',N'Nguyễn Thị Hoa',0,N'391A Nam Kỳ Khởi Nghĩa, Phường 14, Quận 3, Hồ Chí Minh',
	'hoant@gmail.com','099686854','02-28-1993',6500,'09-17-2018','','/images/nhanvien/thihoa.jpg','admin4'),
	('nv05',N'Nguyễn Thị Ngân',0,N'391 Võ Văn Ngân,Phường Linh Chiểu, Quận Thủ Đức, Hồ Chí Minh',
	'ngannt@gmail.com','098848332','12-03-1997',6500,'06-13-2017','','/images/nhanvien/thingan.jpg','admin5'),
	('nv06',N'Nguyễn Thị Trinh Nữ',0,N'phường Linh Xuân, quận Thủ Đức, Hồ Chí Minh',
	'nuntt@gmail.com','034566789','02-28-1996',6500,'06-12-2016','','/images/nhanvien/trinhnu.jpg','admin6'),
	('nv07',N'Quách Văn Đức',1,N'12 Võ Thị Sáu, Quận 3, Hồ Chí Minh',
	'ducqv@gmail.com','0964738323','02-28-1992',6500,'01-01-2013','','/images/nhanvien/vanduc.jpg','admin7'),
	('nv08',N'Lê Đức Dũng',1,N'12 Phan Văn Trị,Quận Gò Vấp, Hồ Chí Minh',
	'dungld@gmail.com','044835030','02-20-1994',6500,'05-12-2014','','/images/nhanvien/ducdung.jpg','admin8'),
	('nv09',N'Phạm Trần Thủy Trúc',0,N'391A Nam Kỳ Khởi Nghĩa, Phường 14, Quận 3, Hồ Chí Minh',
	'trucptt@gmail.com','0968433882','02-28-1993',6500,'09-17-2018','','/images/nhanvien/thuytruc.jpg','admin9'),
	('nv10',N'Trịnh Bảo Ngọc',0,N'391 Võ Văn Ngân,Phường Linh Chiểu, Quận Thủ Đức, Hồ Chí Minh',
	'ngoctb@gmail.com','095848382','12-03-1997',6500,'06-13-2017','','/images/nhanvien/baongoc.jpg','admin10')
	go
insert into ProductType(TypeName,Describe)
	values
	(N'Quạt',N'quạt tạo làn gió rộng, tản gió nhanh, làm mát hiệu quả. Chân đế to, vững chắc không rung lắc khi quạt'),
	(N'Bình thủy điện',N''),
	(N'Nồi cơm',N''),
	(N'Bếp ga',N''),
	(N'Bộ nồi',N''),
	(N'Chảo chống dính',N''),
	(N'Tô chén đĩa',N''),
	(N'Xong nồi ',N''),
	(N'Bình thủy tinh',N''),
	(N'Ly',N''),
	(N'Hộp đựng,dụng cụ',N''),
	--mới thêm-
	(N'Vỉ nướng',N''),
	(N'Nồi áp suất',N''),
	(N'Máy giặt',N''),
	(N'Tủ lạnh',N''),
	(N'Máy xay sinh tố',N''),
	(N'Máy nước nóng',N''),
	(N'Máy rửa chén',N''),
	(N'Máy lạnh',N''),
	(N'Máy lọc không khí',N''),
	(N'Máy lọc nước',N''),
	(N'Máy pha cà phê',N'')
	go
insert into Producer(ProducerName,Image)
	values
	(N'Sharp',''),
	(N'Toshiba','/images/producer/toshibalogo.png'),
	(N'SunHouse','/images/producer/sunhouselogo.png'),
	(N'Panasonic','/images/producer/panasoniclogo.png'),
	(N'Asia','/images/producer/asialogo.png'),
	(N'Senko','/images/producer/senkologo.png'),
	(N'Aqua','/images/producer/aqualogo.png'),
	(N'Tiger','/images/producer/tigerlogo.png'),
	(N'HappyCook','/images/producer/happycooklogo.png'),
	(N'Ohi@ma',''),
	(N'Supor',''),
	(N'GoldSun',''),
	(N'Elmich',''),
	(N'CarlMann',''),
	(N'FiveStar',''),
	(N'Luminarc',''),
	(N'Lafonte',''),
	(N'Kova',''),
	(N'Matchmann',''),
	(N'Kiwa',''),
	(N'Rinai',''),
	(N'Sakura',''),
	(N'Ginosi',''),
	(N'Cuckoo',''),
	(N'Cookin',''),
	(N'Daewoo',''),
	(N'Philips',''),
	(N'Sanaky',''),
	(N'Kangaroo',''),
	(N'Electrolux',''),
	(N'LG',''),
	(N'Samsung',''),
	(N'Ariston',''),
	(N'Legend',''),
	(N'Ferroli',''),
	(N'Daikin',''),
	(N'Delonghi',''),
	(N'Netcafe','')
	go

insert into Product(ProductID,ProductName,Price,Quantity,productDAY,Describe,Status,Image,TypeID,ProducerID)
	values
	('quatSharp01',N'QUẠT THÁP SHARP KENDO X02D',390,40,'01-07-2018',N'QUẠT THÁP SHARP KENDO X02D',1,'/images/dodien/quatdiensharp.jpg',1,1),
	('quatToshiba02',N'QUẠT TOSHIBA F-LSA20(H)VN',380,20,'01-08-2018',N'QUẠT TOSHIBA F-LSA20(H)VN',1,'/images/dodien/quatdientoshiba.jpg',1,2),
	('quatSunHouse03',N'QUẠT SUNHOUSE BDF457J',280,22,'01-09-2018',N'QUẠT SUNHOUSE BDF457J',1,'/images/dodien/quatsunhouse.jpg',1,3),
	('quatPanasonic04',N'QUẠT PANASONIC F-409K',290,45,'01-10-2018',N'QUẠT PANASONIC F-409K',1,'/images/dodien/quatdienpanasonic.jpg',1,4),
	('quatAqua05',N'QUẠT AQUA L16019',340,42,'01-11-2019',N'QUẠT ASIA L16019',1,'/images/dodien/quatdienaqua.jpg',1,7),
	('quatAsia06',N'QUẠT ASIA HF1401-TV0',470,47,'01-12-2018',N'QUẠT ASIA HF1401-TV0',1,'/images/dodien/quatdienasia.jpg',1,5),
	('quatSenko07',N'QUẠT SENKO L1338',700,47,'01-13-2018',N'QUẠT SENKO L1338',1,'/images/dodien/quatdiensenko.png',1,6),
	('chaoHappyCook08',N'CHẢO HAPPYCOOK CT18MT',90,20,'01-14-2018',N'CHẢO HAPPYCOOK CT18MT',1,'/images/dodien/chaohappycook.jpg',6,9),
	('chaoSupor09',N'CHẢO SUPOR RT543',70,10,'01-15-2018',N'CHẢO SUPOR RT543',1,'/images/dodien/chaosupor.jpg',6,11),
	('chaoGoldSun10',N'CHẢO CHỐNG DÍNH GOLDSUN CRX34',99,15,'01-16-2018',N'CHẢO CHỐNG DÍNH GOLDSUN CRX34',1,'/images/dodien/chaogoldsung.jpg',6,12),
	('chaoOhi@ma11',N'CHẢO CHỐNG DÍNH Ohi@ma GTX123',89,15,'01-17-2018',N'CHẢO CHỐNG DÍNH Ohi@ma GTX123',1,'/images/dodien/chaoohi@ma.jpg',6,10),
	('chaoElmich12',N'CHẢO ELMICH WQ12WS',70,9,'01-18-2018',N'CHẢO ELMICH WQ12WS',1,'/images/dodien/chaoelmich.jpg',6,13),
	('xoongHappyCook12',N'BỘ NỒI HAPPYCOOK 7PCS HC07NV',70,20,'01-19-2018',N'BỘ NỒI HAPPYCOOK 7PCS HC07NV',1,'/images/dodien/xoonghappycook.jpg',8,9),
	('xoongFiveStar13',N'BỘ NỒI FIVESTAR TR543',100,20,'01-20-2018',N'BỘ NỒI FIVESTAR TR543',1,'/images/dodien/bonoifivestar.jpg',8,15),
	('xoongLuminarc14',N'BỘ NỒI LUMINARC THYF556',65,10,'01-21-2018',N'BỘ NỒI LUMINARC THYF556',1,'/images/dodien/bonoiluminarc.jpg',8,16),
	('xoongSunhouse15',N'BỘ NỒI SUNHOUSE HIEX44',85,5,'01-22-2018',N'BỘ NỒI SUNHOUSE HIEX44',1,'/images/dodien/bonoisunhouse.jpg',8,3),
	('hopdungHappyCook16',N'BỘ HỘP TT HAPPY COOK 2PCS 370ML HCG-02RP',20,20,'01-23-2018',N'BỘ HỘP TT HAPPY COOK 2PCS 370ML HCG-02RP',1,'/images/dodien/hopdunghappycook.jpg',11,9),
	('binhthuytinhLuminarc17',N'BÌNH THỦY TINH LUMINACR ES32',60,5,'01-24-2018',N'BÌNH THỦY TINH LUMINACR ES32',1,'/images/dodien/binhthuytinhluminarc.jpg',9,16),
	('cemenelmich18',N'CÀ MEN ELMICH EW43',60,30,'01-25-2018',N'CÀ MEN ELMICH EW43',1,'/images/dodien/cemenelmich.jpg',11,13),
	('lycarlmann19',N'LY CARLMANN 3E43',12,89,'01-25-2018',N'LY CARLMANN 3E43',1,'/images/dodien/lycarlmann.jpg',11,14),
	('maidaolafonte20',N'MÀI DAO LAFONTE DRE43',20,30,'01-27-2018',N'MÀI DAO LAFONTE DRE43',1,'/images/dodien/maidaolafonte.jpg',11,17),
	('thotcarlmann21',N'THỚT THÁI RAU CARLMANN',25,20,'01-28-2018',N'THỚT THÁI RAU CARLMANN',1,'/images/dodien/thotcarlmann.jpg',11,14),
	('binhthuydienToshiba22',N'BÌNH THỦY ĐIỆN TOSHIBA KP-Y33VV',1500,21,'01-29-2018',N'BÌNH THỦY ĐIỆN TOSHIBA KP-Y33VV',1,'/images/dodien/binhthuydientoshiba.png',2,2),
	('binhthuydienTiger23',N'BÌNH THỦY ĐIỆN TIGER WZ-E3',250,160,'01-30-2018',N'BÌNH THỦY ĐIỆN TIGER WZ-E3',1,'/images/dodien/binhthuydientiger.jpg',2,8),
	('binhthuydienSunHouse24',N'BÌNH THỦY ĐIỆN SUNHOUSE SE22',1050,60,'03-20-2018',N'BÌNH THỦY ĐIỆN SUNHOUSE SE22',1,'/images/dodien/binhthuydiensunhouse.jpg',2,3),
	('binhthuydienSharp25',N'BÌNH THỦY ĐIỆN SHARP KCC-21',1505,70,'03-19-2018',N'BÌNH THỦY ĐIỆN SHARP KCC-21',1,'/images/dodien/binhthuydiensharp.jpg',2,1),
	('binhthuydienPanasonic26',N'BÌNH THỦY ĐIỆN PANASONIC RE-212',2350,50,'01-07-2018',N'BÌNH THỦY ĐIỆN PANASONIC RE-212',1,'/images/dodien/binhthuydienpanasonic.jpg',2,4),
	('binhthuydienAqua27',N'BÌNH THỦY ĐIỆN AQUA 33VV',1150,45,'01-18-2018',N'BÌNH THỦY ĐIỆN AQUA 33VV',1,'/images/dodien/binhthuydienaqua.jpg',2,7),
	('tochendiaElmich28',N'TÔ CHÉN ĐĨA ELMICH 4507',60,25,'03-17-2018',N'TÔ CHÉN ĐĨA ELMICH 4507',1,'/images/dodien/chendiaelmich.jpg',7,13),
	('tochendiaLuminarc29',N'TÔ CHÉN ĐĨA LUMINAR 1254',60,25,'03-16-2018',N'TÔ CHÉN ĐĨA LUMINAR 1254',1,'/images/dodien/chendialuminarc.jpg',7,16),
	('tochendiaCarlmann30',N'TÔ CHÉN ĐĨA CARLMANN 0987',60,20,'03-15-2018',N'TÔ CHÉN ĐĨA CARLMANN 0987',1,'/images/dodien/chendiacarlmann.jpg',7,14),
	('tochendiaKova31',N'TÔ CHÉN ĐĨA KOVA 876',60,15,'03-14-2018',N'TÔ CHÉN ĐĨA KOVA 876',1,'/images/dodien/chendiakova.jpg',7,18),
	('tochendiaMatchmann32',N' TÔ CHÉN ĐĨA MATCHMANN 564',60,25,'03-13-2018',N' TÔ CHÉN ĐĨA MATCHMANN 564',1,'/images/dodien/chendiamatchmann.jpg',7,19),
	('bepGaSunHouse33',N'BẾP GAS SUNHOUSE SHB212KT',500,20,'03-12-2018',N'BẾP GAS SUNHOUSE SHB212KT',1,'/images/dodien/bepga1.jpg',4,3),
	('bepGaRinai34',N'BẾP GAS RINAI 90',599,20,'03-11-2018',N'BẾP GAS RINAI 90',1,'/images/dodien/bepga2.jpg',4,21),
	('bepGaSakura35',N'BẾP GAS SAKURA SAK543',485,20,'03-10-2018',N'BẾP GAS SAKURA SAK543',1,'/images/dodien/bepga3.png',4,22),
	('bepGaKiwa36',N'BẾP GAS KIWA K432',490,20,'03-09-2018',N'BẾP GAS KIWA K432',1,'/images/dodien/bepga4.jpg',4,20),
	('bepGaGinosi37',N'BẾP GAS GINOSI GI32',400,20,'03-08-2018',N'BẾP GAS GINOSI GI32',1,'/images/dodien/bepga5.jpg',4,23),
	('bepGaRinai38',N'BẾP GAS RINAI 65',550,20,'03-07-2018',N'BẾP GAS RINAI 65',1,'/images/dodien/bepga6.jpg',4,21),
	('bepGaSunHouse39',N'BẾP GAS SUNHOUSE SHB9000',1150,20,'03-06-2018',N'BẾP GAS SUNHOUSE SHB9000',1,'/images/dodien/bepga7.jpg',4,3),
	('bepGaGinosi40',N'BẾP GAS GINOSI 4E3',400,20,'03-05-2018',N'BẾP GAS GINOSI 4E3',1,'/images/dodien/bepga8.jpg',4,23),
	('noiComSupor41',N'NỒI CƠM ĐIỆN 1.5L SUPOR CFXB40FC33VN-75',79,22,'03-04-2018',N'NỒI CƠM ĐIỆN 1.5L SUPOR CFXB40FC33VN-75',1,'/images/dodien/noicom2.png',3,11),
	('noiComDaeWoo42',N'NỒI CƠM ĐIỆN 1.5L DAEWOO SUSAN0175',790,21,'03-03-2018',N'NỒI CƠM ĐIỆN 1.5L DAEWOO SUSAN0175',1,'/images/dodien/noicom1.jpg',3,26),
	('noiComToshiba43',N'NỒI CƠM ĐIỆN 1.5L TOSHIBA TOS1Q21',690,20,'03-02-2018',N'NỒI CƠM ĐIỆN 1.5L TOSHIBA TOS1Q21',1,'/images/dodien/noicom6.jpg',3,2),
	('noiComCuckoo44',N'NỒI CƠM ĐIỆN 1.5L CUCKOO CKO124',550,22,'03-01-2018',N'NỒI CƠM ĐIỆN 1.5L CUCKOO CKO124',1,'/images/dodien/noicom3.jpg',3,24),
	('noiComCookin45',N'NỒI CƠM ĐIỆN 1.5L COOKIN COK43',450,15,'02-28-2018',N'NỒI CƠM ĐIỆN 1.5L COOKIN COK43',1,'/images/dodien/noicom5.jpg',3,25),
	--noiapsuat
	('noiapsuatGoldSun46',N'NỒI ÁP SUẤT 5L GOLDSUN PC0432',300,15,'02-27-2018',N'NỒI ÁP SUẤT 5L GOLDSUN PC0432',1,'/images/dodien/apsuat1.jpg',13,12),
	('noiapsuatGoldSun47',N'NỒI ÁP SUẤT 4L GOLDSUN PC012',200,15,'02-26-2018',N'NỒI ÁP SUẤT 4L GOLDSUN PC012',1,'/images/dodien/apsuat2.jpg',13,12),
	('noiapsuatSunHouse48',N'NỒI ÁP SUẤT 5L SUNHOUSE SUN321',230,15,'02-25-2018',N'NỒI ÁP SUẤT 5L SUNHOUSE SUN321',1,'/images/dodien/apsuat3.jpg',13,3),
	('noiapsuatPhilips49',N'NỒI ÁP SUẤT 4L PHILIPS PL543',450,15,'02-24-2018',N'NỒI ÁP SUẤT 4L PHILIPS PL543',1,'/images/dodien/apsuat5.jpg',13,27),
	('noiapsuatAqua50',N'NỒI ÁP SUẤT 5L AQUA A12ES',420,15,'02-23-2018',N'NỒI ÁP SUẤT 5L AQUA A12ES',1,'/images/dodien/apsuat8.jpg',13,7),
	--vỉ nướng
	('vinuongSanaky51',N'LÒ NƯỚNG 50L SANAKY 0123W',920,15,'02-22-2018',N'LÒ NƯỚNG SANAKY 0123W',1,'/images/dodien/vi1.jpg',12,28),
	('vinuongKangaroo52',N'LÒ NƯỚNG KANGAROO KANG4D3',550,15,'02-21-2018',N'LÒ NƯỚNG KANGAROO KANG4D3',1,'/images/dodien/vi2.jpg',12,29),
	('vinuongPhilips53',N'VỈ NƯỚNG PHILIPS 0123W',890,15,'02-20-2018',N'VỈ NƯỚNG PHILIPS 0123W',1,'/images/dodien/vi3.jpg',12,27),
	('vinuongElectrolux54',N'LÒ NƯỚNG ELECTROLUX ELE32',990,15,'02-19-2018',N'LÒ NƯỚNG ELECTROLUX ELE32',1,'/images/dodien/vi4.jpg',12,30),
	('vinuongSanaky55',N'LÒ NƯỚNG 80L SANAKY CCD3',2250,15,'02-18-2018',N'LÒ NƯỚNG 80L SANAKY CCD3',1,'/images/dodien/vi5.jpg',12,28),
	('vinuongSharp56',N'LÒ NƯỚNG SHARP 1QA3',1090,15,'02-17-2018',N'LÒ NƯỚNG SHARP 1QA3',1,'/images/dodien/vi6.jpg',12,1),
	('vinuongElectrolux57',N'LÒ NƯỚNG ELECTROLUX ELE34',1090,15,'02-16-2018',N'LÒ NƯỚNG ELECTROLUX ELE34',1,'/images/dodien/vi7.jpg',12,30),
	('vinuongSunHouse58',N'LÒ NƯỚNG SUNHOUSE SUN2S',550,15,'02-15-2018',N'LÒ NƯỚNG SUNHOUSE SUN2S',1,'/images/dodien/vi8.jpg',12,3),
	--may giặt
	('maygiatElectrolux59',N'MÁY GIĂT 7KG ELECTROLUX XD32',5990,15,'02-14-2018',N'MÁY GIĂT 7KG ELECTROLUX XD32',1,'/images/dodien/giat1.jpg',14,30),
	('maygiatLG60',N'MÁY GIĂT 8KG LG LG32',8790,15,'03-13-2018',N'MÁY GIĂT 8KG LG LG32',1,'/images/dodien/giat2.jpg',14,31),
	('maygiatSamsung61',N'MÁY GIĂT 7KG SAMSUNG SS32',4090,15,'02-12-2018',N'MÁY GIĂT 7KG SAMSUNG SS32',1,'/images/dodien/giat3.jpg',14,32),
	('maygiatToshiba62',N'MÁY GIĂT 7KG TOSHIBA TS33',4190,15,'02-11-2018',N'MÁY GIĂT 7KG TOSHIBA TS33',1,'/images/dodien/giat4.jpg',14,2),
	--tủ lạnh
	('tulanhToshiba63',N'TỦ LẠNH 171L TOSHIBA 445H',4190,15,'02-10-2018',N'TỦ LẠNH 171L TOSHIBA 445H',1,'/images/dodien/tulanh1.jpg',15,2),
	('tulanhSamsung64',N'TỦ LẠNH 208L SAMSUNG SOS3',5790,15,'02-09-2018',N'TỦ LẠNH 208L SAMSUNG SOS3',1,'/images/dodien/tulanh2.jpg',15,32),
	('tulanhElextrolux65',N'TỦ LẠNH 92L ELECTROLUX 1Q2',2890,15,'02-08-2018',N'TỦ LẠNH 92L ELECTROLUX 1Q2',1,'/images/dodien/tulanh3.jpg',15,30),
	('tulanhLG66',N'TỦ LẠNH 205L LG 0U5',5490,15,'02-07-2018',N'TỦ LẠNH 205L LG 0U5',1,'/images/dodien/tulanh4.jpg',15,31),
	--tủ đông-
	
	('tudongSanaky67',N'TỦ ĐÔNG SANAKY 1 NGĂN VH-1599HY',4190,15,'02-06-2018',N'TỦ ĐÔNG SANAKY 1 NGĂN VH-1599HY',1,'/images/dodien/tudong1.jpg',15,28),
	('tudongSanaky68',N'TỦ ĐÔNG SANAKY 2 NGĂN VH-365W2',5990,15,'02-05-2018',N'TỦ ĐÔNG SANAKY 2 NGĂN VH-365W2',1,'/images/dodien/tudong2.jpg',15,28),
	('tudongSanaky69',N'TỦ ĐÔNG SANAKY 1 NGĂN VH-285A2',5490,15,'02-04-2018',N'TỦ ĐÔNG SANAKY 1 NGĂN VH-285A2',1,'/images/dodien/tudong3.jpg',15,28),
	('tudongAqua70',N'TỦ ĐÔNG AQUA 2 NGĂN AQF-R390',6500,15,'02-03-2018',N'TỦ ĐÔNG AQUA 2 NGĂN AQF-R390',1,'/images/dodien/tudong4.jpg',15,7),
	--máy xay-
	('mayxayElectrolux71',N'MÁY XAY SINH TỐ ELECTROLUX EBR3416A',500,15,'01-07-2018',N'MÁY XAY SINH TỐ ELECTROLUX EBR3416A',1,'/images/dodien/xay1.png',16,30),
	('mayxayPhilips72',N'MÁY XAY SINH TỐ PHILIPS HR2115/01',260,15,'02-11-2018',N'MÁY XAY SINH TỐ PHILIPS HR2115/01',1,'/images/dodien/xay2.png',16,27),
	('mayxaySunhouse73',N'MÁY XAY SINH TỐ SUNHOUSE SHD5112',330,15,'02-02-2018',N'MÁY XAY SINH TỐ SUNHOUSE SHD5112',1,'/images/dodien/xay3.png',16,3),
	('mayxayDaewoo74',N'MÁY XAY CẦM TAY DAEWOO DEB-JZ150',250,10,'02-01-2018',N'MÁY XAY CẦM TAY DAEWOO DEB-JZ150',1,'/images/dodien/xay4.jpg',16,26),
	--máy nước nóng 17-
	('nuocnongAriston75',N'BÌNH NƯỚC NÓNG ARISTON 15L SL 15 2.5 FE-MT',2760,10,'01-31-2018',N'BÌNH NƯỚC NÓNG ARISTON 15L SL 15 2.5 FE-MT',1,'/images/dodien/nuocnong1.jpg',17,33),
	('nuocnongPanasonic76',N'MÁY NƯỚC NÓNG PANASONIC DH-3RP2',3790,10,'01-30-2018',N'MÁY NƯỚC NÓNG PANASONIC DH-3RP2',1,'/images/dodien/nuocnong2.jpg',17,4),
	('nuocnongFerroli77',N'MÁY NƯỚC NÓNG FERROLI DIVO SDK 4.5S',2760,10,'01-29-2018',N'MÁY NƯỚC NÓNG FERROLI DIVO SDK 4.5S',1,'/images/dodien/nuocnong3.jpg',17,35),
	('nuocnongLegend78',N'MÁY NƯỚC NÓNG LEGEND LE-7000E',2760,10,'01-28-2018',N'MÁY NƯỚC NÓNG LEGEND LE-7000E',1,'/images/dodien/nuocnong4.jpg',17,34),
	--máy rửa chén 18-
	('ruachenElectrolux79',N'MÁY RỬA CHÉN ELECTROLUX ESF6010BW',6900,10,'01-27-2018',N'MÁY RỬA CHÉN ELECTROLUX ESF6010BW',1,'/images/dodien/ruachen1.jpg',18,30),
	('ruachenElectrolux80',N'MÁY RỬA CHÉN ELECTROLUX ESF5511LOX',16900,10,'01-26-2018',N'MÁY RỬA CHÉN ELECTROLUX ESF5511LOX',1,'/images/dodien/ruachen2.jpg',18,30),
	('ruachenElectrolux81',N'MÁY RỬA CHÉN ELECTROLUX ESF5202LOX',14300,10,'01-25-2018',N'MÁY RỬA CHÉN ELECTROLUX ESF5202LOX',1,'/images/dodien/ruachen3.jpg',18,30),
	--máy lạnh 19-
	('maylanhToshiba82',N'MÁY LẠNH TOSHIBA 1 HP RAS-H10QKSG-V',6490,10,'01-24-2018',N'MÁY LẠNH TOSHIBA 1 HP RAS-H10QKSG-V',1,'/images/dodien/maylanh1.jpg',19,2),
	('maylanhLG83',N'MÁY LẠNH LG INVERTER 1.5 HP V13ENS',10900,10,'01-23-2018',N'MÁY LẠNH LG INVERTER 1.5 HP V13ENS',1,'/images/dodien/maylanh2.jpg',19,31),
	('maylanhSharp84',N'MÁY LẠNH SHARP 1 HP AH-X9STW',6990,10,'01-22-2018',N'MÁY LẠNH SHARP 1 HP AH-X9STW',1,'/images/dodien/maylanh3.jpg',19,1),
	('maylanhPanasonic85',N'MÁY LẠNH PANASONIC 1.5 HP CU',12890,10,'01-21-2018',N'MÁY LẠNH PANASONIC 1.5 HP CU',1,'/images/dodien/maylanh4.jpg',19,4),
	('maylanhDaikin86',N'MÁY LẠNH DAIKIN 1.5 HP FTC35NV1V',11000,10,'01-20-2018',N'MÁY LẠNH DAIKIN 1.5 HP FTC35NV1V',1,'/images/dodien/maylanh5.jpg',19,36),
	--máy lọc không khí 20-
	('maylocSharp87',N'MÁY LỌC KHÔNG KHÍ SHARP 1.5 HPED HP FTC35NV1V',1100,10,'01-19-2018',N'MÁY LỌC KHÔNG KHÍ SHARP  HP FTC35NV1V',1,'/images/dodien/lockk1.jpg',20,1),
	('maylocPanasonic88',N'MÁY LỌC KHÔNG KHÍ PANASONIC F-PXM35A',1900,10,'01-18-2018',N'MÁY LỌC KHÔNG KHÍ PANASONIC F-PXM35A',1,'/images/dodien/lockk2.jpg',20,4),
	('maylocPanasonic89',N'MÁY LỌC KHÔNG KHÍ PANASONIC F-E4',1500,10,'01-17-2018',N'MÁY LỌC KHÔNG KHÍ PANASONIC F-E4',1,'/images/dodien/lockk3.jpg',20,4),
	('maylocSharp90',N'MÁY LỌC KHÔNG KHÍ SHARP 1.5 HPED',1400,10,'01-16-2018',N'MÁY LỌC KHÔNG KHÍ SHARP 1.5 HPED',1,'/images/dodien/lockk4.jpg',20,1),

	--máy lọc nước 21-
	('locnuocOhi@ma91',N'BÌNH LỌC NƯỚC OHI@MA 14 LÍT HMW-14A',190,10,'01-15-2018',N'BÌNH LỌC NƯỚC OHI@MA 14 LÍT HMW-14A',1,'/images/dodien/loc1.jpg',21,10),
	('locnuocKangaroo92',N'MÁY LỌC NƯỚC KANGAROO KG 110VTU',230,10,'01-14-2018',N'MÁY LỌC NƯỚC KANGAROO KG 110VTU',1,'/images/dodien/loc2.jpg',21,29),
	('locnuocSunhouse93',N'MÁY LỌC NUỚC SUNHOUSE SHR88310K',321,10,'01-13-2018',N'MÁY LỌC NUỚC SUNHOUSE SHR88310K',1,'/images/dodien/loc3.jpg',21,3),
	('locnuocOhi@ma94',N'BÌNH LỌC NƯỚC OHI@MA 14 LÍT HMW-12Q',220,10,'01-12-2018',N'BÌNH LỌC NƯỚC OHI@MA 14 LÍT HMW-12Q',1,'/images/dodien/loc4.jpg',21,10),
	('locnuocKangaroo95',N'BỘ LÕI LỌC KANGAROO K28',200,10,'01-01-2019',N'BỘ LÕI LỌC KANGAROO K28',1,'/images/dodien/loc5.jpg',21,29),
	--máy pha cà phê 22-
	('phacfElectrolux96',N'MÁY PHA CÀ PHÊ ELECTROLUX ECM3505',700,10,'01-10-2018',N'MÁY PHA CÀ PHÊ ELECTROLUX ECM3505',1,'/images/dodien/pha1.jpg',22,30),
	('phacfDelonghi97',N'PHA CÀ PHÊ DELONGHI EC820.B',8900,10,'01-02-2018',N'PHA CÀ PHÊ DELONGHI EC820.B',1,'/images/dodien/pha2.jpg',22,37),
	('phacfNetcafe98',N'MÁY PHA CÀ PHÊ NESCAFE DOLCE GUSTO-MINIME',2500,10,'01-06-2018',N'MÁY PHA CÀ PHÊ NESCAFE DOLCE GUSTO-MINIME',1,'/images/dodien/pha3.jpg',22,38),
	('phacfNetcafe99',N'MÁY PHA CÀ PHÊ NESCAFE DOLCE GUSTO-MT',11000,10,'02-07-2018',N'MÁY PHA CÀ PHÊ NESCAFE DOLCE GUSTO-MT',1,'/images/dodien/pha4.jpg',22,38)
	go
insert into Customer(Username,Password,Fullname,Gender,Birthday,Phone,Address,Email)
	values
	('user1','123',N'Nông Văn Phú',1,'12-12-1999','0944444333'
	,N'12 võ văn kiệt, phường nguyễn thái bình ,quận 1, Hồ Chí Minh','phunv@gmail.com'),
	('user2','123',N'Cao Đức Trọng',1,'06-23-1997','055444433'
	,N'Dĩ An ,Bình Dương','trongcd@gmail.com'),
	('user3','123',N'Nguyễn Mai Anh',0,'04-24-1997','044455666'
	,N'178 Phan Đăng Lưu, Phường 3, Phú Nhuận, Hồ Chí Minh','anhnm@gmail.com'),
	('user4','123',N'Vũ Văn Nhôm',1,'05-26-1997','01214568462'
	,N'86 Trần Trọng Cung, Tân Thuận Đông, Quận 7 , Hồ Chí Minh','nhomvv@gmail.com'),
	('user5','123',N'Nguyễn Trung Dũng',1,'02-27-1997','01214568462'
	,N'4 Pasteur, Xương Huân, Thành phố Nha Trang, Khánh Hòa','dungnt@gmail.com'),
	('user6','123',N'Trần Thế Đông',1,'01-29-1997','01214568462'
	,N'141 Nguyễn Huệ, Bến Nghé, Quận 1, HCM','dongtto@gmail.com'),
	('user7','123',N'Mai Văn Phương',1,'11-30-1997','01214568462'
	,N'3A Võ Văn Tần, Phường 6, Quận 3, Hồ Chí Minh','phuongmv@gmail.com'),
	('user8','123',N'Văn Mai Hương',1,'12-12-1997','01214568462'
	,N'133 Nguyễn Huệ, Bến Nghé, Quận 1, Hồ Chí Minh','huongvm@gmail.com'),
	('user9','123',N'Nguyễn Trường Giang',1,'12-11-1997','01214568462'
	,N'194 Hoàng Văn Thụ, phường 9, Phú Nhuận, Hồ Chí Minh','giangnt@gmail.com'),
	('user10','123',N'Huỳnh Tấn Lập',1,'09-03-1997','01214568462'
	,N'38 Bùi Thị Xuân, Phường Phạm Ngũ Lão, Quận 1 Hồ Chi Minh','lapht@gmail.com')
	go
insert into Orders(OrderDay,Describe,Status,CustomerID)
	values
	('02-20-2018',N'None Describe in there',1,'user1'),
	('02-26-2019',N'None Describe in there',1,'user2'),
	('02-03-2019',N'None Describe in there',1,'user3'),
	('02-04-2019',N'None Describe in there',1,'user4'),
	('02-05-2019',N'None Describe in there',1,'user5'),
	('02-10-2019',N'None Describe in there',1,'user6'),
	('02-09-2019',N'None Describe in there',1,'user7'),
	('02-11-2019',N'None Describe in there',1,'user8'),
	('01-20-2019',N'None Describe in there',1,'user9'),
	--mới thêm-
	('03-03-2019',N'None Describe in there',1,'user1'),
	('03-03-2019',N'None Describe in there',1,'user2'),
	('03-03-2019',N'None Describe in there',1,'user3'),
	('03-03-2019',N'None Describe in there',1,'user4'),
	('03-04-2019',N'None Describe in there',1,'user5'),
	('03-04-2019',N'None Describe in there',1,'user6'),
	('03-04-2019',N'None Describe in there',1,'user7'),
	('03-04-2019',N'None Describe in there',1,'user8'),
	('03-04-2019',N'None Describe in there',1,'user9'),
	('03-04-2019',N'None Describe in there',1,'user1'),
	('03-04-2019',N'None Describe in there',1,'user2'),
	
	('03-05-2019',N'None Describe in there',1,'user1'),
	('03-05-2019',N'None Describe in there',1,'user2'),
	('03-05-2019',N'None Describe in there',1,'user3'),
	('03-05-2019',N'None Describe in there',1,'user4'),
	('03-06-2019',N'None Describe in there',1,'user5'),
	('03-06-2019',N'None Describe in there',1,'user6'),
	('03-06-2019',N'None Describe in there',1,'user7'),
	('03-06-2019',N'None Describe in there',1,'user8'),
	('03-06-2019',N'None Describe in there',1,'user9'),
	('03-06-2019',N'None Describe in there',1,'user1'),
	
	('03-07-2019',N'None Describe in there',1,'user1'),
	('03-07-2019',N'None Describe in there',1,'user2'),
	('03-07-2019',N'None Describe in there',1,'user3'),
	('03-07-2019',N'None Describe in there',1,'user4'),
	('03-07-2019',N'None Describe in there',1,'user5'),
	('03-07-2019',N'None Describe in there',1,'user6'),
	('03-07-2019',N'None Describe in there',1,'user7'),
	('03-07-2019',N'None Describe in there',1,'user8'),
	('03-07-2019',N'None Describe in there',1,'user9'),
	('03-07-2019',N'None Describe in there',1,'user1')
	go
insert into OrderDetails(ProductID,OrderID,Quantity)
	values
	('quatSharp01',1,1),
	('chaoHappyCook08',2,1),
	('quatToshiba02',3,1),
	('xoongHappyCook12',4,5),
	('quatSunHouse03',5,1),
	('hopdungHappyCook16',6,2),
	('quatPanasonic04',7,1),
	('binhthuydienPanasonic26',8,1),
	('quatAsia06',2,1),
	('bepGaSunHouse33',6,1),
	('quatSenko07',9,1),
	('noiComSupor41',4,1),
	('quatAqua05',8,1),
	('tochendiaElmich28',5,5),
	('xoongLuminarc14',10,1),
	('maidaolafonte20',10,1),
	('bepGaSunHouse39',11,1),
	('noiComToshiba43',11,1),
	('nuocnongAriston75',12,1),
	('nuocnongFerroli77',13,1),
	('nuocnongLegend78',13,1),
	('nuocnongPanasonic76',14,1),
	('phacfDelonghi97',14,1),
	('phacfElectrolux96',14,2),
	('phacfNetcafe98',13,2),
	('vinuongElectrolux54',13,2),
	('tudongSanaky69',14,1),
	('tulanhToshiba63',15,1),
	('xoongFiveStar13',16,1),
	('tochendiaMatchmann32',17,1),
	('ruachenElectrolux80',18,1),
	('vinuongSharp56',19,1),
	('locnuocOhi@ma91',20,1),
	('maygiatLG60',21,1),
	('ruachenElectrolux80',22,1),
	('maylanhDaikin86',23,1),
	('maylocSharp87',24,1),
	('mayxayPhilips72',25,1),
	('noiapsuatAqua50',26,1),
	('locnuocKangaroo92',27,1)








