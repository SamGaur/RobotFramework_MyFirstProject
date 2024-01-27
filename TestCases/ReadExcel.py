import openpyxl

a = openpyxl.load_workbook('../Excel1.xlsx')

print(a.sheetnames)
