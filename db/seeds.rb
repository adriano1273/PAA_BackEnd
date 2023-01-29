# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'csv'

Movie.destroy_all

csv_text = File.read(Rails.root.join('lib', 'seeds', 'movies.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

csv.take(10).each do |row|
  m = Movie.new
  m.poster = row['poster']
  m.runtime = row['runtime']
  m.title = row['title']
  m.genre = row['genre']
  m.director = row['director']
  m.stars = row['stars']
  
  m.save
  puts "#{m.title} saved"
end