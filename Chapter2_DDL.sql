

use MyDatabase;

--- create a new table called persons with coulmns id,person_name,birth_date,phone
CREATE TABLE persons(
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY(id) 
);


select * from persons;


--- Alter table to add email coulmn


ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL;


--- Remove the column phone from the ppersons table

ALTER TABLE persons
drop column phone ;


--- delete the table persons from database

drop table persons;