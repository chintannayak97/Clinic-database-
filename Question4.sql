CREATE DEFINER=`root`@`localhost` PROCEDURE `Question4`()
BEGIN
SELECT Doctor_Name, MIN(Number_of_Visits) AS Min_number_of_Visits_of_Single_Patient,
MAX(Number_of_Visits) AS Max_number_of_Visits_of_Single_Patient, 
SUM(Number_of_Visits) AS Total_Number_of_Visits
FROM (Select distinct Patient_Name, Doctor_Name, count( Visit_Date) As Number_of_Visits
from invoice as i
left join doctor as d
on i.Doctor_Code = d.Doctor_Id
left join patient as p
on i.Patient_Code = p.Patient_Id
group by Patient_Code, Doctor_Code
Order by Doctor_Code) AS s
GROUP BY Doctor_Name;
END