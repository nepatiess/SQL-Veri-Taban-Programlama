----------------------------CASE--------------------------------------
select kitapRengi, kitapBaski, kitapDerece, Durum=
case KitapDerece
when 'a' then 'Çok kaliteli'
when 'b' then 'Kaliteli'
when 'c' then 'Orta'
when 'd' then 'Eh'
else 'Bilinmeyen Deðer'
end
from Kitap3 order by kitapDerece asc
-- kitaplarý kitap derecesinin kalitesine göre sýraladýk


--10 az, 10- 15 orta basým, 15-20 ideal , 20den fazla yüksek
-- kitaplarýn basým sayýsýna göre oraný

select kitapRengi, kitapBaski, kitapDerece, BasimOrani =
case
WHEN kitapBaski <= 10 THEN 'Az Oran'
WHEN kitapBaski > 10 AND kitapBaski <= 15 THEN 'Orta Oran'
WHEN kitapBaski > 15 AND kitapBaski <= 20 THEN 'Ýdeal Oran'
WHEN kitapBaski > 20 THEN 'Yüksek Oran'
ELSE 'Bilinmeyen Deðer'
END
FROM Kitap3;
