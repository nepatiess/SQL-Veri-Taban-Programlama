-------------------------TRIGGER--------------------------
-- Bir tabloda gerçekleşen sorgu sonucuna göre başka bir sorgunun çalışmasını sağlayan sql komutudur
-- Procedure den farkı kullanıcı tarafından tetiklenmesidir
-- Trigger 2 şekilde çalışır: İlki ana sorguyu engellemek (instead of), ikincisi birlikte çalışmak (after-for)

-- kitaplik --> tables --> kitap2 --> triggers

create trigger Deneme
on kitap2
after insert
as
begin
select 'Yeni bir kitap kaydı yapıldı'
end

insert into kitap2 values ('İnsan ne ile yaşar','hikaye','eeee', 'mor',8)

-- ilgili tetikleici çalıştı


create trigger Deneme2
on kitap2
after insert
as
begin
select KitapAdi, KitapPuan, KitapPuan=KitapPuan + 8 from kitap2
where KitapPuan = 2
end

--kitap puanı 2 olan kitabın puanına 8 ekledik

insert into kitap2 values ('hayvan çiftliği', 'hikaye', 'ddad', 'sarı', 9)