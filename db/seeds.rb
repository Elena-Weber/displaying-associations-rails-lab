# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Song.destroy_all

5.times do
    Artist.create(
        name: Faker::Superhero.name
)
end

15.times do
    Song.create(
    title: Faker::Creature::Animal.name,
    artist_id: rand(1..5)
)
end

puts "Success"