----------------------------------GROUP BY 2-------------------------------------------

select Meslek, COUNT(Ad) 'Personel Sayýsý' from Kisiler group by Meslek order by COUNT(Ad)
-- her bir mesleðin kaç tane o mesleðe ait olan personel sayýsýný gösterdi

select Sehir, COUNT(Ad) as 'Sayý' from kisiler group by Sehir order by Sehir
-- hangi þehirden kaç personel çalýþýyor tabloladýk

select meslek, COUNT(ad) as 'Personel Sayýsý', 
SUM(Maas) as 'Toplam Maaþ' from kisiler group by meslek
-- çýktý: mühendis	6	15600
-- her mesleðin personel sayýsýna göre toplam maaþlarýnýn gösterildiði bir tablo hazýrladýk

select meslek, COUNT(ad) as 'Personel Sayýsý',
SUM(Maas) as 'Toplam Maaþ',
AVG(Maas) as 'Ortalama ' from kisiler group by meslek
-- her mesleðin personel sayýsýna göre toplam maaþlarýnýn ve ortalamalarýýnýn gösterildiði bir tablo hazýrladýk

select meslek, MIN(Maas) as 'En düþük',
MAX(Maas) as 'En yüksek',
AVG(Maas) as 'Ortalama' from kisiler group by meslek 
-- maaþlarýn max ve min ne kadar olduðunu ve ortalamalarýný görelim