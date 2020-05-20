# bookmark_manager

As a user,
So that I can see what websites or pages I've visited,
I would like to have a list of bookmarks


In order to set up this database for this web app:
1. Connect to psql - making sure to install postrgesql via Homebrew
2. Create a new database called bookmark_manager using CREATE DATABASE syntax
3. Connect to this database using \c bookmark_manager;
4. Create table using command/query in .sql file
5. This creates a table with two columns - ID and URL

In order to set up a test database for this web app:
1. Connect to psql
2. Create a new test database called bookmark_manager_test, using CREATE DATABASE syntax
3. Connect to this database using \c bookmark_manager_test;
4. Create table using the command/query in the create bookmarks .sql file
5. This creates a table with two columns - ID and URL in the new test database
