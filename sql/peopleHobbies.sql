

CREATE TABLE people (
id int (10) NOT NULL AUTO_INCREMENT,
first_name varchar(50),
last_name varchar(50),
gender enum('male','female'),
PRIMARY KEY (id)
);
CREATE TABLE hobbies(
id int(10) NOT NULL AUTO_INCREMENT,
person_id int(10) NOT NULL,
hobbies varchar(200),
PRIMARY KEY(id),
FOREIGN KEY (person_id) REFERENCES people (id) ON DELETE CASCADE ON UPDATE CASCADE
);