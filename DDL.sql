CREATE DATABASE healthcare_rpll;
-- php artisan make:migration:schema create_name_table --schema="id:string,warningID:string,locationID:string,plan:string"

CREATE TABLE patient(
	patient_id VARCHAR(10),
	patient_name VARCHAR(50),
	patient_address VARCHAR(50),
	patient_age int,
	patient_dob date,
	patient_gender char(1),
	patient_uname VARCHAR(50),
	patient_pwd VARCHAR(20),
	PRIMARY KEY(patient_id)
);

CREATE TABLE medical_staff(
	staff_age int,
	staff_name VARCHAR(50),
	staff_id int,
	PRIMARY KEY(staff_id)
);

CREATE TABLE appointment(
	appt_id int,
	appt_date date,
	appt_time timestamp,
	PRIMARY KEY(appt_id)
);

CREATE TABLE patient_room(
	room_no int,
	room_capacity int,
	room_availability boolean,
	PRIMARY KEY(room_no)
);

CREATE TABLE invoice(
	invoice_amount int,
	invoice_date date,
	invoice_method VARCHAR(50),
	invoice_id int,
	PRIMARY KEY(invoice_id)
);

CREATE 