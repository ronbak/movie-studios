
fox = Studio.create(name: "Fox Movies")
metro = Studio.create(name: "Metro-Goldwyn-Mayer")
red_chillies = Studio.create(name: "Red Chillies Entertainment")
sony = Studio.create(name: "Sony Pictures")
disney = Studio.create(name: "Disney Studios")
dreamworks = Studio.create(name: "DreamWorks Animation")

scifi = Genre.create(name: "Sci-Fi")
action = Genre.create(name: "Action")
romance = Genre.create(name: "Romance")
comedy = Genre.create(name: "Comedy")
thriller = Genre.create(name: "Thriller")

x_men = Movie.create(name: "X-Men", description: "Two mutants come to a private academy for their kind whose resident superhero team must oppose a terrorist organization with similar powers.")
x_men.movie_genres.create(genre: action)
x_men.studio = fox
x_men.save

dilwale = Movie.create(name: "Dilwale", description: "The children of two competing families meet again after a 15-year separation.")
dilwale.movie_genres.create(genre: romance)
dilwale.studio = red_chillies
dilwale.save

skyfall = Movie.create(name: "Skyfall", description: "Bond's loyalty to M is tested when her past comes back to haunt her. Whilst MI6 comes under attack, 007 must track down and destroy the threat, no matter how personal the cost.")
skyfall.movie_genres.create(genre: scifi)
skyfall.studio = metro
skyfall.save

kung_fu = Movie.create(name: "Kung Fu Panda", description: "In the Valley of Peace, Po the Panda finds himself chosen as the Dragon Warrior despite the fact that he is obese and a complete novice at martial arts.")
kung_fu.movie_genres.create(genre: action)
kung_fu.studio = dreamworks
kung_fu.save

the_notebook = Movie.create(name: "The Notebook", description: "Bond's loyalty to M is tested when her past comes back to haunt her. Whilst MI6 comes under attack, 007 must track down and destroy the threat, no matter how personal the cost.")
the_notebook.movie_genres.create(genre: romance)
the_notebook.studio = metro
the_notebook.save

jurassic_park = Movie.create(name: "Jurassic Park", description: "A new theme park is built on the original site of Jurassic Park. Everything is going well until the park's newest attraction--a genetically modified giant stealth killing machine--escapes containment and goes on a killing spree.")
jurassic_park.movie_genres.create(genre: romance)
jurassic_park.studio = disney
jurassic_park.save
