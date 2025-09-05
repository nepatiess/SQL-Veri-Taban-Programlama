use kitaplar

--------------------------------INNER JOIN------------------------------
-- kitap t�rlerini g�sterdi
select kitapTur from kitap2 k2 inner join kitap1 k1
on
k2.kitapAdi = k1.KitapAd
group by kitapTur order by kitapTur


-- yukar�daki ile ayn�
select KitapTur from kitap2 inner join kitap1
on
kitap2.KitapAdi = kitap1.KitapAd
group by KitapTur order by KitapTur
-- kitap 1 ve kitap 2 tablolar�ndaki kitaplar� e�le�tirerek 
-- kitap t�rlerini listeledik


-- kitap bask�lar� listeledik
select KitapBaski from kitap3 k3 inner join kitap2 k2
on
k2.kitapRenk = k3.KitapRengi
group by KitapBaski order by KitapBaski


-- Soru 1: Kitap adlar�n� ve t�rlerini (kitap2�den), ayn� kitaplar�n yazarlar�n� (kitap1�den) listele.
select k1.KitapYazar, k2.kitapAdi, k2.kitapTur
from kitap1 k1
inner join kitap2 k2
on
k1.KitapAd = k2.kitapAdi


-- Soru 2: Kitaplar�n ad�n� (kitap1), rengini (kitap2) ve rengin bask� numaras�n� (kitap3) getir.
select k1.KitapAd, k2.kitapRenk, k3.kitapBaski
from kitap1 k1
inner join kitap2 k2
on
k1.KitapAd = k2.kitapAdi inner join kitap3 k3
on
k2.KitapRenk = k3.KitapRengi
order by KitapAd


-------------------------LEFT JOIN---------------------------------
-- Soru 3: T�m kitaplar� (kitap1) listele, varsa kitap2�deki t�r�n� de g�ster.
select k1.kitapAd, k2.kitapTur
from kitap1 k1
left join kitap2 k2
on 
k1.KitapAd = k2.kitapAdi

-- Soru 4: T�m kitaplar� (kitap1) ve kitap3 tablosunda ayn� renge sahip bask� numaralar�n� listele. E�er kitap3�te renk yoksa NULL gelsin.
select k2.kitapRenk from kitap1 k1
left join kitap2 k2
on
k1.KitapAd = k2.kitapAdi 

select k1.KitapAd, k2.kitapRenk, k3.KitapBaski
from kitap1 k1
left join kitap2 k2 on k1.KitapAd = k2.kitapAdi
left join kitap3 k3 on k2.kitapRenk = k3.KitapRengi;




