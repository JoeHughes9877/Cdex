from sqlmodel import Field, SQLModel

class World(SQLModel, table=True):
    id: int | None = Field(default=None, primary_key=True)
    name: str = Field(index=True)

class Author(SQLModel, table=True):
    __tablename__ = "authors"

    id: int | None = Field(default=None, primary_key=True)
    name: str
    birth_year: int | None = None
    nationality: str | None = None

class Series(SQLModel, table=True):
    __tablename__ = "series"

    id: int | None = Field(default=None, primary_key=True)
    name: str
    description: str | None = None

class Character(SQLModel, table=True):
    __tablename__ = "characters"

    id: int | None = Field(default=None, primary_key=True)
    name: str
    age: int | None = None
    gender: str | None = None
    description: str | None = None

class Kingdom(SQLModel, table=True):
    __tablename__ = "kingdoms"

    id: int | None = Field(default=None, primary_key=True)
    name: str
    world_id: int = Field(foreign_key="world.id")


class Book(SQLModel, table=True):
    __tablename__ = "books"

    id: int | None = Field(default=None, primary_key=True)
    title: str
    year: int | None = None
    genre: str | None = None
    author_id: int = Field(foreign_key="author.id")
    world_id: int = Field(foreign_key="world.id")
    series_id: int | None = Field(default=None, foreign_key="series.id")


class BookCharacter(SQLModel, table=True):
    __tablename__ = "book_characters"

    book_id: int = Field(foreign_key="book.id", primary_key=True)
    character_id: int = Field(foreign_key="character.id", primary_key=True)


class Quote(SQLModel, table=True):
    __tablename__ = "quotes"

    id: int | None = Field(default=None, primary_key=True)
    text: str
    character_id: int = Field(foreign_key="character.id")
    book_id: int = Field(foreign_key="book.id")
