from fastapi import FastAPI, HTTPException
from app.models import Author
from db.db import SessionDep
from app.crud import (get_single_table, get_all, create_table, update_author, remove_table)
from typing import Optional

def lifespan(_):
    print("startup")
    yield
    print("shutdown")

app = FastAPI(lifespan=lifespan)

# CREATE
@app.post("/authors/")
def create_author(author: Author, session: SessionDep) -> Author:
    return create_table(session, author)

# READ (list or search)
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
def update_item(session: SessionDep,  author_id: int, name: Optional[str] = None, birth_year: Optional[int] = None, nationality: Optional[str] = None):
    result = update_author(session, author_id, name, birth_year, nationality)

    if not result:
        raise HTTPException(status_code=404, detail="Author not found")
    return result

# DELETE
@app.delete("/authors/{author_id}")
def delete_author(author_id: int, session: SessionDep):
    result = remove_table(author_id, Author, session)

    if not result:
        raise HTTPException(status_code=404, detail="Author not found")
    return {"ok": True}