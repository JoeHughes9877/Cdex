from fastapi import FastAPI,  Query
from repository import authors, books, characters, worlds, series


from typing import List, Optional 

app = FastAPI()

@app.get("/authors/")
async def authors( skip: int = 0, limit: int = 10, q: Optional[str] = Query(None)):
    data = authors.get_author_by_name(q)
    return {"authors": data}

@app.get("/books/")
async def books( skip: int = 0, limit: int = 10, q: Optional[str] = Query(None)):
    data = books.get_book_by_title(q)
    return {"books": data}

@app.get("/characters/")
async def characters( skip: int = 0, limit: int = 10, q: Optional[str] = Query(None)):
    data = characters.get_character_by_name(q)
    return {"characters": data}

@app.get("/worlds/")
async def worlds( skip: int = 0, limit: int = 10, q: Optional[str] = Query(None)):
    data = worlds.get_world_by_name(q)
    return {"worlds": data}

@app.get("/series/")
async def worlds( skip: int = 0, limit: int = 10, q: Optional[str] = Query(None)):
    data = series.get_series_by_name(q)
    return {"series": data}


