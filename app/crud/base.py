from pydantic.v1 import BaseModel
from db.db import SessionDep
from sqlalchemy import exists as sa_exists


def get_by_id(session: SessionDep, q, table: BaseModel):
    found = session.query(sa_exists().where(table.id == q)).scalar()
    if not found:
        return False
    return session.query(table).filter(table.id == q).all()

def record_exists():
    return None


def get():
    return None


def get_all():
    return None


def create():
    return None


def update():
    return None


def remove():
    return None