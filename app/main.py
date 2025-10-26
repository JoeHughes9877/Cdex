from fastapi import FastAPI, HTTPException, Depends
from fastapi.security.api_key import APIKey
from app.models import World, Author, Series, Character, Kingdom, Book, BookCharacter, Quote
from db.db import SessionDep, create_db_and_tables
from .auth import create_read_only_key, api_key_auth
from app.crud import get_single_table, get_all, create_table, update_author, remove_table
from typing import Optional

def lifespan(_):
    print("startup")
    create_db_and_tables()
    yield
    print("shutdown")

tags_metadata = [
        {"name": "Authors", "description": "Operations with **authors**."},
        {"name": "Worlds", "description": "Manage fictional **worlds**."},
        {"name": "Series", "description": "Manage **book series**."},
        {"name": "Characters", "description": "Operations with fictional **characters**."},
        {"name": "Kingdoms", "description": "Manage **kingdoms** within worlds."},
        {"name": "Books", "description": "Manage **books**."},
        {"name": "Book-Characters (Join)", "description": "Linking **books and characters**."},
        {"name": "Quotes", "description": "Manage **quotes** from books."},
        {"name": "Api-Key", "description": "Generate Api-Key"},
    ]

app = FastAPI(lifespan=lifespan)

'''-----Author endpoints-----'''
@app.post("/authors/", tags=["Authors"])
def create_author(author: Author, session: SessionDep) -> Author:
    return create_table(session, author)

@app.get("/authors/", tags=["Authors"])
def read_author_list(session: SessionDep, api_key: APIKey = Depends(api_key_auth), q: Optional[str] = None):
    return get_all(session, q, Author)

@app.get("/authors/{author_id}", tags=["Authors"])
def read_author_single(author_id: int, session: SessionDep):
    author = get_single_table(session, author_id, Author)
    if not author:
        raise HTTPException(status_code=404, detail="Author not found")
    return author

@app.put("/authors/{author_id}", tags=["Authors"])
def update_author_item(
    author_id: int,
    session: SessionDep,
    name: Optional[str] = None,
    birth_year: Optional[int] = None,
    nationality: Optional[str] = None
):
    result = update_author(session, author_id, name, birth_year, nationality)
    if not result:
        raise HTTPException(status_code=404, detail="Author not found")
    return result

@app.delete("/authors/{author_id}", tags=["Authors"])
def delete_author(author_id: int, session: SessionDep):
    result = remove_table(author_id, Author, session)
    if not result:
        raise HTTPException(status_code=404, detail="Author not found")
    return {"ok": True}


'''-----World endpoints-----'''
@app.post("/worlds/", tags=["Worlds"])
def create_world(world: World, session: SessionDep) -> World:
    return create_table(session, world)

@app.get("/worlds/", tags=["Worlds"])
def read_world_list(session: SessionDep, q: Optional[str] = None):
    return get_all(session, q, World)

@app.get("/worlds/{world_id}", tags=["Worlds"])
def read_world_single(world_id: int, session: SessionDep):
    world = get_single_table(session, world_id, World)
    if not world:
        raise HTTPException(status_code=404, detail="World not found")
    return world

@app.put("/worlds/{world_id}", tags=["Worlds"])
def update_world_item(
    world_id: int,
    session: SessionDep,
    name: Optional[str] = None
):
    from app.crud import update_world
    result = update_world(session, world_id, name=name)
    if not result:
        raise HTTPException(status_code=404, detail="World not found")
    return result

@app.delete("/worlds/{world_id}", tags=["Worlds"])
def delete_world(world_id: int, session: SessionDep):
    result = remove_table(world_id, World, session)
    if not result:
        raise HTTPException(status_code=404, detail="World not found")
    return {"ok": True}

'''-----Series endpoints-----'''
@app.post("/series/", tags=["Series"])
def create_series(series: Series, session: SessionDep) -> Series:
    return create_table(session, series)

