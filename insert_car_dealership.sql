INSERT INTO salesperson(
	salesperson_id, 
	first_name, 
	last_name, 
	cars_sold

)VALUES(
	1001,
	'Alex',
	'Tymczyszyn',
	32
);

INSERT INTO mechanic(
	mechanic_id,
	first_name,
	last_name

)VALUES(
	101,
	'Blair',
	'Talley'
);

INSERT INTO service(
	service_id,
	part_id,
	repair_cost

)VALUES(
	54321,
	'tire-4334',
	250.00
);

INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info,
	service_id 

)VALUES(
	40001,
	'Steve',
	'Yoon',
	'2640 Steiner St, San Francisco, CA 94115',
	12345,
	54321
);



INSERT INTO invoice(
	invoice_id,
	customer_id

)VALUES(
	5001,
	40001
);

INSERT INTO car(
	vin_number,
	make,
	model,
	year_,
	color,
	price,
	salesperson_id,
	invoice_id

)VALUES(
	'4Y1SL65848Z411439',
	'Toyota',
	'Corolla',
	2015,
	'Pink',
	24995.00,
	1001,
	5001
	
);

INSERT INTO salesperson(
	salesperson_id, 
	first_name, 
	last_name, 
	cars_sold

)VALUES(
	1002,
	'Ryan',
	'Rhoades',
	73
);

INSERT INTO mechanic(
	mechanic_id,
	first_name,
	last_name

)VALUES(
	102,
	'Joel',
	'Carter'
);

INSERT INTO service(
	service_id,
	part_id,
	repair_cost

)VALUES(
	54322,
	'whajamacallit-93',
	98.00
);

INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info,
	service_id 

)VALUES(
	40002,
	'Terrell',
	'McKinney',
	'456 University Ave #444, Fort Collins, CO 80521',
	12346,
	54322
);



INSERT INTO invoice(
	invoice_id,
	customer_id

)VALUES(
	5002,
	40002
);

INSERT INTO car(
	vin_number,
	make,
	model,
	year_,
	color,
	price,
	salesperson_id,
	invoice_id

)VALUES(
	'9E3BD65848Z449205',
	'Honda',
	'Civic',
	2021,
	'ROYGBIV',
	94995.00,
	1002,
	5002
	
);







SELECT *
FROM car;



