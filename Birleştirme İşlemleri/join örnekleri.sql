use kitaplar

--------------------------------INNER JOIN------------------------------
-- kitap türlerini gösterdi
select kitapTur from kitap2 k2 inner join kitap1 k1
on
k2.kitapAdi = k1.KitapAd
group by kitapTur order by kitapTur


-- yukarýdaki ile ayný
select KitapTur from kitap2 inner join kitap1
on
kitap2.KitapAdi = kitap1.KitapAd
group by KitapTur order by KitapTur
-- kitap 1 ve kitap 2 tablolarýndaki kitaplarý eþleþtirerek 
-- kitap türlerini listeledik


-- kitap baskýlarý listeledik
select KitapBaski from kitap3 k3 inner join kitap2 k2
on
k2.kitapRenk = k3.KitapRengi
group by KitapBaski order by KitapBaski


-- Soru 1: Kitap adlarýný ve türlerini (kitap2’den), ayný kitaplarýn yazarlarýný (kitap1’den) listele.
select k1.KitapYazar, k2.kitapAdi, k2.kitapTur
from kitap1 k1
inner join kitap2 k2
on
k1.KitapAd = k2.kitapAdi


-- Soru 2: Kitaplarýn adýný (kitap1), rengini (kitap2) ve rengin baský numarasýný (kitap3) getir.
select k1.KitapAd, k2.kitapRenk, k3.kitapBaski
from kitap1 k1
inner join kitap2 k2
on
k1.KitapAd = k2.kitapAdi inner join kitap3 k3
on
k2.KitapRenk = k3.KitapRengi
order by KitapAd


-------------------------LEFT JOIN---------------------------------
-- Soru 3: Tüm kitaplarý (kitap1) listele, varsa kitap2’deki türünü de göster.
select k1.kitapAd, k2.kitapTur
from kitap1 k1
left join kitap2 k2
on 
k1.KitapAd = k2.kitapAdi

-- Soru 4: Tüm kitaplarý (kitap1) ve kitap3 tablosunda ayný renge sahip baský numaralarýný listele. Eðer kitap3’te renk yoksa NULL gelsin.
select k2.kitapRenk from kitap1 k1
left join kitap2 k2
on
k1.KitapAd = k2.kitapAdi 

select k1.KitapAd, k2.kitapRenk, k3.KitapBaski
from kitap1 k1
left join kitap2 k2 on k1.KitapAd = k2.kitapAdi
left join kitap3 k3 on k2.kitapRenk = k3.KitapRengi;




