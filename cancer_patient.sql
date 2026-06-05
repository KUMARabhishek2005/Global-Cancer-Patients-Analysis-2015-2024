--1. Total Patients
SELECT COUNT(*) AS total_patients FROM cancer_patients;

--2.Gender Distribution
SELECT "Gender",
       COUNT(*) AS patient_count
FROM cancer_patients
GROUP BY "Gender"
ORDER BY patient_count DESC;

--3.Most Common Cancer Types
SELECT "Cancer_Type",
       COUNT(*) AS total_cases
FROM cancer_patients
GROUP BY "Cancer_Type"
ORDER BY total_cases DESC;

--4.Cancer Stage Distribution
SELECT "Cancer_Stage",
       COUNT(*) AS patients
FROM cancer_patients
GROUP BY "Cancer_Stage"
ORDER BY patients DESC;

--5.Average Severity by Cancer Type
SELECT "Cancer_Type",
       ROUND(AVG("Target_Severity_Score")) AS avg_severity
FROM cancer_patients
GROUP BY "Cancer_Type"
ORDER BY avg_severity DESC;

--6. Highest Treatment Cost Cancer Types
SELECT "Cancer_Type",
       ROUND(AVG("Treatment_Cost_USD")) AS avg_cost
FROM cancer_patients
GROUP BY "Cancer_Type"
ORDER BY avg_cost DESC;

--7. Top Countries by Patient Count
SELECT "Country_Region",
       COUNT(*) AS total_cases
FROM cancer_patients
GROUP BY "Country_Region"
ORDER BY total_cases DESC
LIMIT 10;

--8. Countries with Highest Severity
SELECT "Country_Region",
       ROUND(AVG("Target_Severity_Score")) AS avg_severity
FROM cancer_patients
GROUP BY "Country_Region"
ORDER BY avg_severity DESC
LIMIT 10;

--9. Countries with Highest Treatment Cost
SELECT "Country_Region",
       ROUND(AVG("Treatment_Cost_USD")) AS avg_cost
FROM cancer_patients
GROUP BY "Country_Region"
ORDER BY avg_cost DESC
LIMIT 10;

--10. Average Survival Years by Cancer Type
SELECT "Cancer_Type",
       ROUND(AVG("Survival_Years")) AS avg_survival
FROM cancer_patients
GROUP BY "Cancer_Type"
ORDER BY avg_survival;

--11. Severity by Cancer Stage
SELECT "Cancer_Stage",
       ROUND(AVG("Target_Severity_Score")) AS avg_severity
FROM cancer_patients
GROUP BY "Cancer_Stage"
ORDER BY avg_severity DESC;

--12. Survival by Cancer Stage
SELECT "Cancer_Stage",
       ROUND(AVG("Survival_Years")) AS avg_survival
FROM cancer_patients
GROUP BY "Cancer_Stage"
ORDER BY avg_survival;

--13. Obesity Impact on Severity
SELECT
ROUND("Obesity_Level") AS obesity_level,
ROUND(AVG("Target_Severity_Score")) AS avg_severity
FROM cancer_patients
GROUP BY obesity_level
ORDER BY obesity_level;

--14. Air Pollution Impact on Severity
SELECT
ROUND("Air_Pollution_Exposure") AS pollution_level,
ROUND(AVG("Target_Severity_Score")) AS avg_severity
FROM cancer_patients
GROUP BY pollution_level
ORDER BY pollution_level;

--15. Top 5 Most Expensive Patients
SELECT "Patient_ID",
       "Cancer_Type",
       "Treatment_Cost_USD"
FROM cancer_patients
ORDER BY "Treatment_Cost_USD" DESC
LIMIT 5;

SELECT "Patient_ID",
       "Cancer_Type",
       "Treatment_Cost_USD",

RANK() OVER(
PARTITION BY "Cancer_Type"
ORDER BY "Treatment_Cost_USD" DESC
) AS cost_rank

FROM cancer_patients;


--16. Above Average Cost Patients
SELECT "Patient_ID",
       "Cancer_Type",
       "Treatment_Cost_USD"
FROM cancer_patients
WHERE "Treatment_Cost_USD" >
(
SELECT AVG("Treatment_Cost_USD")
FROM cancer_patients
);