
Delete from PersonellerX Where SoyAdi='Gencay'
Select @@ROWCOUNT
--kac tane eleman etkilenmi�tir onu gonderir

Select* from Personeller
Select @@ROWCOUNT

Insert PersonellerX(Adi,SoyAdi) Values('Gencay','Y�ld�z'),
								('Ahmet','Uslu'),
								('Asl�','Gungor'),
Select @@ROWCOUNT