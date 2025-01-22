import os

# Folder jahan files hain
folder_path = "D:/GiHubProjects/SQL-Basics-for-All"

# Folder ke andar sabhi files list karein
files = sorted(os.listdir(folder_path))

for file_name in files:
    # Check karein agar file ka naam numeric hai (e.g., 1.sql, 10.sql, etc.)
    if file_name.endswith(".sql"):
        base_name, ext = os.path.splitext(file_name)
        if base_name.isdigit():
            # Zero-pad karke naye naam banayein
            new_name = f"{int(base_name):02}{ext}"
            old_file_path = os.path.join(folder_path, file_name)
            new_file_path = os.path.join(folder_path, new_name)
            
            # File rename karein
            os.rename(old_file_path, new_file_path)
            print(f"Renamed: {file_name} -> {new_name}")

