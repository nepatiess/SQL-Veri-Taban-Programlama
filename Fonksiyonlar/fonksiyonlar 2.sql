------------------FONKSÝYONLAR 2----------------------------------
--create function KitapPuan (@gelenPuan int)
--returns table
--as 
--return (select * from kitap2 where KitapPuan>@gelenPuan)

select KitapAdi, KitapRenk from dbo.KitapPuan(9)