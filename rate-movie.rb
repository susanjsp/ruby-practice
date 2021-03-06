#Create movies hash
movies = {
	interstellar: 8,
	inception: 8,
	get_out: 10,
	blackkklansman: 9,
	shawshank_redemption: 10,
	velvet_buzzsaw: 5,
	captain_marvel: 7,
	moana: 10
}

#Functions for sorting/filter
alphasort = Proc.new { |movie, rating| movie }
ratingsort = Proc.new { |movie, rating| rating }
fiveplus = Proc.new { |movie, rating| rating > 5 }

#Prompt user for input
puts "What would you like to do?"
puts "add update display delete"
puts "filters: titles-only a-z 1-10 5+"
choice = gets.chomp

#Case statement for input 'choice'
case choice
when "add"
	print "Title: "
	title = gets.chomp

	#If movie doesn't already exist, prompt for rating
	if movies[title.to_sym].nil?
		print "Rating: "
		rating = gets.chomp
		movies[title.to_sym] = rating.to_i
		puts "Added!"
	else 
		puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
	end

when "update"
	#Prompt for title, if exists update rating
	print "Title: "
	title = gets.chomp
	if movies[title.to_sym].nil?
		#If title, doesn't exist, redirect to add new movie.
		puts "That movie doesn't exist. Add new movie."
	else 
		print "New rating: "
		new_rate = gets.chomp
		movies[title.to_sym] = new_rate
		puts "Updated!"	
	end

when "display"
	#Print each title=>rating pair in hash table
	movies.each { |title, rating|
		puts "#{title}: #{rating}"
	}

when "delete"
	#Delete title=>rating from hash table
	print "Title to Delete: "
	title = gets.chomp.to_sym

	if movies[title].nil?
		puts "That movie doesn't exist."
	else 
		#Print out title=>rating to delete, confirm y/n to delete
		puts "#{title}: #{rating}"
		puts "Are you sure you want to delete?"
		delete = gets.chomp
		case delete
		when "yes", "y"
			movies.delete(title)
			puts "Deleted!"
		else 
		end
	end

when "titles-only"
	movies.each { |movie, rating| puts movie }

when "a-z"
	sort_movies = movies.sort_by(&alphasort)
	sort_movies.each { |title, rating| 
		puts "#{title}: #{rating}"
	}

when "1-10"
	sort_movies = movies.sort_by(&ratingsort)
	sort_movies.each { |title, rating| 
		puts "#{title}: #{rating}"
	}

when "5+"
	sort_movies = movies.select(&fiveplus)
	sort_movies.each { |title, rating| 
		puts "#{title}: #{rating}"
	}

else 
	#Error message with instructions
	puts "Error! Please enter 'add', 'update', 'display', or 'delete'."

end

