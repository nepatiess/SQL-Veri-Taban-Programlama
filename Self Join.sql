------------------SELF JOIN-------------------------
use kitaplik

SELECT k1.KitapAd AS KitapAd1, k2.KitapAdi AS KitapAdi, k1.kitapPuan
FROM Kitap k1, kitap2 k2
WHERE k1.KitapAd <> k2.KitapAdi
AND k1.KitapPuan = k2.KitapPuan
ORDER BY k1.kitapPuan;