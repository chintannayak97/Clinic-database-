CREATE DEFINER=`root`@`localhost` PROCEDURE `Question2`()
BEGIN
SELECT SUM(t.Treatment_LineTotal) AS Sum_invoice_total, Doctor_name AS Doctor
FROM invoice AS i
LEFT JOIN treatment AS t
ON i.Treatment_Code= t.Treatment_Id
LEFT JOIN doctor AS doc
ON i.Doctor_Code= doc.Doctor_Id
Group by Doctor;
END