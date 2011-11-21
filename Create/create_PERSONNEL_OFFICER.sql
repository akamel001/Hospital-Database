/*
Project Option: Young at Heart Hospital Management System
TEAM: The GUI Ducks
CREATED BY: Abdelrahman Kamel
*/

CREATE TABLE PERSONNEL_OFFICER(
	Personnel_officer_id VARCHAR2(8)
		CONSTRAINT Personnel_officer_id_FK REFERENCES STAFF(Staff_id)
		CONSTRAINT Personnel_officer_id_PK PRIMARY KEY 
)