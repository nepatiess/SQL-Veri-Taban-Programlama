--------------------DATE DIFF------------------------
select DATEDIFF(Year,'1923-10-29','2016-10-29') as 'Yıl Farkı', -- Date diff fonksiyonu ile ilk tarih ile ikinci tarih arasında kaç yıl olduğunu gösterdi
DATEDIFF(Month, '2016-01-05', '2016-12-01') as 'Ay Farkı', -- Date diff fonksiyonu ile ilk tarih ile ikinci tarih arasında kaç ay olduğunu gösterdi
DATEDIFF(DAY, '2016-01-01','2016-12-01') as 'Gün Farkı' -- Date diff fonksiyonu ile ilk tarih ile ikinci tarih arasında kaç gün olduğunu gösterdi

select DATEDIFF(YEAR,'1919-05-19', GETDATE()) as 'Kaç yıl oldu' -- MKA'nın Samsun'a çıkışı (Gençlik spor bay.) ndan 106 yıl geçmiş


select DATEADD(day,10,GETDATE()) --Bugünün üzerine 10 gün eklendi
