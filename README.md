# Cdex

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**A RESTful API for exploring fantasy worlds, books, and characters.**

Accessable at this link: https://cdex.joe-hughes.dev/

Codex is a personal learning project designed to help me develop skills in API development, database management, and web deployment—all centered around a topic I’m passionate about: **fantasy books**. The API provides structured data on books, series, authors, characters, worlds, kingdoms, and magical systems, making it easy to fetch and retrieve fantasy lore programmatically.

---

## Tech Stack

- **Language:** Python 3.11+  
- **Web Framework:** FastAPI (high-performance modern API framework)  
- **Server:** Uvicorn (ASGI server for running FastAPI apps)  
- **Database:** SQLite via **SQLModel / SQLAlchemy ORM**  
- **Hosting / Deployment:** Cloud service provider Render.  

---

## Project Goals

Codex is both a learning exercise and a practical tool for retrieving structured fantasy book data. Through building Codex, I aim to improve skills in:

- API development (REST principles, routing, JSON serialization)  
- Database design and management (SQLite, SQLModel/SQLAlchemy, SQL queries)  
- Python programming (async features, type hints, data modeling)  
- Cloud service setup (To learn how to host projects on the web)
- Web app development (consuming APIs, front-end frameworks, user interfaces)  
- Deployment and DevOps fundamentals (hosting, reverse proxy, security basics)  

---

## How to Run

Codex uses **Python**, **FastAPI**, and **SQLModel**. Follow these steps to run it locally (hosting planned):

# 🚀 Codex Setup Guide

Follow these steps to set up and run the Codex API locally or access it from the cloud.

```bash
# 1. Clone the Repository
git clone https://github.com/yourusername/codex.git
cd codex

# 2. Create a Virtual Environment (Recommended)
# Linux/macOS
python -m venv venv
source venv/bin/activate

# Windows
python -m venv venv
venv\Scripts\activate

# 3. Install Dependencies
pip install -r requirements.txt

# 4. Run the API in Development Mode
uvicorn main:app --reload

# 5. Access the API
# Locally: http://localhost:8000
# Cloud:   https://cdex.joe-hughes.dev/
