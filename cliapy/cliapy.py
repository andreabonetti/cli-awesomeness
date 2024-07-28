from datetime import date
import os

def add_date(file):
    """Add date prefix to file"""
    today = date.today().strftime("%Y_%m_%d")
    os.system(f"mv {file} {today}_{file}")
