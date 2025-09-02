--------------------OUTPUT ÝÞLEMLERÝ--------------------------
--Return: sadece 1 deðer geri döndürürken, output birden fazla deðer döndürür.

declare @yeni table(
renk varchar(10),
baski tinyint,
derece varchar(1)
)

insert into Kitap3
output inserted.KitapRengi, inserted.KitapBaski, inserted.KitapDerece
into @yeni
values('mavi', 21, 'a')
-- sanal tabloya rengi mavi olan,baskýsý 21 olan ve derecesi a olan bir kitap ekledim.

select * from @yeni

declare @silinen table(
renk varchar(10),
baski tinyint,
derece varchar(1)
)
delete from Kitap3
output deleted.KitapRengi, deleted.KitapBaski, deleted.KitapDerece
into @silinen
where KitapDerece = 'd'
select * from @silinen
-- tablodan kitap derecesi d olan kitaplarý sildi ve sonrasýnda silinen kitaplarý yazdýrdý