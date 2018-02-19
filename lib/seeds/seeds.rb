require 'csv'

puts "hello"
csv_text = File.read(Rails.root.join('lib', 'seeds', '2018_GolfRanking'))
puts csv_text