/*---postgreSQL---*/
/* list of commands used to achieve the celestial-bodies project on freecodecamp
*  
*  
*/

/* Connecting to psql interface */
psql --username=freecodecamp --dbname=postgres

/* Creating Database and connecting to it */
CREATE DATABASE universe;
\c universe

/*
\l lists databases/tables in directory
\d lists databases/tables in directory, search with table_name to get column data
*/

/* Initial creation of tables with columns */
CREATE TABLE galaxy(galaxy_id INT UNIQUE PRIMARY KEY NOT NULL, name VARCHAR(30) NOT NULL);
CREATE TABLE stars();
CREATE TABLE planets();
CREATE TABLE moon();









/* Testing */
CREATE DATABASE testdb;
\c testdb;
CREATE TABLE test();
CREATE TABLE test1(id SERIAL,name VARCHAR(30));
ALTER TABLE test ADD COLUMN column_id SERIAL;
ALTER TABLE test ADD COLUMN test_id INT NOT NULL;
ALTER TABLE test ADD COLUMN test_name VARCHAR(30);
ALTER TABLE test ADD COLUMN birthday DATE;
ALTER TABLE test ADD COLUMN weight NUMERIC(4,1);
ALTER TABLE test ADD COLUMN fk_id INT REFERENCES test1(id);
ALTER TABLE test ADD UNIQUE(fk_id);
ALTER TABLE test ALTER COLUMN fk_id SET NOT NULL;

ALTER TABLE test ADD FOREIGN KEY (fk_id) REFERENCES test1(id);
ALTER TABLE test ADD PRIMARY KEY (fk_id,otherfk_id);

ALTER TABLE test RENAME COLUMN testcolumn_id TO test_id;

SELECT * FROM table1 FULL JOIN table2 ON table1.pkcolumn = table2.fkcolumn;

SELECT columns FROM junction_table
FULL JOIN table_1 ON junction_table.foreign_key_column = table_1.primary_key_column
FULL JOIN table_2 ON junction_table.foreign_key_column = table_2.primary_key_column;


INSERT INTO test(test_id, test_name) VALUES(1, 'texttext');
INSERT INTO test(test_id, test_name) VALUES(2, 'texttext2');
DELETE FROM test WHERE test_name='texttext2'

INSERT INTO 
    test(test_id, test_name)
VALUES
    (1, 'Mushroom Kingdom'),
    (2, 'Mushroom Kingdom'),
    (3, 'Mushroom Kingdom');

UPDATE test SET test_name='Koopa Kingdom' WHERE test_id=1;

SELECT * FROM test ORDER BY test_id;

ALTER TABLE test ADD PRIMARY KEY (test_name);
ALTER TABLE test DROP CONSTRAINT test pkey;
ALTER TABLE test ADD PRIMARY KEY (column_id)

ALTER TABLE test DROP COLUMN test_name;
ALTER TABLE test DROP COLUMN test_id;

DROP TABLE test;

ALTER DATABASE testdb RENAME TO testdb2;
DROP DATABASE testdb2;




