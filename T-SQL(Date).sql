

USE Northwind

--Bu günün tarihini verir
Select GETDATE()

--DATEADD Verilen tarihe verildiði kadar gün ay yýl ekler 
Select DATEADD(DAY,999,GETDATE())
Select DATEADD(MONTH,999,GETDATE())
Select DATEADD(YEAR,999,GETDATE())

--DATEDIFF Ýki tarih arasýnda günü ayý veya yýlý hesaplar
Select DATEDIFF(DAY,'08.10.1998',GETDATE())
Select DATEDIFF(MONTH,'08.10.1998',GETDATE())
Select DATEDIFF(YEAR,'08.10.1998',GETDATE())

--DATEPART :Verilen tarihin haftanýn ayýn yahut yýlýn kaçýncý günü oldugunu hesaplar
Select DATEPART(DAY,GETDATE())
Select DATEPART(MONTH,GETDATE())
Select DATEPART(DAY,GETDATE())
