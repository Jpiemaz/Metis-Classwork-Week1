# array = []
# i = 1
# while i < 600851475143
#   i = i+1
#   if 600851475143 % i == 0
#     array << i
#   end
# end
# array2= []
# array.each do |number|
#   if number.prime? == true
#     array2 << number
#   end
# end
# array2.sort
# puts array2.last
    
require 'prime'
array = []
array2= []
Prime.each(600851475143) do |prime|
  array << prime
end
array.each do |number|
  if 600851475143 % number == 0
    array2 << number
  end
end
array2.sort
puts array2.last
  