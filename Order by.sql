--------------------- ORDER BY --------------------------------
use kitaplik
select * from Kitap order by KitapNo -- kitapların numarasına göre tabloyu sıraladı

select * from Kitap order by KitapAd -- kitapların adlarını alfabetik sıraya soktu

select * from Kitap order by KitapAd asc -- asc: ascending kelimesinden geliyor
-- a'dan z'ye sıraladı

select * from Kitap order by KitapAd desc -- desc: descending kelimesinden geliyor
-- z'den a'ya sıraladı
