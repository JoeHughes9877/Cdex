from db.db import SessionDep
from sqlalchemy import exists, select
from app.models import World, Author, Series, Character, Kingdom, Book, BookCharacter, Quote
from sqlalchemy.orm import Session

def get_by_id(session: SessionDep, q: int, table):
    found = session.query(exists().where(table.id == q)).scalar()
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

def update_world(session: Session, world_id: int, name: str | None = None):
    world = session.get(World, world_id)
    if not world:
        return None
    if name is not None:
        world.name = name
    session.add(world)
    session.commit()
    session.refresh(world)
    return world

def update_author(session: Session, author_id: int, name: str | None = None, birth_year: int | None = None, nationality: str | None = None):
    author = session.get(Author, author_id)
    if not author:
        return None
    if name is not None:
        author.name = name
    if birth_year is not None:
        author.birth_year = birth_year
    if nationality is not None:
        author.nationality = nationality
    session.add(author)
    session.commit()
    session.refresh(author)
    return author

def update_series(session: Session, series_id: int, name: str | None = None, description: str | None = None):
    series = session.get(Series, series_id)
    if not series:
        return None
    if name is not None:
        series.name = name
    if description is not None:
        series.description = description
    session.add(series)
    session.commit()
    session.refresh(series)
    return series

def update_character(session: Session, character_id: int, name: str | None = None, age: int | None = None, gender: str | None = None, description: str | None = None):
    character = session.get(Character, character_id)
    if not character:
        return None
    if name is not None:
        character.name = name
    if age is not None:
        character.age = age
    if gender is not None:
        character.gender = gender
    if description is not None:
        character.description = description
    session.add(character)
    session.commit()
    session.refresh(character)
    return character

def update_kingdom(session: Session, kingdom_id: int, name: str | None = None, world_id: int | None = None):
    kingdom = session.get(Kingdom, kingdom_id)
    if not kingdom:
        return None
    if name is not None:
        kingdom.name = name
    if world_id is not None:
        kingdom.world_id = world_id
    session.add(kingdom)
    session.commit()
    session.refresh(kingdom)
    return kingdom

def update_book(session: Session, book_id: int, title: str | None = None, year: int | None = None, genre: str | None = None, author_id: int | None = None, world_id: int | None = None, series_id: int | None = None):
    book = session.get(Book, book_id)
    if not book:
        return None
    if title is not None:
        book.title = title
    if year is not None:
        book.year = year
    if genre is not None:
        book.genre = genre
    if author_id is not None:
        book.author_id = author_id
    if world_id is not None:
        book.world_id = world_id
    if series_id is not None:
        book.series_id = series_id
    session.add(book)
    session.commit()
    session.refresh(book)
    return book

def update_quote(session: Session, quote_id: int, text: str | None = None, character_id: int | None = None, book_id: int | None = None):
    quote = session.get(Quote, quote_id)
    if not quote:
        return None
    if text is not None:
        quote.text = text
    if character_id is not None:
        quote.characters_id = character_id
    if book_id is not None:
        quote.book_id = book_id
    session.add(quote)
    session.commit()
    session.refresh(quote)
    return quote