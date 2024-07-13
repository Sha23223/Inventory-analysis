CREATE TABLE older_data ( Order_Date VARCHAR(256), 
						  SKU_ID VARCHAR(256), 
                          Order_Quantity Int );
SELECT * FROM older_data;
SET SESSION sql_mode = '';
LOAD DATA INFILE "C:\\Inventory Data.csv"
	INTO TABLE older_data 
	FIELDS TERMINATED BY ',' 
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;
SELECT * FROM older_data;

CREATE TABLE current_data ( SKU_ID VARCHAR(256), 
							Current_Stock_Quantity int, 
							Units VARCHAR(256), 
                            Avg_Lead_Time_days int, 
                            Max_Lead_Time_days int, 
                            Unit_Price int  );
LOAD DATA INFILE "C:\\Stock.csv" 
	INTO TABLE current_data 
	FIELDS TERMINATED BY ',' 
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;
SELECT * FROM current_data;