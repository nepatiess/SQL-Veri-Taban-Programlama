---------------------------------INNER JOIN----------------------------------
select SUM(KitapFiyat) as 'Toplam Fiyat' , KitapTur from Kitap k1 inner join kitap2 k2
on
k1.KitapAd=k2.KitapAdi
group by KitapTur order by KitapTur
-- toplam fiyat | kitap tür
--       18     |	hikaye

select KitapAd, KitapTur, KitapRenk from Kitap k1 inner join kitap2 k2
on
k1.KitapAd=k2.KitapAdi inner join Kitap3 k3 on
k2.KitapRenk = k3.KitapRengi

select kitapTur, SUM(KitapFiyat) as 'Toplam Fiyat' from kitap k1 inner join kitap2 k2
on
k1.KitapAd=k2.KitapAdi inner join Kitap3 k3
on
k2.KitapRenk=k3.KitapRengi group by KitapTur order by KitapTur
-- kitap türlerinin kitap fiyatlarýný gösterdi