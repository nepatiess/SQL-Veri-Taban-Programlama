---------------------------WHERE �LE B�RLE�T�RME------------------------------------
select KitapAd, KitapYazar, KitapTur from Kitap, kitap2 -- bu �ekilde 250 tane listeledi bu �ok fazla

select KitapAd, KitapYazar, KitapTur from Kitap, kitap2 where kitap.KitapAd=kitap2.KitapAdi -- ��kt�da 12 sonu� d�nd�rd�

select KitapAd, KitapRenk from Kitap k1,kitap2 k2 where k1.KitapAd=k2.KitapAdi -- k1 ve k2 ile takma isim olu�turduk 

select KitapAd, KitapTur, KitapRengi from Kitap k1, kitap2 k2, Kitap3 k3
where k1.KitapAd=k2.KitapAdi and 
k2.KitapRenk=k3.KitapRengi