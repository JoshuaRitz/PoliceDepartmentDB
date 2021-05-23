# Query to find average officer salary
SELECT SUM(Ofc_Salary)/COUNT(*) as Avg_Officer_Salary
FROM OFFICERS; 

# Query to diplay all officers that are detectives working at Atlanta department
SELECT O.Ofc_Name as Officer_Name, O.Ofc_Rank as Detectives_working_Atlanta, D.Dept_Name as Department
FROM OFFICERS as O, DEPARTMENT as D
WHERE D.Dept_ID = O.Ofc_Dept_ID and Dept_ID = 'D001' and O.Ofc_Rank like 'Detective';

# Query to display all guns checked out by officers working in Atlanta and their names
SELECT DISTINCT O.Ofc_Name as Officer_Name, D.Dept_Name as Department, E.Eq_Type as Equipment, E.Eq_Status as Equipment_Status
FROM OFFICERS as O, DEPARTMENT as D, EQUIPMENT as E
WHERE O.Ofc_Dept_ID = D.Dept_ID and Dept_Name = 'Atlanta' and E.Eq_Type = 'Gun' and E.Eq_Status = 'O';

# Query to display the total number of inactive vehicles by department
SELECT V.Veh_ID as Vehicle_ID, V.Veh_Type as Vehicle, V.Veh_Lplate as Vehicle_License_Plate, D.Dept_Name
FROM VEHICLES as V, DEPARTMENT as D
WHERE V.Veh_Status = 'I' and V.Veh_Dept_ID = D.Dept_ID
GROUP BY D.Dept_Name;

# Query to display all suspects charged with robbery in Fulton department
SELECT S.Sus_Name as Suspect, S.Sus_Charges as Suspect_Charge, S.Sus_Alt_Name as Suspect_Known_Names, S.Sus_Description as Suspect_Description, D.Dept_Name
FROM SUSPECTS as S, DEPARTMENT as D
WHERE S.Sus_Dept_ID = D.Dept_ID and D.Dept_Name = 'Fulton' and S.Sus_Charges = 'Robbery';

# Query to display all cases being worked on by officer named James Bond
SELECT O.Ofc_Name as Officer, C.Case_ID as Case_ID, C.Case_Type as Case_Type, C.Case_Status as "Status", C.Case_Details as Case_Details  
FROM OFFICERS as O, CASES as C
WHERE O.Ofc_ID = C.Case_Ofc_ID and O.Ofc_Name = 'James Bond';

# Query to display total quantity of cocaine held as evidence by department
SELECT Ev.Ev_ID as Evidence_ID, Ev.Ev_Description as Evidence_Description, SUM(Ev.Ev_Qty) as Total_Qty_by_Department, D.Dept_Name
FROM EVIDENCE as Ev, DEPARTMENT as D
WHERE Ev.Ev_Dept_ID = D.Dept_ID and Ev.Ev_Description like '%cocaine%'
GROUP BY D.Dept_Name;
