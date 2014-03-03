# Tell user what's expected of them
puts "Enter in a list of names followed by a blank line to start the lottery"

#Store the contestant's names
#-create a place to store the names
names = []
#-promot the user for each name
print "> "
#-let hte user enter the names
name = gets.strip

while name != "" 
  names << name
  print "> "
  name = gets.strip
end
puts "The winner is #{names.sample}" 