from fastapi import FastAPI, Query, HTTPException
from models.models import World, Author, Series, Character, Kingdom, Book, BookCharacter, Quote
from db.db import create_db_and_tables, SessionDep
from typing import Annotated
from sqlmodel import select

app = FastAPI(title="Codex - one stop shop for everything fantasy book related.")

@app.on_event("startup")
def on_startup():
    create_db_and_tables()

@app.post("/authors/")
def create_author(author: Author, session: SessionDep) -> Author:
    session.add(author)
    session.commit()
    session.refresh(author)
    return author

@app.get("/authors/")
def read_author(
    session: SessionDep,
    offset: int = 0,
    limit: Annotated[int, Query(le=20)] = 10,
) -> list[Author]:
    authors = session.exec(select(Author).offset(offset).limit(limit)).all()
    return authors

@app.delete("/authors/{author_id}")
def delete_author(author_id: int, session: SessionDep):
    author = session.get(Author, author_id)
    if not author:
        raise HTTPException(status_code=404, detail="Author not found")
    session.delete(author)
    session.commit()
    return {"ok": True}