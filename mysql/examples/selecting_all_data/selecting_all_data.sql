-- Seletct database
USE menagerie

-- Retrieves everything from a table
SELECT * FROM pet;

-- Delete table contents
DELETE FROM pet;

-- Reload data from file
LOAD DATA LOCAL INFILE 'pet.txt' INTO TABLE pet FIELDS TERMINATED BY ' ';
SELECT * FROM pet;

-- Fix record
UPDATE pet SET birth = '1989-08-31' WHERE name = 'Bowser';
SELECT * FROM pet;
# Selecting all data

## Script
```sql
-- Seletct database
USE menagerie

-- Retrieves everything from a table
SELECT * FROM pet;
+----------+--------+---------+------+------------+------------+
| name     | owner  | species | sex  | birth      | death      |
+----------+--------+---------+------+------------+------------+
| Fluffy   | Harold | cat     | f    | 1993-02-04 | 0000-00-00 |
| Claws    | Gwen   | cat     | m    | 1994-03-17 | 0000-00-00 |
| Buffy    | Harold | dog     | f    | 1989-05-13 | 0000-00-00 |
| Fang     | Benny  | dog     | m    | 1990-08-27 | 0000-00-00 |
| Bowser   | Diane  | dog     | m    | 1979-08-31 | 1995-07-29 |
| Chirpy   | Gwen   | bird    | f    | 1998-09-11 | 0000-00-00 |
| Whistler | Gwen   | bird    | N    | 1997-12-09 | 0000-00-00 |
| Slim     | Benny  | snake   | m    | 1996-04-29 | 0000-00-00 |
| Puffball | Diane  | hamster | f    | 1999-03-30 | 0000-00-00 |
| Puffball | Diane  | hamster | f    | 1999-03-30 | NULL       |
+----------+--------+---------+------+------------+------------+

-- Delete table contents
DELETE FROM pet;

-- Reload data from file
LOAD DATA LOCAL INFILE 'pet.txt' INTO TABLE pet FIELDS TERMINATED BY ' ';

-- Fix record
UPDATE pet SET birth = '1989-08-31' WHERE name = 'Bowser';

-- Check result
SELECT * FROM pet;
+--------+-------+---------+------+------------+------------+
| name   | owner | species | sex  | birth      | death      |
+--------+-------+---------+------+------------+------------+
| Bowser | Diane | dog     | m    | 1989-08-31 | 0000-00-00 |
+--------+-------+---------+------+------------+------------+
```
