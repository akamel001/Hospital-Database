/*
Project Option: Young at Heart Hospital Management System
TEAM: The GUI Ducks
Comments on Attributes for STAFF
COMMENT BY: Abdelrahman Kamel
*/

COMMENT ON COLUMN STAFF.Staff_ID
	IS 'Primary key of the staff table. The key is Alphanumeric and is 8 characters long.'
COMMENT ON COLUMN STAFF.STF_Home_Phone
	IS 'Staff members home phone number (cannot be null).'
COMMENT ON COLUMN STAFF.STF_Cell_Phone
	IS 'Staff members cell phone number (cannot be null).'
COMMENT ON COLUMN STAFF.Position
	IS 'Staff members position at the hospital and cannot be null.'
COMMENT ON COLUMN STAFF.Work_area
	IS 'Staff members Working area (cannot be null).'
COMMENT ON COLUMN STAFF.STF_address
	IS 'Staff members address (cannot be null).'
COMMENT ON COLUMN STAFF.STF_DoB
	IS 'Staff members Date of birth (cannot be null).'
COMMENT ON COLUMN STAFF.STF_Gender
	IS 'Staff members Gender and cannot be null. Value must be either M for male or F for femail.'
COMMENT ON COLUMN STAFF.Hrs_Per_Week
	IS 'How many hours per week the staff memeber works. Attribute cannot be null.'
COMMENT ON COLUMN STAFF.Payment_type
	IS 'Staff members payment type. Attribute cannot be null and must be 
		either W for weekly or M for monthly.'
COMMENT ON COLUMN STAFF.Contract_type
	IS 'Staff members Contract type. Attribute cannot be null and must be 
		either P for permanent or T for temporary.'
COMMENT ON COLUMN STAFF.STF_Fname
	IS 'Staff members first name (cannot be null).'
COMMENT ON COLUMN STAFF.STF_Lname
	IS 'Staff members last name (cannot be null).'
COMMENT ON COLUMN STAFF.STF_Ward_num 
	IS 'The ward number that the staff member works at (cannot be null).'