# BootcampX - Walkthrough

In this activity we will:

  * Setup the project
  * Create a database
  * Add some tables to the database
  * Add some data to the tables


## BootcampX
This app will allow our staff to help students and mentors faster by offering quick insight into data like assignment completion and effectiveness of assistance requests.

For the BootcampX project, you will be responsible for writing all of the queries to get data from the database. That means writing a lot of SELECT statements, w/o having to worry about any JS, HTML or CSS.

Once we have all of the queries written, the other devs can connect the backend, front end, and datbase together to complete the application.


## Directory Setup
Let's get started. Before we do anything, let's setup a directory for all of the .sql files that we will end up creating.

  * Create a new directory called BootcampX


## The Entities
The main entities for this application will be:

  * students
  * cohorts
  * assignments
  * assignment_submissions
  * teachers
  * assistance_requests

We're going to start off simple and just focus on the queries for two entities: students & cohorts.

### Cohort Attributes
A cohort will have these attributes:

  * id: A unique identifier
  * name: The name of the cohort
  * start_date: The cohort's start date
  * end_date: The cohort's end date

### Student Attributes:
A student will have these attributes:

  * id: A unique identifier
  * name: The full name of the student
  * email: The students' email address
  * phone: The students' phone number
  * github: The students' github profile url
  * start_date: The students' start date of the Bootcamp
  * end_date: The students' end date of the Bootcamp
  * cohort_id: The id of the cohort that the student is enrolled in


## Create a Database:
Using the Entity Relational Diagram (ERD), we can create tables for the database; but before we do that, we need a database.

Start a new psql session by entering psql into the terminal:

    psql

From within the bootcampX directory, enter psql into the terminal. 

Create a database called bootcampx

    CREATE DATBASE bootcampx;

    \c bootcampx;


### Remember to Use Correct Database
You will have to enter \c bootcampx every time you enter a new psql session to make sure you're using the correct database


## Tables
Now that we have a database, we can create tables for our student and cohort entities:

Write CREATE TABLE statements for the studetns and cohorts tables.

  * Create a folder called migrations within the BootcampX folder.

  * Inside migrations, create a new file called students_cohorts.sql

  * Take a moment to try writing the CREATE TABLE statements yourself for students and cohorts. Use the ERD to help.

  * Once you've given it a try, toggle the code block below to reveal our version of the code.

  * Make sure the code in your students_cohorts.sql file is identical to the code below.

        CREATE TABLE cohorts (
          id SERIAL PRIMARY KEY NOT NULL,
          name VARCHAR(255) NOT NULL,
          start_date DATE,
          end_date DATE
        );

        CREATE TABLE students (
          id SERIAL PRIMARY KEY NOT NULL,
          name VARCHAR(255) NOT NULL,
          email VARCHAR(255),
          phone VARCHAR(32),
          github VARCHAR(255),
          start_date DATE,
          end_date DATE,
          cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
        );


### Add the Tables to the Database
From your psql session, type:

    \i migrations/students_cohorts.sql

Now enter \dt into your psql session to make sure the two tables have been created:

    \dt


## Student and Cohort Data
Take a look at all the data in the students and cohorts tables

In psql, enter the following commands:

    SELECT * FROM students;
    SELECT * FROM cohorts;

We haven't added data yet, so both tables contain 0 rows. Let's change that. We're going to add some fake data to test our queries with.

Once the database is in production, it will contain lots of data, hundreds or maybe thousands of rows in each table, so we'll need ot test our queries on a large set of data. This means we'll need hundreds of fake students to test with.

Don't worry though, we're not going to write hundreds of INSERT statements; instead, we'll have some software generate a whole bunch of fake data. In fact, the project manager has already done this for us and uploaded the .sql files.

## Install wget
Run this in the termina:

    brew install wget

## Download SQL Files with Fake Data
Download the .sql files with the fake data in them. Create a new folder named seeds inside the BootcampX folder. Download both of the .sql files using wget:

    wget https://bit.ly/2Z0fN4t -O seeds/students.sql

    wget https://bit.ly/300nIQy -O seeds/cohorts.sql

