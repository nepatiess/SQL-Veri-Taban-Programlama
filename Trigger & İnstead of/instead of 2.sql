------------------INSTEAD OF------------------------
--create trigger insdeneme2
--on kitap2
--instead of update 
--as
--begin
--select 'Kay�t g�sterilebilir'
--end

update kitap2 set KitapAdi= 'deli kurt' where KitapAdi= 'Denemeler'