/*
Project Option: Young at Heart Hospital Management System
TEAM: The GUI Ducks
CREATED BY: Abdelrahman Kamel
*/

CREATE TABLE WORK_EXP(
	ExpPositionHeld VARCHAR2(32),
	ExpWorkPlace VARCHAR2(32),
	WE_Staff_id VARCHAR2(8)
		CONSTRAINT WORK_EXP_WE_Staff_id_FK
			REFERENCES STAFF(Staff_id),
	ExpStartDate DATE
		CONSTRAINT WORK_EXP_ExpStartDate_NN NOT NULL,
	ExpEndDate DATE
		CONSTRAINT WORK_EXP_ExpEndDate_NN NOT NULL,
	CONSTRAINT WORK_EXP_ExpPositionHeld_ExpWorkPlace_PK 
		PRIMARY KEY(ExpPositionHeld, ExpWorkPlace, WE_Staff_id)
)