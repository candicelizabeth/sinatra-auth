class Movie < ActiveRecord::Base
belongs_to :director
belongs_to :genre
belongs_to :user
#.director 
#.director = => accepts director object
#.build_director => accept director attributes hash
#.create_director => accept director attributes hash
end


# Post#author (similar to Author.find(author_id))

# Post#author=(author) (similar to post.author_id = author.id)

# Post#build_author (similar to post.author = Author.new)

# Post#create_author (similar to post.author = Author.new; post.author.save; post.author)

# Post#create_author! (similar to post.author = Author.new; post.author.save!; post.author)

# Post#reload_author

