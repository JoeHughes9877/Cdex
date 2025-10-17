from fastapi import FastAPI, HTTPException
from models.models import World, Author, Series, Character, Kingdom, Book, BookCharacter, Quote
from db.db import SessionDep
from .crud.base import (get_by_id)

def lifespan(_):
    print("startup")
    yield
    print("shutdown")

app = FastAPI(lifespan=lifespan)

# CREATE
@app.post("/authors/")
def create_author(author: Author, session: SessionDep) -> Author:
    session.add(author)
    session.commit()
    session.refresh(author)
    return author

# READ (list or search)'
@app.get("/authors/")
def read_author_list(session: SessionDep, q):
    if q:
        return session.query(Author).filter(Author.name.like(f'%{q}%')).all()
    return session.query(Author).all()


# READ (single)
@app.get("/authors/{id}")
def read_author_single(session: SessionDep, q):
    author = get_by_id(session, q, Author)

    if not author:
        raise HTTPException(status_code=404, detail="Author not found")
    return author

# UPDATE
@app.put("/authors/{author_id}")
async def update_item(author_id: int, name: str, birth_year: str, nationality: str, session: SessionDep):
    author = session.query(Author).filter(Author.id == author_id).first()

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
    author = session.get(Author, author_id)
    if not author:
        raise HTTPException(status_code=404, detail="Author not found")
    session.delete(author)
    session.commit()
    return {"ok": True}