@app.get("/series/", tags=["Series"])
def read_series_list(session: SessionDep, q: Optional[str] = None):
    return get_all(session, q, Series)

@app.get("/series/{series_id}", tags=["Series"]) #
def read_series_single(series_id: int, session: SessionDep):
    series = get_single_table(session, series_id, Series)
    if not series:
        raise HTTPException(status_code=404, detail="Series not found")
    return series

@app.put("/series/{series_id}", tags=["Series"])
def update_series_item(
    series_id: int,
    session: SessionDep,
    name: Optional[str] = None,
    description: Optional[str] = None
):
    from app.crud import update_series
    result = update_series(session, series_id, name=name, description=description)
    if not result:
        raise HTTPException(status_code=404, detail="Series not found")
    return result


'''-----Character endpoints-----'''
@app.post("/characters/", tags=["Characters"])
def create_character(character: Character, session: SessionDep) -> Character:
    return create_table(session, character)

@app.get("/characters/", tags=["Characters"]) #
def read_character_list(session: SessionDep, q: Optional[str] = None):
    return get_all(session, q, Character)

@app.get("/characters/{character_id}", tags=["Characters"])
def read_character_single(character_id: int, session: SessionDep):
    character = get_single_table(session, character_id, Character)
    if not character:
        raise HTTPException(status_code=404, detail="Character not found")
    return character

@app.put("/characters/{character_id}", tags=["Characters"])
def update_character_item(
    character_id: int,
    session: SessionDep,
    name: Optional[str] = None,
    age: Optional[int] = None,
    gender: Optional[str] = None,
    description: Optional[str] = None
):
    from app.crud import update_character
    result = update_character(session, character_id, name=name, age=age, gender=gender, description=description)
    if not result:
        raise HTTPException(status_code=404, detail="Character not found")
    return result

@app.delete("/characters/{character_id}", tags=["Characters"])
def delete_character(character_id: int, session: SessionDep):
    result = remove_table(character_id, Character, session)
    if not result:
        raise HTTPException(status_code=404, detail="Character not found")
    return {"ok": True}


'''-----Kingdom endpoints-----'''
@app.post("/kingdoms/", tags=["Kingdoms"])
def create_kingdom(kingdom: Kingdom, session: SessionDep) -> Kingdom:
    return create_table(session, kingdom)

@app.get("/kingdoms/", tags=["Kingdoms"])
def read_kingdom_list(session: SessionDep, q: Optional[str] = None):
    return get_all(session, q, Kingdom)

@app.get("/kingdoms/{kingdom_id}", tags=["Kingdoms"]) # TAG ADDED
def read_kingdom_single(kingdom_id: int, session: SessionDep):
    kingdom = get_single_table(session, kingdom_id, Kingdom)
    if not kingdom:
        raise HTTPException(status_code=404, detail="Kingdom not found")
    return kingdom

@app.put("/kingdoms/{kingdom_id}", tags=["Kingdoms"])
def update_kingdom_item(
    kingdom_id: int,
    session: SessionDep,
    name: Optional[str] = None,
    world_id: Optional[int] = None
):
    from app.crud import update_kingdom
    result = update_kingdom(session, kingdom_id, name=name, world_id=world_id)
    if not result:
        raise HTTPException(status_code=404, detail="Kingdom not found")
    return result

@app.delete("/kingdoms/{kingdom_id}", tags=["Kingdoms"])
def delete_kingdom(kingdom_id: int, session: SessionDep):
    result = remove_table(kingdom_id, Kingdom, session)
    if not result:
        raise HTTPException(status_code=404, detail="Kingdom not found")
    return {"ok": True}


'''-----Book endpoints-----'''
@app.post("/books/", tags=["Books"])
def create_book(book: Book, session: SessionDep) -> Book:
    return create_table(session, book)

@app.get("/books/", tags=["Books"])
def read_book_list(session: SessionDep, q: Optional[str] = None):
    return get_all(session, q, Book)

