----------------------------CASE--------------------------------------
select kitapRengi, kitapBaski, kitapDerece, Durum=
case KitapDerece
when 'a' then '�ok kaliteli'
when 'b' then 'Kaliteli'
when 'c' then 'Orta'
when 'd' then 'Eh'
else 'Bilinmeyen De�er'
end
from Kitap3 order by kitapDerece asc
-- kitaplar� kitap derecesinin kalitesine g�re s�ralad�k


--10 az, 10- 15 orta bas�m, 15-20 ideal , 20den fazla y�ksek
-- kitaplar�n bas�m say�s�na g�re oran�

select kitapRengi, kitapBaski, kitapDerece, BasimOrani =
case
WHEN kitapBaski <= 10 THEN 'Az Oran'
WHEN kitapBaski > 10 AND kitapBaski <= 15 THEN 'Orta Oran'
WHEN kitapBaski > 15 AND kitapBaski <= 20 THEN '�deal Oran'
WHEN kitapBaski > 20 THEN 'Y�ksek Oran'
ELSE 'Bilinmeyen De�er'
END
FROM Kitap3;
