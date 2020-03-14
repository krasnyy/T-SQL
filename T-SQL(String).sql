use Northwind


--LEFT soldan belirtilen sayýda karakteri getirir
Select LEFT(Adi,2) from Personeller


--RIGHT saðdan belirtilen sayýda karakteri getirir
Select RIGHT(Adi,3)from Personeller

--UPPER büyük harfe çevilir
Select UPPER(Adi) from Personeller

--LOWER büyük harfe çevilir
Select LOWER(Adi) from Personeller

--SUBSTRING Belirtilen indexten itibaren belirtilen sayýda karakter getir.
Select SUBSTRING(SoyAdi,3,2) from Personeller

--LTRIM RTRIM  bosluklarý keser
Select LTRIM('        Hasan')
Select RTRIM('Hasan        ')

--REVERSE Tersine Cevir
Select REVERSE(Adi)from Personeller

--REPLACE Belirtilen ifadeyi belirtilen ifade þeklinde deðiþtirir
Select REPLACE('Benim Adim Hasan','Hasan','Behlul')

--CHARINDEX Belirtilen karakterin veri içinde sýra numarasýný verir
Select CHARINDEX('r',Adi) from Personeller
Select MusteriAdi,CHARINDEX(' ',MusteriAdi)from Musteriler


--Musteriler tablosunda MusteriAdi kolonundan sadece adlarý çekelim
Select SUBSTRING(MusteriAdi,0,CHARINDEX(' ',MusteriAdi)) from Musteriler

--Musteriler tablosunda MusteriAdi kolonundan sadece soyadlarýný çekelim
Select SUBSTRING(MusteriAdi,CHARINDEX(' ',MusteriAdi),LEN(MusteriAdi)-(CHARINDEX(' ',MusteriAdi)-1)) from Musteriler