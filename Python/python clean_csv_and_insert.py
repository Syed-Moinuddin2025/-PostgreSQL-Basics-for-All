import pandas as pd
import psycopg2

# Step 1: Load CSV File
file_path = "D:/GiHubProjects/SQL-Basics-for-All/employee_data.csv"  # Replace with your CSV file path
df = pd.read_csv(file_path)

# Step 2: Clean Column Names (Remove extra spaces)
df.columns = df.columns.str.strip()

# Step 3: Convert Data Types (if necessary)
# Convert salary to numeric, replace invalid entries with NaN
df['salary'] = pd.to_numeric(df['salary'], errors='coerce')

# Convert joining_date to proper DATE format
df['joining_date'] = pd.to_datetime(df['joining_date'], errors='coerce', format='%d-%m-%Y')

# Step 4: Connect to PostgreSQL
try:
    conn = psycopg2.connect(
        host="localhost",
        database="company",  # Replace with your database name
        user="postgres",     # Replace with your username
        password="2136"  # Replace with your password
    )
    cursor = conn.cursor()
    
    # Step 5: Insert Data into PostgreSQL
    for _, row in df.iterrows():
        cursor.execute("""
            INSERT INTO employee3 (employee_id, first_name, last_name, email, department, salary, joining_date, age)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
            ON CONFLICT (employee_id) DO NOTHING;
        """, (
            row['employee_id'], 
            row['first_name'], 
            row['last_name'], 
            row['email'], 
            row['department'], 
            row['salary'], 
            row['joining_date'], 
            row['age']
        ))
    
    conn.commit()
    print("Data successfully inserted into PostgreSQL!")
except Exception as e:
    print(f"Error: {e}")
finally:
    if conn:
        cursor.close()
        conn.close()
