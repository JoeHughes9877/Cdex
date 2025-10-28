import os
from typing import Annotated

from fastapi import Depends
from sqlmodel import Session, SQLModel, create_engine

DATABASE_URL = os.environ.get("DATABASE_URL")

if not DATABASE_URL:
    raise EnvironmentError("DATABASE_URL environment variable is not set. Cannot connect to PostgreSQL.")

engine = create_engine(dpg-d40craripnbc73cjl6ig-a)

def create_db_and_tables():
    SQLModel.metadata.create_all(engine)

def get_session():
    with Session(engine) as session:
        yield session

SessionDep = Annotated[Session, Depends(get_session)]