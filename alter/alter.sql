/*-----------------  ALTER ----------------------*/
alter table ogr add BaslamaTarihi smalldatetime, OgrMahalle varchar(50)
-- Alter ile tabloya smalldatetime veri tipinde Baslama tarihi ve varchar veri tipinde ogr mahalle s�tunlar� ekledik

alter table ogr alter column notlar smallint
-- alter ile tablodaki notlar s�tunun veri tipini int'ten smallint yapt�k