# Intro to ActiveRecord Objectives:
- Review what an ORM is
    -object relational mapping
    - what does that mean?
        - a system that allows us to connect our system with our database and make sure their is a relationship between them. 
        - our class is getting it's structure in the database. 
        - ORM maps the instances to the database and the database to instances. creating a connection between the two.
 -active record is a pre built out ORM
 -convention over configuration
 -certain rules you must follow in order for it to connect your class to your database and your database to your class. always name your table the plural or your class you can't name it anything you want. lose a little flexability but you gain all the benefits of active record.

- Discuss ActiveRecord's purpose and Convention over Configuration
- Setting up our database and models with ActiveRecord from scratch
- Explore Rakefile possibilities
- Define the purpose of a migration
- Define a schema
- Discuss altering databases and models with further migrations, rollbacks
[Active Record Docs](http://guides.rubyonrails.org/active_record_basics.html)


Movie belong_to a director ------> director_id
Movie belong_to a genre --------> genre_id
=======
Movie
belong_to a genre => genre_ids (foreign key)
belong_to a director => director_id (foreign key)

Director 
director has_many movies

Genre 
genre has_many movies

- single source of truth 
- column size can get crazy 


-just based off of these two things what is pieces I would need to add to my table? 
    -foreign key => director_id and genre_id
    - important note the has_many plural / belongs to singular (CONVENTIONS IMPORTANT)
    - will my director or genre class need to keep track of my movies (need a movie_id?)
Will need a Director Class
- has_many movies  

Will need a Genre Class

- has_many movies