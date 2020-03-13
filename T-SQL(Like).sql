
use Northwind 
--Like Sorgulari 

--�sminin Ba� harfi j olan personellerin ad�n� ve soyad�n� yazd�ralim
Select Adi,SoyAdi from Personeller Where Adi Like 'j%'

--�sminin son harfi y olan personellerin ad�n� soyadini yazd�ralim
Select Adi +' '+SoyAdi from Personeller Where Adi Like '%y'

--�sminin son �� harfi ert olan personelleri getirelim
Select *from Personeller Where Adi Like '%ert'


--�sminin ilk harfi r son harfi t olan personeli getirelim
Select *from Personeller Where Adi Like 'r%t'

--�sminde an ge�en personelin ad�n� yazd�ral�m
Select Adi from Personeller Where Adi Like '%an%'


--�sminde ba� harfi n olan ve i�erisinde an ge�en personeli getirelim
Select *from Personeller Where Adi Like 'n%an%'


--�sminin ilk harfi a ikinci harfi fark etmez ve ���nc� harfi d olan personeli geirelim
Select *from Personeller Where Adi Like 'a_d%'


--�sminin ilk harfi m ikinci - ���nc� -d�rd�nc� fark etmez ve be�inci harfi a olan personeli getirelim
Select *from Personeller Where Adi Like 'm___a%'

--[] yada operat�r�
--�sminin ilk harfi n ya da m ya da r olan personelleri getirelim
Select *from Personeller Where Adi Like '[nor]%'

--�sminin i�erisinde a ya da i ge�en personelleri getirelim
Select *from Personeller Where Adi Like'%[ai]%'

-- [*-*] alfabetik aras�nda operat�r�

--�sminin ba� harfi a ile k aras�nda alfabetik s�raya g�re herhangi bir harf olan personellerin ada�n� yazd�ral�m
Select Adi from Personeller Where Adi Like '[a-k]%'


--[^*] (De�il Operat�r�)

--�sminin bas harfi a olmayan personelleri getirelim.
Select *from Personeller Where Adi Like '[^a]%'

--�sminin bas harfi an olmayan personelleri getirelim.

Select *from Personeller Where Adi Like '[^an]%'

--�sminin bas harfi ve gerisi �nemli olmayan personelleri getirelim
Select *from Personeller Where Adi Like '_%'

--�sminin bas harfi _ olan personeli getir
Select * from Personeller Where Adi Like '[_]%'


Select *from Personeller Where Adi Like '�_%' Escape '�'

