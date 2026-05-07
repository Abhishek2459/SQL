use MyDatabase;

select * from customers;

--- Manually inserting values in a table

INSERT into customers (id,first_name,country,score)
VALUES 
(6,'Akash','India',600),
(7,'Abhi','Japan',450);

INSERT into customers (id,first_name,country,score)
VALUES (8,'Anna','USA',NULL);

INSERT into customers (id,first_name,country,score)
VALUES (9,'Anne',NULL,100);


--- inserting values in a table from another table

--- copy data from customers into persons table

CREATE TABLE persons(
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY(id) 
);

select * from persons;

INSERT into persons (id,person_name,birth_date,phone)
select id,first_name,NULL,'Unknown' 
from customers;


--- change the score of customer 6 to 0

select * from customers;


UPDATE customers
SET score=0
where id=6;

-- change the score of customer with id 9 to 0 and country to uk

UPDATE customers
set score=0,country='UK'
where id=9;


--- update all customers with a null score to 0

UPDATE customers
set score = 0
where score IS NULL;  -- here we use (is null) condtn instead of = null

--- delete all customers with an id > 5

SELECT * FROM customers
where id > 5;

delete from customers
where id > 5;


--- delete all data from persons table

select * from persons;

delete from persons;