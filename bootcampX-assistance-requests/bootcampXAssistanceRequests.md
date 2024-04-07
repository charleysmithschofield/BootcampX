# BootcampX Assistance Requests - Walkthrough

We need to add features to our app that use data about assistance requests and teachers. Before we can do that, we'll need to update the database. In this exercise, we will add two new tables to our database.


## The Entities
The next entities that we will be adding are teachers and assistance_requests.

A teacher will have the following attributes:

  * id: A unique identifier.
  * name: The name of the teacher.
  * start_date: the date that the teacher started working.
  * end_date: The date that the teacher stopped working.
  * is_active: If the teacher is actively teaching right now.

An assistance_request will have the following attributes:

  * id: A unique identifier.

  * assignment_id: The id of the assignment the request was made from.

  * student_id: The id of the student making the request.

  * teacher_id: The id of the teacher responding to the request.

  * created_at: The timestamp when the request was made.

  * started_at: The timestamp when the assistance started.

  * completed_at: The timestamp when the assistance was completed.

  * student_feedback: Feedback about the student given by the teacher.

  * teacher_feedback: Feedback about the teacher given by the student.

A student can create many assistance_requests and a teacher can respond to many assistance_requests.


## Tips

  * Use a pen/pencil and paper to draw the entities.
  * Use the ERDs from the previous exercises to help you.


## Tables
Using the ERD, we can create the tables for our teachers and assistance_requests entities.

Write the CREATE TABLE statements for the teachers and a assistance_requests tables.

  * Inside migrations, create a new file called teachers_assistance_requests.sql.

  * Take a moment to try writing the CREATE TABLE statements yourself for teachers and assistance_requests. Use the ERD to help.

  * Once you've given it a try, toggle the code block below to reveal our version of the code.

  * Make sure the code in your teachers_assistance_requests.sql file is identical to the code below.