load data
 infile 'sql_load_insert_STAFF.dat'
 append
 into table STAFF	
 fields terminated by '|' 
 (
	Staff_ID, 
	STF_Home_Phone, 
	STF_Cell_Phone, 
	Position, 
	Work_area, 
	STF_address, 
	STF_DoB, 
	STF_Gender, 
	Hrs_Per_Week, 
	Payment_type, 
	Contract_type, 
	STF_Fname, 
	STF_Lname, 
	STF_Ward_num
 )
