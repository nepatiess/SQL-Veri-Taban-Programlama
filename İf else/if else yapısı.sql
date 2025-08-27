--------------------IF ELSE---------------------------
declare @kitapsayi tinyint
select @kitapsayi= count(KitapAdi) from kitap2
print @kitapsayi
--kitap2 tablosundaki kitaplarýn sayýsýný yazdýrdýk

if(@kitapsayi<=5)
begin
print 'Yetesiz Kitap: '+ cast(@kitapsayi as varchar(2))
end
else
begin
print 'Yeterli Kitap: '+ cast(@kitapsayi as varchar(2))
end
-- if else kullanarak kitap sayýsý eðer 5ten küçükse yetersiz, eðer büyük veya eþitse yeterli mesajý yazdýrdýk

--kitap 2 tablosundaki roman türündeki kitaplarýn sayýsýný 3ten küçükse yetersiz, 3 ve 6 aralýðýndaysa (6 dahil) orta sayýda, else yeterli kitap mevcut mesajlarýný yazdýr

declare @tursayi tinyint
select @tursayi = count(KitapAdi) from kitap2

if(@tursayi<3)
begin
print 'Yetersiz roman: '+ cast(@tursayi as varchar(2))
end
else if(3<@tursayi and @tursayi<=6)
begin
print 'Orta sayýda kitap: '+ cast(@tursayi as varchar(2))
end
else
begin
print 'Yeterli kitap mevcut: '+ cast(@tursayi as varchar(2))
end