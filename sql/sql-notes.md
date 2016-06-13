### Exploring databases and SQL (structured query language)  
#### release 0 
console commands - have a period like `.tables` and **no semicolon**
SQL query - no period and **do have a semicolon** 

**select, insert, and update**
```
select * from rabbits
select name, age from rabbits;
select * from rabbits where fluffy="true";
insert into rabbits (name, age, fluffy) values ("Gumdrop", 2, "true");
update rabbits set age=4 where name="Queen Bey";
```

**insert multiple rows**
```
insert into businesses (name) values ("Amir's Towing"), ("The Beagle Nightclub");
```

#### turn on the headers
`.headers on`

#### change permissions of database folder
`databases git:solo-project ❯ chmod 777 solo_project`

string = VARCHAR in sql

#### rename a table
`alter table gnome rename to gnomes;`

#### drop a table
`drop table rabbits`

#### delete a row
`delete from rabbits where name="Sylvie";`

#### view schema of table aka view structure
`.schema [tablename]`

#### Create a table with Unique entries
```
sqlite> create table users(
   ...> id varchar(255),
   ...> name varchar(255),
   ...> unique(id, name)
   ...> );
```

```
insert or ignore into users(id, user_name, password) values("01", "max", "password");
```

#### dump in SQL format
`.dump`

#### Add a primary key when **creating a table**
```
CREATE TABLE your_table_name (
  id INTEGER PRIMARY KEY,
  ... the rest of your attributes go here ...
);
```

#### JOINS

`SELECT ... FROM table1 [INNER] JOIN table2 ON conditional_expression ...`

`SELECT players.name, teams.name FROM players JOIN teams ON players.team_id = teams.id;`

business, comment, stars, user

```
sqlite> select businesses.name, reviews.comment, reviews.stars, users.first_name, users.last_name
   ...> from reviews
   ...> join businesses on businesses.id = reviews.business_id
   ...> join users on users.id = reviews.user_id
   ...> ;
```

#### join three tables example

```
sqlite> select comment, businesses.name, users.first_name
   ...> from reviews
   ...> join businesses on businesses.id = business_id
   ...> join users on users.id = user_id
   ...> ;
comment|name|first_name
soooooo good!|Lotus Yoga|Steven
foooooood poisoning|Sushi World|Holly
repeat review from Holly|Amir's Towing|Holly
repeat review of Sushi|Sushi World|Denzel
sqlite>
```

#### three tables but do we need to specify table.property only if there multiple tables have the same property name?

```
 sqlite> select first_name, businesses.name, reviews.stars, reviews.comment
   ...> from users
   ...> join businesses on businesses.id = business_id
   ...> join reviews on reviews.user_id = users.id
   ...> ;
first_name|name|stars|comment
Steven|Lotus Yoga|5|soooooo good!
Holly|Sushi World|1|foooooood poisoning
Holly|Amir's Towing|3|repeat review from Holly
Denzel|Sushi World|3|repeat review of Sushi
sqlite>
 ```
#### three tables with the `where` condition NOTE: where has to come last

```
sqlite> select name, stars, comment, first_name
   ...> from reviews
   ...> join businesses on business_id = businesses.id
   ...> join users on user_id = users.id
   ...> where name="Sushi World"
   ...> ;
name|stars|comment|first_name
Sushi World|1|foooooood poisoning|Holly
Sushi World|3|repeat review of Sushi|Denzel
```


#### one to many

```
name_of_column_to_create DATA_TYPE_OF_COLUMN_TO_CREATE,
FOREIGN KEY(name_of_column_to_create) REFERENCES existing_table_name(existing_column_name)
```

```
CREATE TABLE players (
  ... all your other column declarations here, including primary key ...
  team_id INT,
  FOREIGN KEY (team_id) REFERENCES teams(id)
);
```

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

#### select all the tables with Ruby

```
SELECT name FROM sqlite_master
WHERE type='table'
ORDER BY name;
```

```
[13] pry(main)> cmd = <<-something
[13] pry(main)* SELECT name FROM sqlite_master
[13] pry(main)* WHERE type='table'
[13] pry(main)* ORDER BY name;
[13] pry(main)* something
=> "SELECT name FROM sqlite_master\nWHERE type='table'\nORDER BY name;\n"
[14] pry(main)> db.execute(cmd)
=> [{"name"=>"users", 0=>"users"}]  
[18] pry(main)> db.execute(cmd)
=> [{"name"=>"cats", 0=>"cats"}, {"name"=>"users", 0=>"users"}]
```













                          