INSERT INTO movie(
	movie_title, 
	movie_rating, 
	theater, 
	movie_genre, 
	movie_length 

)VALUES(
	'Hello World',
	'NC-17',
	1,
	'Drama',
	120

);

INSERT INTO ticket(
	ticket_id,
	theater,
	seat,
	movie_title

)VALUES(
	1,
	1,
	15,
	'Hello World'
);

INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	email_id,
	order_no,
	ticket_id 

)VALUES(
	1000,
	'Ally',
	'Roo',
	'allyroo@gmail.com',
	1,
	1
);

INSERT INTO concession(
	order_no,
	item,
	price,
	customer_id

)VALUES(
	1,
	'Popcorn',
	8.00,
	1000
);


