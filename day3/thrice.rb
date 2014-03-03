def thrice
 3.times { yield }
end

thrice do
  puts "Hello World"
end

def my_times(number)
  number.times do |run_count|
    yield run_count
  end
end

my_times(100) do |number|
  puts number
end 

