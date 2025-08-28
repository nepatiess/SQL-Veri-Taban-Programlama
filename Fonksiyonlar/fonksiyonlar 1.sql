--------------------------FONKSÝYONLAR-----------------------------
-- Skaler Fonksiyonlar: Geriye tek deðer döndüren fonksiyolardýr
return: geriye tek deðer döndürüyor
returns: geriye döndürülecek olan deðerin veri tipini belirliyoruz

select kitapRengi from Kitap3 -- kitap renkleri tabloda küçük harflerle yazýlý
-- kitaplik --> programmability --> functions

-- Kitap renklerini fonksiyon ile büyük harfle yazalým

create function buyukHarf(@gelendeger varchar(10))
returns varchar(10)
as
begin
return upper(@gelendeger)
end

-- Yukarýdaki kodu yorum satýrý yaparak kullanmamýz gerekiyor

select dbo.buyukHarf(kitapRengi) from Kitap3 -- bütün harfleri büyük harf yaptýk

----------------------------ÖDEV--------------------------------
-- Personellerin isimlerini kýsaltan fonskiyon yaz. : Mehmet Yücedað, Mesut Öztürk, Veli Kaya, Ayþe Tunca

create Function kýsalt(@isim varchar(10), @soyisim varchar(10))
returns varchar(10)
as
begin
return Substring(@isim ,1,1) + '.' + upper(@soyisim)
end

select dbo.kýsalt(@PersonelÝsim, personelSoyisim) from personel

create function kayitSayi (@gelenrenk varchar(10))
returns int
as
begin
declare @sayi int
select @sayi = count(kitapRengi) from kitap3 where kitapRengi = @gelenrenk
-- Gelen renk: parametre olarak gönderilen renk
return @sayi


select dbo.kayitSayi('yeþil') -- 3 tane geldi
select dbo.kayitSayi('mor') -- 0 tane geldi