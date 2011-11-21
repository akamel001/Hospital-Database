/*
Project Option: Young at Heart Hospital Management System
TEAM: The GUI Ducks
CREATED BY: Abdelrahman Kamel
*/

CREATE TABLE SENIOR_NURSE(
	Senior_Nurse_id VARCHAR2(8)
		CONSTRAINT Senior_Nurse_id_FK REFERENCES STAFF(Staff_id)
		CONSTRAINT Senior_Nurse_id_PK PRIMARY KEY 
)