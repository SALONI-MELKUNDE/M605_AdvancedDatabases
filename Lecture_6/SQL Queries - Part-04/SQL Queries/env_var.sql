

USE ecommerce_gisma;

SET sql_safe_updates = 0;

SHOW variables like 'local_infile';

SET GLOBAL local_infile = 1;

-- set auto-increment (designed to move forward not backward)
ALTER TABLE Customers auto_increment = 90;

SHOW Triggers;

-- to delete a trigger please use -> [Drop Trigger "trigger_name"]

SHOW VARIABLES LIKE 'transaction_isolation';  -- current isoltaion level for the session
SELECT @transaction_isolation;                         