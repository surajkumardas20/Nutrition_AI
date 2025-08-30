# Nutrition AI Database

A simple SQL schema for managing patients and nutritional assessments.  
This repo is owned by **surajkumardas20**.

---

## Features
- Patient records (age, gender, weight, height, health condition)
- Automated BMI calculation
- Risk level classification (Low, Moderate, High)
- Basic precautions & medications suggestions

---

## Usage
1. Clone this repository:
   ```bash
   git clone https://github.com/surajkumardas20/nutrition_ai.git
   cd nutrition_ai
   ```

2. Run the schema:
   ```bash
   mysql -u root -p < schema.sql
   ```

3. Seed with sample data:
   ```bash
   mysql -u root -p nutrition_ai < seed.sql
   ```

4. Query the database:
   ```sql
   SELECT * FROM patients;
   SELECT * FROM assessments;
   ```

---

## License
This project is open-source under the MIT License.
