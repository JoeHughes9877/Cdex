# Codex

**A RESTful API for exploring fantasy worlds, books, and characters.**

Codex is a personal learning project designed to help me develop skills in API development, database management, and web deployment—all centered around a topic I’m passionate about: **fantasy books**. The API provides structured data on books, series, authors, characters, and magical systems, making it easy to fetch and retrieve fantasy lore programmatically.

---

## 🛠️ Tech Stack

- **Language:** Go (for efficient, fast code execution)  
- **Database:** SQLite (lightweight, fast, easy to manage)  
- **API Type:** RESTful API with JSON responses  
- **Hosting / Deployment:** Personal Debian server (home lab environment)  
- **Future Frontend:** Web app consuming the API  

---

## 🎯 Project Goals

This project is primarily a learning exercise, but it also serves a practical use case: retrieving structured fantasy book data. Through building Codex, I aim to learn and improve skills in:

- API development (REST principles, routing, JSON serialization)  
- Database design and management (SQLite, SQL queries)  
- Go programming (structs, concurrency, performance optimization)  
- Home lab setup (hosting a Debian server, configuring services)  
- Web app development (consuming APIs, front-end frameworks, user interfaces)  
- Deployment and DevOps fundamentals (hosting, reverse proxy, security basics)  
- Optional: testing, documentation, version control, and CI/CD workflows  

---

## 📚 API Scope

Codex focuses on **fantasy books and authors** that I find interesting, including (but not limited to):

- **Authors** – e.g., Brandon Sanderson and other fantasy writers  
- **Book Series** – metadata, summaries, release dates  
- **Books** – individual titles, world setting, related characters  
- **Characters** – name, role, affiliations, abilities  
- **Magic Systems** – rules, limitations, powers  
- **Worlds** – geography, cultures, notable events  

## 🚀 How to Run

This project uses Go, so you can use the Go toolchain to build and run the API without a Makefile. Run the following commands sequentially:

```bash
# Clone the repository
git clone https://github.com/yourusername/codex.git
cd codex

# Run the API directly (for development/testing)
go run main.go

# Or build a standalone binary and run it
go build -o codex
./codex

# The API will now be accessible at:
# http://localhost:8080
```
