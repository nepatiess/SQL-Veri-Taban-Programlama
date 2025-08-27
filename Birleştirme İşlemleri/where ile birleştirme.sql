---------------------------WHERE ÝLE BÝRLEÞTÝRME------------------------------------
select KitapAd, KitapYazar, KitapTur from Kitap, kitap2 -- bu þekilde 250 tane listeledi bu çok fazla

select KitapAd, KitapYazar, KitapTur from Kitap, kitap2 where kitap.KitapAd=kitap2.KitapAdi -- çýktýda 12 sonuç döndürdü

select KitapAd, KitapRenk from Kitap k1,kitap2 k2 where k1.KitapAd=k2.KitapAdi -- k1 ve k2 ile takma isim oluþturduk 

select KitapAd, KitapTur, KitapRengi from Kitap k1, kitap2 k2, Kitap3 k3
where k1.KitapAd=k2.KitapAdi and 
k2.KitapRenk=k3.KitapRengi