def double(num)
	yield(num)
end

puts double(10) { |n| n * 2}

#Proc syntax
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

round_down = Proc.new { |n| n.floor }

ints = floats.collect(&round_down)

puts ints

#Calling a proc with method

#Lamba syntax
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda { |string| string.to_sym }

symbols = strings.collect(&symbolize)
print symbols

