--------------------- ORDER BY --------------------------------
use kitaplik
select * from Kitap order by KitapNo -- kitaplar�n numaras�na g�re tabloyu s�ralad�

select * from Kitap order by KitapAd -- kitaplar�n adlar�n� alfabetik s�raya soktu

select * from Kitap order by KitapAd asc -- asc: ascending kelimesinden geliyor
-- a'dan z'ye s�ralad�

select * from Kitap order by KitapAd desc -- desc: descending kelimesinden geliyor
-- z'den a'ya s�ralad�
