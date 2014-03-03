require 'csv'
require 'pp'
database = {}
CSV.foreach("music.csv", {headers: true}) do |row|
  artist = row["Artist"]
  if database.keys.include?(artist)
    database[artist] << row["Name"]
  else
    database[artist] = [row["Name"]]
  end
end
pp database