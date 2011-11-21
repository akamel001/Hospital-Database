LOAD data 
infile 'sql_load_insert_QUALIFICATION.dat'
REPLACE
into table QUALIFICATION
fields terminated by '|'
(
	Q_STAFF_ID,
	QTYPE,
	QINSTITUTION,
	QDATE
) 
