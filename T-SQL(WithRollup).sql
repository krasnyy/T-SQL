--With Rollup 
--Group by ile gruplanm�� veri k�mesinde ara toplam al�nmas�n� sa�lar

Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID with Rollup


Select KategoriID,UrunID,SUM(TedarikciID)from Urunler 
Group By KategoriID,UrunID  With Rollup

--Having �art�yla beraber rollup
Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID with Rollup Having SUM(Miktar)>100