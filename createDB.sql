drop schema if exists policeorganizationdb;
create schema policeorganizationdb;
use policeorganizationdb;	

drop table if exists OFFICERS;
drop table if exists DEPARTMENT;
drop table if exists EQUIPMENT;
drop table if exists VEHICLES;
drop table if exists SUSPECTS;
drop table if exists CASES;
drop table if exists EVIDENCE;

CREATE TABLE OFFICERS (
    Ofc_ID VARCHAR(8) NOT NULL,
    Ofc_Name VARCHAR(40) NOT NULL,
    Ofc_DOB DATE NOT NULL CHECK(Ofc_DOB BETWEEN '1900-01-01' and sysdate()),
    Ofc_SSN INT NOT NULL CHECK(Ofc_SSN between 000000000 and 999999999),
    Ofc_PhNum INT NOT NULL CHECK(Ofc_PhNum between 1111111111 and 9999999999),
    Ofc_Address VARCHAR(40) NOT NULL,
    Ofc_Rank VARCHAR(20) NOT NULL,
    Ofc_Shift ENUM('1', '2', '3'),
    Ofc_Record VARCHAR(200),
    Ofc_Salary INT,
    Ofc_Dept_ID VARCHAR(8),
    CONSTRAINT pk_officers PRIMARY KEY (Ofc_ID)
);

CREATE TABLE DEPARTMENT (
    Dept_ID VARCHAR(8) NOT NULL,
    Dept_Address VARCHAR(40) NOT NULL,
    Dept_PhNum INT CHECK(Dept_PhNum between 1111111111 and 9999999999),
    Dept_Name VARCHAR(20) NOT NULL,
    Dept_Holding ENUM('F', 'S'),
    CONSTRAINT pk_department PRIMARY KEY (Dept_ID)
); 

CREATE TABLE EQUIPMENT (
    Eq_ID VARCHAR(8) NOT NULL,
    Eq_Description VARCHAR(40) NOT NULL,
    Eq_Type ENUM('Gun', 'Uniform', 'Armor', 'Badge', 'Radio', 
    'Taser', 'Pepper Spray', 'Baton', 'Handcuffs') NOT NULL,
    Eq_Status ENUM('O', 'I'),
    Eq_Dept_ID VARCHAR(8) NOT NULL,
    Eq_Ofc_ID VARCHAR(8) NOT NULL,
    CONSTRAINT pk_equipment PRIMARY KEY (Eq_ID)
);

CREATE TABLE VEHICLES (
    Veh_ID VARCHAR(8) NOT NULL,
    Veh_Reg VARCHAR(20) NOT NULL,
    Veh_Type ENUM('Car', 'SUV', 'Truck', 'Motorcycle', 'Van',
    'Horse', 'Bicycle', 'Helicopter') NOT NULL,
    Veh_Lplate VARCHAR(9),
    Veh_Status ENUM('O', 'I') NOT NULL,
    Veh_Color VARCHAR(10),
    Veh_Dept_ID VARCHAR(8) NOT NULL,
    Veh_Ofc_ID VARCHAR(8),
    CONSTRAINT pk_vehicles PRIMARY KEY (Veh_ID)
);

CREATE TABLE SUSPECTS (
    Sus_ID VARCHAR(8) NOT NULL,
    Sus_Name VARCHAR(40),
    Sus_Alt_Name VARCHAR(40),
    Sus_Charges VARCHAR(100),
    Sus_PhNum INT CHECK(Sus_PhNum between 1111111111 and 9999999999),
    Sus_Description VARCHAR(100),
    Sus_Associates VARCHAR(100),
    Sus_Ofc_ID VARCHAR(8),
    Sus_Case_ID VARCHAR(8),
    Sus_Dept_ID VARCHAR(8),
    CONSTRAINT pk_suspects PRIMARY KEY (Sus_ID)
);

CREATE TABLE CASES (
	Case_ID VARCHAR(8) NOT NULL,
    Case_Type VARCHAR(40),
    Case_Details VARCHAR(400),
    Case_Status ENUM('O', 'C') NOT NULL,
    Case_Ofc_ID VARCHAR(8) NOT NULL,
    Case_Ev_ID VARCHAR(8),
    Case_Sus_ID VARCHAR(8),
    Case_Dept_ID VARCHAR(8) NOT NULL,
	CONSTRAINT pk_cases PRIMARY KEY (Case_ID)
);

CREATE TABLE EVIDENCE (
	Ev_ID VARCHAR(8) NOT NULL,
    Ev_Description VARCHAR(100),
    Ev_Qty INT,
    Ev_Case_ID VARCHAR(8) NOT NULL,
    Ev_Dept_ID VARCHAR(8) NOT NULL,
	CONSTRAINT pk_evidence PRIMARY KEY (Ev_ID)
);	

ALTER TABLE OFFICERS
ADD FOREIGN KEY (Ofc_Dept_ID) REFERENCES DEPARTMENT(Dept_ID);

ALTER TABLE EQUIPMENT
ADD FOREIGN KEY (Eq_Dept_ID) REFERENCES DEPARTMENT(Dept_ID),
ADD FOREIGN KEY (Eq_Ofc_ID) REFERENCES OFFICERS(Ofc_ID);

ALTER TABLE VEHICLES
ADD FOREIGN KEY (Veh_Dept_ID) REFERENCES DEPARTMENT(Dept_ID),
ADD FOREIGN KEY (Veh_Ofc_ID) REFERENCES OFFICERS(Ofc_ID);

ALTER TABLE SUSPECTS
ADD FOREIGN KEY (Sus_Ofc_ID) REFERENCES OFFICERS(Ofc_ID),
ADD FOREIGN KEY (Sus_Dept_ID) REFERENCES DEPARTMENT(Dept_ID);

ALTER TABLE CASES
ADD FOREIGN KEY (Case_Ofc_ID) REFERENCES OFFICERS(Ofc_ID),
ADD FOREIGN KEY (Case_Ev_ID) REFERENCES EVIDENCE(Ev_ID),
ADD FOREIGN KEY (Case_Sus_ID) REFERENCES SUSPECTS(Sus_ID),
ADD FOREIGN KEY (Case_Dept_ID) REFERENCES DEPARTMENT(Dept_ID);

ALTER TABLE EVIDENCE
ADD FOREIGN KEY (Ev_Dept_ID) REFERENCES DEPARTMENT(Dept_ID);

COMMIT;
