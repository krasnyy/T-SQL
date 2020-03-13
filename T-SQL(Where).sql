

--Personeller tablosunda sehri London olan verileri listeleyelim
Select *from Personeller Where Sehir='London'

--Personeller tablosunda bagl� �al��t��� ki�i say�s� 5 'den kucuk olanlar� listeleyelim
Select *from Personeller Where BagliCalistigiKisi < 5

--And Operatoru
--Personeller tablosunda sehri London ve �lkesi UK olanlari listeleyelim
Select *from Personeller Where Ulke = 'UK' and Sehir = 'London'

--Or operat�r�
--Personeller tablosunda UnvanEki Mr. olan veya sehri Seattle olan t�m personelleri listeleyelim
Select *from Personeller Where Sehir='Seattle' or UnvanEki='Mr.'

--PersonelID'si 5 den b�y�k ve e�it olan t�m personelleri getir.
Select *from Personeller Where PersonelID >=5


-- <> E�it de�ilse
-- = E�itse
-- <= K���k ve E�itse
-- >= B�y�k ve E�itse


--1993 y�l�nda ise baslayanlar� listele
Select *from Personeller Where YEAR(IseBaslamaTarihi) = 1993

--1992 y�l�ndan sonra ise baslayanlari listele
Select *from Personeller Where YEAR(IseBaslamaTarihi) > 1992

--Dogum gunu ay�n 20 si olmayan personelleri listele
Select *from Personeller Where DAY(DogumTarihi) <>20

--Dogum y�l� 1950 ile 1965 yillari aras�nda olan personelleri getirelim
Select *from Personeller Where YEAR(DogumTarihi) > 1950 and YEAR(DogumTarihi) < 1965

--Yasad��� sehrin London Tacoma ve Kirkland personellerin ad�n� listeleyim
Select Adi from Personeller Where Sehir='London' or Sehir='Tacoma' or Sehir='Kirkland'


--Between Komutu
Select *from Personeller Where YEAR(DogumTarihi) between 1950 and 1965

--In komutu (or mant���)
Select Adi from Personeller Where Sehir In('London','Tacoma','Kirkland')


