from fastapi import FastAPI,  Query
from repository.authors import get_author_by_name
from typing import List, Optional 

app = FastAPI()


@app.get("/authors/")
async def authors( skip: int = 0, limit: int = 10, q: Optional[str] = Query(None)):
    data = get_author_by_name(q)
    return {"authors": data}