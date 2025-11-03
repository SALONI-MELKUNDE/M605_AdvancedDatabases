CREATE SCHEMA ecommerce_GISMA;

USE ecommerce_gisma;

set sql_safe_updates = 0;

Show variables like 'local_infile';
Set global local_infile = 1;