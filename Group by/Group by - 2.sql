----------------------------------GROUP BY 2-------------------------------------------

select Meslek, COUNT(Ad) 'Personel Sayısı' from Kisiler group by Meslek order by COUNT(Ad)
-- her bir mesleğin kaç tane o mesleğe ait olan personel sayısını gösterdi

select Sehir, COUNT(Ad) as 'Sayı' from kisiler group by Sehir order by Sehir
-- hangi şehirden kaç personel çalışıyor tabloladık

select meslek, COUNT(ad) as 'Personel Sayısı', 
SUM(Maas) as 'Toplam Maaş' from kisiler group by meslek
-- çıktı: mühendis	6	15600
-- her mesleğin personel sayısına göre toplam maaşlarının gösterildiği bir tablo hazırladık

select meslek, COUNT(ad) as 'Personel Sayısı',
SUM(Maas) as 'Toplam Maaş',
AVG(Maas) as 'Ortalama ' from kisiler group by meslek
-- her mesleğin personel sayısına göre toplam maaşlarının ve ortalamalarıının gösterildiği bir tablo hazırladık

select meslek, MIN(Maas) as 'En düşük',
MAX(Maas) as 'En yüksek',
AVG(Maas) as 'Ortalama' from kisiler group by meslek 
-- maaşların max ve min ne kadar olduğunu ve ortalamalarını görelim
