require 'csv'
require 'pp'
database = Hash.new {|hash,key| hash[key] = []}
CSV.foreach("music.csv", {headers: true}) do |row|
  artist = row["Artist"]
  song_name = row["Name"]
  database[artist] << song_name
end

print "Query: "
query = gets.strip
puts 

while query != ""
  if database.has_key(query)
    title = "* Songs by " + query + " *"
    stars = "*" * title.length
    puts
    puts stars
    puts title
    puts stars
    puts database[query].sort
    puts 
  else    
    puts "Enter a different Query"
    puts 
  end
  print "Query:"
  query = gets.strip
  puts 
end 

    
  