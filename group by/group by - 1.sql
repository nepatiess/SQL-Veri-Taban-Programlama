--------------------------GROUP BY------------------------------------
select KitapYazar, COUNT(KitapAd) as 'Kitap Sayısı' from Kitap group by KitapYazar
-- 16 farklı yazarların kaç tane kitabı olduğunu kitap sayısı sütunu ile gösterdi 

select KitapAd, COUNT(KitapAd) as 'Stok' from Kitap group by KitapAd
-- kitap sayılarının sayısını sayıp stok sütunu ile gösterdik

select KitapYayınEvi, count(KitapAd) as 'Kaç kitap yayınladı' from Kitap group by KitapYayınEvi order by KitapYayınEvi asc
-- her bir yayınevinin kaç tane kitap yayınladığını gösterdik

select KitapYayınEvi, count(KitapAd) as 'Kaç kitap yayınladı sırasıyla' from Kitap group by KitapYayınEvi order by COUNT(KitapAd) asc
--yukarıdaki tablonun kaç kitap yayınlandığının sayılarını sırasıyla yazdırdık

select KitapYayınEvi, SUM(KitapFiyat) as 'Toplam Fiyat' from Kitap group by KitapYayınEvi
--Kitap yayın evlerinin her kitabın fiyat toplamını bulup yazdırdık

select KitapYayınEvi, AVG(KitapFiyat) as 'Ortalama satış fiyatı' from Kitap group by KitapYayınEvi
-- kitap yayın evlerinin her kitabının fiyat ortalmasını gösteren tabloyu yazdırdık

select KitapYayınEvi, MIN(KitapFiyat) as 'En düşük',
MAX(KitapFiyat) as 'En yüksek' from Kitap group by KitapYayınEvi
-- kitap yayın evlerinin kitaplarının fiyatlarını min ve max olarak gösterdik

select KitapYayınEvi,count(KitapAd) from Kitap where KitapFiyat>10 group by KitapYayınEvi
-- yayın evlerinin kitap fiyatı 10dan büyük olan kitapların listesini gösterdik