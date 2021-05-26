class Director < ActiveRecord::Base
   has_many :movies 
   has_many :genres, through: :movies
   #director.movies 
   #director << (Movie.create(title:"new_movie"))
   #director.movie_ids
   #director.movie_ids = ([1,3,5])
   #director.movies.build(pass in movie attributes)
   #this is instanciating a movie that has that director but has not been saved to the database
   #-what build does is it builds both sides 
   #build is special because build doesn't save but tells both sides of the relationship about itself
end

# Firm#clients (similar to Client.where(firm_id: id))

# Firm#clients<<

# Firm#clients.delete

# Firm#clients.destroy

# Firm#clients=

# Firm#client_ids

# Firm#client_ids=

# Firm#clients.clear

# Firm#clients.empty? (similar to firm.clients.size == 0)

# Firm#clients.size (similar to Client.count "firm_id = #{id}")

# Firm#clients.find (similar to Client.where(firm_id: id).find(id))

# Firm#clients.exists?(name: 'ACME') (similar to Client.exists?(name: 'ACME', firm_id: firm.id))

# Firm#clients.build (similar to Client.new(firm_id: id))

# Firm#clients.create (similar to c = Client.new(firm_id: id); c.save; c)

# Firm#clients.create! (similar to c = Client.new(firm_id: id); c.save!)

# Firm#clients.reload
