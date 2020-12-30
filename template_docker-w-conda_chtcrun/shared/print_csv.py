import csv

def csv_reader(csv_path):    
    return list(csv.reader(open(csv_path), delimiter=','))

print(csv_reader("data.csv"))