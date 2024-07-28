from datetime import date
import os

def add_time(file):
    """Add time prefix to file"""
    today = date.today().strftime("%Y_%m_%d")
    os.system(f"mv {file} {today}_{file}")
