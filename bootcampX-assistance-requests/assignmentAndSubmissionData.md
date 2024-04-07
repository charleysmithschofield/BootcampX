# Assignment and Submission Data
The new tables currently contain 0 rows. We're going to need to add some fake data so that we can make sure our queries work correctly:

  * Teachers http://bit.ly/2Z36wZa
  * Assistance Requests http://bit.ly/2YZTyeN


## Instruction
Download the .sql files with the fake data in them.

Download both of the .sql files using wget into the seeds directory.

    wget http://bit.ly/2Z36wZa -O seeds/teachers_seeds.sql

    wget http://bit.ly/2YZTyeN -O seeds/assistance_requests_seeds.sql

You should now have two more files in the seeds directory, teachers_seeds.sql and assistance_requests_seeds.sql

Inside your psql session, run the following commands:

    \i seeds/teachers_seeds.sql
    \i seeds/assistance_requests_seeds.sql

Just like last time, there is a lot of fake data here so this will could take a moment.


## Conclusion
In this activity we

  * Added two new tables to the database.

  * Added a bunch of fake data to the tables

We now have everything we need to start writing even more complex queries for BootcampX.