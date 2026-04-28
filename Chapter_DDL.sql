--- create a new table called persons with coulmns id,person_name,birth_date,phone

use MyDatabase;

CREATE TABLE persons(
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY(id) 
);


select * from persons;