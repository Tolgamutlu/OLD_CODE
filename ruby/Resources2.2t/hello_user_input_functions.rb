require 'date'
require './input_functions'

# Multiply metres by the following to get inches:
INCHES = 39.3701

# Insert into the following your hello_user code
# from task 1.3P and modify it to use the functions
# in input_functions
def name_string (prompt)
  puts prompt
  variable = gets.chomp
end

def family_string (prompt)
  puts prompt
  family_name = gets.to_s.chomp
end

def read_integer prompt
	value = name_string(prompt)
	value.to_i
end

def read_float prompt
	height = name_string(prompt)
	height.to_f
end

def read_boolean prompt
	continue = read_string(prompt)
	case continue
	when 'y', 'yes', 'Yes', 'YES'
		true
	else
		false
	end
end

def main()

  # HOW TO USE THE input_functions CODE
  # Example of how to read strings:

  variable = name_string('Please enter your name: ')
  puts "the string you entered was: " + variable.to_s + "!"

  family_name = family_string('Please enter your family name: ')
  puts "the string you entered was: " + family_name.to_s + "!"
  # Example of how to read integers:
  y = Date.today.year
  value = read_integer('What year were you born? ')
  puts "So you are " + (y - value.to_i).to_s + " years old"

  # Example of how to read floats:

  height = read_float('Enter your height in meters (eg: 3.142): ')
  puts "Your height in inches is: " + (height.to_f * INCHES).to_s

  continue = read_boolean("Do you want to continue?")
if (continue)
  puts "ok, lets continue"
else
  puts "ok goodbye"
end

end

main()
