
/*
====================================================================
CREATE DATABASE AND SCHEMAS 
====================================================================

Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists.

    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists.

    All data in the database will be permanently deleted. Proceed with caution
    and ensure you have proper backups before running this script.
*/



PRINT '>>> ENSURE YOU HAVE PROPER BACKUP BEFORE YOU RUN THIS SCRIPT';


USE MASTER;
GO 


PRINT '>>>DROP AND RECREATE THE DATAWAREHOUSE2  DATABASE'

IF  EXISTS( SELECT 1 FROM sys.databases WHERE name  = 'DataWareHouse2'
BEGIN 
     ALTER DATABASE DataWareHouse2 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
     DROP DATABASE DataWareHouse2;
END;
GO

----CREATE THE DATAWAREHOUSE DATABASE---------------



CREATE DATABASE DataWareHouse2


USE DataWareHouse2


-----CREATE SCHEMAS--------------------------------

CREATE SCHEMA bronze;

GO

CREATE SCHEMA silver;

GO

CREATE SCHEMA gold
