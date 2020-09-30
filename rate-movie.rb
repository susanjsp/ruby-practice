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
choice = gets.chomp

#Case statement for input 'choice'
case choice
	when "add"
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
