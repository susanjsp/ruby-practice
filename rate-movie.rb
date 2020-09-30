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
	#Prompt title & rating
	print "Title: "
	title = gets.chomp
	print "Rating: "
	rating = gets.chomp

	#Add to movie hash table, convert to symbol & int
	movies[title.to_sym] = rating.to_i

	movies.each do |title, rating|
		puts "#{title}: #{rating}\n"
	end

	puts "Added!"

when "update"
	puts "update"
when "display"
	puts "Movies!"
when "delete"
	puts "Deleted!"
else 
	puts "Error!"
end
