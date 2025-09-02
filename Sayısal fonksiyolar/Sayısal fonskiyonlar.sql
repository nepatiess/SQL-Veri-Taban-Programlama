-----------SAYISAL FONSKİYONLAR-------------
/*
MIN(): seçilen sütundaki en küüçük değeri döndürür
MAX(): seçilen sütundaki en büyük değeri döndürür
COUNT(): satırdaki değerlerin tanesini döndürür
SUM(): satırdaki değerlerin toplamını döndürür
AVG(): satırdaki sayısal değerlerin ortalamasını döndürür

*/
use kitaplik
select abs(KitapFiyat) as 'Kitap Fiyatları' from Kitap -- kitap fiyatları eğer 0dan küçükse abs ile mutlak değeri alınır ve yeni kitap fiyatları sütununda gösterilir.
 
select CEILING(KitapFiyat) as 'Kitap Fiyatları', KitapFiyat, 
FLOOR(KitapFiyat) as 'KitapFiyatları2' ,KitapAd from Kitap -- floor ile virgüllü sayıları aşağıya doğru sıraladık

select KitapAd,KitapFiyat, ROUND(KitapFiyat,1) from Kitap -- round ile kitap fiyatındaki ondalıklı sayıların virgülden sonraki 2 değeri varsa 1e düşürdük.

select POWER(2,5) as 'Üs' -- üs alma
select SQRT(620) as 'Karekök' -- karekök alma

---------------TOPLAMA------------------------
select * from Kitap  
select SUM(convert(int,KitapFiyat)) as 'Fiyat Toplam', sum(convert(int,Vergi)) as 'Vergi Toplam' from Kitap -- bütün kitapların fiyatlarını ve vergilerini topladı ve toplam sütuna yazdırdı
-- varcharlar ile sum fonksiyonu yapılmaz bu yüzden varcharları öncesinde int veri tipine değiştirdik.

select KitapAd, KitapFiyat from Kitap where KitapFiyat>=15

select KitapAd, KitapFiyat from Kitap where KitapTarih between '2016-01-01 00:00:00' and '2015-01-01 00:00:00' -- tarihleri arasındaki kitapların kitap adlarını ve kitap fiyatlarını tabloda göster.

select AVG(KitapFiyat) as 'ortalama' from Kitap -- kitap fiyatlarının ortalamasını alıp ortalama sütununa yazdırır.

select MAX(KitapFiyat), MIN(KitapFiyat) from Kitap -- kitapların fiyatlarının minimumu ve maximimunu gösterir

select COUNT(KitapAd) from Kitap -- kitap adlarının sayısını gösterir

