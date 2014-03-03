1.upto 100 do |target|
  if target % 15 == 0
    puts "Fizzbuzz"
  elsif target % 5 == 0
    puts "Buzz"
  elsif target % 3 == 0
    puts "Fizz"
  else 
    puts target
  end
end