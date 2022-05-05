CREATE DEFINER=`root`@`localhost` PROCEDURE `Question3`()
BEGIN
SELECT Treatment_Id, Treatment_Description, SUM(Treatment_LineTotal) AS Sum_invoice_total
FROM invoice AS i
JOIN treatment AS t
ON i.Treatment_Code= t.Treatment_Id
GROUP BY Treatment_Id;
END