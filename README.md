# Cargo Tracking System

A full-stack web application developed with **Flask** and **MySQL** to track and manage cargo shipments efficiently.

## Features 🚚
- Cargo tracking by tracking number
- Admin login and secure session management
- Adding, updating, and deleting cargo shipments
- Separate handling for domestic (YI) and international (YD) cargo
- Dynamic city and country selection
- CSV report generation
- Automatic logging system

## Technologies Used 🛠
- Python (Flask)
- MySQL Database
- HTML5, CSS3, JavaScript (AJAX)
- Jinja2 Templating

## Installation and Setup ⚙️

1. Clone the repository:
```bash
git clone https://github.com/ozcanpng/Cargo-Tracking-System.git
cd Cargo-Tracking-System
````
3. Create a virtual environment and activate it:
  ````bash
  python -m venv venv
  source venv/bin/activate  # Linux/Mac
  venv\Scripts\activate     # Windows
  ````
3. Install dependencies:
  ````bash
  pip install -r requirements.txt
  ````
4. Create a .env file:
````bash
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=yourpassword
DB_DATABASE=kargotakipsistemidb
SECRET_KEY=your_secret_key
````
5. Set up the database:

Import the kagotakipsistemidb.sql file into your MySQL server to create the required tables and sample data.
You can do this via a MySQL client or command line:
````bash
mysql -u root -p < setup.sql
````
6. Run the flask application:
````bash
python Main.py
````

7. Acces the application via:
````bash
http://localhost:5000
````

