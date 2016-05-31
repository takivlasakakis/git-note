### Exploring databases and SQL (structured query language)  
#### release 0 
console commands - have a period like `.tables` and **no semicolon**
SQL query - no period and **do have a semicolon** 

```
select * from rabbits
select name, age from rabbits;
select * from rabbits where fluffy="true";
insert into rabbits (name, age, fluffy) values ("Gumdrop", 2, "true");
update rabbits set age=4 where name="Queen Bey";
```

#### rename a table
`alter table gnome rename to gnomes;`

#### drop a table
`drop table rabbits`

#### delete a row
`delete from rabbits where name="Sylvie";`

#### view schema of table aka view structure
`.schema [tablename]`

#### Add a primary key
```
CREATE TABLE your_table_name (
  id INTEGER PRIMARY KEY,
  ... the rest of your attributes go here ...
);
```


string = VARCHAR in sql

#### Create a data table using SQL:
```
CREATE TABLE rabbits (
  name VARCHAR(255),
  age INT,
  fluffy BOOLEAN
);
```

notice the convention:
```
CREATE TABLE table_name (
  attr_name DATATYPE,
  attr_name DATATYPE,
  attr_name DATATYPE
);
```









                          