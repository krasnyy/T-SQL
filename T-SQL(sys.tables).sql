--T-SQL ile Veritaban�ndaki tablolar� listeleme


Select *from sys.tables
--ya da
Select *from sysobjects Where xtype='U'

