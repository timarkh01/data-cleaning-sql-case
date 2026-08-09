import pandas as pd

file = pd.read_csv('raw/surat_uncleaned.csv', encoding='latin1')

print('Количество строк с NULL-значением')
print(file.isnull().sum())

print('\nКоличество дублирующихся строк')
print(file.duplicated().sum())

print('\nМаксимальная длина строки для каждого столбца')
print(f'property_name: {file['property_name'].str.len().max()}')
print(f'areaWithType: {file['areaWithType'].str.len().max()}')
print(f'square_feet: {file['square_feet'].str.len().max()}')
print(f'transaction: {file['transaction'].str.len().max()}')
print(f'status: {file['status'].str.len().max()}')
print(f'floor: {file['floor'].str.len().max()}')
print(f'furnishing: {file['furnishing'].str.len().max()}')
print(f'facing: {file['facing'].str.len().max()}')
print(f'description: {file['description'].str.len().max()}')
print(f'price_per_sqft: {file['price_per_sqft'].str.len().max()}')
print(f'price: {file['price'].str.len().max()}')