

--Personeller tablosunda sehri London olan verileri listeleyelim
Select *from Personeller Where Sehir='London'

--Personeller tablosunda baglý çalýþtýðý kiþi sayýsý 5 'den kucuk olanlarý listeleyelim
Select *from Personeller Where BagliCalistigiKisi < 5

--And Operatoru
--Personeller tablosunda sehri London ve ülkesi UK olanlari listeleyelim
Select *from Personeller Where Ulke = 'UK' and Sehir = 'London'

--Or operatörü
--Personeller tablosunda UnvanEki Mr. olan veya sehri Seattle olan tüm personelleri listeleyelim
Select *from Personeller Where Sehir='Seattle' or UnvanEki='Mr.'

--PersonelID'si 5 den büyük ve eþit olan tüm personelleri getir.
Select *from Personeller Where PersonelID >=5


-- <> Eþit deðilse
-- = Eþitse
-- <= Küçük ve Eþitse
-- >= Büyük ve Eþitse


--1993 yýlýnda ise baslayanlarý listele
Select *from Personeller Where YEAR(IseBaslamaTarihi) = 1993

--1992 yýlýndan sonra ise baslayanlari listele
Select *from Personeller Where YEAR(IseBaslamaTarihi) > 1992

--Dogum gunu ayýn 20 si olmayan personelleri listele
Select *from Personeller Where DAY(DogumTarihi) <>20

--Dogum yýlý 1950 ile 1965 yillari arasýnda olan personelleri getirelim
Select *from Personeller Where YEAR(DogumTarihi) > 1950 and YEAR(DogumTarihi) < 1965

--Yasadýðý sehrin London Tacoma ve Kirkland personellerin adýný listeleyim
Select Adi from Personeller Where Sehir='London' or Sehir='Tacoma' or Sehir='Kirkland'


--Between Komutu
Select *from Personeller Where YEAR(DogumTarihi) between 1950 and 1965

--In komutu (or mantýðý)
Select Adi from Personeller Where Sehir In('London','Tacoma','Kirkland')


