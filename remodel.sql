-- Sakila Database Schema Modification
-- Version 1.1


--
-- Dropping table 'store'
-- First modify its child tables:
--   Table 'inventory'
--   Table 'staff'
--   Table 'customer'
-- Modify table 'store' before dropping it
--

  ALTER TABLE INVENTORY DROP FOREIGN KEY fk_inventory_store;
  ALTER TABLE STAFF DROP FOREIGN KEY fk_staff_store;
  ALTER TABLE CUSTOMER DROP FOREIGN KEY fk_customer_store;

  ALTER TABLE STORE DROP FOREIGN KEY fk_store_staff;

  DROP TABLE STORE;


--
-- Dropping table 'staff'
-- First modify its child tables:
--   Table 'payment'
--   Table 'rental'
--   Table 'store' (done above, before dropping it)
--

  ALTER TABLE PAYMENT DROP FOREIGN KEY fk_payment_staff;
  ALTER TABLE RENTAL DROP FOREIGN KEY fk_rental_staff;
--  ALTER TABLE STORE DROP FOREIGN KEY fk_store_staff;

  DROP TABLE STAFF;


--
-- Dropping table 'inventory'
-- First modify its child table:
--   Table 'rental'
--

-- Add DDL statements here ******


--
-- Dropping table 'rental'
-- First modify its child table:
--   Table 'payment'
--

  ALTER TABLE PAYMENT DROP FOREIGN KEY fk_payment_rental;
  DROP TABLE RENTAL;

-- End