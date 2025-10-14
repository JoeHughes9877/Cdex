from fastapi import FastAPI
from repository.authors import get_author_by_name

app = FastAPI()

@app.get("/")
def root():
 
    data = get_author_by_name("g")

    return {"authors": data}