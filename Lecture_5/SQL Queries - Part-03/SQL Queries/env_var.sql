use ecommerce_gisma;

set sql_safe_updates = 0;

Show variables like 'local_infile';

Set global local_infile = 1;

-- set auto-increment (designed to move forward not backward)
ALTER TABLE Customers auto_increment = 90;

SHOW Triggers;

-- to delete a trigger please use -> [Drop Trigger "trigger_name"]

