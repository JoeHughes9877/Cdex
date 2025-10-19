# Codex

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**A RESTful API for exploring fantasy worlds, books, and characters.**

Codex is a personal learning project designed to help me develop skills in API development, database management, and web deployment—all centered around a topic I’m passionate about: **fantasy books**. The API provides structured data on books, series, authors, characters, worlds, kingdoms, and magical systems, making it easy to fetch and retrieve fantasy lore programmatically.

---

## 🛠️ Tech Stack

- **Language:** Python 3.11+  
- **Web Framework:** FastAPI (high-performance modern API framework)  
- **Server:** Uvicorn (ASGI server for running FastAPI apps)  
- **Database:** SQLite via **SQLModel / SQLAlchemy ORM**  
- **Hosting / Deployment:** Personal Debian server (home lab environment)  
- **Future Frontend:** Web app consuming the API  

---

## 🎯 Project Goals

Codex is both a learning exercise and a practical tool for retrieving structured fantasy book data. Through building Codex, I aim to improve skills in:

- API development (REST principles, routing, JSON serialization)  
- Database design and management (SQLite, SQLModel/SQLAlchemy, SQL queries)  
- Python programming (async features, type hints, data modeling)  
- Home lab setup (hosting a Debian server, configuring services)  
- Web app development (consuming APIs, front-end frameworks, user interfaces)  
- Deployment and DevOps fundamentals (hosting, reverse proxy, security basics)  
- Optional: testing, documentation, version control, and CI/CD workflows  

---

## 📚 API Scope / Schema

Codex organizes its data around the following core entities:

- **Authors** – information about writers (e.g., Brandon Sanderson)  
- **Book Series** – collections of related books with summaries  
- **Books** – individual titles with metadata, world settings, and related characters  
- **Characters** – key figures with roles, affiliations, and abilities  
- **Worlds** – the fictional settings, including geography and cultures  
- **Kingdoms** – subdivisions or regions within worlds  
- **Quotes** – memorable lines attributed to characters  

This schema allows flexible querying of relationships between authors, books, characters, and the worlds they inhabit.

---

## 🚀 How to Run

Codex uses **Python**, **FastAPI**, and **SQLModel**. Follow these steps to run it locally:

```bash
# Clone the repository
git clone https://github.com/yourusername/codex.git
cd codex

# Create a virtual environment (recommended)
python -m venv venv
source venv/bin/activate  # Linux/macOS
venv\Scripts\activate     # Windows

# Install dependencies
pip install -r requirements.txt

# Run the API in development mode
uvicorn main:app --reload

# The API will now be accessible at:
# http://localhost:8000
