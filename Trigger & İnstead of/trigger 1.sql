-------------------------TRIGGER--------------------------
-- Bir tabloda ger�ekle�en sorgu sonucuna g�re ba�ka bir sorgunun �al��mas�n� sa�layan sql komutudur
-- Procedure den fark� kullan�c� taraf�ndan tetiklenmesidir
-- Trigger 2 �ekilde �al���r: �lki ana sorguyu engellemek (instead of), ikincisi birlikte �al��mak (after-for)

-- kitaplik --> tables --> kitap2 --> triggers

create trigger Deneme
on kitap2
after insert
as
begin
select 'Yeni bir kitap kayd� yap�ld�'
end

insert into kitap2 values ('�nsan ne ile ya�ar','hikaye','eeee', 'mor',8)

-- ilgili tetikleici �al��t�


create trigger Deneme2
on kitap2
after insert
as
begin
select KitapAdi, KitapPuan, KitapPuan=KitapPuan + 8 from kitap2
where KitapPuan = 2
end

--kitap puan� 2 olan kitab�n puan�na 8 ekledik

insert into kitap2 values ('hayvan �iftli�i', 'hikaye', 'ddad', 'sar�', 9)