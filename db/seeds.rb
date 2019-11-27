# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Pizza Pazza',
    address:      '7 Boundary St, London E2 7JE',
    category:     'italian'

  },
  {
    name:         'poke by Nima',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     'japanese'
  }
]

10.times do
Restaurant.create!(restaurants_attributes)
end
puts 'Finished!'


puts 'Creating restaurants...'
reviews_attributes = [
  {
    content:         'Pizza Pazza',
    rating:            2,
    restaurant_id:     1

  },
  {
    content:         'Pizza Pazza',
    rating:            2,
    restaurant_id:     2
  }
]

10.times do
Review.create!(reviews_attributes)
end
puts 'Finished!'

