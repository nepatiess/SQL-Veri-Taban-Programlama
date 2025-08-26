--------------------- ORDER BY --------------------------------
use kitaplik
select * from Kitap order by KitapNo -- kitaplarýn numarasýna göre tabloyu sýraladý

select * from Kitap order by KitapAd -- kitaplarýn adlarýný alfabetik sýraya soktu

select * from Kitap order by KitapAd asc -- asc: ascending kelimesinden geliyor
-- a'dan z'ye sýraladý

select * from Kitap order by KitapAd desc -- desc: descending kelimesinden geliyor
-- z'den a'ya sýraladý
