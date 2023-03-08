require './input_functions'

def maintain_albums(prompt)
  # change this to display a sub-menu
  # in the sub menu the user can select
  finished = false
  begin
  puts 'Maintain Albums Menu: '
  puts '1 To Update Album Title'
  puts '2 To Update Album Genre'
  puts '3 To Enter Album'
  puts '4 Return to the main menu'
  puts prompt
    choice = gets.to_i
  case choice.to_i
  when choice = 1
    puts 'You have selected Update Album Title'
    print "Press enter to continue : "
    gets
  when choice = 2
    puts 'You have selected Update Album Genre'
    print "Press enter to continue : "
    gets
  when choice = 3
    puts 'You selected Enter or Update New Album'
    print "Press enter to continue : "
    gets
  when choice = 4
    finshed = true
    puts 'You have selected return to the main menu'
    print "Press enter to continue : "
    gets
    finished = true
  else
    puts "invalid input, try again."
  end
  end until finished
end

def play__exisitng_album()
  puts "You selected Play Existing Album. Press enter to continue"
  gets
end

# complete the case statement below and
# add a stub like the one above for option 2
# of this main menu
def main()
  finished = false
  begin
    puts 'Main Menu:'
    puts '1 To Enter or Update Album'
    puts '2 To Play existing Album'
    puts '3 Exit'
    choice = read_integer_in_range("Please enter your choice:", 1, 3)
    case choice
    when 1
      maintain_albums('Please enter your choice:')
    when 2
      play_existing_album()
    when 3
      finished = true
    else
      puts 'Please select again'
    end
  end until finished
end

main()
