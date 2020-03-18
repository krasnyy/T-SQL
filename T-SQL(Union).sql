--Union
--Birden fazla select sorgusu sonucunu tek seferde alt alta g�stermenizi sa�lar

Select Adi,SoyAdi from Personeller
Union
Select MusteriAdi,MusteriUnvani from Musteriler


--Joinler yanyana Unionlar alt alta tablolar� birle�tirir 

--Dikkat edilmesi gereken ko�ullar
--Union sorgusu sonucu olu�an kolon isimleri �stteki sorugunun kolon isimlerinden olu�ur
--�st sorgudan ka� kolon �kilmisse alttaki sorgudanda o kadar �ekilmek zorunda
--Union tekrarl� kay�tlar� getirmez
--�stteki sorgudan �ekilen kolonlar�n tipleriyle alttaki sorgudan �ekilen kolonlar�n tipleri ayn� olmal�


Select Adi,SoyAdi ,'Personel' from Personeller
Union
Select MusteriAdi,MusteriUnvani, 'M��teri' from Musteriler





--Union All
--Tekrarl� kay�tlar� getirmek i�in union all kullan�l�r
Select Adi,SoyAdi from Personeller
Union All
Select Adi,SoyAdi from Personeller