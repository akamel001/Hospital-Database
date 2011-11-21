/*
Project Option: Young at Heart Hospital Management System
TEAM: The GUI Ducks
CREATED BY: Abdelrahman Kamel
*/

CREATE TABLE QUALIFICATION(
	Qtype VARCHAR2(32),
	Qinstitution VARCHAR2(32),
	QDate DATE
		CONSTRAINT QUALIFICATION_QDate_NN NOT NULL,
	Q_Staff_id VARCHAR2(8)
		CONSTRAINT QUALIFICATION_Q_Staff_id_FK
			REFERENCES STAFF(Staff_id),
	CONSTRAINT Qtype_inst_stf_id_PK 
		PRIMARY KEY(Qtype, Qinstitution, Q_Staff_id)
)
