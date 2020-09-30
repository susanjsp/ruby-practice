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

#Prompt user for input
puts "What would you like to do?"
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
	#Print each key=>value pair in hash table
	movies.each { |title, rating|
		puts "#{title}: #{rating}"
	}

when "delete"
	puts "Deleted!"
else 
	puts "Error!"
end
