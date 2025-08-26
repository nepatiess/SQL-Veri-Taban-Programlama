--use kitaplik
----select abs(KitapFiyat) as 'Kitap Fiyatlarý' from Kitap -- kitap fiyatlarý eðer 0dan küçükse abs ile mutlak deðeri alýnýr ve yeni kitap fiyatlarý sütununda gösterilir.
 
--select CEILING(KitapFiyat) as 'Kitap Fiyatlarý', KitapFiyat, 
--FLOOR(KitapFiyat) as 'KitapFiyatlarý2' ,KitapAd from Kitap -- floor ile virgüllü sayýlarý aþaðýya doðru sýraladýk

--select KitapAd,KitapFiyat, ROUND(KitapFiyat,1) from Kitap -- round ile kitap fiyatýndaki ondalýklý sayýlarýn virgülden sonraki 2 deðeri varsa 1e düþürdük.

--select POWER(2,5) as 'Üs' -- üs alma
--select SQRT(620) as 'Karekök' -- karekök alma

---------------TOPLAMA------------------------
select * from Kitap  
select SUM(convert(int,KitapFiyat)) as 'Fiyat Toplam', sum(convert(int,Vergi)) as 'Vergi Toplam' from Kitap -- bütün kitaplarýn fiyatlarýný ve vergilerini topladý ve toplam sütuna yazdýrdý
-- varcharlar ile sum fonksiyonu yapýlmaz bu yüzden varcharlarý öncesinde int veri tipine deðiþtirdik.

select KitapAd, KitapFiyat from Kitap where KitapFiyat>=15

select KitapAd, KitapFiyat from Kitap where KitapTarih between '2016-01-01 00:00:00' and '2015-01-01 00:00:00' -- tarihleri arasýndaki kitaplarýn kitap adlarýný ve kitap fiyatlarýný tabloda göster.

select AVG(KitapFiyat) as 'ortalama' from Kitap -- kitap fiyatlarýnýn ortalamasýný alýp ortalama sütununa yazdýrýr.

select MAX(KitapFiyat), MIN(KitapFiyat) from Kitap -- kitaplarýn fiyatlarýnýn minimumu ve maximimunu gösterir

select COUNT(KitapAd) from Kitap -- kitap adlarýnýn sayýsýný gösterir

