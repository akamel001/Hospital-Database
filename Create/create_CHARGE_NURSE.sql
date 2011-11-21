/*
Project Option: Young at Heart Hospital Management System
TEAM: The GUI Ducks
CREATED BY: Abdelrahman Kamel
*/

CREATE TABLE CHARGED_NURSE(
	Charge_Nurse_id VARCHAR2(8)
		CONSTRAINT Charge_Nurse_id_FK REFERENCES STAFF(Staff_id)	
		CONSTRAINT Charged_Nurse_id_PK PRIMARY KEY 
)