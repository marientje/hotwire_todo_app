# Todo App (Hotwire / Rails)

A Todo application built with Ruby on Rails 8 and Hotwire (Turbo + Stimulus).

https://github.com/user-attachments/assets/916e80ec-177d-4ba8-9c18-3a55f02ed20d

---

## 🚀 Features

- Add, update, and delete todos without page reload using Turbo
- Dynamic flash messages on create/update/delete using Turbo
- Character counter for input fields using Stimulus
- Responsive UI styled with Tailwind CSS

---

## 💻 Tech Stack

- Ruby: 3.4.7
- Rails: 8.1.1
- Hotwire: Turbo + Stimulus  
- CSS: Tailwind CSS  
- Database: SQLite

---

## ⚡ Installation

### Prerequisites
- Ruby 3.4.7
- Rails 8.1.1

### Setup
```bash
# Clone the repo
git clone https://github.com/marientje/hotwire_todo_app.git
cd hotwire_todo_app

# Install dependencies
bundle install

# Set up the database
rails db:setup

# Start the server + Tailwind watcher
bin/dev
