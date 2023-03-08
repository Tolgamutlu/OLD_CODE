
# writes the number of lines then each line as a string.

def write_data_to_file(a_file)
  a_file.puts ['5','Fred','Sam','Jill','Jenny','Zorro']
end

# reads in each line.
# you need to change the following code
# so that it uses a loop which repeats
# acccording to the number of lines in the File
# which is given in the first line of the File

def read_data_from_file(a_file)
  a_file = ['5','Fred','Sam','Jill','Jenny','Zorro']

  index = 0
  while (index < a_file.length)
    puts(a_file[index])
    index += 1
  end
end


# writes data to a file then reads it in and prints
# each line as it reads.
# you should improve the modular decomposition of the
# following by moving as many lines of code
# out of main as possible.
def main
  a_file = File.new("mydata.txt", "w") # open for writing
  write_data_to_file(a_file)
  a_file.close
  
  a_file = File.new("mydata.txt", "r") # open for reading
  read_data_from_file(a_file)
  a_file.close
end

main
