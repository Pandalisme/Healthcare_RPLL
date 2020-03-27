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

CREATE TABLE medical_record(
	record_id int,
	patient_id VARCHAR(10),
	staff_id int,
	PRIMARY KEY(record_id),
	FOREIGN KEY(patient_id) REFERENCES patient(patient_id),
	FOREIGN KEY(staff_id) REFERENCES medical_staff(staff_id)
);

CREATE TABLE disease(
	disease_id int,
	disease_type VARCHAR(50),
	disease_name VARCHAR(50),
	PRIMARY KEY(disease_id)
);

CREATE TABLE referral_hospital(
	hospital_id int,
	hospital_address VARCHAR(50),
	hospital_name VARCHAR(50),
	PRIMARY KEY(hospital_id)
);

CREATE TABLE medicine(
	medicine_id int,
	medicine_exp_date date,
	medicine_level int,
	medicine_name VARCHAR(30),
	medicine_price int,
	medicine_qty int,
	medicine_type VARCHAR(30),
	medicine_vendor VARCHAR(30),
	PRIMARY KEY(medicine_id)
);

CREATE TABLE electronics(
	electronic_id int,
	electronic_name VARCHAR(50),
	electronic_qty int,
	electronic_type VARCHAR(50)
	PRIMARY KEY(electronic_id)
);

CREATE TABLE department(
	department_id int,
	department_name VARCHAR(50),
	PRIMARY KEY(department_id)
);

CREATE TABLE schedule(
	schedule_id VARCHAR(10),
	schedule_date date,
	schedule_time timestamp,
	patient_id VARCHAR(10),
	staff_id int,
	PRIMARY KEY(schedule_id),
	FOREIGN KEY(patient_id) REFERENCES patient(patient_id),
	FOREIGN KEY(staff_id) REFERENCES medical_staff(staff_id)
);

CREATE TABLE vehicles(
	vehicle_id int,
	vehicle_type VARCHAR(50),
	vehicle_availability boolean,
	PRIMARY KEY(vehicle_id)
);

CREATE TABLE nonmedical_staff(
	nonmed_id int,
	nonmed_name VARCHAR(50),
	nonmed_job VARCHAR(50)
	PRIMARY KEY(nonmed_id)
);

CREATE TABLE laboratory(
	lab_id int,
	lab_name VARCHAR(50),
	lab_availability boolean,
	PRIMARY KEY(lab_id)
);

CREATE TABLE medical_utilities(
	util_id int,
	util_name VARCHAR(50),
	util_type VARCHAR(50),
	util_qty int,
	PRIMARY KEY(util_id)
);