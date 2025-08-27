--------------------------- LEFT & RIGHT OUTER JOIN-------------------------------
select KitapAd, KitapRenk from kitap k1 left outer join
kitap2 k2
on
k1.KitapAd = k2.KitapAdi
-- 2. tabloyu 1. tabloya g�re birle�tirdik ve e�er kitap rengi olmayan kitap varsa da onlara null atad�k

select KitapAd, KitapRenk from kitap k1 right outer join
kitap2 k2
on
k1.KitapAd = k2.KitapAdi
-- 1. tabloyu 2. tabloya g�re birle�tirdik ve e�er kitap ismi olmayan kitap varsa da onlar� null atad�k


