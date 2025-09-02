----------------------SANAL TABLOLAR-----------------------------
declare @ogrenciler table(
ogrno varchar(3),
ograd varchar(20),
ogrsoyad varchar(30),
ogrkol varchar(30),
ogrmah varchar(50)
)

insert into @ogrenciler values('A25', 'Baran', 'Yücedað', 'Saðlýk', 'Þakirpaþa')
insert into @ogrenciler values('B17', 'Ali', 'Yýldýz', 'Çevre', 'Yeþilevler')
insert into @ogrenciler values('A28', 'Ayþe', 'Kaya', 'Trafik', 'Fevzipaþa')

select * from @ogrenciler order by ogrno -- üst taraftaki verileri eðer yorum satýrý yaparsak bu kod çalýþmayacak çünkü bu tablo sanal tablo.4