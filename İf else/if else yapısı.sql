--------------------IF ELSE---------------------------
declare @kitapsayi tinyint
select @kitapsayi= count(KitapAdi) from kitap2
print @kitapsayi
--kitap2 tablosundaki kitaplar�n say�s�n� yazd�rd�k

if(@kitapsayi<=5)
begin
print 'Yetesiz Kitap: '+ cast(@kitapsayi as varchar(2))
end
else
begin
print 'Yeterli Kitap: '+ cast(@kitapsayi as varchar(2))
end
-- if else kullanarak kitap say�s� e�er 5ten k���kse yetersiz, e�er b�y�k veya e�itse yeterli mesaj� yazd�rd�k

--kitap 2 tablosundaki roman t�r�ndeki kitaplar�n say�s�n� 3ten k���kse yetersiz, 3 ve 6 aral���ndaysa (6 dahil) orta say�da, else yeterli kitap mevcut mesajlar�n� yazd�r

declare @tursayi tinyint
select @tursayi = count(KitapAdi) from kitap2

if(@tursayi<3)
begin
print 'Yetersiz roman: '+ cast(@tursayi as varchar(2))
end
else if(3<@tursayi and @tursayi<=6)
begin
print 'Orta say�da kitap: '+ cast(@tursayi as varchar(2))
end
else
begin
print 'Yeterli kitap mevcut: '+ cast(@tursayi as varchar(2))
end