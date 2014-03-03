array = []
100001.upto(999999) do |number|
  if number.to_s == number.to_s.reverse
    100.upto(999) do |factor|
      if number % factor == 0
        array << number
      end
    end
  end
end

puts array.inspect