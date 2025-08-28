--------------------------FONKS�YONLAR-----------------------------
-- Skaler Fonksiyonlar: Geriye tek de�er d�nd�ren fonksiyolard�r
return: geriye tek de�er d�nd�r�yor
returns: geriye d�nd�r�lecek olan de�erin veri tipini belirliyoruz

select kitapRengi from Kitap3 -- kitap renkleri tabloda k���k harflerle yaz�l�
-- kitaplik --> programmability --> functions

-- Kitap renklerini fonksiyon ile b�y�k harfle yazal�m

create function buyukHarf(@gelendeger varchar(10))
returns varchar(10)
as
begin
return upper(@gelendeger)
end

-- Yukar�daki kodu yorum sat�r� yaparak kullanmam�z gerekiyor

select dbo.buyukHarf(kitapRengi) from Kitap3 -- b�t�n harfleri b�y�k harf yapt�k

----------------------------�DEV--------------------------------
-- Personellerin isimlerini k�saltan fonskiyon yaz. : Mehmet Y�ceda�, Mesut �zt�rk, Veli Kaya, Ay�e Tunca

create Function k�salt(@isim varchar(10), @soyisim varchar(10))
returns varchar(10)
as
begin
return Substring(@isim ,1,1) + '.' + upper(@soyisim)
end

select dbo.k�salt(@Personel�sim, personelSoyisim) from personel

create function kayitSayi (@gelenrenk varchar(10))
returns int
as
begin
declare @sayi int
select @sayi = count(kitapRengi) from kitap3 where kitapRengi = @gelenrenk
-- Gelen renk: parametre olarak g�nderilen renk
return @sayi


select dbo.kayitSayi('ye�il') -- 3 tane geldi
select dbo.kayitSayi('mor') -- 0 tane geldi