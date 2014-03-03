print "Enter a file name: "
name = gets.strip

require 'matrix'
board = []
File.foreach(name) do |row|
 board << (row.chomp).split("")
end
board.each do |row|
  if row.count("x") == 3
    puts "x wins!"
    abort
  elsif row.count("o") == 3
    puts "o wins!"
    abort
  end
end

board.transpose.each do |row|
  if row.count("x") == 3
    puts "x wins!"
    abort
  elsif row.count("o") == 3
    puts "o wins!"
    abort
  end
end

diagonal = []
board.each_with_index do |row, index|
  row.each_with_index do |character, index2|
    if index == index2
      diagonal << character
    end
  end
end

if diagonal.count("x") == 3
  puts "x wins!"
  abort
elsif diagonal.count("o") == 3
  puts "o wins!"
  abort
end

diagonal2= []
board.each_with_index do |row, index|
  row.each_with_index do |character, index2|
    if index == index2
      diagonal2 << character
    end
  end
end
      
if diagonal2.count("x") == 3
  puts "x wins!"
  abort
elsif diagonal2.count("o") == 3
  puts "o wins!"
  abort
end

puts "Nobody Wins!"



  
  
  
  
  
  
  # row.each do |player|
#     array <<(player)
#     if array.count("x") == 3
#       puts "x wins!"
#       break
#     elsif array.count("o") == 3
#       puts "o wins!"
#       break
#     end
#   end
# end
    

  

  

#File.foreach do |row|
  
  