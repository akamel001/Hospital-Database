/*
Project Option: Young at Heart Hospital Management System
TEAM: The GUI Ducks
CREATED BY: Abdelrahman Kamel
*/

CREATE TABLE MEDICAL_DIRECTOR(
	Medical_Director_id VARCHAR2(8)
		CONSTRAINT Medical_Director_id_FK REFERENCES STAFF(Staff_id)
		CONSTRAINT Medical_Director_id_PK PRIMARY KEY 
)