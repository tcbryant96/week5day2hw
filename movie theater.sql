CREATE TABLE customer(
	customer_id serial PRIMARY KEY,
	first_name varchar(50),
	last_name varchar(50)
	
);
CREATE TABLE movie(
	movie_id serial PRIMARY KEY,
	movie_name varchar(25),
	length_ varchar(25)
);

CREATE TABLE ticket(
	ticket_id serial PRIMARY KEY,
	theater_num numeric(2,0)
);

ALTER TABLE customer
ADD COLUMN movie_id serial;

ALTER TABLE customer
ADD FOREIGN KEY (movie_id) REFERENCES movie(movie_id);

ALTER TABLE ticket
ADD COLUMN movie_id serial;

ALTER TABLE ticket 
ADD FOREIGN KEY (movie_id) REFERENCES movie(movie_id);