--------------------- ARÝTMETÝK OPERATÖRLER --------------------------------
select 20+4 --column name olmadan sadece sonucu gösterir
select 20+4 as 'toplam' -- toplam sütunu altýnda sonucu gösterdi

select 20+2 as 'toplam'
select 20-2 as 'fark'
-- ikisini farklý tablolar, farklý çýktýlar þeklinde gösterdi

-- tablolarýn yan yana olmasýný istiyorsak virgül ile ayýrmamýz gerekiyor
select 20+4 as 'toplam', 20-4 as 'fark', 20*4 as 'çarpým', 20/4 as 'bölüm'

----------------------------------------------------
use kitaplik
select KitapAd, KitapFiyat, KitapFiyat+3 as 'Yeni Fiyat' from Kitap
-- kitap adýný kitap fiyatýný tabloladý ve yeni fiyat sütunu altýnda kitap fiyatýna 3 ekleyerek tekrar yana yazdý

select KitapAd + ' - '+ KitapYazar from Kitap
-- çýktý: Çalýkuþu - Reþat Nuri Güntekin

----------------------SUBSTRING----------------------------
select SUBSTRING(KitapAd, 1, 5) from Kitap
-- kitap adlarýnýn kelime olarak 1den 5e kadar yazdýrdý

------------------------------------------------------------
select LEFT(kitapAd, 7) from Kitap -- kitap adlarýndaki ilk 7 karakteri getirdi ve boþluklarý da saydý

select RIGHT(kitapAd,4) from Kitap -- kitap adlarýndaki son 4 karakteri gösterdi

select UPPER(KitapAd) as 'BÜYÜK HARF' , LOWER(KitapAd) as 'küçük harf' from Kitap
-- kitap adlarýný önce büyük harflerle yanýnda da küçük harflerle yazdý ve tabloladý

select KitapAd, LEN(KitapAd) as 'Karakter Sayýsý' from Kitap where LEN(KitapAd) > 15
-- kitap adýný ve kitap adýnýn uzunluklarýný 15den büyük olan kitaplarý sýraladý

select KitapAd, REPLACE(KitapYazar, 'Sabahattin Ali', 'S. Ali') as 'Kýsaltma' from Kitap
-- kitap yazarý Sabahattin Ali'nin ismini kýsaltarak S.Ali olarak kýsaltma sütununa yazdýrdý

select REVERSE(KitapAd) as 'Tersten' from Kitap
-- kitap adlarýný tersten yazdýrdý ve tersten sütununa sýraladý.
