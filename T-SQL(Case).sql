--Personellerin isim ve soyisimlerinin yanýnda Unvan Eki 'Mr.' ise erkek 'Ms.' ise kadýn yazsýn
Select Adi,SoyAdi,
Case
When UnvanEki = 'Mrs.' or UnvanEki='Ms.' Then 'Kadýn'
When UnvanEki = 'Mr.'  Then 'Erkek'
Else UnvanEki
End
From Personeller


Select UrunID,
Case
When BirimFiyati Between 0 and 50 Then 'Cin Mali'
When BirimFiyati Between 50 and 100 Then 'Ucuz'
When BirimFiyati Between 100 and 200 Then 'Normal'
When BirimFiyati >200 Then 'Pahali'
Else
'Belirsiz'
End
from Urunler