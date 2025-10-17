from fastapi import FastAPI, HTTPException
from models.models import World, Author, Series, Character, Kingdom, Book, BookCharacter, Quote
from db.db import SessionDep
from .crud.base import (get_by_id, get_single_table, get_all, create_table, update_table, remove_table)

def lifespan(_):
    print("startup")
    yield
    print("shutdown")

app = FastAPI(lifespan=lifespan)

# CREATE
@app.post("/authors/")
def create_author(author: Author, session: SessionDep) -> Author:
    return create_table(session, author)

# READ (list or search)'
@app.get("/authors/")
def read_author_list(session: SessionDep, q):
    return get_all(session, q, Author)

# READ (single)
@app.get("/authors/{id}")
def read_author_single(session: SessionDep, q):
    author = get_single_table(session, q, Author)

    if not author:
        raise HTTPException(status_code=404, detail="Author not found")
    return author

# UPDATE
@app.put("/authors/{author_id}")
async def update_item(author_id: int, name: str, birth_year: int, nationality: str, session: SessionDep):
    author = get_by_id(session, author_id, Author)

    if not author:
        raise HTTPException(status_code=404, detail="Author not found")

    author.name = name
    author.birth_year = birth_year
    author.nationality = nationality
    session.commit()
    session.refresh(author)
    return author

# DELETE
@app.delete("/authors/{author_id}")
def delete_author(author_id: int, session: SessionDep):
    result = remove_table(author_id, Author, session)

    if not result:
        raise HTTPException(status_code=404, detail="Author not found")
    return {"ok": True}