
#Movie ratings hash
movie_ratings = {
	the_matrix: 3,
	truman_show: 4,
	red_dawn: 1.5,
	skyfall: 4,
	alex_cross: 2,
	uhf: 1,
	lion_king: 3.5
}

#Select specific keys
good_movies = movie_ratings.select { |movie, rating| rating > 3}
puts good_movies

#Iterate through keys, print key: value


#Iterate through keys, print value
movie_ratings.each_key { |key| print key, " " }
puts "\n"

#Iterate through values, print keys
movie_ratings.each_value { |value| print value, " "}
puts "\n"
