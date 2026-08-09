import os
from dotenv import load_dotenv
from sqlalchemy import create_engine
import pandas as pd

load_dotenv()

DB_PASSWORD = os.getenv('DB_PASSWORD')
DB_USER = os.getenv('DB_USER')
DB_HOST = os.getenv('DB_HOST')
DB_NAME = os.getenv('DB_NAME')
DB_PORT = os.getenv('DB_PORT')

engine = create_engine(f'postgresql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}')
info_file = pd.read_csv('raw/surat_uncleaned.csv', dtype=str)

surat_uncleaned = info_file[['property_name', 'areaWithType', 'square_feet', 'transaction',
                             'status', 'floor', 'furnishing', 'facing', 'description',
                             'price_per_sqft', 'price']]

surat_uncleaned.columns = ['property_name', 'area_with_type', 'square_feet', 'transaction',
                             'status', 'floor', 'furnishing', 'facing', 'description',
                             'price_per_sqft', 'price']
surat_uncleaned.to_sql('surat_uncleaned', engine, if_exists='append', index=False)