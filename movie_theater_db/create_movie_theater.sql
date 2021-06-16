CREATE TABLE movie(
	movie_title VARCHAR(100) PRIMARY KEY,
	movie_rating VARCHAR(10),
	theater INTEGER NOT NULL,
	movie_genre VARCHAR(50),
	movie_length INTEGER NOT NULL
);

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	ticket_date DATE DEFAULT CURRENT_DATE,
	ticket_time TIME DEFAULT CURRENT_TIME,
	theater INTEGER NOT NULL,
	seat INTEGER NOT NULL,
	movie_title VARCHAR(100)
	FOREIGN KEY (movie_title) REFERENCES movie(movie_title)
	
);

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(150),
	email_id VARCHAR(100),
	order_no INTEGER,
	ticket_id SERIAL
	FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)
);

CREATE TABLE concession(
	order_no SERIAL PRIMARY KEY,
	item VARCHAR(50),
	price NUMERIC(5,2),
	customer_id SERIAL
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);