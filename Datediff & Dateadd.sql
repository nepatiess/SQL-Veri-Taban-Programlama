--------------------DATE DIFF------------------------
--select DATEDIFF(Year,'1923-10-29','2016-10-29') as 'Yýl Farký', -- Date diff fonksiyonu ile ilk tarih ile ikinci tarih arasýnda kaç yýl olduðunu gösterdi
--DATEDIFF(Month, '2016-01-05', '2016-12-01') as 'Ay Farký', -- Date diff fonksiyonu ile ilk tarih ile ikinci tarih arasýnda kaç ay olduðunu gösterdi
--DATEDIFF(DAY, '2016-01-01','2016-12-01') as 'Gün Farký' -- Date diff fonksiyonu ile ilk tarih ile ikinci tarih arasýnda kaç gün olduðunu gösterdi

select DATEDIFF(YEAR,'1919-05-19', GETDATE()) as 'Kaç yýl oldu' -- MKA'nýn Samsun'a çýkýþý (Gençlik spor bay.) ndan 106 yýl geçmiþ

select DATEADD(day,10,GETDATE()) --Bugünün üzerine 10 gün eklendi