/*
Project Option: Young at Heart Hospital Management System
TEAM: The GUI Ducks
CREATED BY: Abdelrahman Kamel
*/

CREATE TABLE JUNIOR_NURSE(
	Junior_Nurse_id VARCHAR2(8)
		CONSTRAINT Junior_Nurse_id_FK REFERENCES STAFF(Staff_id)
		CONSTRAINT Junior_Nurse_id_PK PRIMARY KEY 
)