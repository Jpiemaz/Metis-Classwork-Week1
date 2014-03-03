array = [false] * 100
100.times do |students|
  students = students + 1
  array.each_with_index do |status, index|
    if (index + 1) % students == 0
      array[index] = !status
    end
  end
end
puts array