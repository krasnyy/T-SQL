

USE Northwind

--Bu g�n�n tarihini verir
Select GETDATE()

--DATEADD Verilen tarihe verildi�i kadar g�n ay y�l ekler 
Select DATEADD(DAY,999,GETDATE())
Select DATEADD(MONTH,999,GETDATE())
Select DATEADD(YEAR,999,GETDATE())

--DATEDIFF �ki tarih aras�nda g�n� ay� veya y�l� hesaplar
Select DATEDIFF(DAY,'08.10.1998',GETDATE())
Select DATEDIFF(MONTH,'08.10.1998',GETDATE())
Select DATEDIFF(YEAR,'08.10.1998',GETDATE())

--DATEPART :Verilen tarihin haftan�n ay�n yahut y�l�n ka��nc� g�n� oldugunu hesaplar
Select DATEPART(DAY,GETDATE())
Select DATEPART(MONTH,GETDATE())
Select DATEPART(DAY,GETDATE())