@app.get("/books/{book_id}", tags=["Books"])
def read_book_single(book_id: int, session: SessionDep):
    book = get_single_table(session, book_id, Book)
    if not book:
        raise HTTPException(status_code=404, detail="Book not found")
    return book

@app.put("/books/{book_id}", tags=["Books"])
def update_book_item(
    book_id: int,
    session: SessionDep,
    title: Optional[str] = None,
    year: Optional[int] = None,
    genre: Optional[str] = None,
    author_id: Optional[int] = None,
    world_id: Optional[int] = None,
    series_id: Optional[int] = None
):
    from app.crud import update_book
    result = update_book(
        session,
        book_id,
        title=title,
        year=year,
        genre=genre,
        author_id=author_id,
        world_id=world_id,
        series_id=series_id
    )
    if not result:
        raise HTTPException(status_code=404, detail="Book not found")
    return result

@app.delete("/books/{book_id}", tags=["Books"])
def delete_book(book_id: int, session: SessionDep):
    result = remove_table(book_id, Book, session)
    if not result:
        raise HTTPException(status_code=404, detail="Book not found")
    return {"ok": True}


'''-----BookCharacter endpoints-----'''
@app.post("/book_characters/", tags=["Book-Characters (Join)"])
def create_book_character(book_character: BookCharacter, session: SessionDep) -> BookCharacter:
    return create_table(session, book_character)

@app.get("/book_characters/", tags=["Book-Characters (Join)"])
def read_book_character_list(session: SessionDep, q: Optional[str] = None):
    return get_all(session, q, BookCharacter)

@app.get("/book_characters/{book_id}/{character_id}", tags=["Book-Characters (Join)"])
def read_book_character_single(book_id: int, character_id: int, session: SessionDep):
    book_character = get_single_table(session, (book_id, character_id), BookCharacter)
    if not book_character:
        raise HTTPException(status_code=404, detail="BookCharacter not found")
    return book_character

@app.delete("/book_characters/{book_id}/{character_id}", tags=["Book-Characters (Join)"])
def delete_book_character(book_id: int, character_id: int, session: SessionDep):
    result = remove_table((book_id, character_id), BookCharacter, session)
    if not result:
        raise HTTPException(status_code=404, detail="BookCharacter not found")
    return {"ok": True}


'''-----Quote endpoints-----'''
@app.post("/quotes/", tags=["Quotes"])
def create_quote(quote: Quote, session: SessionDep) -> Quote:
    return create_table(session, quote)

@app.get("/quotes/", tags=["Quotes"])
def read_quote_list(session: SessionDep, q: Optional[str] = None):
    return get_all(session, q, Quote)

@app.get("/quotes/{quote_id}", tags=["Quotes"])
def read_quote_single(quote_id: int, session: SessionDep):
    quote = get_single_table(session, quote_id, Quote)
    if not quote:
        raise HTTPException(status_code=404, detail="Quote not found")
    return quote

@app.put("/quotes/{quote_id}", tags=["Quotes"])
def update_quote_item(
    quote_id: int,
    session: SessionDep,
    text: Optional[str] = None,
    character_id: Optional[int] = None,
    book_id: Optional[int] = None
):
    from app.crud import update_quote
    result = update_quote(session, quote_id, text=text, character_id=character_id, book_id=book_id)
    if not result:
        raise HTTPException(status_code=404, detail="Quote not found")
    return result

@app.delete("/quotes/{quote_id}", tags=["Quotes"])
def delete_quote(quote_id: int, session: SessionDep):
    result = remove_table(quote_id, Quote, session)
    if not result:
        raise HTTPException(status_code=404, detail="Quote not found")
    return {"ok": True}


'''-----api-key endpoints-----'''
@app.get("/api-generation/", tags=["Api-Key"])
def generate_api_key(session: SessionDep):
    key = create_read_only_key(session)
    return {"Api-Key": key}
 