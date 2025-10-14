from fastapi import FastAPI,  Query
from repository.authors import get_author_by_name
from repository.books import get_book_by_name
from typing import List, Optional 

app = FastAPI()


@app.get("/authors/")
async def authors( skip: int = 0, limit: int = 10, q: Optional[str] = Query(None)):
    data = get_author_by_name(q)
    return {"authors": data}

@app.get("/books/")
async def books( skip: int = 0, limit: int = 10, q: Optional[str] = Query(None)):
    data = get_book_by_name(q)
    return {"books": data}

@app.get("/characters/")
async def characters( skip: int = 0, limit: int = 10, q: Optional[str] = Query(None)):

    return {"characters": data}

@app.get("/kingdoms/")
async def kingdoms( skip: int = 0, limit: int = 10, q: Optional[str] = Query(None)):

    return {"kingdoms": data}

@app.get("/quotes/")
async def books( skip: int = 0, limit: int = 10, q: Optional[str] = Query(None)):

    return {"books": data}

@app.get("/worlds/")
async def books( skip: int = 0, limit: int = 10, q: Optional[str] = Query(None)):

    return {"worlds": data}

