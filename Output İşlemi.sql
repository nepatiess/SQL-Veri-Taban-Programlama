--------------------OUTPUT ��LEMLER�--------------------------
--Return: sadece 1 de�er geri d�nd�r�rken, output birden fazla de�er d�nd�r�r.

declare @yeni table(
renk varchar(10),
baski tinyint,
derece varchar(1)
)

insert into Kitap3
output inserted.KitapRengi, inserted.KitapBaski, inserted.KitapDerece
into @yeni
values('mavi', 21, 'a')
-- sanal tabloya rengi mavi olan,bask�s� 21 olan ve derecesi a olan bir kitap ekledim.

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
-- tablodan kitap derecesi d olan kitaplar� sildi ve sonras�nda silinen kitaplar� yazd�rd