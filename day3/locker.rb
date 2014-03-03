puts "How many students are there?"
print "> "
n = gets.to_i

lockers = [false] * 100
1.upto(n) do |students|
  lockers.each_with_index do |status, locker_number|
    if (locker_number + 1) % students == 0
      lockers[locker_number] = !status
    end
  end
end

lockers.each_with_index do |status, locker_number|
  if status == false
    puts "Locker ##{locker_number + 1}: Closed"
  elsif
    puts "Locker ##{locker_number + 1}: Open" 
  end
end
