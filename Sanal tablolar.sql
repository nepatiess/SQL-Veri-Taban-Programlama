----------------------SANAL TABLOLAR-----------------------------
declare @ogrenciler table(
ogrno varchar(3),
ograd varchar(20),
ogrsoyad varchar(30),
ogrkol varchar(30),
ogrmah varchar(50)
)

insert into @ogrenciler values('A25', 'Baran', 'Y�ceda�', 'Sa�l�k', '�akirpa�a')
insert into @ogrenciler values('B17', 'Ali', 'Y�ld�z', '�evre', 'Ye�ilevler')
insert into @ogrenciler values('A28', 'Ay�e', 'Kaya', 'Trafik', 'Fevzipa�a')

select * from @ogrenciler order by ogrno -- �st taraftaki verileri e�er yorum sat�r� yaparsak bu kod �al��mayacak ��nk� bu tablo sanal tablo.4