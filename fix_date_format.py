import pandas as pd

# CSV file ka path
file_path = r"D:\GiHubProjects\SQL-Basics-for-All\employee_data.csv"  # Input file path
output_path = r"D:\GiHubProjects\SQL-Basics-for-All\employee_data_cleaned.csv"  # Output file path

# CSV file load karo
df = pd.read_csv(file_path)

# Joining_date column ko standardize karo
df['joining_date'] = pd.to_datetime(df['joining_date'], format='mixed', dayfirst=True, errors='coerce').dt.strftime('%Y-%m-%d')

# Standardized file ko save karo
df.to_csv(output_path, index=False)

print("Date format successfully standardized! Cleaned file saved at:", output_path)

