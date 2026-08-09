import pandas as pd

file = pd.read_csv('raw/surat_uncleaned.csv', encoding='latin1')
print('Количество строк с NULL-значением')
print(file.isnull().sum())
print('\nКоличество дублирующихся строк')
print(file.duplicated().sum())