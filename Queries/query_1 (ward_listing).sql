/* 
This query prompts the user for input. The input becomes fields for the select statment.
Then a view is made of the new select statment. The prompt takes the input and stores 
it into a variable called selection. The default value for the variable is 'fname, lname'
TEAM: The GUI Ducks
DONE BY: Abdelrahman Kamel
*/

TTITLE TAB 50 'Ward Staff Listing'
BTITLE TAB 50 'Page:' FORMAT 99 SQL.PNO

COLUMN STF_Fname HEADING 'First|Name' FORMAT A10
COLUMN STF_Lname HEADING 'Last|Name' FORMAT A10
COLUMN Staff_id HEADING 'ID'
COLUMN STF_Home_Phone HEADING 'Home|Phone'
COLUMN STF_Cell_Phone HEADING 'Cell|Phone'
COLUMN Work_area HEADING 'Work Area'
COLUMN STF_address HEADING 'Address' FORMAT A35
COLUMN STF_DoB HEADING 'Date|of|Birth'
COLUMN STF_Gender HEADING 'Gender' FORMAT A6
COLUMN Hrs_Per_Week HEADING 'Hours|Per|Week'
COLUMN Payment_type HEADING 'Payment|Type' FORMAT A7
COLUMN Contract_type HEADING 'Contract|Type' FORMAT A8
COLUMN STF_Ward_num  HEADING 'Ward|Number'
COLUMN Position FORMAT A19

BREAK ON STF_Ward_num SKIP PAGE ON REPORT 

SET FEEDBACK OFF
SET LINESIZE 300
SET PAGESIZE 30
SET UNDERLINE =

ACCEPT selection default '*' PROMPT 'Enter your selection fields: '
ACCEPT view_name default 'emp_info' PROMPT 'Enter name of view: '

CREATE VIEW &view_name AS 
SELECT &selection
FROM STAFF
WHERE STF_Ward_num <= 15
ORDER BY stf_ward_num ASC;

PAUSE 'View &view_name was created successfully. Selecting all data from the view.'

SELECT * from &view_name;

COLUMN STF_Fname CLEAR
COLUMN STF_Lname CLEAR
COLUMN Staff_id CLEAR
COLUMN STF_Home_Phone CLEAR
COLUMN STF_Cell_Phone CLEAR
COLUMN Work_area CLEAR
COLUMN STF_address CLEAR
COLUMN STF_DoB CLEAR
COLUMN STF_Gender CLEAR
COLUMN Hrs_Per_Week CLEAR
COLUMN Payment_type CLEAR
COLUMN Contract_type CLEAR
COLUMN STF_Ward_num CLEAR
COLUMN Position CLEAR

CLEAR BREAK
