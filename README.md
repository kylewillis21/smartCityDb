# smartCityDb

## Overview

This project contains the schema, data, and scripts for the Smart City Infrastructure.

## Structure

- `sql/`: Scripts for creating the schema and importing the data
- `docs/`: Documentation for the creation of this database

## Getting Started

### Prerequisites

- MySQL
- Access to a terminal or command-line infterface

### Setup

1. **Clone the repository**:

   ```bash
   git clone https://github.com/kylewillis21/smartCityDb.git
   cd smartCityDb
   ```

2. **Create the database and user**:

   ```sql
   CREATE DATABASE smartCity;
   CREATE USER 'smartCityUser'@'localhost' IDENTIFIED BY 'password';
   GRANT ALL PRIVILEGES ON 'smartCity' TO 'smartCityUser'@'localhost';
   FLUSH PRIVILEGES;
   ```

3. **Run the schema scripts**:
   ```bash
   mysql -u smartCityUser -p smartCity < sql/schema/01_create_tables.sql
   ```
