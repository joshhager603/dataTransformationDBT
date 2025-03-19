# CSDS 397 Individual Assignment 4: Data Transformation using DBT
**Josh Hager (jrh236)**

## Description
This repository holds code to perform various transformations on the previously loaded employee data using DBT. It utilizes a PostgreSQL database to store the data. All required packages are listed in `requirements.txt`.

## Pre-requisites
To run the code in this repository, you must:

1. Have an installation of Python on your machine (https://www.python.org/downloads/).
2. Have an installation of PostgreSQL on your machine. If you don't, you can run `brew install postgresql` on MacOS to install using Homebrew. Otherwise, see https://www.postgresql.org/download/.
3. Have PostgreSQL started on your machine. On MacOS, you can run `brew services start postgresql`.
4. Have a PostgreSQL database called `employee_db` to store the data.*
5. Within the `employee_db` database, have a table called `employee_data` under the `public` schema storing the data from `employee_data_clean.csv`.*

<sub>\* This is listed as a pre-req because the assignment description says that "the cleaned data is assumed to reside in an existing source table called employee_data". If needed, run the code from [the previous assignment](https://github.com/joshhager603/dataTransformationSQL) to create the database and load the `.csv` file.<sub>

## Instructions
1. Clone this git repo to your machine using: 
   
    ```
    git clone https://github.com/joshhager603/dataTransformationDBT.git
    ```
2. In a terminal, `cd` into the repo you just cloned.
3. Run `python3 -m venv .venv` to create a virtual environment.
4. Activate the virtual environment using `source ./.venv/bin/activate` on Linux/Mac, or `./.venv/Scripts/activate` on Windows.
5. Install the required packages using `pip install -r requirements.txt`.
6. Add the following lines to the `profiles.yml` file on your machine (typically found at `~/.dbt/profiles.yml`). Replace `#<YOUR-POSTGRES-PASSWORD>` and `#<YOUR-POSTGRES-USERNAME>` to the password and username you use for PostgreSQL on this machine. You may also need to modify `host` and `port` if you have changed these from the default.
   
   ```yaml
   dataTransformationDBT:
    outputs:
        dev:
            dbname: employee_db
            host: localhost
            pass: #<YOUR-POSTGRES-PASSWORD>
            port: 5432
            schema: employee_data_schema
            threads: 1
            type: postgres
            user: #<YOUR-POSTGRES-USERNAME>
    target: dev
    ```
7. In the `dataTransformationDBT` directory (the one you cloned), validate your connection with the command `dbt debug`.
8. Run the models with the command `dbt run`.


