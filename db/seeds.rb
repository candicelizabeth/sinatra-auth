Movie.find_or_create_by(title:"Jaws", year: 1975, popular: true, description:"Shark movie", rating: "PG")

Movie.find_or_create_by(title:"Jurrasic Park", year: 1993, popular: true, description:"Dinos Attack!", rating: "PG-13")

Movie.find_or_create_by(title:"Mars Attacks", year: 1996, popular: true, description:"Aliens Attack!", rating: "PG-13")

Movie.find_or_create_by(title:"Spice World", year: 1996, popular: true, description:"Girl Power", rating: "PG")

Movie.find_or_create_by(title:"What We Do in the Shadows", year: 2014, popular: true, description:"Funny Vamps", rating: "R")

Movie.find_or_create_by(title:"Edward Scissorhands", year: 1990, popular: true, description:"Dude with scissorhands trying to be normal", rating: "PG")

Director.find_or_create_by(name:"Steven Spielberg")
Director.find_or_create_by(name:"Tim Burton")
Director.find_or_create_by(name:"Taika Waititi")
Director.find_or_create_by(name:"Bob Spiers")

Genre.find_or_create_by(name:"Comedy")
Genre.find_or_create_by(name:"Action")
Genre.find_or_create_by(name:"Fantasy")
Genre.find_or_create_by(name:"Horror")





# create_table "movies", force: :cascade do |t|
#     t.string "title"
#     t.integer "year"
#     t.date "release_day"
#     t.boolean "popular"
#     t.text "description"
#     t.string "rating"
#     t.integer "director_id"
#     t.integer "genre_id"
#   end