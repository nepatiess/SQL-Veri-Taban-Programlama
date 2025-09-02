--------------------IF ELSE---------------------------
declare @kitapsayi tinyint
select @kitapsayi= count(KitapAdi) from kitap2
print @kitapsayi
--kitap2 tablosundaki kitapların sayısını yazdırdık

if(@kitapsayi<=5)
begin
print 'Yetesiz Kitap: '+ cast(@kitapsayi as varchar(2))
end
else
begin
print 'Yeterli Kitap: '+ cast(@kitapsayi as varchar(2))
end
-- if else kullanarak kitap sayısı eğer 5ten küçükse yetersiz, eğer büyük veya eşitse yeterli mesajı yazdırdık

--kitap 2 tablosundaki roman türündeki kitapların sayısını 3ten küçükse yetersiz, 3 ve 6 aralığındaysa (6 dahil) orta sayıda, else yeterli kitap mevcut mesajlarını yazdır

declare @tursayi tinyint
select @tursayi = count(KitapAdi) from kitap2

if(@tursayi<3)
begin
print 'Yetersiz roman: '+ cast(@tursayi as varchar(2))
end
else if(3<@tursayi and @tursayi<=6)
begin
print 'Orta sayıda kitap: '+ cast(@tursayi as varchar(2))
end
else
begin
print 'Yeterli kitap mevcut: '+ cast(@tursayi as varchar(2))
end
