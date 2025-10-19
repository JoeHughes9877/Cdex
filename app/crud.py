from db.db import SessionDep
from sqlalchemy import exists as sa_exists
from app.models import Author
from typing import Optional

def get_by_id(session: SessionDep, q: int, table):
    found = session.query(sa_exists().where(table.id == q)).scalar()
    if not found:
        return False
    return session.query(table).filter(table.id == q).first()

def get_single_table(session: SessionDep, q: int, table):
    found_item = get_by_id(session, q, table)

    if not found_item:
        return False
    return found_item


def get_all(session: SessionDep, q: str, table):
    if q:
        return session.query(table).filter(table.name.like(f'%{q}%')).all()
    return session.query(table).all()


def create_table(session: SessionDep, table):
    session.add(table)
    session.commit()
    session.refresh(table)
    return table

def remove_table(table_id: int ,table ,session: SessionDep):
    result = get_by_id(session, table_id, table)
    if not result:
        return False
    session.delete(result)
    session.commit()
    return True

#Update for each table
def update_author(session: SessionDep, author_id: int, name: Optional[str], birth_year: Optional[int], nationality: Optional[str]):
    author = get_by_id(session, author_id, Author)

    if not author:
        return False

    if name is not None:
        author.name = name
    if birth_year is not None:
        author.birth_year = birth_year
    if nationality is not None:
        author.nationality = nationality

    session.commit()
    session.refresh(author)
    return author