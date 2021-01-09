-- # from sqlalchemy.ext.declarative import declarative_base
-- # from sqlalchemy import create_engine
-- # from sqlalchemy.orm import Session

-- # CONN = "postgres://postgres:wtO5BnfyP8w6oJCG@35.202.67.5:5432/locations"

-- # Base = declarative_base()
-- # class Locations(Base):
-- #     __tablename__ = "locations"

-- import pandas as pd
-- df = pd.read_csv('mypath.csv')
-- df.columns = [c.lower() for c in df.columns] #postgres doesn't like capitals or spaces
-- from sqlalchemy import create_engine
-- engine = create_engine('postgresql://username:password@localhost:5432/dbname')
-- df.to_sql("my_table_name", engine)

CREATE TABLE locations (
    name VARCHAR(255)  NOT NULL,
    rating NUMERIC    NOT NULL,
	location VARCHAR(255)    NOT NULL,
    user_ratings_total INT    NOT NULL,
	types VARCHAR(255)    NOT NULL);