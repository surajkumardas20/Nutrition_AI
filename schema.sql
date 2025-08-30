CREATE DATABASE nutrition_ai;
USE nutrition_ai;

-- Table for patients
CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender ENUM('Male','Female','Other'),
    weight_kg DECIMAL(5,2),
    height_cm DECIMAL(5,2),
    health_condition VARCHAR(255)
);

-- Table for assessments
CREATE TABLE assessments (
    assessment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    bmi DECIMAL(5,2),
    risk_level ENUM('Low','Moderate','High'),
    precautions TEXT,
    medications TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);