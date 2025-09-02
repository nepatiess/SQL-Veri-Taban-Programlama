--------------------- ARİTMETİK OPERATÖRLER --------------------------------
select 20+4 --column name olmadan sadece sonucu gösterir
select 20+4 as 'toplam' -- toplam sütunu altında sonucu gösterdi

select 20+2 as 'toplam'
select 20-2 as 'fark'
-- ikisini farklı tablolar, farklı çıktılar şeklinde gösterdi

-- tabloların yan yana olmasını istiyorsak virgül ile ayırmamız gerekiyor
select 20+4 as 'toplam', 20-4 as 'fark', 20*4 as 'çarpım', 20/4 as 'bölüm'

----------------------------------------------------
use kitaplik
select KitapAd, KitapFiyat, KitapFiyat+3 as 'Yeni Fiyat' from Kitap
-- kitap adını kitap fiyatını tabloladı ve yeni fiyat sütunu altında kitap fiyatına 3 ekleyerek tekrar yana yazdı

select KitapAd + ' - '+ KitapYazar from Kitap
-- çıktı: Çalıkuşu - Reşat Nuri Güntekin

----------------------SUBSTRING----------------------------
select SUBSTRING(KitapAd, 1, 5) from Kitap
-- kitap adlarının kelime olarak 1den 5e kadar yazdırdı

------------------------------------------------------------
select LEFT(kitapAd, 7) from Kitap -- kitap adlarındaki ilk 7 karakteri getirdi ve boşlukları da saydı

select RIGHT(kitapAd,4) from Kitap -- kitap adlarındaki son 4 karakteri gösterdi

select UPPER(KitapAd) as 'BÜYÜK HARF' , LOWER(KitapAd) as 'küçük harf' from Kitap
-- kitap adlarını önce büyük harflerle yanında da küçük harflerle yazdı ve tabloladı

select KitapAd, LEN(KitapAd) as 'Karakter Sayısı' from Kitap where LEN(KitapAd) > 15
-- kitap adını ve kitap adının uzunluklarını 15den büyük olan kitapları sıraladı

select KitapAd, REPLACE(KitapYazar, 'Sabahattin Ali', 'S. Ali') as 'Kısaltma' from Kitap
-- kitap yazarı Sabahattin Ali'nin ismini kısaltarak S.Ali olarak kısaltma sütununa yazdırdı

select REVERSE(KitapAd) as 'Tersten' from Kitap
-- kitap adlarını tersten yazdırdı ve tersten sütununa sıraladı.
