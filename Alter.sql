/*-----------------  ALTER ----------------------*/
alter table ogr add BaslamaTarihi smalldatetime, OgrMahalle varchar(50)
-- Alter ile tabloya smalldatetime veri tipinde Baslama tarihi ve varchar veri tipinde ogr mahalle sütunları ekledik

alter table ogr alter column notlar smallint
-- alter ile tablodaki notlar sütunun veri tipini int'ten smallint yaptık

alter table ogr drop column BaslamaTarihi
-- Baslama Tarihi adındaki sütunu sildik
