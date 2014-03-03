i = 0
numbers = []
while i < 999
  i = i + 1
  if (i % 3) == 0
    numbers << i
  elsif (i % 5) == 0
    numbers << i
  end
end
puts numbers.inspect
puts numbers.inject(:+)