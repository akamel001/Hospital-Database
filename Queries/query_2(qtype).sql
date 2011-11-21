	/*
English Translation: This query prompts the user for a qualification type 
					 then selects everyone in the database with that qualifcation.
					 It also sorts the table by gender and groups people by gendor as well.
TEAM: The GUI Ducks
DONE BY: Abdelrahman Kamel
*/

BTITLE TAB 50 'Page:' FORMAT 999 SQL.PNO

COLUMN Staff_id HEADING 'ID'
COLUMN QTYPE HEADING 'Qualification|Type'
COLUMN QINSTITUTION HEADING 'Qualification|Institution'
COLUMN STF_Lname HEADING 'Last|Name' FORMAT A10
COLUMN STF_Gender HEADING 'Gender' FORMAT A7
COLUMN Hrs_Per_Week HEADING 'Hours|Per|Week'
COLUMN STF_Ward_num  HEADING 'Ward|Number'
COLUMN Position FORMAT A19
COLUMN Salary_scale HEADING 'Salary' FORMAT $999,999


SET LINESIZE 200
SET PAGESIZE 40
SET UNDERLINE =
SET FEEDBACK OFF

BREAK ON STF_Gender SKIP 2

ACCEPT qtp default '' PROMPT 'Enter the Qualification type: '

TTITLE TAB 50 "Full Employee info (" &qtp ")"

SELECT STF_Gender, STF_Lname, staff_id, Position, STF_Ward_num, Hrs_Per_Week, QINSTITUTION, Salary_scale
FROM staff, staff2, QUALIFICATION
WHERE staff.position = staff2.s_position 
AND qualification.qtype = '&qtp'
AND qualification.q_staff_id = staff.staff_id
ORDER BY stf_gender

RUN

COLUMN Staff_id CLEAR
COLUMN QTYPE CLEAR
COLUMN QINSTITUTION CLEAR
COLUMN STF_Lname CLEAR
COLUMN STF_Gender CLEAR
COLUMN Hrs_Per_Week CLEAR
COLUMN STF_Ward_num  CLEAR
COLUMN Position CLEAR
COLUMN Salary_scale CLEAR

CLEAR BREAK

