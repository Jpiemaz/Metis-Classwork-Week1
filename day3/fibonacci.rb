i = 1
x = 2
array = []
while x < 4000000
  y = x
  x = i + x
  i = y
  if x % 2 == 0
    array << x
  end
end

puts array.inject(:+) + 2

    
  