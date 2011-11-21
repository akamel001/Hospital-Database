load data
infile 'sql_load_insert_WORK_EXP.dat'
into table WORK_EXP

fields terminated by '|'
(
	WE_STAFF_ID, 
	EXPPOSITIONHELD,
	EXPWORKPLACE, 
	EXPSTARTDATE, 
	EXPENDDATE 
)
