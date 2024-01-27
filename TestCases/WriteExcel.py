import openpyxl

a = openpyxl.Workbook()
b = a.active
b.title="HelloThere!"

print(b.title)

a.create_sheet(title="Sheet4")
q= a['Sheet4']
q['A1']= "Robot Framework"



#b['C1'].value="Samiksha is writing via pythoncode"


a.save('../Excel1.xlsx')