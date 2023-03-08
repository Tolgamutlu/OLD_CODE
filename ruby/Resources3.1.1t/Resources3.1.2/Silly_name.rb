require './input_functions'

def print_silly_name()
	puts 'What is your name?'
	name = gets.to_s.chomp
	puts(name + " is a \n")
	i = 0
	while i < 60
		print "silly "
	i +=1
	end
	print " name"
end

#I dont have my code from the previous task and im not able to get it 
#because doubtfire isnt working right now
print_silly_name()