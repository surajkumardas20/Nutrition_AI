-- Insert sample patients
INSERT INTO patients (first_name, last_name, age, gender, weight_kg, height_cm, health_condition)
VALUES
('Riya', 'Sharma', 29, 'Female', 70.0, 165.0, 'Hypertension'),
('Arjun', 'Patel', 45, 'Male', 85.0, 175.0, 'Diabetes');

-- Insert assessments based on BMI
INSERT INTO assessments (patient_id, bmi, risk_level, precautions, medications)
SELECT 
    patient_id,
    ROUND(weight_kg / POWER(height_cm/100, 2), 2) AS bmi,
    CASE
        WHEN (weight_kg / POWER(height_cm/100, 2)) < 18.5 THEN 'Low'
        WHEN (weight_kg / POWER(height_cm/100, 2)) BETWEEN 18.5 AND 24.9 THEN 'Moderate'
        ELSE 'High'
    END AS risk_level,
    'Follow a balanced diet, regular exercise, monitor health conditions' AS precautions,
    'Consult physician for personalized medications' AS medications
FROM patients;